# Correr el proyecto sin tener los repos:

## Requisitos previos

- Instalar docker: https://docs.docker.com/install/
- Instalar docker compose: https://docs.docker.com/compose/install/

## Comando

### Importante: Es necesario tener disponibles los siguientes puertos: 9000, 5001, 7000, 5000, 3000

Descargar el repositorio, una vez hecho esto ingresar a la carpeta de prod:

```cd prod```

una vez habiendo hecho esto, ejecutar el siguiente comando:

```docker-compose up --build```

esperar a que aparezcan los siguientes mensajes en la consola:

```
frontend_1           | Compiled successfully!
frontend_1           | 
frontend_1           | You can now view my-app in the browser.
frontend_1           | 
frontend_1           |   Local:            http://localhost:3000/
frontend_1           |   On Your Network:  http://192.168.128.2:3000/
frontend_1           | 
frontend_1           | Note that the development build is not optimized.
frontend_1           | To create a production build, use npm run build.
frontend_1           | 
```

Para chequear que los demas servicios se hayan inicializado correctamente buscar:
```
math-solver_1        | Watching for file changes with StatReloader
users-service-prod   | Server started at port 7000
exercises-service-prod | Server started at port 9000
courses-service-prod | Server started at port 5001
```

Una vez levantada la app:

Abrir un browser e ingresar a:

http://localhost:3000/

# Detener la ejecucion

con Ctrl + C deberia cortarse la ejecucion. En caso de quedar un container corriendo podemos ejecutar:

```
docker stop $(docker ps -a -q)
```

# Limpieza

Recordar cada tanto borrar las imagenes y containers no utilizadas:

https://docs.docker.com/config/pruning/
