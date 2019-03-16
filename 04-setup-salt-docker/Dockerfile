from ubuntu:16.04
label maintainer=akhtyamovpavel@gmail.com
run apt-get update && apt-get install -y vim curl && apt-get clean

workdir /root
run curl -L https://bootstrap.saltstack.com -o install_salt.sh && sh install_salt.sh -P -M

add post_configure.sh /root/post_configure.sh
run chmod +x /root/post_configure.sh

cmd /root/post_configure.sh
