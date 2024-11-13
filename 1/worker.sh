apt-get update
apt-get install -y 
apt-get install curl -y

# https://docs.k3s.io/quick-start
curl -sfL https://get.k3s.io | K3S_URL=https://192.168.56.110:6443 K3S_TOKEN=mynodetoken sh -
