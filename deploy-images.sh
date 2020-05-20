#!/bin/bash

organization=yalochat
dockerfiles=( $(find . | grep Dockerfile) )

for i in "${!dockerfiles[@]}"; do
    dockerfile_path=${dockerfiles[i]}
    dockerfile_dir=${dockerfile_path/\/Dockerfile/}

    docker_tag=${dockerfile_dir/.\//}
    docker_tag=${docker_tag/\//:}
    docker_tag=${docker_tag//\//-}

    docker_image=$organization/$docker_tag
    echo "Image to build $docker_image"
    docker build -t $docker_image -f $dockerfile_path $dockerfile_dir
    docker push $docker_image
done
