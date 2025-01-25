# Dee-Docs

Some nodes of the process.

## Local runtime

- build the container

  ```bash
  docker buildx build -t datawiz:local .
  ```

- run the container

  ```bash
  docker compose -f dc.dev.yml up
  ```

  or

  ```bash
  docker run -p 8080:8080 --name datawiz datawiz:local
  ```

- open [http://localhost:8080/]
