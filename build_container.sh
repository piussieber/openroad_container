#!/bin/bash
if test -d OpenROAD; then
#    cd OpenROAD
#    git pull
#    git submodule update --init --recursive
#    cd ..
    true
else
#    git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD.git
    echo "No OpenROAD directory found. Please clone the OpenROAD repository and run this script again."
    exit 1
fi

# build container
cd container
export APPTAINER_TMPDIR=/scratch/$USER/apptainer_tmp
mkdir -p $APPTAINER_TMPDIR
apptainer build openroad.sif openroad.def 
cd ..

# add installation pad to starting-script
cp run_container.sh run_container_local.sh
sed -i '$ d' run_container_local.sh # delete lowest line
sed -i '$ d' run_container_local.sh # delete lowest line
echo "--bind $PWD/OpenROAD:/OpenROAD \\" >> run_container_local.sh
echo "$PWD/container/openroad.sif" '$COMMAND' >> run_container_local.sh

# copy file to location already in path
mkdir -p /home/$USER/bin;
cp run_container_local.sh /home/$USER/bin/ordc
chmod +x /home/$USER/bin/ordc
