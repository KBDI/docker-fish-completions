complete -e -c docker

# Docker
# common options
complete -c docker -n '__fish_docker_no_subcommand' -l config=~/.docker -f -d 'Location of client config files'
complete -c docker -n '__fish_docker_no_subcommand' -s D -l debug -f -d 'Enable debug mode'
complete -c docker -n '__fish_docker_no_subcommand' -s H -l host=[] -f -d 'Daemon socket(s) to connect to'
complete -c docker -n '__fish_docker_no_subcommand' -s h -l help -f -d 'Print usage'
complete -c docker -n '__fish_docker_no_subcommand' -s l -l log-level=info -f -d 'Set the logging level'
complete -c docker -n '__fish_docker_no_subcommand' -l tls -f -d 'Use TLS; implied by --tlsverify'
complete -c docker -n '__fish_docker_no_subcommand' -l tlscacert=~/.docker/ca.pem -f -d 'Trust certs signed only by this CA'
complete -c docker -n '__fish_docker_no_subcommand' -l tlscert=~/.docker/cert.pem -f -d 'Path to TLS certificate file'
complete -c docker -n '__fish_docker_no_subcommand' -l tlskey=~/.docker/key.pem -f -d 'Path to TLS key file'
complete -c docker -n '__fish_docker_no_subcommand' -l tlsverify -f -d 'Use TLS and verify the remote'
complete -c docker -n '__fish_docker_no_subcommand' -s v -l version -f -d 'Print version information and quit'

# subcommands
# attach
complete -c docker -f -n '__fish_docker_no_subcommand' -a attach -d 'Attach to a running container'
complete -c docker -A -n '__fish_seen_subcommand_from attach' -l detach-keys -f -d 'Override the key sequence for detaching a container'
complete -c docker -A -n '__fish_seen_subcommand_from attach' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from attach' -l no-stdin -f -d 'Do not attach STDIN'
complete -c docker -A -n '__fish_seen_subcommand_from attach' -l sig-proxy=true -f -d 'Proxy all received signals to the process'
complete -c docker -A -f -n '__fish_seen_subcommand_from attach' -a '(__fish_print_docker_containers running)' -d "Container"

# build
complete -c docker -f -n '__fish_docker_no_subcommand' -a build -d 'Build an image from a Dockerfile'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l build-arg=[] -f -d 'Set build-time variables'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l cpu-shares -f -d 'CPU shares (relative weight)'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l cgroup-parent -f -d 'Optional parent cgroup for the container'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l cpu-period -f -d 'Limit the CPU CFS (Completely Fair Scheduler) period'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l cpu-quota -f -d 'Limit the CPU CFS (Completely Fair Scheduler) quota'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l cpuset-cpus -f -d 'CPUs in which to allow execution (0-3, 0,1)'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l cpuset-mems -f -d 'MEMs in which to allow execution (0-3, 0,1)'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l disable-content-trust=true -f -d 'Skip image verification'
complete -c docker -A -n '__fish_seen_subcommand_from build' -s f -l file -f -d "Name of the Dockerfile (Default is 'PATH/Dockerfile')"
complete -c docker -A -n '__fish_seen_subcommand_from build' -l force-rm -f -d 'Always remove intermediate containers'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l isolation -f -d 'Container isolation technology'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l label=[] -f -d 'Set metadata for an image'
complete -c docker -A -n '__fish_seen_subcommand_from build' -s m -l memory -f -d 'Memory limit'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l memory-swap -f -d "Swap limit equal to memory plus swap: '-1' to enable unlimited swap"
complete -c docker -A -n '__fish_seen_subcommand_from build' -l no-cache -f -d 'Do not use cache when building the image'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l pull -f -d 'Always attempt to pull a newer version of the image'
complete -c docker -A -n '__fish_seen_subcommand_from build' -s q -l quiet -f -d 'Suppress the build output and print image ID on success'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l rm=true -f -d 'Remove intermediate containers after a successful build'
complete -c docker -A -n '__fish_seen_subcommand_from build' -l shm-size -f -d 'Size of /dev/shm, default value is 64MB'
complete -c docker -A -n '__fish_seen_subcommand_from build' -s t -l tag=[] -f -d "Name and optionally a tag in the 'name:tag' format"
complete -c docker -A -n '__fish_seen_subcommand_from build' -l ulimit=[] -f -d 'Ulimit options'

# commit
complete -c docker -f -n '__fish_docker_no_subcommand' -a commit -d "Create a new image from a container's changes"
complete -c docker -A -n '__fish_seen_subcommand_from commit' -s a -l author -f -d 'Author (e.g., "John Hannibal Smith <hannibal@a-team.com>")'
complete -c docker -A -n '__fish_seen_subcommand_from commit' -s c -l change=[] -f -d 'Apply Dockerfile instruction to the created image'
complete -c docker -A -n '__fish_seen_subcommand_from commit' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from commit' -s m -l message -f -d 'Commit message'
complete -c docker -A -n '__fish_seen_subcommand_from commit' -s p -l pause=true -f -d 'Pause container during commit'
complete -c docker -A -f -n '__fish_seen_subcommand_from commit' -a '(__fish_print_docker_containers all)' -d "Container"

# cp
complete -c docker -f -n '__fish_docker_no_subcommand' -a cp -d 'Copy files/folders between a container and the local filesystem'
complete -c docker -A -n '__fish_seen_subcommand_from cp' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from cp' -s L -l follow-link -f -d 'Always follow symbol link in SRC_PATH'

