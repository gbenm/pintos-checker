from gbenm/pintos:latest
arg wdir=/github/workspace
arg binPath=/gbenm-actions
workdir $wdir
env PATH="$binPath:$wdir/utils:${PATH}"
run rm -r ~/pintos && ln -sf $wdir ~/pintos
copy checker $binPath/checker
copy setOutputFrom $binPath/setOutputFrom
entrypoint ["checker"]
