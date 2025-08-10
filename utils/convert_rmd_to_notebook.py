#!/usr/bin/env python3
"""
Convert R Markdown (.Rmd) files to Jupyter notebook with R kernel
"""

import json
import re
import os
import sys
from pathlib import Path
import yaml

def parse_rmd_to_notebook(rmd_file_path, output_file_path):
    """
    Convert R Markdown file to Jupyter notebook with R kernel
    """
    
    # Read the Rmd file
    with open(rmd_file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Initialize notebook structure
    notebook = {
        "cells": [],
        "metadata": {
            "kernelspec": {
                "display_name": "R",
                "language": "R",
                "name": "ir"
            },
            "language_info": {
                "codemirror_mode": "r",
                "file_extension": ".r",
                "mimetype": "text/x-r-source",
                "name": "R",
                "pygments_lexer": "r",
                "version": "4.0.0"
            }
        },
        "nbformat": 4,
        "nbformat_minor": 4
    }
    
    # Remove YAML header if present
    if content.startswith('---'):
        parts = content.split('---', 2)
        if len(parts) >= 3:
            # Extract title from YAML if present
            yaml_header = parts[1]
            try:
                yaml_data = yaml.safe_load(yaml_header)
                if 'title' in yaml_data:
                    # Add title as first cell
                    title_cell = {
                        "cell_type": "markdown",
                        "metadata": {},
                        "source": [f"# {yaml_data['title']}"]
                    }
                    notebook["cells"].append(title_cell)
            except:
                pass  # If YAML parsing fails, just continue
            
            content = parts[2]  # Rest of the content after YAML
    
    # Split content into sections (markdown text and R code chunks)
    sections = []
    lines = content.split('\n')
    current_section = ""
    in_code_chunk = False
    current_code = ""
    chunk_options = ""
    
    i = 0
    while i < len(lines):
        line = lines[i]
        
        # Check for R code chunk start ```{r ...}
        chunk_match = re.match(r'^```\{r([^}]*)\}', line)
        if chunk_match:
            # Start of R code chunk
            if current_section.strip():
                sections.append(('markdown', current_section.strip()))
                current_section = ""
            
            in_code_chunk = True
            current_code = ""
            chunk_options = chunk_match.group(1).strip()
            i += 1
            
        elif line.strip() == '```' and in_code_chunk:
            # End of R code chunk
            if current_code.strip():
                sections.append(('code', current_code.strip(), chunk_options))
            current_code = ""
            chunk_options = ""
            in_code_chunk = False
            i += 1
            
        elif in_code_chunk:
            # Inside code chunk
            current_code += line + '\n'
            i += 1
            
        else:
            # Regular markdown content
            current_section += line + '\n'
            i += 1
    
    # Add any remaining content
    if current_section.strip():
        sections.append(('markdown', current_section.strip()))
    if current_code.strip() and in_code_chunk:
        sections.append(('code', current_code.strip(), chunk_options))
    
    # Convert sections to notebook cells
    for section_data in sections:
        if len(section_data) == 2:
            section_type, content = section_data
            chunk_options = ""
        else:
            section_type, content, chunk_options = section_data
            
        if section_type == 'markdown' and content.strip():
            cell = {
                "cell_type": "markdown",
                "metadata": {},
                "source": content.split('\n')
            }
            notebook["cells"].append(cell)
            
        elif section_type == 'code' and content.strip():
            # Parse chunk options to set cell metadata
            cell_metadata = {}
            if chunk_options:
                # Handle common chunk options
                if 'echo=FALSE' in chunk_options or 'echo = FALSE' in chunk_options:
                    cell_metadata["tags"] = ["hide-input"]
                if 'include=FALSE' in chunk_options or 'include = FALSE' in chunk_options:
                    cell_metadata["tags"] = cell_metadata.get("tags", []) + ["hide-cell"]
                if 'eval=FALSE' in chunk_options or 'eval = FALSE' in chunk_options:
                    cell_metadata["tags"] = cell_metadata.get("tags", []) + ["skip-execution"]
            
            cell = {
                "cell_type": "code",
                "execution_count": None,
                "metadata": cell_metadata,
                "outputs": [],
                "source": content.split('\n')
            }
            notebook["cells"].append(cell)
    
    # Write the notebook file
    with open(output_file_path, 'w', encoding='utf-8') as f:
        json.dump(notebook, f, indent=2, ensure_ascii=False)
    
    print(f"✅ Converted {rmd_file_path} to {output_file_path}")
    print(f"📊 Created {len(notebook['cells'])} cells")
    
    return output_file_path

def main():
    """Main function to convert Rmd file"""
    
    # Check command line arguments
    if len(sys.argv) > 1:
        input_file = sys.argv[1]
        if not input_file.endswith('.Rmd'):
            print("❌ Error: Input file must be a .Rmd file")
            return
        
        # Generate output filename
        output_file = input_file.replace('.Rmd', '.ipynb')
        
    else:
        # Default: convert the specific file mentioned
        base_path = "/Users/skysheng/Library/CloudStorage/OneDrive-UBC/UBC/Conferences & presentation/2025_data_science_for_kids/data_science_for_kids"
        input_file = f"{base_path}/docs/day04/activities/day04_spell06_halloween_candy_analysis.Rmd"
        output_file = f"{base_path}/docs/day04/solutions/day04_spell06_halloween_candy_analysis.ipynb"
    
    # Check if input file exists
    if not os.path.exists(input_file):
        print(f"❌ Error: Input file {input_file} not found!")
        return
    
    # Ensure output directory exists
    output_dir = os.path.dirname(output_file)
    os.makedirs(output_dir, exist_ok=True)
    
    # Convert the file
    try:
        result_file = parse_rmd_to_notebook(input_file, output_file)
        print(f"🎉 Successfully created notebook: {result_file}")
        print(f"📁 You can now open this file in Jupyter with R kernel!")
        
    except Exception as e:
        print(f"❌ Error during conversion: {e}")
        import traceback
        traceback.print_exc()

if __name__ == "__main__":
    main()