# create
complete -c docker -f -n '__fish_docker_no_subcommand' -a create -d 'Create a new container'
complete -c docker -A -n '__fish_seen_subcommand_from create' -s a -l attach=[] -f -d 'Attach to STDIN, STDOUT or STDERR'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l add-host=[] -f -d 'Add a custom host-to-IP mapping (host:ip)'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l blkio-weight -f -d 'Block IO (relative weight), between 10 and 1000'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l blkio-weight-device=[] -f -d 'Block IO weight (relative device weight)'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l cpu-shares -f -d 'CPU shares (relative weight)'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l cap-add=[] -f -d 'Add Linux capabilities'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l cap-drop=[] -f -d 'Drop Linux capabilities'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l cgroup-parent -f -d 'Optional parent cgroup for the container'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l cidfile -f -d 'Write the container ID to the file'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l cpu-period -f -d 'Limit CPU CFS (Completely Fair Scheduler) period'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l cpu-quota -f -d 'Limit CPU CFS (Completely Fair Scheduler) quota'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l cpuset-cpus -f -d 'CPUs in which to allow execution (0-3, 0,1)'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l cpuset-mems -f -d 'MEMs in which to allow execution (0-3, 0,1)'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l device=[] -f -d 'Add a host device to the container'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l device-read-bps=[] -f -d 'Limit read rate (bytes per second) from a device'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l device-read-iops=[] -f -d 'Limit read rate (IO per second) from a device'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l device-write-bps=[] -f -d 'Limit write rate (bytes per second) to a device'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l device-write-iops=[] -f -d 'Limit write rate (IO per second) to a device'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l disable-content-trust=true -f -d 'Skip image verification'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l dns=[] -f -d 'Set custom DNS servers'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l dns-opt=[] -f -d 'Set DNS options'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l dns-search=[] -f -d 'Set custom DNS search domains'
complete -c docker -A -n '__fish_seen_subcommand_from create' -s e -l env=[] -f -d 'Set environment variables'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l entrypoint -f -d 'Overwrite the default ENTRYPOINT of the image'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l env-file=[] -f -d 'Read in a file of environment variables'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l expose=[] -f -d 'Expose a port or a range of ports'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l group-add=[] -f -d 'Add additional groups to join'
complete -c docker -A -n '__fish_seen_subcommand_from create' -s h -l hostname -f -d 'Container host name'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from create' -s i -l interactive -f -d 'Keep STDIN open even if not attached'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l ip -f -d 'Container IPv4 address (e.g. 172.30.100.104)'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l ip6 -f -d 'Container IPv6 address (e.g. 2001:db8::33)'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l ipc -f -d 'IPC namespace to use'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l isolation -f -d 'Container isolation technology'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l kernel-memory -f -d 'Kernel memory limit'
complete -c docker -A -n '__fish_seen_subcommand_from create' -s l -l label=[] -f -d 'Set meta data on a container'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l label-file=[] -f -d 'Read in a line delimited file of labels'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l link=[] -f -d 'Add link to another container'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l log-driver -f -d 'Logging driver for container'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l log-opt=[] -f -d 'Log driver options'
complete -c docker -A -n '__fish_seen_subcommand_from create' -s m -l memory -f -d 'Memory limit'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l mac-address -f -d 'Container MAC address (e.g. 92:d0:c6:0a:29:33)'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l memory-reservation -f -d 'Memory soft limit'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l memory-swap -f -d "Swap limit equal to memory plus swap: '-1' to enable unlimited swap"
complete -c docker -A -n '__fish_seen_subcommand_from create' -l memory-swappiness=-1 -f -d 'Tune container memory swappiness (0 to 100)'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l name -f -d 'Assign a name to the container'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l net=default -f -d 'Connect a container to a network'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l net-alias=[] -f -d 'Add network-scoped alias for the container'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l oom-kill-disable -f -d 'Disable OOM Killer'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l oom-score-adj -f -d "Tune host's OOM preferences (-1000 to 1000)"
complete -c docker -A -n '__fish_seen_subcommand_from create' -s P -l publish-all -f -d 'Publish all exposed ports to random ports'
complete -c docker -A -n '__fish_seen_subcommand_from create' -s p -l publish=[] -f -d "Publish a container's port(s) to the host"
complete -c docker -A -n '__fish_seen_subcommand_from create' -l pid -f -d 'PID namespace to use'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l pids-limit -f -d 'Tune container pids limit (set -1 for unlimited)'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l privileged -f -d 'Give extended privileges to this container'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l read-only -f -d "Mount the container's root filesystem as read only"
complete -c docker -A -n '__fish_seen_subcommand_from create' -l restart=no -f -d 'Restart policy to apply when a container exits'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l security-opt=[] -f -d 'Security Options'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l shm-size -f -d 'Size of /dev/shm, default value is 64MB'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l stop-signal=SIGTERM -f -d 'Signal to stop a container, SIGTERM by default'
complete -c docker -A -n '__fish_seen_subcommand_from create' -s t -l tty -f -d 'Allocate a pseudo-TTY'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l tmpfs=[] -f -d 'Mount a tmpfs directory'
complete -c docker -A -n '__fish_seen_subcommand_from create' -s u -l user -f -d 'Username or UID (format: <name|uid>[:<group|gid>])'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l ulimit=[] -f -d 'Ulimit options'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l userns -f -d 'User namespace to use'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l uts -f -d 'UTS namespace to use'
complete -c docker -A -n '__fish_seen_subcommand_from create' -s v -l volume=[] -f -d 'Bind mount a volume'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l volume-driver -f -d 'Optional volume driver for the container'
complete -c docker -A -n '__fish_seen_subcommand_from create' -l volumes-from=[] -f -d 'Mount volumes from the specified container(s)'
complete -c docker -A -n '__fish_seen_subcommand_from create' -s w -l workdir -f -d 'Working directory inside the container'
complete -c docker -A -f -n '__fish_seen_subcommand_from create' -a '(__fish_print_docker_images)' -d "Image"

# diff
complete -c docker -f -n '__fish_docker_no_subcommand' -a diff -d "Inspect changes on a container's filesystem"
complete -c docker -A -n '__fish_seen_subcommand_from diff' -l help -f -d 'Print usage'
complete -c docker -A -f -n '__fish_seen_subcommand_from diff' -a '(__fish_print_docker_containers all)' -d "Container"

# events
complete -c docker -f -n '__fish_docker_no_subcommand' -a events -d 'Get real time events from the server'
complete -c docker -A -n '__fish_seen_subcommand_from events' -s f -l filter=[] -f -d 'Filter output based on conditions provided'
complete -c docker -A -n '__fish_seen_subcommand_from events' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from events' -l since -f -d 'Show all events created since timestamp'
complete -c docker -A -n '__fish_seen_subcommand_from events' -l until -f -d 'Stream events until this timestamp'

