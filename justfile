run:
	docker build -t grafana-enterprise . && docker run --rm -p 3000:3000 grafana-enterprise
