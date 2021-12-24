from gbenm/pintos:1.0.0
workdir /github/workspace
env PATH="/gbenm-actions:./utils:${PATH}"
run echo $PATH
run ln -sf . ~/pintos
copy checker /gbenm-actions/checker
copy setOutputFrom /gbenm-actions/setOutputFrom
entrypoint ["checker"]