# exec
complete -c docker -f -n '__fish_docker_no_subcommand' -a exec -d 'Run a command in a running container'
complete -c docker -A -n '__fish_seen_subcommand_from exec' -s d -l detach -f -d 'Detached mode: run command in the background'
complete -c docker -A -n '__fish_seen_subcommand_from exec' -l detach-keys -f -d 'Override the key sequence for detaching a container'
complete -c docker -A -n '__fish_seen_subcommand_from exec' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from exec' -s i -l interactive -f -d 'Keep STDIN open even if not attached'
complete -c docker -A -n '__fish_seen_subcommand_from exec' -l privileged -f -d 'Give extended privileges to the command'
complete -c docker -A -n '__fish_seen_subcommand_from exec' -s t -l tty -f -d 'Allocate a pseudo-TTY'
complete -c docker -A -n '__fish_seen_subcommand_from exec' -s u -l user -f -d 'Username or UID (format: <name|uid>[:<group|gid>])'
complete -c docker -A -f -n '__fish_seen_subcommand_from exec' -a '(__fish_print_docker_containers running)' -d "Container"

# export
complete -c docker -f -n '__fish_docker_no_subcommand' -a export -d "Export a container's filesystem as a tar archive"
complete -c docker -A -n '__fish_seen_subcommand_from export' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from export' -s o -l output -f -d 'Write to a file, instead of STDOUT'
complete -c docker -A -f -n '__fish_seen_subcommand_from export' -a '(__fish_print_docker_containers all)' -d "Container"

# history
complete -c docker -f -n '__fish_docker_no_subcommand' -a history -d 'Show the history of an image'
complete -c docker -A -n '__fish_seen_subcommand_from history' -s H -l human=true -f -d 'Print sizes and dates in human readable format'
complete -c docker -A -n '__fish_seen_subcommand_from history' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from history' -l no-trunc -f -d "Don't truncate output"
complete -c docker -A -n '__fish_seen_subcommand_from history' -s q -l quiet -f -d 'Only show numeric IDs'
complete -c docker -A -f -n '__fish_seen_subcommand_from history' -a '(__fish_print_docker_images)' -d "Image"

# images
complete -c docker -f -n '__fish_docker_no_subcommand' -a images -d 'List images'
complete -c docker -A -n '__fish_seen_subcommand_from images' -s a -l all -f -d 'Show all images (default hides intermediate images)'
complete -c docker -A -n '__fish_seen_subcommand_from images' -l digests -f -d 'Show digests'
complete -c docker -A -n '__fish_seen_subcommand_from images' -s f -l filter=[] -f -d 'Filter output based on conditions provided'
complete -c docker -A -n '__fish_seen_subcommand_from images' -l format -f -d 'Pretty-print images using a Go template'
complete -c docker -A -n '__fish_seen_subcommand_from images' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from images' -l no-trunc -f -d "Don't truncate output"
complete -c docker -A -n '__fish_seen_subcommand_from images' -s q -l quiet -f -d 'Only show numeric IDs'
complete -c docker -A -f -n '__fish_seen_subcommand_from images' -a '(__fish_print_docker_repositories)' -d "Repository"

# import
complete -c docker -f -n '__fish_docker_no_subcommand' -a import -d 'Import the contents from a tarball to create a filesystem image'
complete -c docker -A -n '__fish_seen_subcommand_from import' -s c -l change=[] -f -d 'Apply Dockerfile instruction to the created image'
complete -c docker -A -n '__fish_seen_subcommand_from import' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from import' -s m -l message -f -d 'Set commit message for imported image'

# info
complete -c docker -f -n '__fish_docker_no_subcommand' -a info -d 'Display system-wide information'
complete -c docker -A -n '__fish_seen_subcommand_from info' -l help -f -d 'Print usage'

# inspect
complete -c docker -f -n '__fish_docker_no_subcommand' -a inspect -d 'Return low-level information on a container or image'
complete -c docker -A -n '__fish_seen_subcommand_from inspect' -s f -l format -f -d 'Format the output using the given go template'
complete -c docker -A -n '__fish_seen_subcommand_from inspect' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from inspect' -s s -l size -f -d 'Display total file sizes if the type is container'
complete -c docker -A -n '__fish_seen_subcommand_from inspect' -l type -f -d 'Return JSON for specified type, (e.g image or container)'
complete -c docker -A -f -n '__fish_seen_subcommand_from inspect' -a '(__fish_print_docker_containers all)' -d "Container"
complete -c docker -A -f -n '__fish_seen_subcommand_from inspect' -a '(__fish_print_docker_images)' -d "Image"

# kill
complete -c docker -f -n '__fish_docker_no_subcommand' -a kill -d 'Kill a running container'
complete -c docker -A -n '__fish_seen_subcommand_from kill' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from kill' -s s -l signal=KILL -f -d 'Signal to send to the container'
complete -c docker -A -f -n '__fish_seen_subcommand_from kill' -a '(__fish_print_docker_containers running)' -d "Container"

# load
complete -c docker -f -n '__fish_docker_no_subcommand' -a load -d 'Load an image from a tar archive or STDIN'
complete -c docker -A -n '__fish_seen_subcommand_from load' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from load' -s i -l input -f -d 'Read from a tar archive file, instead of STDIN'
complete -c docker -A -n '__fish_seen_subcommand_from load' -s q -l quiet -f -d 'Suppress the load output'

# login
complete -c docker -f -n '__fish_docker_no_subcommand' -a login -d 'Log in to a Docker registry'
complete -c docker -A -n '__fish_seen_subcommand_from login' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from login' -s p -l password -f -d 'Password'
complete -c docker -A -n '__fish_seen_subcommand_from login' -s u -l username -f -d 'Username'

# logout
complete -c docker -f -n '__fish_docker_no_subcommand' -a logout -d 'Log out from a Docker registry'
complete -c docker -A -n '__fish_seen_subcommand_from logout' -l help -f -d 'Print usage'

