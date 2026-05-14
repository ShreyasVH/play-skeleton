cd $(realpath $(dirname deploy.sh))

if ! lsof -i :$PORT > /dev/null; then
    echo "Starting"
    ./dist/bin/$REPO_NAME -Dhttp.port=$PORT > server.log 2>&1 &
    echo "$JAVA_HOME" >> server.log
    echo "$PATH" >> server.log
    java --version >> server.log
fi