wget https://archive.apache.org/dist/madlib/1.14/apache-madlib-1.14-src.tar.gz
tar zxvf apache-madlib-1.14-src.tar.gz
cd apache-madlib-1.14-src

env PATH=/usr/bin:/usr/pgsql-10/bin:$PATH ./configure

cd build/
make
make install

tar zcvf madlib-1.14-pg10.tar.gz /usr/local/madlib

if [ ! -z "$1" ]; then
  cp -v madlib-1.14-pg10.tar.gz $1;
fi;

