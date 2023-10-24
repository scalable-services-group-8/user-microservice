# User_Microservice

docker network create userms-network

docker build -t userdb-i ./src/db

docker run --name userdb-c --network userms-network -dp 127.0.0.1:3004:3306 userdb-i

docker build -t userms-i .

docker run --name userms-c --network userms-network -dp 127.0.0.1:3001:3001 userms-i