# logs
complete -c docker -f -n '__fish_docker_no_subcommand' -a logs -d 'Fetch the logs of a container'
complete -c docker -A -n '__fish_seen_subcommand_from logs' -s f -l follow -f -d 'Follow log output'
complete -c docker -A -n '__fish_seen_subcommand_from logs' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from logs' -l since -f -d 'Show logs since timestamp'
complete -c docker -A -n '__fish_seen_subcommand_from logs' -s t -l timestamps -f -d 'Show timestamps'
complete -c docker -A -n '__fish_seen_subcommand_from logs' -l tail=all -f -d 'Number of lines to show from the end of the logs'
complete -c docker -A -f -n '__fish_seen_subcommand_from logs' -a '(__fish_print_docker_containers all)' -d "Container"

# network
complete -c docker -f -n '__fish_docker_no_subcommand' -a network -d 'Manage Docker networks'
complete -c docker -A -n '__fish_seen_subcommand_from network' -l help -f -d 'Print usage'

# pause
complete -c docker -f -n '__fish_docker_no_subcommand' -a pause -d 'Pause all processes within a container'
complete -c docker -A -n '__fish_seen_subcommand_from pause' -l help -f -d 'Print usage'
complete -c docker -A -f -n '__fish_seen_subcommand_from pause' -a '(__fish_print_docker_containers running)' -d "Container"

# port
complete -c docker -f -n '__fish_docker_no_subcommand' -a port -d 'List port mappings or a specific mapping for the CONTAINER'
complete -c docker -A -n '__fish_seen_subcommand_from port' -l help -f -d 'Print usage'
complete -c docker -A -f -n '__fish_seen_subcommand_from port' -a '(__fish_print_docker_containers running)' -d "Container"

# ps
complete -c docker -f -n '__fish_docker_no_subcommand' -a ps -d 'List containers'
complete -c docker -A -n '__fish_seen_subcommand_from ps' -s a -l all -f -d 'Show all containers (default shows just running)'
complete -c docker -A -n '__fish_seen_subcommand_from ps' -s f -l filter=[] -f -d 'Filter output based on conditions provided'
complete -c docker -A -n '__fish_seen_subcommand_from ps' -l format -f -d 'Pretty-print containers using a Go template'
complete -c docker -A -n '__fish_seen_subcommand_from ps' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from ps' -s l -l latest -f -d 'Show the latest created container (includes all states)'
complete -c docker -A -n '__fish_seen_subcommand_from ps' -s n=-1 -f -d 'Show n last created containers (includes all states)'
complete -c docker -A -n '__fish_seen_subcommand_from ps' -l no-trunc -f -d "Don't truncate output"
complete -c docker -A -n '__fish_seen_subcommand_from ps' -s q -l quiet -f -d 'Only display numeric IDs'
complete -c docker -A -n '__fish_seen_subcommand_from ps' -s s -l size -f -d 'Display total file sizes'

# pull
complete -c docker -f -n '__fish_docker_no_subcommand' -a pull -d 'Pull an image or a repository from a registry'
complete -c docker -A -n '__fish_seen_subcommand_from pull' -s a -l all-tags -f -d 'Download all tagged images in the repository'
complete -c docker -A -n '__fish_seen_subcommand_from pull' -l disable-content-trust=true -f -d 'Skip image verification'
complete -c docker -A -n '__fish_seen_subcommand_from pull' -l help -f -d 'Print usage'
complete -c docker -A -f -n '__fish_seen_subcommand_from pull' -a '(__fish_print_docker_images)' -d "Image"
complete -c docker -A -f -n '__fish_seen_subcommand_from pull' -a '(__fish_print_docker_repositories)' -d "Repository"

# push
complete -c docker -f -n '__fish_docker_no_subcommand' -a push -d 'Push an image or a repository to a registry'
complete -c docker -A -n '__fish_seen_subcommand_from push' -l disable-content-trust=true -f -d 'Skip image signing'
complete -c docker -A -n '__fish_seen_subcommand_from push' -l help -f -d 'Print usage'
complete -c docker -A -f -n '__fish_seen_subcommand_from push' -a '(__fish_print_docker_images)' -d "Image"
complete -c docker -A -f -n '__fish_seen_subcommand_from push' -a '(__fish_print_docker_repositories)' -d "Repository"

# rename
complete -c docker -f -n '__fish_docker_no_subcommand' -a rename -d 'Rename a container'
complete -c docker -A -n '__fish_seen_subcommand_from rename' -l help -f -d 'Print usage'

# restart
complete -c docker -f -n '__fish_docker_no_subcommand' -a restart -d 'Restart a container'
complete -c docker -A -n '__fish_seen_subcommand_from restart' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from restart' -s t -l time=10 -f -d 'Seconds to wait for stop before killing the container'
complete -c docker -A -f -n '__fish_seen_subcommand_from restart' -a '(__fish_print_docker_containers running)' -d "Container"

# rm
complete -c docker -f -n '__fish_docker_no_subcommand' -a rm -d 'Remove one or more containers'
complete -c docker -A -n '__fish_seen_subcommand_from rm' -s f -l force -f -d 'Force the removal of a running container (uses SIGKILL)'
complete -c docker -A -n '__fish_seen_subcommand_from rm' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from rm' -s l -l link -f -d 'Remove the specified link'
complete -c docker -A -n '__fish_seen_subcommand_from rm' -s v -l volumes -f -d 'Remove the volumes associated with the container'
complete -c docker -A -f -n '__fish_seen_subcommand_from rm' -a '(__fish_print_docker_containers stopped)' -d "Container"

# rmi
complete -c docker -f -n '__fish_docker_no_subcommand' -a rmi -d 'Remove one or more images'
complete -c docker -A -n '__fish_seen_subcommand_from rmi' -s f -l force -f -d 'Force removal of the image'
complete -c docker -A -n '__fish_seen_subcommand_from rmi' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from rmi' -l no-prune -f -d 'Do not delete untagged parents'
complete -c docker -A -f -n '__fish_seen_subcommand_from rmi' -a '(__fish_print_docker_images)' -d "Image"

