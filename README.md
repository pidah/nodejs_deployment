nodejs_deployment
=================

This deploys a very simple node app with nginx, node.js, redis, upstart, monit, vagrant and puppet

To use, do the following -

1. Download and install [vagrant 1.2.2](http://downloads.vagrantup.com/tags/v1.2.2) or later for your operating system
2. Install the vagrant-aws plugin
3. Then clone this repository as follows -

``` ruby clone nodejs_deployment repository https://github.com/pidah/nodejs_deployment
$ git clone git@github.com:pidah/nodejs_deployment.git
```
4. Update/Modify your AWS credentials as described in [http://www.devopsdiary.com](http://www.devopsdiary.com/blog/2013/05/07/automated-deployment-of-aws-ec2-instances-with-vagrant-and-puppet/)

5. Then run the following to launch the instance -

``` ruby launch EC2 instance https://github.com/mitchellh/vagrant-aws
$ vagrant up --provider=aws
```

You can use your regular vagrant commands as usual e.g

``` ruby ssh into the EC2 instance 
$ vagrant ssh
```

