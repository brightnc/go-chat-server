postgresinit:
	docker run --name postgres16 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=1234 -d postgres:16-alpine
postgres:
	docker exec -it postgres16 psql  
createdb:
	docker exec -it postgres16 createdb --username=root --owner=root go-chat 

dropdb:
	docker exec -it postgres16 dropdb --username=root --owner=root go-chat 