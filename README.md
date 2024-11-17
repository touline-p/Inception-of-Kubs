# Inception-of-Things (IoT)

## 📝 Description
This project aims to introduce you to kubernetes from a developer perspective. You will have to set up several environments for different applications using k3s.

## 🎯 Project Overview
The project is divided into three parts:
1. **Part 1**: K3s and Vagrant
   - Setting up a local K3s cluster using Vagrant
   - One server node and one worker node
   - Network configuration and node communication

2. **Part 2**: K3s and three simple applications
   - Setting up a single node with K3s
   - Deploying three web applications
   - Configuring Ingress for routing

3. **Part 3**: K3d and Argo CD
   - Setting up K3d
   - Implementing GitOps with Argo CD
   - Continuous deployment workflow

## 🛠️ Technologies Used
- Vagrant
- K3s
- K3d
- Kubernetes
- Argo CD
- Shell Scripting

## 📋 Prerequisites
- VirtualBox
- Vagrant
- Basic understanding of virtualization and containers
- Basic knowledge of shell scripting

## 🚀 Installation and Setup

### Part 1: K3s Cluster
```bash
cd 1/
vagrant up
```

### Part 2: Three Applications
```bash
cd 2/
vagrant up
```

### Part 3: Argo CD
```bash
cd 3/
./script.sh
```

## 🏗️ Project Structure
```
.
├── 1/                      # Part 1: K3s cluster setup
│   ├── Vagrantfile        # VM configuration
│   ├── server.sh          # Server node setup script
│   ├── token              # Directory containing token for authentication
│   └── worker.sh          # Worker node setup script
├── 2/                     # Part 2: Application deployment
│   ├── Vagrantfile
│   └── requirements/      # Kubernetes manifests
│       ├── app_01/
│       │   ├── configmap.yaml
│       │   ├── deployment.yaml
│       │   ├── ingress.yaml
│       │   └── service.yaml
│       ├── app_02/
│       │   ├── configmap.yaml
│       │   ├── deployment.yaml
│       │   ├── ingress.yaml
│       │   └── service.yaml
│       ├── app_03/
│       │   ├── configmap.yaml
│       │   ├── deployment.yaml
│       │   ├── ingress.yaml
│       │   └── service.yaml
│       └── kustomization.yaml
│   ├── server.sh          # Server setup script for application deployment
│   └── token              # Directory containing token for authentication
└── 3/                     # Part 3: Argo CD setup
    ├── k3d.yaml          # K3d cluster configuration
    ├── manifest.yaml     # Argo CD application manifests
    ├── mapping.yaml      # mapping Argo CD service
    └── script.sh         # Setup script for Argo CD
```

## 🔍 Verification Steps
1. **Part 1**:
   - Check nodes: `kubectl get nodes`
   - Verify node roles and status

2. **Part 2**:
   - Access applications through configured URLs
   - Verify load balancing and routing

3. **Part 3**:
   - Access Argo CD UI
   - Verify application synchronization
