#!/bin/bash
<<<<<<< HEAD
ecs-cli configure --cluster ec2-tutorial --default-launch-type EC2 \
--config-name ec2-tutorial --region us-east-1

ecs-cli configure profile --access-key $AWS_ACCESS_KEY_ID \
--secret-key $AWS_SECRET_ACCESS_KEY \
--profile-name ec2-tutorial-profile

ecs-cli up --keypair test-jenkins-aws-ecr --capability-iam --size 2 --instance-type t2.micro \
--cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile --port 5000

sleep 60

ecs-cli compose up --create-log-groups --cluster-config ec2-tutorial \
--ecs-profile ec2-tutorial-profile

ecs-cli ps --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile

# ecs-cli down --force --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile
=======
ecs-cli configure --cluster ec2-tutorial --default-launch-type EC2 --config-name ec2-tutorial --region us-east-1

ecs-cli configure profile --access-key $AWS_ACCESS_KEY_ID --secret-key $AWS_SECRET_ACCESS_KEY --profile-name ec2-tutorial-profile

ecs-cli up --keypair test-jenkins-aws-ecr --capability-iam --size 2 --instance-type t2.micro --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile --port 5000

sleep 60

ecs-cli compose up --create-log-groups --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile

ecs-cli ps --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile

# ecs-cli down --force --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile
>>>>>>> 4f0b5e02cc2742e0b19118b11f2983a9f1950778
