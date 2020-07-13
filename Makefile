all: deploy

plan: route53-ddns.tf
	terraform plan

deploy: route53-ddns.tf deploy/route53-ddns.zip
	terraform apply


clean:
	rm -rf deploy/

.PHONY: all clean plan deploy
