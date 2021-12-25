# PintOS Checker

## ¿Por qué es útil?
Lastimosamente mientras se avanza en las diferentes fases del sistema operativo,
si se sigue construyendo sobre la misma implementación, es posible que empiecen
a fallar las otras fases, por lo que tener un control de cuáles test pasa un
determinado "commit" es útil para darse cuenta que provocó el error.

## Instalación

### Automática
Visite esta [página](https://gbenm.gitbook.io/pintos-github-checker/).

### Github Action
#### Versión mínima
```yaml
name: 'Calificación de las fases del proyecto'

on: [push]

jobs:
  threads:
    name: 'Fase: Threads'
    runs-on: 'ubuntu-latest'
    steps:
      - name: 'Clonando repositorio'
        uses: 'actions/checkout@v2'
      - name: Pintos Checker
        id: phase
        uses: gbenm/pintos-checker@v1
        with:
            phase: "threads" # default
      - name: 'Show results'
        run: 'echo "${{ steps.phase.outputs.results }}"'
```
#### Versión completa
```yaml
name: 'Calificación de las fases del proyecto'

on: [push]

jobs:
  threads:
    name: 'Fase: Threads'
    runs-on: 'ubuntu-latest'
    steps:
      - name: 'Clonando repositorio'
        uses: 'actions/checkout@v2'
      - name: Pintos Checker
        id: phase
        uses: gbenm/pintos-checker@v1
        with:
            phase: "threads" # default
            root: "." # default
            utils_path: "utils" # default
            make: "make clean && make && make grade" # default
      - name: 'Show results'
        run: 'echo "${{ steps.phase.outputs.results }}"'
```

- **phase** es el nombre de la carpeta que se va evaluar (threads,
userprog, vm, filesys), es decir determinar que fase del proyecto
se califica.
- **root** si su repositorio sólo contiene el código fuente del
proyecto, no necesita colocarlo. Si por ejemplo, el código
está en la carpeta **src**:
```yaml
- name: Pintos Checker
  id: phase
  uses: gbenm/pintos-checker@v1
  with:
    # ...
    root: "src"
```
- **utils_path** es la carpeta relativa a **root** (el que configuró)
que contiene los scripts del proyecto (ejemplo: pintos, Pintos.pm, etc).
- **make** es la forma de empezar la calificación de una fase, tomando
en cuenta que se encuentra dentro de la carpeta de la misma, por ejemplo
si evalúa threads, estará dentro de threads/.

