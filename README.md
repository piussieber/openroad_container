# OpenROAD Apptainer Container

Installation scripts to build an Apptainer image for OpenROAD and install it on your `PATH`.

## Installation
Run the following commands to install:

```sh
git clone https://github.com/piussieber/openroad_container.git
cd openroad_container
./install_openroad.sh
rehash # only for tcsh, to refresh the PATH in the current shell
```

## Run Container
The container can be started with the `orc` command. This command opens a bash shell inside the container by default. OpenROAD can be started inside the container with the `openroad` command. To start OpenROAD directly without opening bash first, pass the command as an argument (e.g., `orc openroad`).

The container has access to the files in the directory where it was started, as well as the following paths:
```
/scratch
/home
/usr/scratch
```
This can be changed in the `run_openroad_container.sh` file for different working environments.

## Update Container
To recreate the container with the latest OpenROAD version, rerun `./install_openroad.sh`. The overwrite warning can be accepted.