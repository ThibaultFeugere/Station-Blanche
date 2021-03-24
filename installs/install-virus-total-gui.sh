# get dependencies
sudo apt-get install git build-essential qtchooser qt5-default libjansson-dev libcurl4-openssl-dev git zlib1g-dev

# clone the c-vtapi library
git clone https://github.com/VirusTotal/c-vtapi.git /home/stationblanche/Bureau/c-vtapi

#change to c-vtapi directory
cd /home/stationblanche/Bureau/c-vtapi

# get c-vtapi dependencies
sudo apt-get install automake autoconf libtool libjansson-dev libcurl4-openssl-dev

# configure with default options and make
autoreconf -fi && ./configure && make

# install to system, by default this goes to /usr/local/lib
sudo make install 

# configure dynamic linker to add /usr/local/lib to path
sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/usr-local-lib.conf'
sudo ldconfig

# go back to base directory
cd ..

#clone QT VirusTotal Uplaoder
git clone https://github.com/VirusTotal/qt-virustotal-uploader.git /home/stationblanche/Bureau/qt-virustotal-uploader
cd /home/stationblanche/Bureau/qt-virustotal-uploader

# run qmake, specifing qt5 
qtchooser -run-tool=qmake -qt=5

# compile with 4 parellel jobs
make -j4

#optionally install 
sudo make install
