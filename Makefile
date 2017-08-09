default:
	docker network create ckan-net
	docker-compose up

volumes:
	docker volume create volume-ckan-db
	docker volume create volume-ckan-solr
	docker volume create volume-ckan-web-uploads
