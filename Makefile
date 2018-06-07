build:
	docker build -t everops/aws-ebs-backups .

run: build
	docker run \
	-e AWS_PROFILE \
	-e AWS_ACCESS_KEY_ID \
	-e AWS_SECRET_ACCESS_KEY \
	-e NUM_SNAPS_TO_KEEP \
	-e DRY_RUN \
	-v ~/.aws/:/root/.aws \
	-ti everops/aws-ebs-backups

push: build
	docker push everops/aws-ebs-backups