# == Class: chrony::service
class chrony::service inherits chrony {

        service {'chronyd':
                ensure          => running,
                enable          => true,
                hasstatus       => true,
                hasrestart      => true,
                pattern         => "/usr/sbin/chronyd",
                require         => Package['chrony'],
        }
}
