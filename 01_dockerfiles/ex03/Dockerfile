# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mirivera <mirivera@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/24 10:35:03 by mirivera          #+#    #+#              #
#    Updated: 2020/01/27 14:24:33 by mirivera         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ctrl k then "OK"
# [ ] installs development version of Gitlab - Community Edition with all dependencies and necessary configurations
# [ ] launches the application as everything is building
# [ ] access the web client
# [ ] create users
# [ ] interact via GIT with this container (HTTPS and SSH)
    # this is kind of easier than it looks because you only need to create repos that have HTTPS in the URL and then push using an SSH key, so generate one

FROM debian

# update, upgrade and install dependencies for gitlab onto debian, postfix is to send notification messages, # tzdata apt-utils
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y curl openssh-server ca-certificates postfix

# Add the Gitlab package repository, install the package, pipe script into bash command that runs it
RUN cd && \
    curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
# run the installer
RUN sudo apt install -y gitlab-ce