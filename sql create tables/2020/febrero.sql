use bicimad2020;
CREATE TABLE febrero_idplug_station
  AS
select febrero.index, febrero.idplug_station, bicibase.Longitud as plug_Longitud, bicibase.Latitud as plug_Latitud, febrero.travel_time as travel_time, febrero.unplug_hourTime as hour_time
from febrero
join bicimad.bicibase
on  bicimad2020.febrero.idplug_station = bicimad.bicibase.Numero;

CREATE TABLE febrero_idunplug_station
  AS
select febrero.index, febrero.idunplug_station, bicibase.Longitud as unplug_Longitud, bicibase.Latitud as unplug_Latitud
from febrero
join bicimad.bicibase
on  bicimad2020.febrero.idunplug_station = bicimad.bicibase.Numero;

CREATE TABLE febrero_trips
  AS
select febrero_idunplug_station.index, febrero_idunplug_station.idunplug_station as start_station, febrero_idunplug_station.unplug_Latitud as start_station_Latitud, febrero_idunplug_station.unplug_Longitud as start_station_Longitud, febrero_idplug_station.idplug_station as end_station, febrero_idplug_station.plug_Longitud as end_station_Longitud, febrero_idplug_station.plug_Latitud as end_station_Latitud, travel_time, febrero_idplug_station.hour_time as hour_time
from bicimad2020.febrero_idplug_station
join bicimad2020.febrero_idunplug_station
on bicimad2020.febrero_idunplug_station.index = bicimad2020.febrero_idplug_station.index;

CREATE table febrero_trips_final
select * from febrero_trips
group by febrero_trips.index;