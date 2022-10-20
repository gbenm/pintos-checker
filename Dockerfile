FROM gbenm/pintos:latest
ARG wdir=/github/workspace
ARG binPath=/gbenm-actions
WORKDIR $wdir
ENV PATH="$binPath:$binPath/utils:${PATH}"
COPY checker $binPath/checker
COPY setOutputFrom $binPath/setOutputFrom
ENTRYPOINT ["checker"]
