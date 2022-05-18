use bicimad2020;
CREATE TABLE julio_idplug_station
  AS
select julio.index, julio.idplug_station, bicibase.Longitud as plug_Longitud, bicibase.Latitud as plug_Latitud, julio.travel_time as travel_time
from julio
join bicimad.bicibase
on  bicimad2020.julio.idplug_station = bicimad.bicibase.Numero;

CREATE TABLE julio_idunplug_station
  AS
select julio.index, julio.idunplug_station, bicibase.Longitud as unplug_Longitud, bicibase.Latitud as unplug_Latitud
from julio
join bicimad.bicibase
on  bicimad2020.julio.idunplug_station = bicimad.bicibase.Numero;

CREATE TABLE julio_trips
  AS
select julio_idunplug_station.idunplug_station as start_station, julio_idunplug_station.unplug_Latitud as start_station_Latitud, julio_idunplug_station.unplug_Longitud as start_station_Longitud, julio_idplug_station.idplug_station as end_station, julio_idplug_station.plug_Longitud as end_station_Longitud, julio_idplug_station.plug_Latitud as end_station_Latitud, travel_time
from bicimad2020.julio_idplug_station
join bicimad2020.julio_idunplug_station
on bicimad2020.julio_idunplug_station.index = bicimad2020.julio_idplug_station.index;