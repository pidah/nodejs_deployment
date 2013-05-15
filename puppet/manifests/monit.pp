class monit {

    package { "monit":
        ensure  => latest,
        require => Class["Nodejs"],
    }

    file { '/etc/monit/monitrc':
        ensure  => present,
        mode    => '0600',
        owner   => 'root',
        group   => 'root',
        source  => "puppet:///files/monitrc",
        notify  => Service['monit'],
        require => Package["monit"],
    }

    service { 'monit':
        ensure     => running,
        enable     => true,
        hasrestart => true,
        require    => File['/etc/monit/monitrc'],
        subscribe    => File['/etc/monit/monitrc'],
    }

}


