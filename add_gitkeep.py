import os

def create_gitkeep(path):
    gitkeep_path = os.path.join(path, ".gitkeep")
    
    # Check if .gitkeep file already exists
    if not os.path.exists(gitkeep_path):
        with open(gitkeep_path, "w") as gitkeep_file:
            pass  # Create an empty file

def add_gitkeep_to_subdirs(root_dir):
    for dirpath, dirnames, filenames in os.walk(root_dir):
        if not dirnames and not filenames:  # Empty directory
            create_gitkeep(dirpath)

if __name__ == "__main__":
    cwd = os.getcwd()
    add_gitkeep_to_subdirs(cwd)
