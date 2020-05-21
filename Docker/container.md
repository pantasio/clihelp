### Create a new container and assign an IP to it:
'''
docker container run -d --name network-test02 --ip 10.1.4.102 --network br04 nginx
'''

### Get the IP info for the container:
'''
docker container inspect network-test02 | grep IPAddr
'''
