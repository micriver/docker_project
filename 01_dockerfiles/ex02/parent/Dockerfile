FROM ruby

# install required packages for Ruby
RUN apt-get update && apt-get install build-essential nodejs sqlite3 gem -y 

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
# install required gems
ONBUILD RUN bundle update
# setup database tables
ONBUILD RUN rake db:migrate
# seed the database with generic credentials
ONBUILD RUN rake db:seed

# Gems are a standard format for distributing Ruby programming language programs and libaries

#------
# USAGE
#------

# TO BUILD : docker build -t ft-rails:on-build -f ft-rails/Dockerfile .
#          : docker build -t rubyserver .
# TO LAUNCH : docker run -itd --rm -p 3000:3000 rubyserver
# TO TEST : visit http://[machine ip]:3000