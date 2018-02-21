class chrony::install inherits chrony{
	package { 'chrony':
		ensure => installed,
	}
}
