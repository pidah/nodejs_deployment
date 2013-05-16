nodejs_deployment
=================

This deploys a very simple node app with nginx, node.js, redis, upstart, monit, vagrant and puppet

To use, do the following -

-  Download and install [vagrant 1.2.2](http://downloads.vagrantup.com/tags/v1.2.2) or later for your operating system
-  Install the vagrant-aws plugin
-  Then clone this repository as follows -

``` 
$ git clone git@github.com:pidah/nodejs_deployment.git
```
- Update/Modify your AWS credentials as described in [http://www.devopsdiary.com](http://www.devopsdiary.com/blog/2013/05/07/automated-deployment-of-aws-ec2-instances-with-vagrant-and-puppet/)

- Then save your AWS keys in your local ~/.profile file as follows

``` 
 export AWS_ACCESS_KEY="AKXXXXXXXXXXXXXXX"
 export AWS_SECRET_KEY="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
```
Then source the ~/.profile to make the variables available in the current shell session

```  
 source ~/.profile
```

- Then run the following to launch the instance -

```
$ vagrant up --provider=aws
```

You can use your regular vagrant commands as usual e.g

```  
$ vagrant ssh
```
Enjoy \o/

