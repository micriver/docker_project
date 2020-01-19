FROM alpine

RUN apk update && apk add vim 

# the script wasn't running initially becuase you had #! /bin/BASH instead of /bin/SH. I don't think alpine has a full on BASH shell
# because its very lightweight