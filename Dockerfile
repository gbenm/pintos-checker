from gbenm/pintos
env PATH="/gbenm-actions:/github/workspace/utils:${PATH}"
copy checker /gbenm-actions/checker
copy setOutputFrom /gbenm-actions/setOutputFrom
entrypoint ["checker"]
