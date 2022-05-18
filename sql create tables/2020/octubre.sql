use bicimad2020;
CREATE TABLE octubre_idplug_station
  AS
select octubre.index, octubre.idplug_station, bicibase.Longitud as plug_Longitud, bicibase.Latitud as plug_Latitud, octubre.travel_time as travel_time
from octubre
join bicimad.bicibase
on  bicimad2020.octubre.idplug_station = bicimad.bicibase.Numero;

CREATE TABLE octubre_idunplug_station
  AS
select octubre.index, octubre.idunplug_station, bicibase.Longitud as unplug_Longitud, bicibase.Latitud as unplug_Latitud
from octubre
join bicimad.bicibase
on  bicimad2020.octubre.idunplug_station = bicimad.bicibase.Numero;

CREATE TABLE octubre_trips
  AS
select octubre_idunplug_station.idunplug_station as start_station, octubre_idunplug_station.unplug_Latitud as start_station_Latitud, octubre_idunplug_station.unplug_Longitud as start_station_Longitud, octubre_idplug_station.idplug_station as end_station, octubre_idplug_station.plug_Longitud as end_station_Longitud, octubre_idplug_station.plug_Latitud as end_station_Latitud, travel_time
from bicimad2020.octubre_idplug_station
join bicimad2020.octubre_idunplug_station
on bicimad2020.octubre_idunplug_station.index = bicimad2020.octubre_idplug_station.index;