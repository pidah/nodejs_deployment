class nginx {

    exec { "add_nginx_repo":
            command => "add-apt-repository ppa:nginx/development --yes && apt-get update ",
            path => "/usr/bin",
            require => Class[Nodejs]
    }

    exec { "install_nginx":
        command => "/usr/bin/apt-get install nginx -y --force-yes",
        path => "/usr/bin:/usr/local/bin:/bin:/usr/sbin:/sbin",
        unless => "ls /usr/sbin/nginx ",
        require => Exec["add_nginx_repo"]
    }
    service { 'nginx':
        ensure     => running,
        enable     => true,
        hasrestart => true,
        require    => Exec['install_nginx'],
    }

    file { "/etc/nginx/nginx.conf":
        ensure  => present,
        mode    => '0644',
        source  => "puppet:///files/nginx.conf",
        notify => Service['nginx'],
        require => Exec["install_nginx"],
    }

}

