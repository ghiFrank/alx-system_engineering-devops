exec { 'install Flask via pip3':
  command => 'pip3 install flask',
  path    => ['/usr/bin/'],
}
