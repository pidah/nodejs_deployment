class upstart {
    
    file { "/etc/init/app.conf":
        ensure  => file,
        source  => "puppet:///files/app.conf",
        require => Class["Nodejs"],
    }
 
    service { 'app':
        ensure => running,
        provider => 'upstart',
        require => File['/etc/init/app.conf'],
    }

}
