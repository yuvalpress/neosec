# NeoSec Exercise Explanation

### Application:
The application exposes a file directory given to it as a variable set inside the helm chart

### Helm Chart:
The helm chart is built of:
1. configmap - Holds files to be exposed to the user through the server.
2. deployment - holds the application itself (2 replicas).
3. service - exposes the service through the AWS Load Balancer.
4. Chart.yaml - Defines the helm chart itself
5. values.yaml - Defines the variables to be used in the application

### Workflow
The Git Actions Workflow does two jobs:
1. Build a new version of the docker image (the  file server application) on every push to the main branch
2. Deploy the Helm chart found under /charts to the Configured EKS cluster using the secrets configured in Github Actions