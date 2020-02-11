# environment variables
export REMOTE=~/Desygner/remote_dev
export WORK=~/dev

export ENV=$REMOTE

function getenv () { echo $ENV }
function setenv_remote () { ENV=$REMOTE }
function setenv_work () { ENV=$WORK }