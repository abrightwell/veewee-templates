Veewee::Session.declare({
  :cpu_count => '1',
  :memory_size=> '512',
  :disk_size => '10240',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :virtualbox => {
    :vm_options => [
        'pae' => 'on',
        'ioapic' => 'on'
    ]
  },
  :os_type_id => 'RedHat6_64',
  :iso_file => "rhel-server-6.5-x86_64-dvd.iso",
  :iso_md5 => "a84d4d9eddb36fb417832166cd10a4c2",
  :iso_download_timeout => 1000,
  :boot_wait => "15",
  :boot_cmd_sequence => [
    '<Tab> text ks=http://%IP%:%PORT%/ks.cfg.erb<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => 10000,
  :kickstart_file => "ks.cfg.erb",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "base.sh",
    "puppet.sh",
    "vagrant.sh",
    "virtualbox.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => 10000,
  :params => {
    :rhn_username => "", # Red Hat Network Username
    :rhn_password => ""  # Red Hat Network Password
  },
})
