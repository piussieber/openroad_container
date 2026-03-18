# OpenROAD Apptainer Container
Installation scripts to create apptainer image from openroad and install in path.

## Installation
Run the following commands to install this script:
```
git clone https://github.com/piussieber/openroad_container.git
cd openroad_container
./install_openroad.sh
rehash # only if tcsh-shell is used, to reload path variable in the current window
```

## Run Container
The container can be started with the `orc` command. This command will open the bash shell inside the container by default. Openroad can be started inside the container with the `openroad` command. To start openroad directly without opening bash first, the command can be given to the container as an argument (`orc openroad`).

The container has access access to the files in the folder it was started from, as well as the following paths:
```
/scratch
/home
/usr/scratch
```
This can be changed in the `run_openroad_container.sh` file for different working environments.

## Update Container
To recreate the container with the newest openroad-version just rerun `./install_openroad.sh`. The overwrite warning can be accepted.