# nbgraderutils: Automatically graded Java web exercises

This repository provides scripts and information to offer web-based Java assignments.

It uses *Jupyter Notebook* for web access and the extension *nbgrader* for assignments.
Additionally, *JupyterHub* manages multiple users, *IJava* provides language support, and files are managed by *Docker*.

If you haven't heard of *nbgrader* yet, you can watch the video [YouTube: nbgrader at SciPy 2017](https://www.youtube.com/watch?v=5WUm0QuJdFw).


## Quick start

1. **Install Docker**  
   [www.docker.com](https://www.docker.com/)
2. **Download and unpack nbgraderutils**  
   `wget https://github.com/dice-group/nbgraderutils/archive/master.zip`  
   `unzip master.zip`
3. **Build Docker image**  
   `sudo docker build -t nbgjava:latest nbgraderutils-master/docker/`  
   (This takes about 9 minutes.)
4. **Run Docker container**  
   `sudo docker run -t -d -p 8000:8000 --name nbgjava nbgjava:latest`  
5. **Initialize the system**  
  `sudo ./nbgraderutils-master/scripts/initialize.sh`  
   (This creates example student accounts *nbgtesta*, *nbgtestb*, and *nbgtestc*.
   It also copies assignment templates.)
6. **Go ahead**  
   Open [https://localhost:8000/](https://localhost:8000/)  
   Ignore messages like 'Your connection is not private' for now.  
   You can use the teacher account *nbgadmin*, and the student test accounts *nbgtesta*, *nbgtestb*, *nbgtestc*, and *nbguser*.  
   All passwords are *nbgpsw*. You have to change the passwords for public installations.

The [wiki](https://github.com/dice-group/nbgraderutils/wiki) provides detailed descriptions.


## Info

- Code  
  https://github.com/dice-group/nbgraderutils
- Documentation  
  https://github.com/dice-group/nbgraderutils/wiki
- Credits  
  Data Science Group (DICE) at Paderborn University  
  Adrian Wilke and Michael Röder  
  https://dice.cs.uni-paderborn.de/
