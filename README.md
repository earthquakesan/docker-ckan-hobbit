# CKAN HOBBIT Setup Repo

# Notes 
To get recaptcha private/public keys visit [https://www.google.com/recaptcha](Google Recaptcha interface).

# Running
First, start postgres and solr:
```
docker-compose up -d ckan-hobbit-db ckan-hobbit-solr
```
Check the logs of the containers to see if initialization successfully finished:
```
docker logs -f ckan-hobbit-db
docker logs -f ckan-hobbit-solr
```
Then start the web front end (CKAN itself):
```
docker-compose up -d hobbit-ckan
```

On the ```master``` branch the ports are not exposed. 
In production, you should not expose the ports but use [nginx-proxy](https://github.com/jwilder/nginx-proxy) instead.
In case you want to run local version for testing and development see ```develop``` branch of this repository (got ports exposed).
