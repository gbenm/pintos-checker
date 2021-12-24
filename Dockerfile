from gbenm/pintos:1.0.0
env PATH="/gbenm-actions:/github/workspace/utils:${PATH}"
copy checker /gbenm-actions/checker
copy setOutputFrom /gbenm-actions/setOutputFrom
entrypoint ["checker"]
