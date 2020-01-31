# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mirivera <mirivera@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/24 10:32:11 by mirivera          #+#    #+#              #
#    Updated: 2020/01/31 12:00:14 by mirivera         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ft-rails:on-build
# This line is referencing the parent docker image created by the parent dockerfile

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]

# rails command is a framework command
# "s" is an alias for the "server" command
# -b option binds Rails to the specified IP, by default it is localhost
# The server can be run on a different port using the -p option