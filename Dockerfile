FROM maxxant/finaldevol7:4.4

# Copy the build scripts.
COPY _in_build.sh env.source /share/
ADD dl/heaptrack-v1.1.0-190-gc9699aa.tar.gz /src/heaptrack/
ADD dl/cmake-3.18.2-Linux-x86_64.tar.gz /usr/local/

RUN yum install -y libunwind-devel
RUN cd /share && ./_in_build.sh -j 4

VOLUME /share
CMD cd /share
