
import pandas as pd
import os
import glob
path = os.getcwd()
csv_files = glob.glob(os.path.join(path, "*.csv"))
x=0
for f in csv_files:
    x+=1
    df = pd.read_csv(f)
    df = df.dropna(how='any',axis=0) 
    df['index'] = range(df.shape[0])
    mas_errores_enero_2021=df.groupby(["start_station", "end_station"]).size().to_frame('size').sort_values(by='size', ascending=False).nlargest(30, 'size')
    mas_errores_enero_2021 =  pd.merge(mas_errores_enero_2021, df, on=['start_station','end_station'])
    mas_errores_enero_2021['mes']='2021/'+str(x)+'/01'
    mas_errores_enero_2021.to_csv(r'C:\Users\penzi\Desktop\data-para-kepler\mas_errores_'+str(x)+'_2021.csv')

    df = df[(df['start_station'] != df['end_station'])] 

    grpd = df.groupby(['start_station','end_station']).size().to_frame('size').sort_values(by='size', ascending=False).nlargest(30, 'size')
    mas_errores_enero_2021['mes']='2021/'+str(x)+'/01'
    grpd.to_csv(r'C:\Users\penzi\Desktop\data-para-kepler\countoftrip_'+str(x)+'_2021.csv')

    df1 =  pd.merge(grpd, df, on=['start_station','end_station'])
    df1.to_csv( r"C:\Users\penzi\Desktop\data-para-kepler\top10trips_"+ str(x) +"_2021.csv")
