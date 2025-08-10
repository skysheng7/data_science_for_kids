#!/usr/bin/env python3
"""
Convert Day 3 Spell Solutions markdown file to Jupyter notebook with R kernel
"""

import json
import re
import os
from pathlib import Path

def parse_markdown_to_notebook(md_file_path, output_file_path, remove_expected_output=False):
    """
    Convert markdown file with R code blocks to Jupyter notebook
    """
    
    # Read the markdown file
    with open(md_file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Remove "Expected Output:" sections if requested
    if remove_expected_output:
        import re
        # Pattern to match "Expected Output:" sections
        pattern = r'\*\*Expected Output.*?\*\*\s*\n```[rR]?\n.*?\n```'
        content = re.sub(pattern, '', content, flags=re.DOTALL)
        
        # Also remove standalone Expected Output sections
        pattern2 = r'Expected Output:\s*\n```[rR]?\n.*?\n```'
        content = re.sub(pattern2, '', content, flags=re.DOTALL)
    
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
    
    # Split content into sections (markdown text and code blocks)
    sections = []
    current_section = ""
    lines = content.split('\n')
    in_code_block = False
    current_code = ""
    
    i = 0
    while i < len(lines):
        line = lines[i]
        
        if line.startswith('```R') or line.startswith('```r'):
            # Start of R code block
            if current_section.strip():
                sections.append(('markdown', current_section.strip()))
                current_section = ""
            in_code_block = True
            current_code = ""
            i += 1
        elif line == '```' and in_code_block:
            # End of R code block
            if current_code.strip():
                sections.append(('code', current_code.strip()))
            current_code = ""
            in_code_block = False
            i += 1
        elif in_code_block:
            # Inside code block
            current_code += line + '\n'
            i += 1
        else:
            # Regular markdown content
            current_section += line + '\n'
            i += 1
    
    # Add any remaining content
    if current_section.strip():
        sections.append(('markdown', current_section.strip()))
    if current_code.strip() and in_code_block:
        sections.append(('code', current_code.strip()))
    
    # Convert sections to notebook cells
    for section_type, content in sections:
        if section_type == 'markdown' and content.strip():
            cell = {
                "cell_type": "markdown",
                "metadata": {},
                "source": content.split('\n')
            }
            notebook["cells"].append(cell)
        elif section_type == 'code' and content.strip():
            cell = {
                "cell_type": "code",
                "execution_count": None,
                "metadata": {},
                "outputs": [],
                "source": content.split('\n')
            }
            notebook["cells"].append(cell)
    
    # Write the notebook file
    with open(output_file_path, 'w', encoding='utf-8') as f:
        json.dump(notebook, f, indent=2, ensure_ascii=False)
    
    print(f"✅ Converted {md_file_path} to {output_file_path}")
    print(f"📊 Created {len(notebook['cells'])} cells")

def main():
    """Main function to convert spell solutions"""
    import sys
    
    # Check command line arguments for day selection
    if len(sys.argv) > 1:
        day = sys.argv[1]
    else:
        day = "01"  # Default to day 1
    
    # Define paths based on day
    base_path = "/Users/skysheng/Library/CloudStorage/OneDrive-UBC/UBC/Conferences & presentation/2025_data_science_for_kids/data_science_for_kids"
    md_file = f"{base_path}/docs/day{day}/solutions/day{day}_spell_solutions.md"
    output_file = f"{base_path}/docs/day{day}/solutions/day{day}_spell_solutions.ipynb"
    
    # Check if input file exists
    if not os.path.exists(md_file):
        print(f"❌ Error: Input file {md_file} not found!")
        return
    
    # Convert the file (remove expected output for Day 1)
    remove_output = day == "01"
    try:
        parse_markdown_to_notebook(md_file, output_file, remove_expected_output=remove_output)
        print(f"🎉 Successfully created notebook: {output_file}")
        print(f"📁 You can now open this file in Jupyter with R kernel!")
        if remove_output:
            print(f"✨ Expected Output sections have been removed as requested!")
        
    except Exception as e:
        print(f"❌ Error during conversion: {e}")

if __name__ == "__main__":
    main()