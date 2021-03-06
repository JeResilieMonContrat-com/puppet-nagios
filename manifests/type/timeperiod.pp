define nagios::type::timeperiod (
  $timeperiod_name  = $name,
  $timeperiod_alias = undef,
  $monday           = undef,
  $tuesday          = undef,
  $wednesday        = undef,
  $thursday         = undef,
  $friday           = undef,
  $saturday         = undef,
  $sunday           = undef
) {
  concat::fragment { "nagios_timeperiod_${name}_${::fqdn}":
    target  => "${nagios::params::cfg_dir}/conf.d/nagios_timeperiod.cfg",
    content => template('nagios/nagios_type/timeperiod.erb'),
    tag     => 'nagios_timeperiod',
    order   => '30',
  }
}
