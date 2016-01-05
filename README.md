# Templates Master Packages Composer Repository

### Install

~~~bash
$ git clone git@github.com:tmhub/packages.git
$ cd packages
$ chmod +x run.sh
~~~

### Usage 

~~~bash
$ cd packages
$ ./run.sh 
~~~

~~~bash
$ cd packages
$ git pull
$ rm -rf include/*
$ satis build satis.json .
$ git add . 
$ git commit -m "satis build satis.json ."
$ git push
~~~
