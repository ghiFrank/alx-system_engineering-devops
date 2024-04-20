#creates a manifest that kills a process named killmenow.
exec { 'killmenow_process':
  path    => '/usr/bin:/usr/sbin:/bin',
}
