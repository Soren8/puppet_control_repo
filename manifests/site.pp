node default {
}

node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}",
    owner => 'root',
  }
  file { '/etc/hosts':
    ensure => file,
    owner => 'root',
    content => '127.0.0.1	master.puppet.vm	master
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
172.18.0.2	web.puppet.vm	web
172.18.0.3	db.puppet.vm	db'
  }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
