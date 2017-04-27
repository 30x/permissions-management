export SCHEME="http"
export AUTHORITY="sso.k8s.dev:30555"
export BASE_RESOURCE="/"

source ../../../renew-tokens.sh
python test.py