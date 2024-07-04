# Post-process the csv file from pgadmin export
import csv

with open("_derpibooru.csv") as in_file:
    r = csv.reader(in_file)
    with open("derpibooru.csv", "w") as out_file:
        w = csv.writer(out_file, quoting=csv.QUOTE_MINIMAL)
        for row in r:
            w.writerow(row)

lines = None
with open('derpibooru.csv', 'r') as file:
    lines = file.read().replace(',\n', '\n')
with open('derpibooru.csv', 'w') as file:
    file.writelines(lines.splitlines(True)[1:])
