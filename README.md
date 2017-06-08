# CKAN Setup Repo

# Notes 
To get recaptcha private/public keys visit [Google Recaptcha interface](https://www.google.com/recaptcha).

# Running
First, start postgres and solr:
```
docker-compose up -d ckan-db ckan-solr
```
Check the logs of the containers to see if initialization successfully finished:
```
docker logs -f ckan-db
docker logs -f ckan-solr
```
Then start the web front end (CKAN itself):
```
docker-compose up -d ckan
```
