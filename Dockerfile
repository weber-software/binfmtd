FROM busybox:1.33.1 as busybox

FROM docker/binfmt:a7996909642ee92942dcd6cff44b9b95f08dad64

COPY --from=busybox /bin/busybox /bin/sh
COPY --from=busybox /bin/busybox /usr/bin/tail

CMD [ "/bin/sh", "-c", "/usr/bin/binfmt && exec tail -f /dev/null" ]
