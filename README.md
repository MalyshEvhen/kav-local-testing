### REPOSITORY STORE NGINX PROXY SETTINGS AND RUNNER SCRIPTS FOR KAVALERIDZE PROJECT

By executing runner scripts you clone all 'Kavaleridze' repositories and deploy the project locally on your machine.

### Downloaded repos

 - [Kavaleridze Backend](https://github.com/baza-trainee/kavaleridze-backend)
 - [Kavaleridze Frontend](https://github.com/baza-trainee/kavaleridze)
 - [Kavaleridze Admin](https://github.com/baza-trainee/kavaleridze-admin)

### Executed command

```bash
docker compose up --build
```

And after execution press  `Ctrl + c`

```bash
docker compose down
```
After that local repos are removed.

### Links
 - [localhost:8080](http://localhost:8080) - Kavaleridze website
 - [localhost:5174](http://localhost:5174) - Admin panel
 - [localhost:8081/swagger-ui/index.html](http://localhost:8081/swagger-ui/index.html) - Swagger-ui
 - [localhost:8081/v3/api-docs](http://localhost:8081/v3/api-docs) - Open-API documentation


#### HOW TO USE:

    MAC AND LINUX:
    - clone the repo to you local machine
    - change mode of script to executable by running this cmd `chmod +x runner.sh`
    - and execute script by command `./runner.sh`
    
    WINDOWS:
    - clone the repo to local machine
    - run runner.bat by double click 
