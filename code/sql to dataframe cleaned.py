from sqlalchemy import create_engine
import pandas as pd


str_conn='mysql+pymysql://root:password@localhost:3306/bicimad2021'
motor=create_engine(str_conn, pool_pre_ping=True)
dbConnection = motor.connect()
enero_2021= pd.read_sql("select * from bicimad2021.enero_trips_final", dbConnection);
enero_2021.to_csv(r"C:\Users\penzi\Desktop\enero-2021.csv")

str_conn='mysql+pymysql://root:password@localhost:3306/bicimad2021'
motor=create_engine(str_conn, pool_pre_ping=True)
dbConnection = motor.connect()
febrero_2021= pd.read_sql("select * from bicimad2021.febrero_trips_final", dbConnection);
febrero_2021.to_csv(r"C:\Users\penzi\Desktop\febrero-2021.csv")

str_conn='mysql+pymysql://root:password@localhost:3306/bicimad2021'
motor=create_engine(str_conn, pool_pre_ping=True)
dbConnection = motor.connect()
marzo_2021= pd.read_sql("select * from bicimad2021.marzo_trips_final", dbConnection);
marzo_2021.to_csv(r"C:\Users\penzi\Desktop\marzo-2021.csv")

str_conn='mysql+pymysql://root:password@localhost:3306/bicimad2021'
motor=create_engine(str_conn, pool_pre_ping=True)
dbConnection = motor.connect()
abril_2021= pd.read_sql("select * from bicimad2021.abril_trips_final", dbConnection);
abril_2021.to_csv(r"C:\Users\penzi\Desktop\abril-2021.csv")

str_conn='mysql+pymysql://root:password@localhost:3306/bicimad2021'
motor=create_engine(str_conn, pool_pre_ping=True)
dbConnection = motor.connect()
mayo_2021= pd.read_sql("select * from bicimad2021.mayo_trips_final", dbConnection);
mayo_2021.to_csv(r"C:\Users\penzi\Desktop\mayo-2021.csv")


str_conn='mysql+pymysql://root:password@localhost:3306/bicimad2021'
motor=create_engine(str_conn, pool_pre_ping=True)
dbConnection = motor.connect()
agosto_2021= pd.read_sql("select * from bicimad2021.agosto_trips_final", dbConnection);
agosto_2021.to_csv(r"C:\Users\penzi\Desktop\agosto-2021+'.csv")