# run
complete -c docker -f -n '__fish_docker_no_subcommand' -a run -d 'Run a command in a new container'
complete -c docker -A -n '__fish_seen_subcommand_from run' -s a -l attach=[] -f -d 'Attach to STDIN, STDOUT or STDERR'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l add-host=[] -f -d 'Add a custom host-to-IP mapping (host:ip)'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l blkio-weight -f -d 'Block IO (relative weight), between 10 and 1000'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l blkio-weight-device=[] -f -d 'Block IO weight (relative device weight)'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l cpu-shares -f -d 'CPU shares (relative weight)'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l cap-add=[] -f -d 'Add Linux capabilities'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l cap-drop=[] -f -d 'Drop Linux capabilities'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l cgroup-parent -f -d 'Optional parent cgroup for the container'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l cidfile -f -d 'Write the container ID to the file'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l cpu-period -f -d 'Limit CPU CFS (Completely Fair Scheduler) period'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l cpu-quota -f -d 'Limit CPU CFS (Completely Fair Scheduler) quota'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l cpuset-cpus -f -d 'CPUs in which to allow execution (0-3, 0,1)'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l cpuset-mems -f -d 'MEMs in which to allow execution (0-3, 0,1)'
complete -c docker -A -n '__fish_seen_subcommand_from run' -s d -l detach -f -d 'Run container in background and print container ID'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l detach-keys -f -d 'Override the key sequence for detaching a container'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l device=[] -f -d 'Add a host device to the container'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l device-read-bps=[] -f -d 'Limit read rate (bytes per second) from a device'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l device-read-iops=[] -f -d 'Limit read rate (IO per second) from a device'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l device-write-bps=[] -f -d 'Limit write rate (bytes per second) to a device'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l device-write-iops=[] -f -d 'Limit write rate (IO per second) to a device'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l disable-content-trust=true -f -d 'Skip image verification'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l dns=[] -f -d 'Set custom DNS servers'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l dns-opt=[] -f -d 'Set DNS options'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l dns-search=[] -f -d 'Set custom DNS search domains'
complete -c docker -A -n '__fish_seen_subcommand_from run' -s e -l env=[] -f -d 'Set environment variables'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l entrypoint -f -d 'Overwrite the default ENTRYPOINT of the image'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l env-file=[] -f -d 'Read in a file of environment variables'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l expose=[] -f -d 'Expose a port or a range of ports'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l group-add=[] -f -d 'Add additional groups to join'
complete -c docker -A -n '__fish_seen_subcommand_from run' -s h -l hostname -f -d 'Container host name'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from run' -s i -l interactive -f -d 'Keep STDIN open even if not attached'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l ip -f -d 'Container IPv4 address (e.g. 172.30.100.104)'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l ip6 -f -d 'Container IPv6 address (e.g. 2001:db8::33)'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l ipc -f -d 'IPC namespace to use'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l isolation -f -d 'Container isolation technology'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l kernel-memory -f -d 'Kernel memory limit'
complete -c docker -A -n '__fish_seen_subcommand_from run' -s l -l label=[] -f -d 'Set meta data on a container'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l label-file=[] -f -d 'Read in a line delimited file of labels'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l link=[] -f -d 'Add link to another container'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l log-driver -f -d 'Logging driver for container'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l log-opt=[] -f -d 'Log driver options'
complete -c docker -A -n '__fish_seen_subcommand_from run' -s m -l memory -f -d 'Memory limit'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l mac-address -f -d 'Container MAC address (e.g. 92:d0:c6:0a:29:33)'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l memory-reservation -f -d 'Memory soft limit'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l memory-swap -f -d "Swap limit equal to memory plus swap: '-1' to enable unlimited swap"
complete -c docker -A -n '__fish_seen_subcommand_from run' -l memory-swappiness=-1 -f -d 'Tune container memory swappiness (0 to 100)'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l name -f -d 'Assign a name to the container'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l net=default -f -d 'Connect a container to a network'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l net-alias=[] -f -d 'Add network-scoped alias for the container'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l oom-kill-disable -f -d 'Disable OOM Killer'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l oom-score-adj -f -d "Tune host's OOM preferences (-1000 to 1000)"
complete -c docker -A -n '__fish_seen_subcommand_from run' -s P -l publish-all -f -d 'Publish all exposed ports to random ports'
complete -c docker -A -n '__fish_seen_subcommand_from run' -s p -l publish=[] -f -d "Publish a container's port(s) to the host"
complete -c docker -A -n '__fish_seen_subcommand_from run' -l pid -f -d 'PID namespace to use'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l pids-limit -f -d 'Tune container pids limit (set -1 for unlimited)'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l privileged -f -d 'Give extended privileges to this container'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l read-only -f -d "Mount the container's root filesystem as read only"
complete -c docker -A -n '__fish_seen_subcommand_from run' -l restart=no -f -d 'Restart policy to apply when a container exits'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l rm -f -d 'Automatically remove the container when it exits'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l security-opt=[] -f -d 'Security Options'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l shm-size -f -d 'Size of /dev/shm, default value is 64MB'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l sig-proxy=true -f -d 'Proxy received signals to the process'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l stop-signal=SIGTERM -f -d 'Signal to stop a container, SIGTERM by default'
complete -c docker -A -n '__fish_seen_subcommand_from run' -s t -l tty -f -d 'Allocate a pseudo-TTY'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l tmpfs=[] -f -d 'Mount a tmpfs directory'
complete -c docker -A -n '__fish_seen_subcommand_from run' -s u -l user -f -d 'Username or UID (format: <name|uid>[:<group|gid>])'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l ulimit=[] -f -d 'Ulimit options'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l userns -f -d 'User namespace to use'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l uts -f -d 'UTS namespace to use'
complete -c docker -A -n '__fish_seen_subcommand_from run' -s v -l volume=[] -f -d 'Bind mount a volume'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l volume-driver -f -d 'Optional volume driver for the container'
complete -c docker -A -n '__fish_seen_subcommand_from run' -l volumes-from=[] -f -d 'Mount volumes from the specified container(s)'
complete -c docker -A -n '__fish_seen_subcommand_from run' -s w -l workdir -f -d 'Working directory inside the container'
complete -c docker -A -f -n '__fish_seen_subcommand_from run' -a '(__fish_print_docker_images)' -d "Image"

