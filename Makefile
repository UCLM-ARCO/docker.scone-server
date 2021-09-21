
PORT=6517
IMAGE=arco/scone-server:latest

scone-start:
	docker rm scone-server
	rm -f .scone/server.pid
	docker run -d --name scone-server -v $$PWD:/app -p ${PORT}:${PORT} -u $(shell id -u) ${IMAGE}

scone-stop:
	docker kill --signal SIGQUIT scone-server

query:
	echo "(is-x-a-y? {Lucas} {monkey})" | ncat localhost 6517
