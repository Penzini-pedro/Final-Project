
path = r"C:\Users\penzi\Desktop\proyecto-final\bici trips\2021" # use your path
import os, json
import pandas as pd
path_to_json = path
all_files = [pos_json for pos_json in os.listdir(path_to_json) if pos_json.endswith('.json')]


li = []

x=0
y=1

for filename in all_files:
    df = pd.read_json(filename, lines=True)
    df=df[['idplug_base', 'user_type', 'idunplug_base','travel_time', 'idunplug_station', 'ageRange', 'idplug_station','unplug_hourTime', "unplug_hourTime"]]
    df.columns =['idplug_base', 'user_type', 'idunplug_base','travel_time', 'idunplug_station', 'ageRange', 'idplug_station','unplug_hourTime', "unplug_hourTime"]
    df['Date'] = '2021-'+str(y)
    y+=1
    li.append(df)
    x+=1
    df.to_csv(r"C:\Users\penzi\Desktop\proyecto-final\bici trips\2021"+ '\df' + str(x) +'.csv')
    

