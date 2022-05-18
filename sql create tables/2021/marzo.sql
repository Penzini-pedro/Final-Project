use bicimad2021;
CREATE TABLE marzo_idplug_station
  AS
select marzo.index, marzo.idplug_station, bicibase.Longitud as plug_Longitud, bicibase.Latitud as plug_Latitud, marzo.travel_time as travel_time, marzo.unplug_hourTime as hour_time
from marzo
join bicimad.bicibase
on  bicimad2021.marzo.idplug_station = bicimad.bicibase.Numero;

CREATE TABLE marzo_idunplug_station
  AS
select marzo.index, marzo.idunplug_station, bicibase.Longitud as unplug_Longitud, bicibase.Latitud as unplug_Latitud
from marzo
join bicimad.bicibase
on  bicimad2021.marzo.idunplug_station = bicimad.bicibase.Numero;

CREATE TABLE marzo_trips
  AS
select marzo_idunplug_station.index, marzo_idunplug_station.idunplug_station as start_station, marzo_idunplug_station.unplug_Latitud as start_station_Latitud, marzo_idunplug_station.unplug_Longitud as start_station_Longitud, marzo_idplug_station.idplug_station as end_station, marzo_idplug_station.plug_Longitud as end_station_Longitud, marzo_idplug_station.plug_Latitud as end_station_Latitud, travel_time, marzo_idplug_station.hour_time as hour_time
from bicimad2021.marzo_idplug_station
join bicimad2021.marzo_idunplug_station
on bicimad2021.marzo_idunplug_station.index = bicimad2021.marzo_idplug_station.index;

CREATE table marzo_trips_final
select * from marzo_trips
group by marzo_trips.index;