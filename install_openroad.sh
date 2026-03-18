#!/bin/bash
if test -d OpenROAD; then
    cd OpenROAD
    git pull
    git submodule update --init --recursive
    cd ..
else
    git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD.git
fi

# build container
export APPTAINER_TMPDIR=/scratch/$USER/apptainer_tmp
mkdir -p $APPTAINER_TMPDIR
apptainer build openroad.sif openroad.def

# add installation pad to starting-script
cp run_openroad_container.sh run_openroad_container_local.sh
sed -i '$ d' run_openroad_container_local.sh # delete lowest line
echo "$PWD/openroad.sif" '$COMMAND' >> run_openroad_container_local.sh

# copy file to location already in path
mkdir -p /home/$USER/bin;
cp run_openroad_container_local.sh /home/$USER/bin/orc
chmod +x /home/$USER/bin/orc
