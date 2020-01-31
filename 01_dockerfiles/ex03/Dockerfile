# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mirivera <mirivera@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/24 10:35:03 by mirivera          #+#    #+#              #
#    Updated: 2020/01/30 19:36:08 by mirivera         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ctrl k then "OK" for heavy checkmark :)
# [✓] installs development version of Gitlab - Community Edition with all dependencies and necessary configurations
# [✓] launches the application as everything is building
# [✓] access the web client
# [✓] create users
# [✓] interact via GIT with this container 

FROM debian

# update, upgrade and install dependencies for gitlab onto debian, postfix is to send notification messages, # tzdata postfix 
# apt-utils is used for gitlab-ce package configuration
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y curl openssh-server ca-certificates apt-utils 

RUN apt-get update && apt-get install sudo -y

# Add the Gitlab package repository, install the package, pipe script into bash command that runs it
RUN cd && \
    curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
# run the installer
RUN sudo apt install -y gitlab-ce

# 443 is the standard port for HTTPS traffic, 80 is for HTTP, and 22 is the default port for SSH traffic
EXPOSE 443 80 22

# The package is expecting an init system to start our runit service
ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && \
    #configure Gitlab client
    gitlab-ctl reconfigure && \
    # tail creates a loop that keeps the container running, printing out the logs
    gitlab-ctl tail

# This build takes about 10 minutes to boot up

# You can even change this after you have created the machine
# 	>	docker-machine stop machine_name
# 	>	VBoxManage modifyvm machine_name --cpus 2
# 	>	VBoxManage modifyvm machine_name --memory 4096
# 	>	docker-machine start machine_name