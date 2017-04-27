DIR=$(pwd)

cd ~/source/desired-state

source k8s-export-pg-connection-variables.sh

kubectl delete secret desired-state --namespace=apigee
kubectl create secret generic desired-state --from-literal=pguser=${PG_USER} --from-literal=pgpassword=${PG_PASSWORD} --from-literal=pghost=${PG_HOST} --from-literal=pgdatabase=${PG_DATABASE} --namespace=apigee

cd ~/source/desired-state/ds-allinone/test

kubectl create -f k8s-deployment.yaml

cd $DIR