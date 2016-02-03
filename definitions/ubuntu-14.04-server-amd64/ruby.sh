apt-get -y install libyaml-0-2
RUBY_VERSION=2.2.4

cd /tmp

wget http://ftp.ruby-lang.org/pub/ruby/2.2/ruby-$RUBY_VERSION.tar.gz
tar xvzf ruby-$RUBY_VERSION.tar.gz
cd ruby-$RUBY_VERSION
./configure --prefix=/opt/ruby
make
make install
cd ..
rm -rf ruby-$RUBY_VERSION
rm ruby-$RUBY_VERSION.tar.gz

RUBYGEMS_VERSION=2.1.10
wget http://production.cf.rubygems.org/rubygems/rubygems-$RUBYGEMS_VERSION.tgz
tar xzf rubygems-$RUBYGEMS_VERSION.tgz
cd rubygems-$RUBYGEMS_VERSION
/opt/ruby/bin/ruby setup.rb
/opt/ruby/bin/gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/
cd ..
rm -rf rubygems-$RUBYGEMS_VERSION
rm rubygems-$RUBYGEMS_VERSION.tgz

echo 'PATH=$PATH:/opt/ruby/bin/' > /etc/profile.d/vagrantruby.sh
