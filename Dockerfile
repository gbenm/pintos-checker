from gbenm/pintos:latest
arg wdir=/github/workspace
arg binPath=/gbenm-actions
workdir $wdir
env PATH="$binPath:$binPath/utils:${PATH}"
copy checker $binPath/checker
copy setOutputFrom $binPath/setOutputFrom
entrypoint ["checker"]
