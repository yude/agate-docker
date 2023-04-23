# agate-docker

## Setup
* Docker Compose
    ```yaml
    services:
        agate:
            image: ghcr.io/yude/agate-docker:main
            restart: always
            environment:
            - AGATE_HOST=example.com
            volumes:
            - ./docs:/app/content
            - ./certs:/app/certs
            ports:
            - 1965:1965
    ```

## License
MIT