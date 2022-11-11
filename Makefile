run:
	docker run -d -p 1234:4200 --env-file ./config/.env --rm --name logsapp logsapp:env

run-dev:
	docker run -d -p 1234:4200 -v "/home/rizone/git_hub/logs-app:/app" -v /app/node_modules --rm --name logsapp logsapp:env
	
stop:
	docker stop logsapp