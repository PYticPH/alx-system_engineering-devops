# Execute a command

$pname = 'killmenow'

exec {'kill_process':
command => "/bin/pkill ${pname}",
}

