## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![](https://github.com/pstrang07/ElkStack/blob/main/Diagrams/AzureProject-Page-1.jpg)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the file may be used to install only certain pieces of it, such as Filebeat.

  - [DVWA Webserver Playbook](https://github.com/pstrang07/ElkStack/blob/main/Ansible/DVWAWebserverPlaybook.yml.txt)
 - [Elk Stack Playbook](https://github.com/pstrang07/ElkStack/blob/main/Ansible/Elkplaybook.yml.txt)
 - [Filbeat Playbook](https://github.com/pstrang07/ElkStack/blob/main/Ansible/Filebeat-playbook.cfg.txt)
 - [Metricbeat Playbook](https://github.com/pstrang07/ElkStack/blob/main/Ansible/Metricbeat-playbook.yml.txt)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system metrics.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.


| Name                 | Function           | Public IP Address | Private IP Address | OS           |
|----------------------|--------------------|-------------------|--------------------|--------------|
| Jump Box Provisioner | Gateway            | 13.90.78.145      | 10.0.1.4           | Ubuntu 18.04 |
| Web1                 | Application Server | 52.168.174.54     | 10.0.1.5           | Ubuntu 18.04 |
| Web2                 | Application Server | 52.168.174.54     | 10.0.1.6           | Ubuntu 18.04 |
| ELK-VM               | ELK Stack          | 23.99.67.91       | 10.1.0.4           | Ubuntu 18.04 |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box Provisioner and Elk Stack machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

 - My Home IP Address

Machines within the network can only be accessed by The Jump box Provisoner

A summary of the access policies in place can be found in the table below.
| Name                 | Publicly Accessible | Allowed IP Addesses |
|----------------------|---------------------|---------------------|
| Jump Box Provisioner | yes                 | My Home IP Address  |
| Elk Stack            | yes                 | My Home IP Address  |
| Web1                 | no                  | 10.0.0.4            |
| Web2                 | no                  | 10.0.0.4            |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it allows for a quick and consistent configuration. 

The playbook implements the following tasks:
Configure maximum mapped memory with sysctl module

Install docker.io and python3-pip packages with apt module

Install docker python package with pip

Enable systemd docker service

Run ELK docker container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
Web-1: 10.0.0.5
Web-2: 10.0.0.6

We have installed the following Beats on these machines:
Filebeat
Metricbeat

These Beats allow us to collect the following information from each machine:
Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.

MetricBeat tracks and logs system and service information about the Elkstack VM and Webservers VM's.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
Copy the ELKStackPlaybook.yml file to /etc/ansible/roles/.
Update the /etc/ansible/hosts/ file to include the ELK stack VM IP address.
Run the playbook, and navigate to http://23.99.97.91:5601/app/kibana to check that the installation worked as expected.


