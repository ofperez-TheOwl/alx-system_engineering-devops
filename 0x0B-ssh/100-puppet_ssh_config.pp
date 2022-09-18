# connects to a server to configurate it

exec { 'echo "PasswordAuthentication no\nIdentityFile ~/.ssh/school" >> /etc/ssh/ssh_config':
        path    => '/bin/'
}
