# User_Microservice

**Prerequisite**: _docker network create infra-network_

docker network create userms-network

docker build -t userdb-i ./src/db

docker build -t userms-i .

docker run --name userdb-c --network userms-network -dp 127.0.0.1:3004:3306 userdb-i

docker run --name userms-c --network userms-network -dp 127.0.0.1:3001:3001 userms-i

docker network connect infra-network userms-c

**OR**

docker compose up
