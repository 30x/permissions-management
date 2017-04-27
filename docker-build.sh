DIR=$(pwd)

cp .dockerignore ../
cp Dockerfile ../
cd ..

docker build -t permissions-management .
docker tag permissions-management us.gcr.io/apigee-factory-project/permissions-management

cd $DIR
