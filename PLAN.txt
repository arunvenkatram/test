INFRA ARCHITECTURE:

Development team already has CI build that creates 2 artifacts -  a zip file and a war file. 
zip file has to be deployed in a server and war file has to be deployed into another server. 
The app uses prevayler - this is for storing data in a file instead of database for easy access. 

TO DO: 
Create a VM based architecture using any FLOSS tools, such that, the zip and war files get deployed in different VMs. 
Create a docker swarm architecture, such that the artifacts will be deployed in different containers. 

TO SUBMIT:
Vagrantfile, that will spin up all the VMs and using provisioner, it will install the artifacts in those VMs and bring up >> 
	How about using packer to build VM images and then use that image in vagrantfile to spin up VMs ?? << research on that.
	Provisioners can be used in vagrantfile to deploy artifacts. https://www.vagrantup.com/docs/provisioning/shell.html

In the case of docker swarm, write an automated environment, that will create multiple VMs and configure docker-swarm in it.Then have to login to swarm master and deploy the containers. 
	Regarding containers, we can use Dockerfile that will build the containers and we can use the Dockerfile in docker-compose to deploy the containers. << read about this to deploy.

PLAN TO SCALE UP: 
Regarding this, the main change will be to deploy on a different environment or site. 
And the number of VMs or instances we will create will be more, for example 5 instances, if there is 1 in SIT environment.  May be a script can be written of we are going with that. 


+++++++++++++++++++++++++++++++++++++++++++++++++++


MY PLAN: 
1. Make a vagrant file, that will create VMs and deploy artifacts using provisioners. 
	For this, the artifacts can be placed in some git/repository  server and configure VM to pull it and install.
2. Make a Dockerfile and Docker-compose file that will create 2 images and spin up containers with those 2 artifacts.  
3. A centralized script, that will make run these in 2 different machines in 2 different environments- one for prod and one for Dev, hence it will deploy in those environments when it runs. 

+++++++++++++++++++++++++++++++++++++++++++++++++++


