FROM postgres:alpine
#FROM library/postgres
COPY postgres_init.sql /docker-entrypoint-initdb.d/
HEALTHCHECK --interval=10s --timeout=5s --retries=5 CMD [ "pg_isready" ]