# save
complete -c docker -f -n '__fish_docker_no_subcommand' -a save -d 'Save one or more images to a tar archive'
complete -c docker -A -n '__fish_seen_subcommand_from save' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from save' -s o -l output -f -d 'Write to a file, instead of STDOUT'
complete -c docker -A -f -n '__fish_seen_subcommand_from save' -a '(__fish_print_docker_images)' -d "Image"

# search
complete -c docker -f -n '__fish_docker_no_subcommand' -a search -d 'Search the Docker Hub for images'
complete -c docker -A -n '__fish_seen_subcommand_from search' -l automated -f -d 'Only show automated builds'
complete -c docker -A -n '__fish_seen_subcommand_from search' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from search' -l no-trunc -f -d "Don't truncate output"
complete -c docker -A -n '__fish_seen_subcommand_from search' -s s -l stars -f -d 'Only displays with at least x stars'

# start
complete -c docker -f -n '__fish_docker_no_subcommand' -a start -d 'Start one or more stopped containers'
complete -c docker -A -n '__fish_seen_subcommand_from start' -s a -l attach -f -d 'Attach STDOUT/STDERR and forward signals'
complete -c docker -A -n '__fish_seen_subcommand_from start' -l detach-keys -f -d 'Override the key sequence for detaching a container'
complete -c docker -A -n '__fish_seen_subcommand_from start' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from start' -s i -l interactive -f -d "Attach container's STDIN"
complete -c docker -A -f -n '__fish_seen_subcommand_from start' -a '(__fish_print_docker_containers stopped)' -d "Container"

# stats
complete -c docker -f -n '__fish_docker_no_subcommand' -a stats -d 'Display a live stream of container(s) resource usage statistics'
complete -c docker -A -n '__fish_seen_subcommand_from stats' -s a -l all -f -d 'Show all containers (default shows just running)'
complete -c docker -A -n '__fish_seen_subcommand_from stats' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from stats' -l no-stream -f -d 'Disable streaming stats and only pull the first result'
complete -c docker -A -f -n '__fish_seen_subcommand_from stats' -a '(__fish_print_docker_containers running)' -d "Container"

# stop
complete -c docker -f -n '__fish_docker_no_subcommand' -a stop -d 'Stop a running container'
complete -c docker -A -n '__fish_seen_subcommand_from stop' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from stop' -s t -l time=10 -f -d 'Seconds to wait for stop before killing it'
complete -c docker -A -f -n '__fish_seen_subcommand_from stop' -a '(__fish_print_docker_containers running)' -d "Container"

# tag
complete -c docker -f -n '__fish_docker_no_subcommand' -a tag -d 'Tag an image into a repository'
complete -c docker -A -n '__fish_seen_subcommand_from tag' -l help -f -d 'Print usage'

# top
complete -c docker -f -n '__fish_docker_no_subcommand' -a top -d 'Display the running processes of a container'
complete -c docker -A -n '__fish_seen_subcommand_from top' -l help -f -d 'Print usage'
complete -c docker -A -f -n '__fish_seen_subcommand_from top' -a '(__fish_print_docker_containers running)' -d "Container"

# unpause
complete -c docker -f -n '__fish_docker_no_subcommand' -a unpause -d 'Unpause all processes within a container'
complete -c docker -A -n '__fish_seen_subcommand_from unpause' -l help -f -d 'Print usage'
complete -c docker -A -f -n '__fish_seen_subcommand_from unpause' -a '(__fish_print_docker_containers running)' -d "Container"

# update
complete -c docker -f -n '__fish_docker_no_subcommand' -a update -d 'Update configuration of one or more containers'
complete -c docker -A -n '__fish_seen_subcommand_from update' -l blkio-weight -f -d 'Block IO (relative weight), between 10 and 1000'
complete -c docker -A -n '__fish_seen_subcommand_from update' -l cpu-shares -f -d 'CPU shares (relative weight)'
complete -c docker -A -n '__fish_seen_subcommand_from update' -l cpu-period -f -d 'Limit CPU CFS (Completely Fair Scheduler) period'
complete -c docker -A -n '__fish_seen_subcommand_from update' -l cpu-quota -f -d 'Limit CPU CFS (Completely Fair Scheduler) quota'
complete -c docker -A -n '__fish_seen_subcommand_from update' -l cpuset-cpus -f -d 'CPUs in which to allow execution (0-3, 0,1)'
complete -c docker -A -n '__fish_seen_subcommand_from update' -l cpuset-mems -f -d 'MEMs in which to allow execution (0-3, 0,1)'
complete -c docker -A -n '__fish_seen_subcommand_from update' -l help -f -d 'Print usage'
complete -c docker -A -n '__fish_seen_subcommand_from update' -l kernel-memory -f -d 'Kernel memory limit'
complete -c docker -A -n '__fish_seen_subcommand_from update' -s m -l memory -f -d 'Memory limit'
complete -c docker -A -n '__fish_seen_subcommand_from update' -l memory-reservation -f -d 'Memory soft limit'
complete -c docker -A -n '__fish_seen_subcommand_from update' -l memory-swap -f -d "Swap limit equal to memory plus swap: '-1' to enable unlimited swap"
complete -c docker -A -n '__fish_seen_subcommand_from update' -l restart -f -d 'Restart policy to apply when a container exits'
complete -c docker -A -f -n '__fish_seen_subcommand_from update' -a '(__fish_print_docker_containers running)' -d "Container"

# version
complete -c docker -f -n '__fish_docker_no_subcommand' -a version -d 'Show the Docker version information'
complete -c docker -A -n '__fish_seen_subcommand_from version' -s f -l format -f -d 'Format the output using the given go template'
complete -c docker -A -n '__fish_seen_subcommand_from version' -l help -f -d 'Print usage'

# volume
complete -c docker -f -n '__fish_docker_no_subcommand' -a volume -d 'Manage Docker volumes'
complete -c docker -A -n '__fish_seen_subcommand_from volume' -l help -f -d 'Print usage'

# wait
complete -c docker -f -n '__fish_docker_no_subcommand' -a wait -d 'Block until a container stops, then print its exit code'
complete -c docker -A -n '__fish_seen_subcommand_from wait' -l help -f -d 'Print usage'
complete -c docker -A -f -n '__fish_seen_subcommand_from wait' -a '(__fish_print_docker_containers running)' -d "Container"


