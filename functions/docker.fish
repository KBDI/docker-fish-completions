# Docker
function __fish_docker_no_subcommand --description 'Test if docker has yet to be given the subcommand'
    for i in (commandline -opc)
        if contains -- $i attach build commit cp create diff events exec export history images import info inspect kill load login logout logs network pause port ps pull push rename restart rm rmi run save search start stats stop tag top unpause update version volume wait compose
            return 1
        end
    end
    return 0
end

function __fish_print_docker_containers --description 'Print a list of docker containers' -a select
    switch $select
        case running
            docker ps --no-trunc --filter status=running --format '{{.ID}}\n{{.Names}}' | tr ',' '\n'
        case stopped
            docker ps --no-trunc --filter status=exited --format '{{.ID}}\n{{.Names}}' | tr ',' '\n'
        case all
            docker ps --no-trunc --all --format '{{.ID}}\n{{.Names}}' | tr ',' '\n'
    end
end

function __fish_print_docker_images --description 'Print a list of docker images'
    docker images --format '{{if eq .Repository "<none>"}}{{.ID}}\tUnnamed Image{{else}}{{.Repository}}:{{.Tag}}{{end}}'
end

function __fish_print_docker_repositories --description 'Print a list of docker repositories'
    docker images --format '{{.Repository}}' | command grep -v '<none>' | command sort | command uniq
end

# Docker Compose
function __fish_docker_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 2 ]
    if [ $argv[1] = $cmd[3] ]
      return 0
    end
  end
  return 1
end

function __fish_docker_using_subcommand
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 2 ]
    if [ $cmd[2] = 'compose' ]
      return 0
    end
  end
  return 1
end

function __fish_docker_compose_file_path --description \
        'Get the next docker-compose.yml file in the folder parent path.'
    set -l path (pwd)
    while not test -e $path/docker-compose.yml
        if test $path = '/'
            return
        end

        set path (realpath $path/..)
    end

    echo $path/docker-compose.yml
end

function __fish_docker_compose_file_version --description \
        'Get the version of a docker-compose.yml file.'
    cat (__fish_docker_compose_file_path) \
        | command grep '^version:\(\s*\)["\']\?[.0-9]*["\']\?' \
        | command grep -o '[.0-9]*'

    if test $status -ne 0
        echo '1'
    end
end

function __fish_docker_compose_all_services --description \
        'List all services in docker-compose.yml.'
  command docker compose config --services
end