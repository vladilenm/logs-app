run:
	docker run -d -p 1234:4200 --env-file ./config/.env --rm --name logsapp logsapp:env