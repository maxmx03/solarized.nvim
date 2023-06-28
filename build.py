#!/usr/bin/python3

import os
import shutil


def copy_folders():
    folders_to_copy = ['after', 'colors', 'doc', 'lua', 'plugin']
    files_to_copy = ['README.md']
    destination_folder = 'build'

    if os.path.exists(destination_folder):
        shutil.rmtree(destination_folder)

    os.makedirs(destination_folder)

    for folder in folders_to_copy:
        source_path = os.path.join(os.getcwd(), folder)
        destination_path = os.path.join(
            os.getcwd(), destination_folder, folder)

        if os.path.exists(source_path):
            shutil.copytree(source_path, destination_path)
            print(f"Successfully copied '{folder}' to '{destination_folder}'")
        else:
            print(f"Source folder '{folder}' does not exist. Skipping...")

    for file in files_to_copy:
        source_file = os.path.join(os.getcwd(), file)
        destination_file = os.path.join(
            os.getcwd(), destination_folder, file)

        if os.path.exists(source_file):
            shutil.copy2(source_file, destination_file)
            print(f"Successfully copied '{file}' to '{destination_folder}'")
        else:
            print(f"Source file '{file}' does not exist. Skipping...")


if __name__ == '__main__':
    copy_folders()
