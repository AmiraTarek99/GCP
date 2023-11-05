# GCP Infrastructure
Building our infrastructure on GCP [ Google Cloud Platform ] using terraform :

    Network infrastructure [ VPC , Subnets ,  NAT , Router ]
    Public GKE [ Google Kubernetes Engine ]
    

# Apply Infrastructure

  Applying the infra using jenkins pipline which runs all terraform commands.
  it can make build and destroy to the infra .
  ![Alt text](<Screenshot from 2023-11-05 10-35-32.png>)
  ![Alt text](<Screenshot from 2023-11-05 09-25-22.png>)
  ![Alt text](<Screenshot from 2023-11-05 10-32-10.png>)

#  Push App image

   Bulding docker file for the app.
   Making GCP Artifact Registery Repo.
   pushing docker image to repo.
   ![Alt text](<Screenshot from 2023-11-05 10-39-37.png>)


# App Deployment

  By using another jenkins pipeline which connect to the cluster and 
  use kubecl commands to deploy app on the cluster this pipline is running automatically after the first pipline 
  ![Alt text](<Screenshot from 2023-11-05 09-26-15.png>)
  ![Alt text](<Screenshot from 2023-11-05 10-42-52.png>)
  ![Alt text](<Screenshot from 2023-11-05 10-43-21.png>)
  