#!/bin/sh

USER=fakemail

grep -q ${USER} /etc/group || echo "${USER}:x:300:" >> /etc/group
grep -q ${USER} /etc/passwd || echo "${USER}:x:300:300:${USER}:/home/fakemail:/bin/false" >> /etc/passwd

[ -d /home/${USER} ] || mkdir /home/${USER}
[ -d /var/run/${USER} ] || mkdir /var/run/${USER}

chown -R ${USER}:${USER} /home/${USER} /var/run/${USER}
