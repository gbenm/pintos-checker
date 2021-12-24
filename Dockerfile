from gbenm/pintos:1.0.0
env PATH="/gbenm-actions:/github/workspace/utils:${PATH}"
run pwd
run ln -s . ~/pintos
copy checker /gbenm-actions/checker
copy setOutputFrom /gbenm-actions/setOutputFrom
entrypoint ["checker"]
