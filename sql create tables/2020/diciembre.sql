use bicimad2020;
CREATE TABLE diciembre_idplug_station
  AS
select diciembre.index, diciembre.idplug_station, bicibase.Longitud as plug_Longitud, bicibase.Latitud as plug_Latitud, diciembre.travel_time as travel_time
from diciembre
join bicimad.bicibase
on  bicimad2020.diciembre.idplug_station = bicimad.bicibase.Numero;

CREATE TABLE diciembre_idunplug_station
  AS
select diciembre.index, diciembre.idunplug_station, bicibase.Longitud as unplug_Longitud, bicibase.Latitud as unplug_Latitud
from diciembre
join bicimad.bicibase
on  bicimad2020.diciembre.idunplug_station = bicimad.bicibase.Numero;

CREATE TABLE diciembre_trips
  AS
select diciembre_idunplug_station.idunplug_station as start_station, diciembre_idunplug_station.unplug_Latitud as start_station_Latitud, diciembre_idunplug_station.unplug_Longitud as start_station_Longitud, diciembre_idplug_station.idplug_station as end_station, diciembre_idplug_station.plug_Longitud as end_station_Longitud, diciembre_idplug_station.plug_Latitud as end_station_Latitud, travel_time
from bicimad2020.diciembre_idplug_station
join bicimad2020.diciembre_idunplug_station
on bicimad2020.diciembre_idunplug_station.index = bicimad2020.diciembre_idplug_station.index;