# Docker Compose
complete --command docker -n '__fish_use_subcommand' --arguments compose --description "Compose for Docker"

# Base docker-compose flags
complete --command docker --arguments compose -s f -l file -r         -d "Specify an alternate compose file"
complete --command docker --arguments compose -s p -l project-name -x -d "Specify an alternate project name"
complete --command docker --arguments compose -l verbose              -d "Show more output"
complete --command docker --arguments compose -s H -l host -x         -d "Daemon socket to connect to"
complete --command docker --arguments compose -l tls                  -d "Use TLS; implied by --tlsverify"
complete --command docker --arguments compose -l tlscacert -r         -d "Trust certs signed only by this CA"
complete --command docker --arguments compose -l tlscert -r           -d "Path to TLS certificate file"
complete --command docker --arguments compose -l tlskey -r            -d "Path to TLS key file"
complete --command docker --arguments compose -l tlsverify            -d "Use TLS and verify the remote"
complete --command docker --arguments compose -l skip-hostname-check  -d "Don't check the daemon's hostname against the name specified in the client certificate (for example if your docker host is an IP address)"
complete --command docker --arguments compose -s h -l help            -d "Print usage"
complete --command docker --arguments compose -s v -l version         -d "Print version and exit"

# All docker-compose commands
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa build   --description "Build or rebuild services"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa bundle  --description "Generate a Docker bundle from the Compose file"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa config  --description "Validate and print compose configuration"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa create  --description "Create containers without starting them"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa down    --description "Stop and remove all container resources"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa events  --description "Monitor events from containers"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa exec    --description "Execute a command in a running container"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa help    --description "Get help on a command"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa images  --description "List images"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa kill    --description "Kill containers"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa logs    --description "View output from containers"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa pause   --description "Pause services"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa port    --description "Print the public port for a port binding"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa ps      --description "List containers"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa pull    --description "Pulls service images"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa push    --description "Push service images"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa restart --description "Restart services"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa rm      --description "Remove stopped containers"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa run     --description "Run a one-off command"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa scale   --description "Set number of containers for a service"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa start   --description "Start services"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa stop    --description "Stop services"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa top     --description "Display the running processes"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa unpause --description "Unpause services"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa up      --description "Create and start containers"
complete --command docker --arguments compose -n '__fish_docker_using_subcommand' -xa version --description "Show the Docker-Compose version information"

# docker-compose commands that take services
for subcmd in build create events exec images kill logs pause port ps pull push restart rm run scale start stop top unpause up
    complete --command docker --arguments compose -f -n "__fish_docker_using_command $subcmd" \
        -a '(__fish_docker_compose_all_services)' \
        --description "Docker compose service"
end


#
#   FLAGS
#

# build
complete --command docker --arguments compose -n "__fish_docker_using_command build" -l build-arg --description "Set build-time variables for one service"
complete --command docker --arguments compose -n "__fish_docker_using_command build" -l force-rm  --description "Always remove intermediate containers"
complete --command docker --arguments compose -n "__fish_docker_using_command build" -l no-cache  --description "Do not use cache when building the image"
complete --command docker --arguments compose -n "__fish_docker_using_command build" -l pull      --description "Always attempt to pull a newer version of the image"

# bundle
complete --command docker --arguments compose -n "__fish_docker_using_command bundle"      -l push-images --description "Automatically push images for any services which have a `build` option specified"
complete --command docker --arguments compose -n "__fish_docker_using_command bundle" -s o -l output      --description "Path to write the bundle file to. Defaults to '<project name>.dab'"

# config
complete --command docker --arguments compose -n "__fish_docker_using_command config" -s q -l quiet                 --description "Only validate the configuration, don't print anything"
complete --command docker --arguments compose -n "__fish_docker_using_command config"      -l resolve-image-digests --description "Pin image tags to digests"
complete --command docker --arguments compose -n "__fish_docker_using_command config"      -l services              --description "Print the service names, one per line"
complete --command docker --arguments compose -n "__fish_docker_using_command config"      -l volumes               --description "Print the volume names, one per line"

# create
complete --command docker --arguments compose -n "__fish_docker_using_command create" -l build          --description "Build images before creating containers"
complete --command docker --arguments compose -n "__fish_docker_using_command create" -l force-recreate --description "Recreate containers even if their configruation and image haven't changed. Incompatible with --no-recreate"
complete --command docker --arguments compose -n "__fish_docker_using_command create" -l no-build       --description "Don't build an image, even if it's missing"
complete --command docker --arguments compose -n "__fish_docker_using_command create" -l no-recreate    --description "If containers already exist, don't recreate them. Incompatible with --force-recreate"

# down
complete --command docker --arguments compose -n "__fish_docker_using_command down"      -l remove-orphans     --description "Remove containers for services not defined in the Compose file"
complete --command docker --arguments compose -n "__fish_docker_using_command down"      -l rmi -a "all local" --description "Remove images, type may be one of: 'all' to remove all images, or 'local' to remove only images that don't have a custom name set by the 'image' field"
complete --command docker --arguments compose -n "__fish_docker_using_command down" -s v -l volumes            --description "Remove data volumes"

# events
complete --command docker --arguments compose -n "__fish_docker_using_command events" -l json --description "Output events as a stream of json objects"

# exec
complete --command docker --arguments compose -n "__fish_docker_using_command exec"      -l index -a "1" --description "Index of the container if there are multiple instances of a service. Defaults to 1"
complete --command docker --arguments compose -n "__fish_docker_using_command exec"      -l privileged   --description "Give extended privileges to the process"
complete --command docker --arguments compose -n "__fish_docker_using_command exec" -s T                 --description "Disable pseudo-tty allocation. By default `docker-compose exec` allocates a TTY"
complete --command docker --arguments compose -n "__fish_docker_using_command exec" -s d                 --description "Detached mode: Run command in the background"
complete --command docker --arguments compose -n "__fish_docker_using_command exec" -s u -l user         --description "Run the command as this user"

# images
complete --command docker --arguments compose -n "__fish_docker_using_command images" -s q --description "Only display IDs"

