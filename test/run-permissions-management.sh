export IPADDRESS="127.0.0.1"
export PORT=3200
export COMPONENT_NAME="permissions-management"
export SPEEDUP=10
export EXTERNAL_SY_ROUTER_HOST="localhost"
export EXTERNAL_SY_ROUTER_PORT="8080"
export INTERNAL_SY_ROUTER_HOST="localhost"
export INTERNAL_SY_ROUTER_PORT="8080"
export EDGE_ADDRESS="https://api.e2e.apigee.net"
export PERMISSIONS_CLIENTID=${PERMISSIONS_CLIENTID:-defaultclient} # configure this in your shell when testing
export PERMISSIONS_CLIENTSECRET=${PERMISSIONS_CLIENTSECRET:-defaultsecret} # configure this in your shell when testing
# temporary hack - using the same clientID for migration to access edge and for team to access permissions
export PERMISSIONS_CLIENTID=$PERMISSIONS_CLIENTID # configure this in your shell when testing
export PERMISSIONS_CLIENTSECRET=$PERMISSIONS_CLIENTSECRET # configure this in your shell when testing
export CLIENT_TOKEN_ISSUER="https://login.e2e.apigee.net"

source ../local-export-pg-connection-variables.sh
#NODE_DEBUG=net
node permissions-management.js