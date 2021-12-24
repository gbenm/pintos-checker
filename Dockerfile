from gbenm/pintos:1.0.0
arg wdir=/github/workspace
arg binPath=/github/workspace
workdir $wdir
env PATH="$binPath:$wdir/utils:${PATH}"
run ln -sf $wdir ~/pintos
copy checker $binPath/checker
copy setOutputFrom $binPath/setOutputFrom
entrypoint ["checker"]
