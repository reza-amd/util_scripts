#docker_image=rocm/rocm-terminal:1.9.0
#docker_image=rocm/tensorflow:rocm1.8.2-tf1.8-python3-dev
#docker_image=devenamd/eigen:eigen-upstream-rocm-v3
#docker_image=rocmqa/tf18-9083-gfx900:ub18.04
docker_image=rocm/tensorflow:rocm1.9.0-tf1.10-python3-dev

container_name=rocm190_tf_fusion

docker run \
       -it \
       --network=host \
       --device=/dev/kfd \
       --device=/dev/dri \
       --group-add video \
       --cap-add=SYS_PTRACE \
       --security-opt seccomp=unconfined \
       -v $HOME/deven/common:/common \
       -v $HOME/deven/dockerx:/dockerx \
       --name $container_name \
       $docker_image
