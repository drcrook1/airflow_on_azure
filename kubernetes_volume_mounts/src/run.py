import glob
import os

json_files = glob.glob("/mnt/azure/*.json")
print("<Files already existing>")
print(json_files)
print("</Files already existing>")

print("Writing new file...")
file_prefix = len(json_files) + 1

with open(os.path.join('/mnt/azure', "{}_file.json".format(file_prefix)), "w") as file1:
    toFile = "{something: value, value1: 2}"
    file1.write(toFile)

print("<Files after writing new file>")
json_files = glob.glob("/mnt/azure/*.json")
print(json_files)
print("</Files after writing new file>")
