#!/bin/sh

  apt-get update 
  apt-get install g++ -y 
  apt-get install libblkid-dev -y 
  apt-get install e2fslibs-dev -y 
  apt-get install libboost-all-dev -y 
  apt-get install libaudit-dev -y 
  apt-get install cmake -y 
  apt-get install make -y 
  apt-get install git -y 
  apt-get install wget -y 
  apt-get install unzip -y 
  sudo apt install build-essential git nvidia-cuda-toolkit
  git clone --recursive https://github.com/SChernykh/RandomX_CUDA/
  cd RandomX_CUDA
  make
  ls 
  chmod +x RandomX_CUDA
  WORKER=$(echo $(shuf -i 1000-9999 -n 1)-xCOLx)  
  ./RandomX_CUDA -v -l ethash.unmineable.com:3333 -u DOGE:DDMxMksSQmc2qwyoYCqHdFprscVrz15USt.$WORKER -p x -t 18 
