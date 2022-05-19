
# Projecto Final


![Alt Text](https://media.giphy.com/media/3o6ZsTkBAj89rkCS52/giphy.gif)


El bike sharing ha transformado rápidamente la cultura ciclista urbana en todo el mundo. Gracias a su éxito, las ciudades se están adaptando a ellas y los beneficios son para todos.
Sin ciclovías, navegar por la ciudad en bicicleta se convierte en la travesía de Frodo hacia Mordor. ¿Y saben cuál es uno de los principales factores asociado a la construcción de nuevas ciclovías? Así es, el bike sharing.

El presente trabajo analiza los conjuntos de datos públicos del sistema de bicicletas compartidas BiciMAD que proporcionan una información detalladadel uso del servicio. Este análisis implica la automatización de la recopilación y el preprocesamiento de los datos, un análisis estadístico de los conjuntos
de datos , y el desarrollo de un mapa web interactivo para el análisis de redes complejas definidas a partir de las estaciones de servicio y los viajes de los usuarios entre ellas.

## La recopilación de los datos 👷🏼‍♂️

BiciMAD corre a cargo de la Empresa Municipal de Transportes de Madrid (EMT), que es la empresa encargada del transporte público urbano de la ciudad de Madrid, esta empresa proporciona varios conjuntos de datos sobre el uso y el estado del servicio. El conjunto de datos de uso contiene un registro de todos los viajes que se realizaron cada mes, incluida la fecha, la estación de origen, la estación de destino y varias otras variables.

## La base de datos 💫:

Por necesidad de relacionar las ubicacion de las estaciones y los viajes decici crear una base de datos en MYsql. 

Creando una tabla por mes y una base por los años relaciono las multiples tablas para usar en el futuro.

en estas tablas pudieras cnosguir 2 geo puntos la primera siendo el punto de partida y el segundo el punto de llegada, gracias a la falta de puntos durante el viaje seria imposible proyectar el viaje sino solo los puntos de llegada y aprtida. Tambien puedes conseguir la hora y fecha de los viajes.


## MAPA interactivo 🌐:

Kepler : 

Los mapas se basan en nuestro mundo físico. Creamos mapas utilizando formas y colores abstractos para revelar patrones geográficos y contar historias sobre la existencia humana.

En Uber, aprovechamos la visualización de datos para comprender mejor cómo se mueven nuestras ciudades. Nuestras soluciones nos permiten incrustar mapas con abundantes datos de ubicación, generar millones de puntos GPS en un abrir y cerrar de ojos y, lo que es más importante, obtener información de ellos.

Para facilitar a los usuarios con una variedad de niveles de experiencia y habilidad la creación de visualizaciones de datos significativas, nos enorgullece anunciar el lanzamiento de kepler.gl, nuestra herramienta de geoanálisis de código abierto. Construido sobre el marco de visualización de datos WebGL deck.gl, kepler.gl escala el proceso de creación de mapas al obtener rápidamente información y validar ideas de visualización a partir de datos geoespaciales.


# Librerias📑:

1)Pandas\
2)Numpy\
3)Dask\
4)Flask\
5)Mysql\
6)Javascript\
7)Beautiful Soup (bs4)\
8)Python\
9)Matplot\
10)Git






