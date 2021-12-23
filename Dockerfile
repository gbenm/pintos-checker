from gbenm/pintos
env PATH="/gbenm-actions:${PATH}"
copy checker /gbenm-actions/checker
copy setOutputFrom /gbenm-actions/setOutputFrom
entrypoint ["checker"]
