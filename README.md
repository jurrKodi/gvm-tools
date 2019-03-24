# gvm-tools
This dockerfile is to perform check_gmp for nagios from a container.

You could run it:

docker run -it --name gvm-tools josemlopezl/gvm-tools:latest

after this you should exit and run:

docker start gvm-tools

You would be able to 

 docker exec -it gvm-tools ./check_gmp.py tls -H <openvasHost> -u <usuario> -w <password> -T "<Taskname>" --last-report --status
