FROM evinobr/base-magento2:v1.3.0

COPY configs/php/php.ini /usr/local/etc/php
COPY scripts /opt/scripts
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
