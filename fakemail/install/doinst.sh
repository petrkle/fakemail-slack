#!/bin/sh

USER=fakemail

grep -q ${USER} /etc/group || echo "${USER}:x:300:" >> /etc/group
grep -q ${USER} /etc/passwd || echo "${USER}:x:300:300:${USER}:/home/fakemail:/bin/false" >> /etc/passwd

chown -R ${USER}:${USER} /home/${USER} /var/run/${USER}
