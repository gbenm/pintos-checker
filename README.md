# PintOS Checker

**Importante:** actualmente esta versión no funciona,
así que vea [este repo](https://github.com/gbenm/pintos-checker-old)
para utilizar la forma anterior.

Este repositorio contiene los archivos necesarios para construir un github action
para la evaluación de las 4 fases del proyecto PintOS. Para las personas
que no conozcan los Github actions a modo de resumen, si instalan este
repositorio en su actual implementación del sistema operativo, tendrán la
ventaja de poder saber la calificación de su código cada vez que hagan un push
a Github, inicialmente se ejecuta sobre las ramas **main**, **develop** y **master**,
pero esto puede cambiarse de forma sencilla alterando el Github Action.

## ¿Por qué es útil?
Lastimosamente mientras se avanza en las diferentes fases del sistema operativo
si se sigue construyendo sobre la misma implementación, es posible que empiecen
a fallar las otras fases, por lo que tener un control de cuáles test pasa es
útil para darse cuenta en que "commit" (es decir en que cambio) se provocó
el fallo.

## Instalación
Para la instalación se utiliza el script de [aquí](https://gist.github.com/gbenm/1039cbcfa8cdf3c743fcc53bd254caeb),
para una explicación más detallada puede ir a la siguiente [página](https://benyamin-galeano.gitbook.io/pintos-github-checker/)
