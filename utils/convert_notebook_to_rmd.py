#!/usr/bin/env python3
"""
Convert a Jupyter Notebook (.ipynb, R kernel) to an R Markdown (.Rmd) file

- Mirrors the style and CLI of convert_rmd_to_notebook.py
"""

import json
import os
import sys
from pathlib import Path


def _extract_title_from_cells(cells):
    """
    Try to extract a document title from the first markdown cell
    by looking for a line that starts with a single '# '.
    """
    for cell in cells:
        if cell.get("cell_type") == "markdown":
            lines = cell.get("source", [])
            # Join without forcing extra newlines, then split to lines
            text = "".join(lines)
            for raw_line in text.splitlines():
                line = raw_line.strip()
                if line.startswith("# ") and not line.startswith("## "):
                    return line[2:].strip()
            break
    return None


def _chunk_options_from_tags(tags):
    """
    Map notebook cell tags to knitr chunk options.
    - hide-input -> echo=FALSE
    - hide-cell  -> include=FALSE
    - skip-execution -> eval=FALSE
    """
    if not tags:
        return ""
    options = []
    tag_set = set(tags)
    if "hide-input" in tag_set:
        options.append("echo=FALSE")
    if "hide-cell" in tag_set:
        options.append("include=FALSE")
    if "skip-execution" in tag_set:
        options.append("eval=FALSE")
    return ", ".join(options)


def parse_notebook_to_rmd(notebook_file_path: str, output_file_path: str) -> str:
    """
    Convert a Jupyter notebook with R kernel to an Rmd file.
    - Preserves markdown cells as-is
    - Converts code cells to R code chunks
    - Applies simple tag-to-chunk option mapping
    - Inserts an acknowledgement line near the top
    - Adds a YAML header with bibliography for citations
    """
    with open(notebook_file_path, "r", encoding="utf-8") as f:
        nb = json.load(f)

    cells = nb.get("cells", [])

    # Determine title from first markdown cell, fallback to filename stem
    title = _extract_title_from_cells(cells) or Path(notebook_file_path).stem

    # Compose YAML header (enable citations)
    # Use path relative to docs/dayXX/... to reach references bib
    yaml_header = (
        "---\n"
        f"title: \"{title}\"\n"
        # Output lives in docs/day03/activities; references are at docs/references
        "bibliography: ../../references/references.bib\n"
        "---\n\n"
    )

    # Required acknowledgement block (per user request)
    acknowledgement = (
        "Created by - **Girls in Data Science** workshop by Dr. Katie Burak, Jenny Lee, and Mona Zhu {cite}`Burak2023GirlsDS`\n\n"
    )

    rmd_lines = [yaml_header, acknowledgement]

    for cell in cells:
        ctype = cell.get("cell_type")

        if ctype == "markdown":
            # Notebook stores markdown as list of lines; join verbatim
            md_text = "".join(cell.get("source", []))
            # Ensure a newline separation between blocks
            rmd_lines.append(md_text.rstrip() + "\n\n")

        elif ctype == "code":
            # Only convert R code chunks; assume notebook kernel is R
            tags = cell.get("metadata", {}).get("tags", [])
            options = _chunk_options_from_tags(tags)
            chunk_header = "```{r" + (f" {options}" if options else "") + "}\n"
            rmd_lines.append(chunk_header)
            code_text = "".join(cell.get("source", []))
            rmd_lines.append(code_text.rstrip() + "\n")
            rmd_lines.append("```\n\n")

        # Ignore other cell types

    # Write Rmd
    with open(output_file_path, "w", encoding="utf-8") as f:
        f.write("".join(rmd_lines))

    print(f"✅ Converted {notebook_file_path} to {output_file_path}")
    print(f"📄 Wrote {len(rmd_lines)} content blocks")
    return output_file_path


def main():
    # CLI usage similar to convert_rmd_to_notebook.py
    if len(sys.argv) > 1:
        input_file = sys.argv[1]
        if not input_file.endswith(".ipynb"):
            print("❌ Error: Input file must be a .ipynb file")
            return
        # Optional explicit output path
        if len(sys.argv) > 2:
            output_file = sys.argv[2]
        else:
            output_file = input_file.replace(".ipynb", ".Rmd")
    else:
        # Default paths (use absolute workspace path)
        base_path = \
            "/Users/skysheng/Library/CloudStorage/OneDrive-UBC/UBC/Conferences & presentation/2025_data_science_for_kids/data_science_for_kids"
        input_file = f"{base_path}/docs/day03/activities/DS_Worksheet1.ipynb"
        output_file = f"{base_path}/docs/day03/activities/DS_Worksheet1.Rmd"

    if not os.path.exists(input_file):
        print(f"❌ Error: Input file {input_file} not found!")
        return

    output_dir = os.path.dirname(output_file)
    os.makedirs(output_dir, exist_ok=True)

    try:
        result = parse_notebook_to_rmd(input_file, output_file)
        print(f"🎉 Successfully created Rmd: {result}")
        print("📁 You can now open this file in your editor or knit/render it in R!")
    except Exception as e:
        print(f"❌ Error during conversion: {e}")
        import traceback
        traceback.print_exc()


if __name__ == "__main__":
    main()

