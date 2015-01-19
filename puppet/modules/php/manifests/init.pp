class php {

	package { ['php5-fpm','php5-gd','php5-curl','php5-mcrypt','php5-mysql',
						 'php5-cli']:
	  ensure => present,
	  require => Exec['apt-get update'],
	}

	service { 'php5-fpm':
	  ensure => running,
	  require => Package['php5-fpm'],
	}
}
