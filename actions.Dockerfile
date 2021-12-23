from ubuntu:16.04

workdir /root/pintos

run apt update --fix-missing
run apt install apt-utils -y
run apt upgrade -y
run apt install -y python3 build-essential qemu qemu-kvm
env PATH=$PATH:/root/pintos/utils
arg phase
env PINTOSPH=$phase
add . .
run echo $PINTOSPH
run cd /root/pintos/$PINTOSPH && make && make grade
run bash builder.sh /root/pintos/$PINTOSPH/build/grade


