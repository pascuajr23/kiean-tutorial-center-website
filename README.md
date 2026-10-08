# KieAn Tutorial Center Website

## Run from GitHub Packages

Build and publish the Docker image to GitHub Packages:

```sh
docker build -t ghcr.io/<OWNER>/kiean-tutorial-center-website:latest .
docker push ghcr.io/<OWNER>/kiean-tutorial-center-website:latest
```

Then run it locally from the published package:

```sh
docker pull ghcr.io/<OWNER>/kiean-tutorial-center-website:latest
docker run -d --name kiean-tutorial-center-website -p 3001:80 ghcr.io/<OWNER>/kiean-tutorial-center-website:latest
```

Open [http://localhost:3001](http://localhost:3001).

To stop the container:

```sh
docker stop kiean-tutorial-center-website
docker rm kiean-tutorial-center-website
```

GitHub Actions builds the Docker image on every push and pull request.