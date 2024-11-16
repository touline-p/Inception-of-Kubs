apt-get update;
apt-get install curl -y;

#version de k3s
export INSTALL_K3S_VERSION="v1.28.7+k3s1";
#droit de lecture de la kube config
export K3S_KUBECONFIG_MODE="644";
#flannel is a network fabric to simplify network configurations
export INSTALL_K3S_EXEC="--flannel-iface=eth1"; 

curl -sfL https://get.k3s.io | sh -;

# le token est genere dans un file pour qu'il soit reutilise par le worker
cp /shared /protected -r ;
kubectl apply -f /shared/apps/app1-deployment.yaml
kubectl apply -f /shared/apps/app2-deployment.yaml
kubectl apply -f /shared/apps/app3-deployment.yaml

