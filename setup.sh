minikube stop || true
minikube delete || true

minikube config set cpus 4
minikube config set memory 8192
minikube start --driver hyperkit
minikube addons enable ingress
minikube addons enable metrics-server

kubectl get node minikube -o jsonpath='{.status.capacity}'

eval $(minikube docker-env)
sh load_all.sh

kubectl apply -k ./deployment

minikube dashboard
