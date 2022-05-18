use bicimad2021;
CREATE TABLE enero_idplug_station
  AS
select enero.index, enero.idplug_station, bicibase.Longitud as plug_Longitud, bicibase.Latitud as plug_Latitud, enero.travel_time as travel_time, enero.unplug_hourTime as hour_time
from enero
join bicimad.bicibase
on  bicimad2021.enero.idplug_station = bicimad.bicibase.Numero;

CREATE TABLE enero_idunplug_station
  AS
select enero.index, enero.idunplug_station, bicibase.Longitud as unplug_Longitud, bicibase.Latitud as unplug_Latitud
from enero
join bicimad.bicibase
on  bicimad2021.enero.idunplug_station = bicimad.bicibase.Numero;

CREATE TABLE enero_trips
  AS
select enero_idunplug_station.index, enero_idunplug_station.idunplug_station as start_station, enero_idunplug_station.unplug_Latitud as start_station_Latitud, enero_idunplug_station.unplug_Longitud as start_station_Longitud, enero_idplug_station.idplug_station as end_station, enero_idplug_station.plug_Longitud as end_station_Longitud, enero_idplug_station.plug_Latitud as end_station_Latitud, travel_time, enero_idplug_station.hour_time as hour_time
from bicimad2021.enero_idplug_station
join bicimad2021.enero_idunplug_station
on bicimad2021.enero_idunplug_station.index = bicimad2021.enero_idplug_station.index;

CREATE table enero_trips_final
select * from enero_trips
group by enero_trips.index;