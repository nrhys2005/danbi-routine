# Base Image
FROM postgres:14

# Copy init script
ADD ./create_db.sql /docker-entrypoint-initdb.d/

# Port
EXPOSE 25432

# Run

CMD ["bash", "-c", "python manage.py migrate --noinput"]
CMD ["postgres"]
