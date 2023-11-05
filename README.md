# GCP Infrastructure
Building our infrastructure on GCP [ Google Cloud Platform ] using terraform :

    Network infrastructure [ VPC , Subnets ,  NAT , Router ]
    Public GKE [ Google Kubernetes Engine ]

# Apply Infrastructure

  Applying the infra using jenkins pipline which runs all terraform commands.
  it can make build and destroy to the infra .

#  Push App image

   Bulding docker file for the app.
   Making GCP Artifact Registery Repo.
   pushing docker image to repo.

# App Deployment

  By using another jenkins pipeline which connect to the cluster and 
  use kubecl commands to deploy app on the cluster this pipline is running automatically after the first pipline 
  