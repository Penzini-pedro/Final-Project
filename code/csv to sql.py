from sqlalchemy import create_engine
import pandas as pd

df1= pd.read_csv(r"C:\Users\penzi\Desktop\proyecto-final\bici trips\2021\csv\df1.csv")
df2= pd.read_csv(r"C:\Users\penzi\Desktop\proyecto-final\bici trips\2021\csv\df2.csv")
df3= pd.read_csv(r"C:\Users\penzi\Desktop\proyecto-final\bici trips\2021\csv\df3.csv")
df4= pd.read_csv(r"C:\Users\penzi\Desktop\proyecto-final\bici trips\2021\csv\df4.csv")
df5= pd.read_csv(r"C:\Users\penzi\Desktop\proyecto-final\bici trips\2021\csv\df5.csv")
df6= pd.read_csv(r"C:\Users\penzi\Desktop\proyecto-final\bici trips\2021\csv\df6.csv")


str_conn='mysql+pymysql://root:password@localhost:3306'
motor=create_engine(str_conn, pool_pre_ping=True)
motor.execute('create database bicimad2021;')

str_conn='mysql+pymysql://root:password@localhost:3306/bicimad2021'
motor=create_engine(str_conn, pool_pre_ping=True)
df1.to_sql(name='enero', con=motor, if_exists='append')

str_conn='mysql+pymysql://root:password@localhost:3306/bicimad2021'
motor=create_engine(str_conn, pool_pre_ping=True)
df2.to_sql(name='febrero', con=motor, if_exists='append')

str_conn='mysql+pymysql://root:password@localhost:3306/bicimad2021'
motor=create_engine(str_conn, pool_pre_ping=True)
df3.to_sql(name='marzo', con=motor, if_exists='append')

str_conn='mysql+pymysql://root:password@localhost:3306/bicimad2021'
motor=create_engine(str_conn, pool_pre_ping=True)
df4.to_sql(name='abril', con=motor, if_exists='append')

str_conn='mysql+pymysql://root:password@localhost:3306/bicimad2021'
motor=create_engine(str_conn, pool_pre_ping=True)
df5.to_sql(name='mayo', con=motor, if_exists='append')

str_conn='mysql+pymysql://root:password@localhost:3306/bicimad2021'
motor=create_engine(str_conn, pool_pre_ping=True)
df6.to_sql(name='agosto', con=motor, if_exists='append')