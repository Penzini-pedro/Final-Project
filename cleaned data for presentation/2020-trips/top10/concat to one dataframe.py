
import pandas as pd
import os
import glob

path = os.getcwd()
csv_files = glob.glob(os.path.join(path, "*.csv"))

li = []

for filename in csv_files:
    df = pd.read_csv(filename, index_col=None, header=0)
    li.append(df)

    frame = pd.concat(li, axis=0, ignore_index=True)
frame.to_csv(r"C:\Users\penzi\Desktop\top10-2020.csv", index=False)