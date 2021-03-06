# same name for image and container
name = cs144
user = user

bash:
	sudo docker exec -it ${name} bash

container:
	sudo docker run -di --name ${name} --cap-add NET_ADMIN \
		--device /dev/net/tun:/dev/net/tun \
		--volume $(shell pwd)/StanfordCS144-sponge:/home/${user}/cs144:z \
		${name}

image:
	sudo docker build . --tag ${name}

start-container:
	sudo docker start ${name}

clean-container:
	sudo docker container stop ${name}
	sudo docker container rm ${name}

tags:
	cd StanfordCS144-sponge && ctags -R .

cscope:
	cd StanfordCS144-sponge && \
	find . -name "*.cc" -o -name "*.hh" > cscope.files && \
	cscope -b -k -q
