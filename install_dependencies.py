"""
Simply install python and run this script to install all the dependencies.
"""

import os
import sys

distribution = input("Enter the distribution you are using (ubuntu, debian, fedora, opensuse): ")

if distribution == "ubuntu" or distribution == "debian":
    package_manager_name = "apt"
    latex_name = "texlive-full"

elif distribution == "fedora":
    package_manager_name = "dnf"
    latex_name = "texlive-scheme-full"

elif distribution == "opensuse":
    package_manager_name = "zypper"
    latex_name = "texlive-scheme-full"

else:
    print("Distribution not supported")
    sys.exit()

packages_to_install = [latex_name,
                       "neofetch",
                       "neovim",
                       "nodejs",
                       "tree-sitter",
                       "git",]

for package in packages_to_install:
    os.system(f"sudo {package_manager_name} install {package}")

