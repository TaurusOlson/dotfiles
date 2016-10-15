
function clean_docker_containers() {
    # remove stopped containers
    docker ps -a | grep -v ^CONTAINER | grep Exit | awk "{print \$1}" | xargs -I % sh -c "docker kill %; docker rm %"
}

function clean_docker_images() {
    # remove untagged images
    docker images -q --filter "dangling=true" | xargs -I {} bash -c "docker rmi {} 2> /dev/null || true"
}

function clean_docker_volumes() {
    # To delete orphaned volumes in Docker 1.9 and up you can also use the built-in docker volume commands instead of
    # this docker-cleanup-volumes script. The built-in command also deletes any directory in /var/lib/docker/volumes
    # that is not a volume so make sure you didn't put anything in there you want to save:
    docker volume ls -qf dangling=true | xargs -r docker volume rm
}

function clean_docker() {
    clean_docker_containers
    clean_docker_images
    clean_docker_volumes
}
