FROM fedora:27
MAINTAINER Wouter Hummelink <wouter.hummelink@ordina.nl>

RUN yum -y install python python-setuptools git krb5-devel python-devel krb5-workstation krb5-libs gcc\
    && easy_install pip \
    && pip install git+https://github.com/ansible/ansible.git@stable-2.5 \
    && pip install pywinrm[kerberos] \
    && useradd ansible

USER ansible

VOLUME /playbook
WORKDIR /playbook
ENV ANSIBLE_RETRY_FILES_ENABLED=no 
ENTRYPOINT ["/usr/bin/ansible-playbook"]
CMD ["playbook.yml"]
