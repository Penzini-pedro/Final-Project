import pandas as pd 
df= pd.read_csv(r"C:\Users\penzi\Desktop\trips-cleaned\enero-2021.csv")
df1= pd.read_csv(r"C:\Users\penzi\Desktop\trips-cleaned\enero-2021.csv")
df = df.dropna(how='any',axis=0) 
df['index'] = range(df.shape[0])
mas_errores_enero_2021=df.groupby(["start_station", "end_station"]).size().to_frame('size').sort_values(by='size', ascending=False).nlargest(30, 'size')
mas_errores_enero_2021 =  pd.merge(mas_errores_enero_2021, df, on=['start_station','end_station'])
df = df[(df['start_station'] != df['end_station'])] 
x= df.groupby(["start_station", "end_station"], sort=False).size().sort_values(ascending=False).nlargest(30).index.tolist()
grpd = df.groupby(['start_station','end_station']).size().to_frame('size').sort_values(by='size', ascending=False).nlargest(30, 'size')
df= pd.read_csv(r"C:\Users\penzi\Desktop\trips-cleaned\enero-2021.csv")
df1 =  pd.merge(grpd, df, on=['start_station','end_station'])
df1.to_csv(r'C:\Users\penzi\Desktop\trips-cleaned\enero-2021-top-10.csv')
grpd.to_csv(r'C:\Users\penzi\Desktop\trips-cleaned\enero-2021-count_trips.csv')
mas_errores_enero_2021.to_csv(r'C:\Users\penzi\Desktop\trips-cleaned\mas_errores_enero_2021.csv')


import pandas as pd
import os
import glob
path = os.getcwd()
csv_files = glob.glob(os.path.join(path, "*.csv"))
for f in csv_files:
     df = pd.read_csv(f)