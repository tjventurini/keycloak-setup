# Keycloak Setup

This repository provides a simple setup for Keycloak using Docker Compose.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. Clone the repository:
```sh
git clone https://github.com/your-username/keycloak-setup.git
cd keycloak-setup
```

2. Start the Keycloak server:
```sh
docker-compose up -d
```

3. Access Keycloak: Open your browser and go to http://keycloak.localhost. The default admin username is admin and the password is admin.

4. Stopping the Server
To stop the Keycloak server, run:
```sh
docker-compose down
```

## Configuration
You can customize the Keycloak configuration by editing the docker-compose.yml file.

## License
This project is licensed under the MIT License.

