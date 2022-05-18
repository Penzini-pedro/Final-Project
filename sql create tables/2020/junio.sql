use bicimad2020;
CREATE TABLE junio_idplug_station
  AS
select junio.index, junio.idplug_station, bicibase.Longitud as plug_Longitud, bicibase.Latitud as plug_Latitud, junio.travel_time as travel_time
from junio
join bicimad.bicibase
on  bicimad2020.junio.idplug_station = bicimad.bicibase.Numero;

CREATE TABLE junio_idunplug_station
  AS
select junio.index, junio.idunplug_station, bicibase.Longitud as unplug_Longitud, bicibase.Latitud as unplug_Latitud
from junio
join bicimad.bicibase
on  bicimad2020.junio.idunplug_station = bicimad.bicibase.Numero;

CREATE TABLE junio_trips
  AS
select junio_idunplug_station.idunplug_station as start_station, junio_idunplug_station.unplug_Latitud as start_station_Latitud, junio_idunplug_station.unplug_Longitud as start_station_Longitud, junio_idplug_station.idplug_station as end_station, junio_idplug_station.plug_Longitud as end_station_Longitud, junio_idplug_station.plug_Latitud as end_station_Latitud, travel_time
from bicimad2020.junio_idplug_station
join bicimad2020.junio_idunplug_station
on bicimad2020.junio_idunplug_station.index = bicimad2020.junio_idplug_station.index;