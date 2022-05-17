#wget https://download.affectiva.com/linux/gcc-5.4/affdex-cpp-sdk-4.0-75-ubuntu-xenial-xerus-x86_64bit.tar.gz
mkdir $HOME/affdex-sdk
tar -xzvf affdex-cpp-sdk-4.0-75-ubuntu-xenial-xerus-x86_64bit.tar.gz -C $HOME/affdex-sdk
export AFFDEX_DATA_DIR=$HOME/affdex-sdk/data
#git clone https://github.com/Affectiva/cpp-sdk-samples.git $HOME/sdk-samples
git clone https://git.rubenvandeven.com/r/affdex-sdk-cpp-samples $HOME/sdk-samples
mkdir $HOME/build
cd $HOME/build
cmake -DOpenCV_DIR=/usr/ -DBOOST_ROOT=/usr/ -DAFFDEX_DIR=$HOME/affdex-sdk $HOME/sdk-samples
make
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/affdex-sdk/lib

# The SDK statically links a forked version of OpenCV, so if you run into double free or corruption error
# then you will need to preload the OpenCV library installed from package manager
# Use this command to find the path of libopencv_core.so.2.4

ldconfig -p | grep libopencv_core.so.2.4
export LD_PRELOAD=/path/to/libopencv_core.so.2.4