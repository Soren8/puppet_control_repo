class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDKc6w4bVPvaHUlH77oQvqdYOJLikF5NZOCgsrpQgF5SrjaCiDc5NMh2HkxvAlIRaiO7oEiAoOKV+5EZaWEMkHmtqJ+VAo3DCepyb7zWRGb0NNPcj08JXHruEcnEWbg0iWD7crc1fYzVqWrP76jIELrpJr0oHRTvnEU95GRslVVEYq4tXs/cVJsNaT0GxX1yUdUL8vR4ITRUw1R7yKbqCCiAF+yCnE/ixVbnhjyzjHAuzOMmZ7GFiWobUTuotpMha6oqC5dNac/3OiMdNJb2gjrV61g71LzAHqZZL9IZTj0Wtpvdrxn2yiJq9wdFOBJ+iHAWSssImYVPC0nlw0np2FP',
	}  
}
