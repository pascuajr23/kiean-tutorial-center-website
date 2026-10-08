# KieAn Tutorial Center Website

## Run with Docker Compose

From the repository root, build and start the website:

```sh
docker compose up --build -d
```

Open [http://localhost:3001](http://localhost:3001).

To stop the website:

```sh
docker compose down
```

GitHub Actions builds the Docker image on every push and pull request.