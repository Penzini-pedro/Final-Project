use bicimad2021;
CREATE TABLE mayo_idplug_station
  AS
select mayo.index, mayo.idplug_station, bicibase.Longitud as plug_Longitud, bicibase.Latitud as plug_Latitud, mayo.travel_time as travel_time, mayo.unplug_hourTime as hour_time
from mayo
join bicimad.bicibase
on  bicimad2021.mayo.idplug_station = bicimad.bicibase.Numero;

CREATE TABLE mayo_idunplug_station
  AS
select mayo.index, mayo.idunplug_station, bicibase.Longitud as unplug_Longitud, bicibase.Latitud as unplug_Latitud
from mayo
join bicimad.bicibase
on  bicimad2021.mayo.idunplug_station = bicimad.bicibase.Numero;

CREATE TABLE mayo_trips
  AS
select mayo_idunplug_station.index, mayo_idunplug_station.idunplug_station as start_station, mayo_idunplug_station.unplug_Latitud as start_station_Latitud, mayo_idunplug_station.unplug_Longitud as start_station_Longitud, mayo_idplug_station.idplug_station as end_station, mayo_idplug_station.plug_Longitud as end_station_Longitud, mayo_idplug_station.plug_Latitud as end_station_Latitud, travel_time, mayo_idplug_station.hour_time as hour_time
from bicimad2021.mayo_idplug_station
join bicimad2021.mayo_idunplug_station
on bicimad2021.mayo_idunplug_station.index = bicimad2021.mayo_idplug_station.index;

CREATE table mayo_trips_final
select * from mayo_trips
group by mayo_trips.index;
