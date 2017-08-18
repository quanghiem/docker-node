# Docker environment for NodeJS and TypeScript
This repository contains a Docker environment to develop NodeJS and TypeScript.

The container installs all dependencies and runs the application with [nodemon](https://www.npmjs.com/package/nodemon). When changes are made in the `dist` folder the application restarts automaticly.

## Start the container
Run the following commands
```shell
docker build -t server .
```
```shell
docker run -p 80:80 server
```

For docker compose run
```
docker-compose up
```
Add the flag `-d` to run the container in the background.

## TypeScript development
When developing TypeScript, you must install all dependencies with `npm install` local as well. The TypeScript compiler need these dependencies to work properly.

Run the command `npm run watch` from the `package.json` file to start the typescript compiler watching your `src` folder. The output folder of the compiler is the `dist` folder.

## Remote debugging with Visual Studio Code
You can find a `launch.json` file in the `.vscode` folder. Add this folder to your project and press `f5`. The debugger will now connect to the docker container and you can start debugging!