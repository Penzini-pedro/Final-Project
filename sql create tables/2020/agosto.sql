use bicimad2020;
CREATE TABLE agosto_idplug_station
  AS
select agosto.index, agosto.idplug_station, bicibase.Longitud as plug_Longitud, bicibase.Latitud as plug_Latitud, agosto.travel_time as travel_time
from agosto
join bicimad.bicibase
on  bicimad2020.agosto.idplug_station = bicimad.bicibase.Numero;

CREATE TABLE agosto_idunplug_station
  AS
select agosto.index, agosto.idunplug_station, bicibase.Longitud as unplug_Longitud, bicibase.Latitud as unplug_Latitud
from agosto
join bicimad.bicibase
on  bicimad2020.agosto.idunplug_station = bicimad.bicibase.Numero;

CREATE TABLE agosto_trips
  AS
select agosto_idunplug_station.idunplug_station as start_station, agosto_idunplug_station.unplug_Latitud as start_station_Latitud, agosto_idunplug_station.unplug_Longitud as start_station_Longitud, agosto_idplug_station.idplug_station as end_station, agosto_idplug_station.plug_Longitud as end_station_Longitud, agosto_idplug_station.plug_Latitud as end_station_Latitud, travel_time
from bicimad2020.agosto_idplug_station
join bicimad2020.agosto_idunplug_station
on bicimad2020.agosto_idunplug_station.index = bicimad2020.agosto_idplug_station.index;