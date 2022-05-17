export SRC_DIR=$HOME
cd $HOME
wget https://cmake.org/files/v3.8/cmake-3.8.1.tar.gz
tar -xvf cmake-3.8.1.tar.gz && rm cmake-3.8.1.tar.gz
cd $SRC_DIR/cmake-3.8.1/
./bootstrap --system-curl && \
    make -j$(nproc) && \
    make install && \
    rm -rf $SRC_DIR/cmake-3.8.1