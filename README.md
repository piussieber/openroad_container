# OpenROAD Apptainer Container

Installation scripts to build an Apptainer image for OpenROAD and install it on your `PATH`.

## Installation of the development container
Run the following commands to install:

```sh
git clone -b development_container https://github.com/piussieber/openroad_container.git openroad_dev_container
cd openroad_dev_container
git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD.git
./install_openroad.sh
rehash # only for tcsh, to refresh the PATH in the current shell
```

## Run Container
The container can be started with the `ordc` (for openroad-development-container) command. This command opens a bash shell inside the container by default. OpenROAD can be started inside the container with the `openroad` command. To start OpenROAD directly without opening bash first, pass the command as an argument (e.g., `ordc openroad`).

The container has access to the files in the directory where it was started, as well as the following paths:
```
/scratch
/home
/usr/scratch
```
This can be changed in the `run_openroad_container.sh` file for different working environments.

## Update Container
After local changes where made or new changes where pulled from git, `./install_openroad.sh` can be executed again to rebuild the container. The overwrite warning can be accepted.
