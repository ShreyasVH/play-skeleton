source $HOME/.zshrc
cd $HOME/workspace/myProjects/java/play/play-skeleton
source .envrc
echo $PATH


if ! lsof -i :$PORT > /dev/null; then
    pwd
    echo "Starting"
    env
    ./dist/bin/$REPO_NAME -Dhttp.port=$PORT > server.log 2>&1 &
fi