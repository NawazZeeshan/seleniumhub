FROM ubuntu:14.04
MAINTAINER Andy <mouyigang@gmail.com>

#========================
# Selenium Configuration
#========================

EXPOSE 4444

ENV GRID_THROW_ON_CAPABILITY_NOT_PRESENT true
# In milliseconds
ENV GRID_NEW_SESSION_WAIT_TIMEOUT -1
ENV GRID_JETTY_MAX_THREADS -1
# In milliseconds
ENV GRID_NODE_POLLING  5000
# In milliseconds
ENV GRID_CLEAN_UP_CYCLE 5000
# In seconds
ENV GRID_TIMEOUT 30
# In seconds
ENV GRID_BROWSER_TIMEOUT 0
ENV GRID_MAX_SESSION 5
# In milliseconds
ENV GRID_UNREGISTER_IF_STILL_DOWN_AFTER 30000

COPY entry_point.sh /opt/bin/entry_point.sh

USER seluser

CMD ["/opt/bin/entry_point.sh"]
