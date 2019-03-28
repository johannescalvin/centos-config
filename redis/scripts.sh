# redis 安装版本
# redis_version=`redis-server -v | awk '{print $3}' | awk -F = '{print $2}'`

wget http://download.redis.io/releases/redis-5.0.4.tar.gz -O redis-5.0.4.tar.gz
tar -zxvf redis-5.0.4.tar.gz
cd redis-5.0.4
make

sudo mv src/redis-benchmark /usr/bin/redis-benchmark
sudo mv src/redis-check-aof /usr/bin/redis-check-aof
sudo mv src/redis-check-rdb /usr/bin/redis-check-rdb
sudo mv src/redis-cli /usr/bin/redis-cli
sudo mv src/redis-sentinel /usr/bin/redis-sentinel
sudo mv src/redis-server /usr/bin/redis-server
sudo mv src/redis-trib.rb /usr/bin/redis-trib.rb
cd -

rm -fr redis-5.0.4
rm -fr redis-5.0.4.tar.gz