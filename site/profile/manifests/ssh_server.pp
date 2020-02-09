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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDiwimeX2wO5ZyKAyX/txV+rf3sdBnUSg/F0pPjKFVGIGM+gRlwX54UA9nGY6rPFk2fetKxq9JFWMdMkWsp6NecCm+qIIvE2by6SJtZAPhchR+IM85zazJTfnshthfawb8eBOykcKBKCJS2d4xCW0dmZwlojNjAWjKoKRROreLr1jKK+Cp3Uj01bLR608O8vAWsw7RvhNJkWyazQPv5mBCqt05QapDZ57iT1RNmE8MtMmtXRx1OOv1onpNZP5EFpZtSGDz9aTVcjmnZw5QrZ/Wq25eZy4rahE6amnhdNbDjlqSe9NXQgYC6/tQ82am7gzg3C1AJTXfMnkvp4ecFb5ET',
	}  
}
