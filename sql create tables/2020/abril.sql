use bicimad2020;
CREATE TABLE abril_idplug_station
  AS
select abril.index, abril.idplug_station, bicibase.Longitud as plug_Longitud, bicibase.Latitud as plug_Latitud, abril.travel_time as travel_time
from abril
join bicimad.bicibase
on  bicimad2020.abril.idplug_station = bicimad.bicibase.Numero;

CREATE TABLE abril_idunplug_station
  AS
select abril.index, abril.idunplug_station, bicibase.Longitud as unplug_Longitud, bicibase.Latitud as unplug_Latitud
from abril
join bicimad.bicibase
on  bicimad2020.abril.idunplug_station = bicimad.bicibase.Numero;

CREATE TABLE abril_trips
  AS
select abril_idunplug_station.idunplug_station as start_station, abril_idunplug_station.unplug_Latitud as start_station_Latitud, abril_idunplug_station.unplug_Longitud as start_station_Longitud, abril_idplug_station.idplug_station as end_station, abril_idplug_station.plug_Longitud as end_station_Longitud, abril_idplug_station.plug_Latitud as end_station_Latitud, travel_time
from bicimad2020.abril_idplug_station
join bicimad2020.abril_idunplug_station
on bicimad2020.abril_idunplug_station.index = bicimad2020.abril_idplug_station.index;