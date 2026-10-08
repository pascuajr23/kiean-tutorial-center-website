# KieAn Tutorial Center Website

## Run from GitHub Packages

This project publishes the image to GitHub Container Registry at:

```sh
ghcr.io/pascuajr23/kiean-tutorial-center-website:latest
```

Pull and run it locally:

```sh
docker pull ghcr.io/pascuajr23/kiean-tutorial-center-website:latest
docker run -d --name kiean-tutorial-center-website -p 3001:80 ghcr.io/pascuajr23/kiean-tutorial-center-website:latest
```

Open [http://localhost:3001](http://localhost:3001).

To stop the container:

```sh
docker stop kiean-tutorial-center-website
docker rm kiean-tutorial-center-website
```

You can also use Docker Compose with the pulled image:

```yaml
services:
  website:
    image: ghcr.io/pascuajr23/kiean-tutorial-center-website:latest
    ports:
      - "3001:80"
    restart: unless-stopped
```

Then start it with:

```sh
docker compose up -d
```

To stop it:

```sh
docker compose down
```

GitHub Actions builds the Docker image on every push and pull request.