from gbenm/pintos:1.0.0
arg wpath=/github/workspace
workdir $wpath
env PATH="/gbenm-actions:$wpath/utils:${PATH}"
run echo $PATH
run ln -sf . ~/pintos
copy checker /gbenm-actions/checker
copy setOutputFrom /gbenm-actions/setOutputFrom
entrypoint ["checker"]
