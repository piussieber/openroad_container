# OpenROAD Singularity Container for Development

Singularity container to build and run OpenROAD. The provided scripts install the container directly in `PATH` to make it easily accessible.

## Installation of the development container
Run the following commands to install the prebuilt container:

```sh
git clone -b development_container https://github.com/piussieber/openroad_container.git openroad_dev_container
cd openroad_dev_container
git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD.git
./install_container.sh
rehash # only for tcsh, to refresh the PATH in the current shell
```

## Build OpenROAD
OpenROAD can be built in the container with the command `ordc build_openroad`. The built files are mounted with a bind to make them persistent.

## Run OpenROAD
OpenROAD can be started with the `ordc openroad` command. 

## Additional Informations
The container can be started with the `ordc` (for openroad-development-container) command. Running it without any additional argument opens a bash shell inside the container by default. OpenROAD can be started inside the container with the `openroad` command.

The container has access to the files in the directory where it was started, as well as the following paths:
```
/scratch
/home
/usr/scratch
```
This can be changed in the `run_openroad_container.sh` file for different working environments.

## Update Container
The provided container also includes all the dependencies for OpenROAD. If dependencies change, the container needs to be rebuilt. This can be done running `build_container.sh` Runnint this command also installs the new container directly.
