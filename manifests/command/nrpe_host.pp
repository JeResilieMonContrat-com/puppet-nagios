class nagios::command::nrpe_host {
  nagios::type::command {
    'check_nrpe_host':
      command_line => '/usr/lib/nagios/plugins/check_nrpe -H $ARG1$ -c $ARG2$ -a $ARG3$';
    'check_nrpe_host_port':
      command_line => '/usr/lib/nagios/plugins/check_nrpe -H $ARG1$ -c $ARG2$ -p $ARG3$ -a $ARG4$';
    'check_nrpe_1arg_host':
      command_line => '/usr/lib/nagios/plugins/check_nrpe -H $ARG1$ -c $ARG2$';
    'check_nrpe_1arg_host_port':
      command_line => '/usr/lib/nagios/plugins/check_nrpe -H $ARG1$ -c $ARG2$ -p $ARG3$';
    'check_nrpe_host_timeout':
      command_line => '/usr/lib/nagios/plugins/check_nrpe -H $ARG1$ -c $ARG2$ -a $ARG3$ -t $ARG4$';
    'check_nrpe_host_timeout_port':
      command_line => '/usr/lib/nagios/plugins/check_nrpe -H $ARG1$ -c $ARG2$ -p $ARG3$ -a $ARG4$ -t $ARG5$';
    'check_nrpe_1arg_host_timeout':
      command_line => '/usr/lib/nagios/plugins/check_nrpe -H $ARG1$ -c $ARG2$ -t $ARG3$';
    'check_nrpe_1arg_host_timeout_port':
      command_line => '/usr/lib/nagios/plugins/check_nrpe -H $ARG1$ -c $ARG2$ -p $ARG3$ -t $ARG4$';
  }
}
