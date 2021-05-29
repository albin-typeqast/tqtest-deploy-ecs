aws cloudformation deploy --template-file ./EcsClusterStack --stack-name EcsClusterStack --parameter-overrides KeyName=tqtest-albin --tags 'Key=env Value=dev' 'Key=app Value=tqtest-ecs-hello-world' --capabilities CAPABILITY_IAM --profile=tq-dev --region=eu-west-1 
aws cloudformation deploy --template-file ./Jenkins --stack-name Jenkins --parameter-overrides KeyName=tqtest-albin --tags 'Key=env Value=dev' 'Key=app Value=jenkins-server' --capabilities CAPABILITY_IAM --profile=tq-dev --region=eu-west-1
aws ecr create-repository --repository-name tqtest-ecr-hello-world --tags 'Key=env Value=dev' 'Key=app Value=tqtest-ecs-hello-world' --profile=tq-dev --region=eu-west-1

