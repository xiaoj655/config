# copy defined files or director to current directory
sources = ["/home/kk/.tmux.conf", "/home/kk/.config/nvim"]

import os, shutil

def copy_files(source, dest):
    if os.path.isfile(source):
        shutil.copy(source, dest)
    elif os.path.isdir(source):
        shutil.copytree(source, dest)
    print(source, "copied to", dest)


if __name__ == "__main__":
    dest = os.path.dirname(__file__)
    for source in sources:
        copy_files(source, os.path.join(dest, os.path.basename(source)))
    print("Done!")