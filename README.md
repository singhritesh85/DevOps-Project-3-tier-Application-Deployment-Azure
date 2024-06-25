# DevOps-Project-3-tier-Application-Deployment-Azure
![image](https://github.com/singhritesh85/DevOps-Project-3-tier-Application-Deployment-Azure/assets/56765895/30cd84e7-2b82-4535-97ca-da92c69857a7)
<br><br/>
For your reference the Source Code for this project is present in the GitHub Repository https://github.com/singhritesh85/TWSThreeTierAppChallenge.git inside the directory Application-Code. However for the current project I have used Azure Repos into which the source code is present. as shown in the screenshot below.
![image](https://github.com/singhritesh85/DevOps-Project-3-tier-Application-Deployment-Azure/assets/56765895/5f324e70-f610-4d0a-a613-47640259c544)
<br><br/>
1. This is a three tier application (of Things-to-Do App) in which frontend or presentation layer is React Js code which is present in the directory Application-Code/frontend in the GitHub Repo https://github.com/singhritesh85/TWSThreeTierAppChallenge.git. To deploy React Js code I have created a Pipeline using Azure DevOps.
2. The Backend or Application layer is Node Js code which present in the directory Application-Code/backend in the GitHub Repo https://github.com/singhritesh85/TWSThreeTierAppChallenge.git. To deploy Node Js code I have created a Pipeline using Azure DevOps.
3. For Database or Data layer MongoDB has been used. To deploy MongoDB I have created a Pipeline using Azure DevOps.
4. To Deploy the three Pipelines I have used Helm and helm chart. These helm charts are present in the GitHub Repo https://github.com/singhritesh85/helm-repo-for-ArgoCD-three-tier-app-backend.git, https://github.com/singhritesh85/helm-repo-for-ArgoCD-three-tier-app-frontend.git and https://github.com/singhritesh85/helm-repo-for-ArgoCD-three-tier-app-database.git. In the current project I have clonned the helm chart from above mentioned repositories inside the home directory of user which is /home/demo.
<br><br/>
As discussed above there are three Pipelines using which ReactJs code, NodeJs code and MongoDB have been deployed. which is also shown in the Architechture diagram above. The azure-pipelines.yaml for ReactJs Code, NodeJs Code and MongoDB is present inside the directory azure-pipelines in this Repository. Before Running Jenkins Job for MongoDB create the password, pv (persistent volume) and pvc (persistent volume claim). To do so run the command kubectl apply -f pv.yaml, kubectl apply -f pvc.yaml and kubectl apply -f secrets.yaml. The password for MongoDB is encrypted with base64. 
<br><br/>
```
Encryption with Base64
==================================
echo "admin"|base64 -----------> Encrypt the username
ehco "password123"|base64  --------------> Encrypt the password


Decryption with Base64
==================================
echo "YWRtaW4="|base64 --decode
echo "cGFzc3dvcmQxMjM="|base64 --decode
```
The screenshot for SonarQube Analysis is shown below.
![image](https://github.com/singhritesh85/DevOps-Project-3-tier-Application-Deployment-Azure/assets/56765895/9cf0fac3-abe0-4a56-bf83-1362a388b77d)
<br><br/>
To keep the Docker Images for frontend and backend I have created two container registries with the name of akscontainer24registry1 and akscontainer24registry2 respectively in Azure Container Registries (ACR) as shown in the screenshot below.
![image](https://github.com/singhritesh85/DevOps-Project-3-tier-Application-Deployment-Azure/assets/56765895/49135f2f-9899-4b14-bd46-824585464fd6)
After Successfully Running the three Pipelines (successfully deployment of the three-tier Application) create the URL for the application using the file ingress-rule.yaml present inside the directory ingress-rule-pv-pvc-mongodbsecret with the command kubectl apply -f ingress-rule.yaml. Create a record set for the URL inside the hosted zone as shown in the screenshot below.
![image](https://github.com/singhritesh85/DevOps-Project-3-tier-Application-Deployment-Azure/assets/56765895/9141b2ad-04af-4c60-9105-ef82bd9ff43c)
<br><br/>
Using the created URL backend.singhritesh85.com access the application as shown in the screenshot below.
![image](https://github.com/singhritesh85/DevOps-Project-3-tier-Application-Deployment-Azure/assets/56765895/2aed864f-436d-4f03-9ef0-44174a26735a)
![image](https://github.com/singhritesh85/DevOps-Project-3-tier-Application-Deployment-Azure/assets/56765895/37cb06ce-5869-4f2b-9eda-2db58257001f)
<br><br/>
After Successful deployment we can see the Applications using command line as shown in the screenshot below.
![image](https://github.com/singhritesh85/DevOps-Project-3-tier-Application-Deployment-Azure/assets/56765895/478fb3f9-6f1d-4219-b142-ebac1639f2e8)

<br><br/>
The Service Connection is created as shown in the screenshot below.
![image](https://github.com/singhritesh85/DevOps-Project-3-tier-Application-Deployment-Azure/assets/56765895/16f4759f-2ab2-4b55-8a36-9f3d024550ca)
<br><br/>
The three pipelines in Azure DevOps is as shown in the screenshot below.
![image](https://github.com/singhritesh85/DevOps-Project-3-tier-Application-Deployment-Azure/assets/56765895/92ac0566-5b4d-4007-9d7a-49b27dbafaba)
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
```
source Code:-  https://github.com/singhritesh85/TWSThreeTierAppChallenge.git
```
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
```
Reference:-   https://github.com/LondheShubham153/TWSThreeTierAppChallenge.git
```
