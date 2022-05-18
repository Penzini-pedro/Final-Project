use bicimad2021;
CREATE TABLE agosto_idplug_station
  AS
select agosto.index, agosto.idplug_station, bicibase.Longitud as plug_Longitud, bicibase.Latitud as plug_Latitud, agosto.travel_time as travel_time, agosto.unplug_hourTime as hour_time
from agosto
join bicimad.bicibase
on  bicimad2021.agosto.idplug_station = bicimad.bicibase.Numero;

CREATE TABLE agosto_idunplug_station
  AS
select agosto.index, agosto.idunplug_station, bicibase.Longitud as unplug_Longitud, bicibase.Latitud as unplug_Latitud
from agosto
join bicimad.bicibase
on  bicimad2021.agosto.idunplug_station = bicimad.bicibase.Numero;

CREATE TABLE agosto_trips
  AS
select agosto_idunplug_station.index, agosto_idunplug_station.idunplug_station as start_station, agosto_idunplug_station.unplug_Latitud as start_station_Latitud, agosto_idunplug_station.unplug_Longitud as start_station_Longitud, agosto_idplug_station.idplug_station as end_station, agosto_idplug_station.plug_Longitud as end_station_Longitud, agosto_idplug_station.plug_Latitud as end_station_Latitud, travel_time, agosto_idplug_station.hour_time as hour_time
from bicimad2021.agosto_idplug_station
join bicimad2021.agosto_idunplug_station
on bicimad2021.agosto_idunplug_station.index = bicimad2021.agosto_idplug_station.index;

CREATE table agosto_trips_final
select * from agosto_trips
group by agosto_trips.index;