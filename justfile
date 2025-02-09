start-netdata:
  launchctl start com.github.netdata

start:
  docker compose up

stop-netdata:
  launchctl stop com.github.netdata

install-netdata:
  wget -O /tmp/netdata-kickstart.sh https://get.netdata.cloud/kickstart.sh \
      && sh /tmp/netdata-kickstart.sh

run-netdata *args:
  sudo /usr/local/netdata/usr/sbin/netdata {{ args }}

open-netdata:
  open http://localhost:19999

open-prometheus:
  open http://localhost:9090

open-grafana:
  open http://localhost:9091

edit-netdata-config:
  (cd /usr/local/netdata/etc/netdata && sudo ./edit-config netdata.conf)

edit-netdata-file-config:
  (cd /usr/local/netdata/etc/netdata && sudo ./edit-config go.d/filecheck.conf)
