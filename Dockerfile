from python:latest

# First prototype, after an executor is implemented, the following will change
COPY tests/ tests/
COPY solutions/xample00/find_max.py tests/

WORKDIR /tests/
RUN chmod 755 run.sh

CMD ["/bin/sh", "-c", "./run.sh"]