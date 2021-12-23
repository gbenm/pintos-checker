from gbenm/pintos
env PATH="/gbenm-actions:/utils:${PATH}"
copy checker /gbenm-actions/checker
copy setOutputFrom /gbenm-actions/setOutputFrom
entrypoint ["checker"]
