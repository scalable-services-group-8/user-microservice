# User_Microservice

**Docker Setup -->**

**Prerequisite**: _docker network create infra-network_

- docker network create userms-network

remove relative path in dockerfile before this
- docker build -t userdb-i ./src/db

update hostname before this
- docker build -t userms-i .

- docker run --name userdb-c --network userms-network -dp 127.0.0.1:3004:3306 userdb-i

- docker run --name userms-c --network userms-network -dp 127.0.0.1:3001:3001 userms-i

- docker network connect infra-network userms-c

_OR_

- docker compose up

- docker network connect infra-network userms-c

**Kubernetes Setup -->**

**Prerequisite**: _minikube start_

- kubectl apply -f userdb-deployment.yml
  
- kubectl apply -f userms-deployment.yml

- kubectl get pods

- kubectl port-forward <dbpodname> 3004:3306

- kubectl port-forward <mspodname> 3001:3001

----------------------------------------------------

- kubectl delete service userms-service

- kubectl delete service userdb-service

- kubectl delete deployment userms-deployment

- kubectl delete deployment userdb-deployment
