DIR=$(pwd)
cd ~/source/auth/permissions-management/test
./k8s-stop.sh
./k8s-start.sh
cd $DIR