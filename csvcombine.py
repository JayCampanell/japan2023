import os

def combine(combined_file_name, folder_name):
    print("Combining folder " + folder_name + " into file " + combined_file_name)
    with open(folder_name + "/" + combined_file_name, "w") as combined:
        wrote_header = False
        for file_name in os.listdir(folder_name):
            with open(folder_name + "/" + file_name) as file:
                first_line = False
                for line in file.readlines():
                    if not first_line:
                        if not wrote_header:
                            combined.write(line)
                            wrote_header = True
                    else:
                        combined.write(line)

                    first_line = True

combine('demo_combined.csv', 'demo_utf8')
combine('drugs_combined.csv', 'drugs_utf8')
combine('hist_combined.csv', 'hist_utf8')
combine('reac_combined.csv', 'reac_utf8')
