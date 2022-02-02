cd $HOME
pwd
wget https://sourceforge.net/projects/boost/files/boost/1.63.0/boost_1_63_0.tar.gz
#curl -O https://sourceforge.net/projects/boost/files/boost/1.63.0/boost_1_63_0.tar.gz
tar -xzvf boost_1_63_0.tar.gz -C $HOME
cd $HOME/boost_1_63_0
./bootstrap.sh
./b2 -j $(nproc) cxxflags=-fPIC threading=multi runtime-link=shared \
      --with-log --with-serialization --with-system --with-date_time \
      --with-filesystem --with-regex --with-timer --with-chrono --with-thread \
      --with-program_options install