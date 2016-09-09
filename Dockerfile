# The FROM instruction sets the Base Image for subsequent instructions.
# Using Nginx as Base Image
FROM daocloud.io/rushiliwei/tc_rails:rails_proj
MAINTAINER rpj leo

COPY dck.sh /home
# ADD dck.sh /home
COPY . /home/mywork

RUN chmod 755 /home/dck.sh
# RUN pwd
# RUN ls

# WORKDIR /home/mywork/dockerdemo
WORKDIR /home/mywork/cctst

RUN bundle install

## The RUN instruction will execute any commands
## Adding HelloWorld page into Nginx server
# RUN echo "Hello World DaoCloud!" > /usr/share/nginx/html/index.html
RUN echo "Hello world!"

# The EXPOSE instruction informs Docker that the container listens on the
# specified network ports at runtime
EXPOSE 80 5002

# The CMD instruction provides default execution command for an container
# Start Nginx and keep it from running background
# CMD ["/etc/init.d/mysql", "start"]
# CMD ["rails", "s", "-p", "5002", "-b0", "-d"]
# CMD ["echo", "qqqqq"]
CMD /home/dck.sh
