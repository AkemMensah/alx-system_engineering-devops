# Defining Nginx class for installation and configuration
class nginx_config {

  # Install Nginx package
  package { 'nginx':
    ensure => 'installed',
  }

  # Ensure Nginx service is running and enabled
  service { 'nginx':
    ensure  => 'running',
    enable  => true,
    require => Package['nginx'],
  }

  # Configure Nginx to listen on port 80
  file { '/etc/nginx/sites-available/default':
    ensure  => 'file',
    content => template('nginx_config/nginx.conf.erb'),
    notify  => Service['nginx'],
  }

  # Create a HTML file for the root location
  file { '/var/www/html/index.html':
    ensure  => 'file',
    content => 'Hello World!',
    require => Package['nginx'],
  }

  # Configure the redirect location
  location { '/redirect_me':
    ensure      => 'present',
    destination => 'http://example.com/redirect_target', # Replace with your desired destination URL
    status      => '301', # 301 Moved Permanently
    require     => Package['nginx'],
  }
}

# Apply the Nginx configuration class
include nginx_config
