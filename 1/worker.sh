apt-get update && apt-get install curl -y

# K3s Configuration
export INSTALL_K3S_VERSION="v1.28.7+k3s1"
export K3S_KUBECONFIG_MODE="644"
export INSTALL_K3S_EXEC="--flannel-iface=eth1"
export K3S_TOKEN_FILE=/token/token
export K3S_URL=https://192.168.56.110:6443

# wait for token file to be available
until [ -f "${K3S_TOKEN_FILE}" ]; do
    echo "Waiting for token file..."
    sleep 2
done

# install K3s agent
curl -sfL https://get.k3s.io | sh -