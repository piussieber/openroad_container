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
The container can be started with the `orc` command. The container has only access to the path it is started in, as well as the design library path (defined in openroad.def) \
This command will open the bash shell inside the container by default. Openroad can be started inside the container with the `openroad` command. To start openroad directly without opening bash first, the command can be given to the container as an argument (`orc openroad`).

## Update Container
To recreate the container with the newest openroad-version just rerun `./install_openroad.sh`. The overwrite warning can be accepted.