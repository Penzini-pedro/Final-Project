use bicimad2020;
CREATE TABLE noviembre_idplug_station
  AS
select noviembre.index, noviembre.idplug_station, bicibase.Longitud as plug_Longitud, bicibase.Latitud as plug_Latitud, noviembre.travel_time as travel_time
from noviembre
join bicimad.bicibase
on  bicimad2020.noviembre.idplug_station = bicimad.bicibase.Numero;

CREATE TABLE noviembre_idunplug_station
  AS
select noviembre.index, noviembre.idunplug_station, bicibase.Longitud as unplug_Longitud, bicibase.Latitud as unplug_Latitud
from noviembre
join bicimad.bicibase
on  bicimad2020.noviembre.idunplug_station = bicimad.bicibase.Numero;

CREATE TABLE noviembre_trips
  AS
select noviembre_idunplug_station.idunplug_station as start_station, noviembre_idunplug_station.unplug_Latitud as start_station_Latitud, noviembre_idunplug_station.unplug_Longitud as start_station_Longitud, noviembre_idplug_station.idplug_station as end_station, noviembre_idplug_station.plug_Longitud as end_station_Longitud, noviembre_idplug_station.plug_Latitud as end_station_Latitud, travel_time
from bicimad2020.noviembre_idplug_station
join bicimad2020.noviembre_idunplug_station
on bicimad2020.noviembre_idunplug_station.index = bicimad2020.noviembre_idplug_station.index;