FROM centos:centos7
RUN yum -y groupinstall "Development Tools"
RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm
RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install wget vim
RUN yum -y install mod_php70u php70-develu php70u-cli php70u-mysqlnd httpd
RUN yum -y install mod_ssl openssl
RUN yum -y install php70u-json
COPY ./generate-certificate.sh /root/generate-certificate.sh
RUN chmod +x /root/generate-certificate.sh
RUN /root/generate-certificate.sh
