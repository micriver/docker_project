FROM ft-rails:on-build

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]

# rails command is a framework command
# -s is short for the --server flag
# -b option binds Rails to the specified IP, by default it is localhost
# The server can be run on a different port using the -p option