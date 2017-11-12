FROM ubuntu
RUN apt-get update && \
    apt install -y python python-pip && \
	rm -rf /var/lib/apt/lists
RUN pip install Flask
COPY client.py /app/client.py
EXPOSE 80
WORKDIR /app
CMD FLASK_APP=client.py flask run