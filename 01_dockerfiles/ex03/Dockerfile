# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mirivera <mirivera@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/24 10:35:03 by mirivera          #+#    #+#              #
#    Updated: 2020/01/25 18:50:28 by mirivera         ###   ########.fr        #
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

# update, upgrade and install dependencies for gitlab onto debian
RUN apt-get update && apt-get -y upgrade && apt-get -y install wget ca-certificates openssh-server tzdata apt-utils