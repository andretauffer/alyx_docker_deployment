FROM ubuntu:18.04
RUN apt-get update
RUN yes | apt-get install python3-pip python3-dev libpq-dev postgresql postgresql-contrib virtualenv
RUN apt-get install python3-pip python3-dev libpq-dev postgresql postgresql-contrib virtualenv
RUN touch /var/log/alyx.log; chmod 776 /var/log/alyx.log;
RUN mkdir uploaded
RUN chmod 775 -fR uploaded
RUN chown www-data:www-data -fR uploaded
RUN git clone https://github.com/cortex-lab/alyx.git
RUN cd alyx
RUN virtualenv alyxvenv --python=python3
RUN source ./alyxvenv/bin/activate
RUN pip install -r requirements.txt
