# Stratia prueba técnica

Prueba técnica para la empresa Stratia, realizado con Ruby on Rails y PostgreSQL.

## Versiones

| Programa    | Versión                                                      |
|-------------|--------------------------------------------------------------|
| Ruby        | ruby 3.3.2 (2024-05-30 revision e5a195edf6) [x64-mingw-ucrt] |
| Rails       | Rails 7.1.3.4                                                |
| PostgreSQL  | 16.3                                                         |

## Instrucciones de ejecución

> [!NOTE]
> Se asumirá que Ruby, Rails, PostgreSQL ya fueron descargados.

### Base de datos

Las bases de datos que deben estar creadas en PostgreSQL son:

<ul>
  <li>stratia_test_test</li> 
  <li>stratia_test_production</li> 
  <li>stratia_test_development</li> 
</ul>

La que se utiliza para guardar los datos es `stratia_test_development`

El usuario utilizado es `postgres` con la contraseña `1234` en el puerto `5432`.

Si por alguna razón estos no están disponibles ir a `./config/database.yml` y modificar los campos requeridos.

<hr />

### Ejecución de la aplicación

Instalamos los bundle:

```sh
bundle install
```

Realizamos la migración de la DB:

> [!WARNING]
> Recordar crear las bases de datos anteriormente mencionadas.

```sh
rails db:migrate
```

Ejecutamos la aplicación:

```sh
rails s
```

