FROM opensciencegrid/software-base:3.6-el7-release-20220929-1911
RUN yum clean all
RUN yum install libmacaroons scitokens-cpp -y
RUN yum install xrootd-server xrootd-scitokens xrootd-voms -y
RUN yum install vo-client -y
ADD image-config/xrootd-supervisor.conf /etc/supervisord.d/
ADD image-config/set_permissions.sh /etc/osg/image-init.d/
