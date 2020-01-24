# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mirivera <mirivera@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/24 10:32:06 by mirivera          #+#    #+#              #
#    Updated: 2020/01/24 10:32:16 by mirivera         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ruby

# install required packages for Ruby
RUN apt-get update && apt-get install build-essential nodejs sqlite3 gem -y 
# Gems are a standard format for distributing Ruby programming language programs and libaries

# Install required GEMs
# Bundler manages an application's dependencies through its entire life
RUN gem install bundler:1.16.1
# Rails is a full-stack web framework
RUN gem install rails
# Rake is a Make-like program implemented in Ruby
RUN gem install rake
# RUN mkdir app

# Default Ruby on Rails port number
ONBUILD EXPOSE 3000

# the next couple lines will run once the child image has been mounted
ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app
# update required gems
ONBUILD RUN bundle update
# setup database tables
ONBUILD RUN rake db:migrate
# seed the database with generic credentials
ONBUILD RUN rake db:seed