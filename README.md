# A Template for self hosted lab
A simple server/homelab kickstart, but why?

Its simple, I need a simple script to setup my master server to deploy and mantain my
data in my server. So this is a simple, no thrills instalation of the things I mostly use. Of course
there is no in-detail of things that I do to acces it outside my network, such as VPNs, but still is a good start.

Should you use this as an example? yes! Should you use it at all? probably not, but take an inspiration from it and when you are ready to use your simple home lab, get some inspiration from here.

## Setup
First run the setup.sh file to install docker and docker-compose in your fresh install server (ubuntu/bash scrpit) and also installs go for lazydock dependecy

## Step One
Install Gitea Intance

## Step Two
Install the important things for server management

## Step Three
Install the vpn that is desired to access the server remotely and only by you outside the network. This part is optional if this is a home server but in this case im using this small server lab to be the master server of all the deployment and continous integration of my projects.


## side note
The docker-compose files need and .env file to work. you will notice