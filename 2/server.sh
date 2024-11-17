apt-get update && apt-get install curl -y

# version de k3s
export INSTALL_K3S_VERSION="v1.28.7+k3s1"
# droit de lecture de la kube config
export K3S_KUBECONFIG_MODE="644"
# flannel is a network fabric to simplify network configurations
export INSTALL_K3S_EXEC="--flannel-iface=eth1" 

# install K3s
curl -sfL https://get.k3s.io | sh -

# le token est genere dans un file pour qu'il soit reutilise par le worker

# create a backup of our K3s manifests in case the mounted directory becomes unavailable
cp -r requirements /protected

# wait for K3s to be ready
until kubectl get nodes | grep -q " Ready"; do
    echo "Waiting for node to be ready..."
    sleep 2
done

# apply / launch all the apps from requirements
kubectl apply -k requirements/

