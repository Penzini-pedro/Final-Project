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
frame= pd.read_csv(r"C:\Users\penzi\Desktop\data-para-kepler\mas_errores\mas_errores_2021.csv")
df= frame[['start_station', 'end_station', 'start_station_Latitud', 'start_station_Longitud']]

