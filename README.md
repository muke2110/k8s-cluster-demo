# 🚀 Kubernetes Node.js PostgreSQL CRUD Example

This project demonstrates how to deploy a **Node.js CRUD application** with **PostgreSQL** on a Kubernetes cluster. It includes features like Persistent Volume Claims (PVC), Ingress NGINX for external access, and Horizontal Pod Autoscaler (HPA) for scalability. 🎯

This CRUD application is a **basic version** originally uploaded by another repository: [bezkoder/node-js-postgresql-crud-example](https://github.com/bezkoder/node-js-postgresql-crud-example). The primary goal of this project is to **learn Kubernetes concepts** such as clusters, nodes, pods, HPA, external access using Ingress NGINX, and PVC for PostgreSQL. 📌

---

## 📂 Directory Structure 📁
```
└── muke2110-k8s-cluster-demo/
    ├── 🐳 Dockerfile                  # Dockerfile for building Node.js application image
    ├── 📦 docker-compose.yml          # Docker Compose configuration for local testing
    ├── 📊 hpa.yaml                    # Horizontal Pod Autoscaler (HPA) configuration
    ├── 🌍 ingress.yaml                # Ingress configuration for external access
    ├── 📌 node-app.yaml               # Kubernetes Deployment & Service for Node.js app
    ├── 📜 package.json                # Node.js dependencies and scripts
    ├── 🐘 postgres.yaml               # Kubernetes Deployment & Service for PostgreSQL
    ├── 🖥️ server.js                   # Main server file for CRUD operations
    ├── 🚫 .dockerignore               # Files ignored by Docker
    └── app/
        ├── ⚙️ config/
        │   └── 🛠️ db.config.js         # Database configuration for PostgreSQL
        ├── 🏗️ controllers/
        │   └── 📌 tutorial.controller.js  # Controller for handling API requests
        ├── 🗄️ models/
        │   ├── 🔗 index.js             # Database connection setup
        │   └── 📖 tutorial.model.js     # Model definition for PostgreSQL
        └── 🚏 routes/
            └── 🛣️ tutorial.routes.js   # API routes
```

---

## 🚀 Project Overview 🎯

This project is a **CRUD application** built using **Node.js, Express.js, and PostgreSQL**. The application allows users to perform basic operations like:
- ✅ **Create** a record
- 🔍 **Read** records
- 🔄 **Update** a record
- ❌ **Delete** a record

This application is deployed using **Kubernetes** with the following components:
- 🏠 **Pods**: Run the Node.js app and PostgreSQL database.
- 📦 **Deployment**: Manages application instances.
- 🌐 **Service**: Exposes PostgreSQL and Node.js app within the cluster.
- 💾 **Persistent Volume Claim (PVC)**: Ensures PostgreSQL data persistence.
- 🔀 **Ingress NGINX**: Provides external access to the application.
- 📊 **Horizontal Pod Autoscaler (HPA)**: Scales pods based on resource usage.

---

## 🐳 Running with Docker Compose (Local Testing) 🏗️

For local development, use Docker Compose:
```sh
🚀 docker-compose up -d
```
This will start both **PostgreSQL** and **Node.js** as containers.

---

## ☸️ Deploying to Kubernetes 🛠️

### 1️⃣ Create Kubernetes Cluster (Minikube or Kind)
```sh
🏗️ minikube start --addons=ingress   # OR
🌟 kind create cluster
```

### 2️⃣ Deploy PostgreSQL 🐘
```sh
kubectl apply -f postgres.yaml
```

### 3️⃣ Deploy Node.js Application 🚀
```sh
kubectl apply -f node-app.yaml
```

### 4️⃣ Expose Application via Ingress 🌍
```sh
kubectl apply -f ingress.yaml
```

### 5️⃣ Enable Auto-scaling 📊
```sh
kubectl apply -f hpa.yaml
```

### 6️⃣ Use Minikube Tunnel for External Access 🚪
```sh
minikube tunnel
```
This will allow the **Ingress NGINX controller** to route traffic to the application externally. 🌍

---

## 🔍 Verifying Deployment 🧐
### 📌 Check Pods
```sh
kubectl get pods
```

### 🔄 Check Services
```sh
kubectl get svc
```

### 📜 Check Logs
```sh
kubectl logs -f deployment/node-app
```

---

## 📌 Key Kubernetes Components 🏗️
- 💾 **Persistent Volume Claim (PVC)**: Stores PostgreSQL data persistently.
- 📦 **Deployment**: Manages Node.js and PostgreSQL instances.
- 🌐 **Service**: Exposes applications inside the cluster.
- 🔀 **Ingress NGINX**: Routes external traffic to the application.
- 📊 **Horizontal Pod Autoscaler (HPA)**: Automatically scales application pods based on load.
- 🚪 **Minikube Tunnel**: Provides external access to services running inside Minikube.

---

## 🎯 Future Enhancements 🔥
- 🔄 Integrate a **CI/CD pipeline** for automated deployment.
- 🔑 Implement **Secrets & ConfigMaps** for better credential management.
- 📊 Monitor application using **Prometheus & Grafana**.

---

## 🙌 Contributing 🤝
Feel free to fork this repo and submit a PR with improvements! 💡

---

## 📝 License 📜
This project is licensed under the **MIT License**. 📄

