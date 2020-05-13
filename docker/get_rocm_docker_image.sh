# docker_repo=rocm/eigen-test
# tag=rocm-3.3

# docker_repo=rocm/tensorflow
# tag=rocm3.3-tf2.1-dev
# tag=rocm3.3-tf1.15-dev
# tag=rocm3.1-tf2.1-python3
# tag=rocm2.9-tf1.15-dev

docker_repo=rocm/tensorflow-autobuilds
tag=rocm3.3-52a88d2 # 200512

# docker_repo=rocm/tensorflow-private
# tag=

# docker_repo=devenamd/tensorflow
# tag=compute-rocm-dkms-no-npi-hipclang-2226

# docker_repo=devenamd/tensorflow
# tag=rocm3.3-200408
# tag=rocm3.0_191220

# docker_repo=devenamd/mlir
# tag=rocm-3.1-200309

# docker_repo=sunway513/hiptensorflow
# tag=

# docker_repo=tensorflow/tensorflow
# tag=nightly-py3

# docker_repo=compute-artifactory.amd.com:5000/rocm-plus-docker/framework/compute-rocm-dkms-no-npi-hipclang
# tag=2226_ubuntu_py3_tensorflow_master-hipclang

docker_image=$docker_repo:$tag
container_name=deven_auto_rocm33_200512_update_upstream_merge_branches

options=""
options="$options -it"
options="$options --network=host"
options="$options --ipc=host"
options="$options --shm-size 16G"
options="$options --group-add video"
options="$options --cap-add=SYS_PTRACE"
options="$options --security-opt seccomp=unconfined"
options="$options -v $HOME/deven/common:/common"

options="$options --device=/dev/kfd"
options="$options --device=/dev/dri"

# options="$options -v /data/imagenet-inception:/imagenet"

docker run $options --name $container_name $docker_image