# kill
complete --command docker --arguments compose -n "__fish_docker_using_command kill" -s s --description "SIGNAL to send to the container. Default signal is SIGKILL"

# logs
complete --command docker --arguments compose -n "__fish_docker_using_command logs"      -l no-color  --description "Produce monochrome output"
complete --command docker --arguments compose -n "__fish_docker_using_command logs"      -l tail      --description "Number of lines to show from the end of the logs for each container"
complete --command docker --arguments compose -n "__fish_docker_using_command logs" -s f -l follow    --description "Follow log output"
complete --command docker --arguments compose -n "__fish_docker_using_command logs" -s t -l timestaps --description "Show timestamps"

# port
complete --command docker --arguments compose -n "__fish_docker_using_command port" -l index    -a "1"       --description "Index of the container if there are multiple instances of a service. Defaults to 1"
complete --command docker --arguments compose -n "__fish_docker_using_command port" -l protocol -a "tcp udp" --description "Protocol to use, TCP or UDP. Defaults to TCP"

# ps
complete --command docker --arguments compose -n "__fish_docker_using_command ps" -s q --description "Only display IDs"

# pull
complete --command docker --arguments compose -n "__fish_docker_using_command pull" -l ignore-pull-failures --description "Pull what it can and ignores images with pull failures"
complete --command docker --arguments compose -n "__fish_docker_using_command pull" -l parallel             --description "Pull multiple images in parallel"
complete --command docker --arguments compose -n "__fish_docker_using_command pull" -l quiet                --description "Pull without printing progress information"

# push
complete --command docker --arguments compose -n "__fish_docker_using_command push" -l ignore-push-failures --description "Push what it can and ignores images with push failures"

# restart
complete --command docker --arguments compose -n "__fish_docker_using_command restart" -s t -l timeout -a "10" --description "Specify a shutdown timeout in seconds. Default 10"

# rm
complete --command docker --arguments compose -n "__fish_docker_using_command rm" -s a -l all   --description "Also remove one-off containers created by docker-compose run"
complete --command docker --arguments compose -n "__fish_docker_using_command rm" -s f -l force --description "Don't ask to confirm removal"
complete --command docker --arguments compose -n "__fish_docker_using_command rm" -s s -l stop  --description "Stop the containers, if required, before removing"
complete --command docker --arguments compose -n "__fish_docker_using_command rm" -s v          --description "Remove volumes associated with containers"

# run
complete --command docker --arguments compose -n "__fish_docker_using_command run"      -l entrypoint    --description "Override the entrypoint of the image"
complete --command docker --arguments compose -n "__fish_docker_using_command run"      -l name          --description "Assign a name to the container"
complete --command docker --arguments compose -n "__fish_docker_using_command run"      -l no-deps       --description "Don't start linked services"
complete --command docker --arguments compose -n "__fish_docker_using_command run"      -l rm            --description "Remove container after run. Ignored in detached mode"
complete --command docker --arguments compose -n "__fish_docker_using_command run"      -l service-ports --description "Run command with the service's ports enabled and mapped to the host"
complete --command docker --arguments compose -n "__fish_docker_using_command run" -s T                  --description "Disable pseudo-tty allocation. By default 'docker-compose run' allocates a TTY"
complete --command docker --arguments compose -n "__fish_docker_using_command run" -s d                  --description "Detached mode: Run container in the background, print new container name"
complete --command docker --arguments compose -n "__fish_docker_using_command run" -s e                  --description "Set an environment variable (can be used multiple times)"
complete --command docker --arguments compose -n "__fish_docker_using_command run" -s p -l publish       --description "Publish a container's port(s) to the host"
complete --command docker --arguments compose -n "__fish_docker_using_command run" -s u -l user          --description "Run as a specified username or uid"
complete --command docker --arguments compose -n "__fish_docker_using_command run" -s w -l workdir       --description "Working directory inside the container"
complete --command docker --arguments compose -n "__fish_docker_using_command run" -s v -l volume        --description "Bind mount a volume (default [])"

# scale
complete --command docker --arguments compose -n "__fish_docker_using_command scale" -s t -l timeout -a "10" --description "Specify a shutdown timeout in seconds. Default 10"

# stop
complete --command docker --arguments compose -n "__fish_docker_using_command stop" -s t -l timeout -a "10" --description "Specify a shutdown timeout in seconds. Default 10"

# up
complete --command docker --arguments compose -n "__fish_docker_using_command up" -s d                            --description "Detached mode: Run containers in the background, print new container names"
complete --command docker --arguments compose -n "__fish_docker_using_command up"      -l no-color                --description "Produce monochrome output"
complete --command docker --arguments compose -n "__fish_docker_using_command up"      -l no-deps                 --description "Don't start linked services"
complete --command docker --arguments compose -n "__fish_docker_using_command up"      -l force-recreate          --description "Recreate containers even if their configuration and image haven't changed"
complete --command docker --arguments compose -n "__fish_docker_using_command up"      -l no-recreate             --description "If containers already exist, don't recreate them. Incompatible with --force-recreate"
complete --command docker --arguments compose -n "__fish_docker_using_command up"      -l no-build                --description "Don't build an image, even if it's missing"
complete --command docker --arguments compose -n "__fish_docker_using_command up"      -l build                   --description "Build images before starting containers"
complete --command docker --arguments compose -n "__fish_docker_using_command up"      -l abort-on-container-exit --description "Stop all containers if any container was stopped. Incompatible with -d"
complete --command docker --arguments compose -n "__fish_docker_using_command up" -s t -l timeout                 --description "Use this timeout in seconds for container shutdown when attached or when containers are already running. Default 10"
complete --command docker --arguments compose -n "__fish_docker_using_command up"      -l remove-orphans          --description "Remove containers for services not defined in the Compose file"
complete --command docker --arguments compose -n "__fish_docker_using_command up"      -l exit-code-from          --description "Return the exit code of the selected service container. Implies --abort-on-container-exit"
complete --command docker --arguments compose -n "__fish_docker_using_command up"      -l scale                   --description "Scale SERVICE to NUM instances. Overrides the `scale` setting in the Compose file if present"

# version
complete --command docker --arguments compose -n "__fish_docker_using_command version" -l short --description "Shows only Compose's version number"