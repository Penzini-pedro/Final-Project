use bicimad2020;
CREATE TABLE septiembre_idplug_station
  AS
select septiembre.index, septiembre.idplug_station, bicibase.Longitud as plug_Longitud, bicibase.Latitud as plug_Latitud, septiembre.travel_time as travel_time
from septiembre
join bicimad.bicibase
on  bicimad2020.septiembre.idplug_station = bicimad.bicibase.Numero;

CREATE TABLE septiembre_idunplug_station
  AS
select septiembre.index, septiembre.idunplug_station, bicibase.Longitud as unplug_Longitud, bicibase.Latitud as unplug_Latitud
from septiembre
join bicimad.bicibase
on  bicimad2020.septiembre.idunplug_station = bicimad.bicibase.Numero;

CREATE TABLE septiembre_trips
  AS
select septiembre_idunplug_station.idunplug_station as start_station, septiembre_idunplug_station.unplug_Latitud as start_station_Latitud, septiembre_idunplug_station.unplug_Longitud as start_station_Longitud, septiembre_idplug_station.idplug_station as end_station, septiembre_idplug_station.plug_Longitud as end_station_Longitud, septiembre_idplug_station.plug_Latitud as end_station_Latitud, travel_time
from bicimad2020.septiembre_idplug_station
join bicimad2020.septiembre_idunplug_station
on bicimad2020.septiembre_idunplug_station.index = bicimad2020.septiembre_idplug_station.index;