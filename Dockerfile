FROM zabbix/zabbix-web-apache-mysql:ubuntu-4.0.4
COPY --chown=zabbix:zabbix env_secrets_expand.sh /
COPY --chown=zabbix:zabbix docker-entrypoint.sh /usr/bin/
RUN chmod ug+x /usr/bin/docker-entrypoint.sh
ENTRYPOINT  ["docker-entrypoint.sh"]
