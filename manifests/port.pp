define network_switch::port (
) {

# Port Interface Definition
  interface {$name:
    ensure              => $ensure
    description         => $description
    allowed_trunk_vlans => $allowed_trunk_vlans
    description         => $description
    device_url          => $device_url
    duplex              => $duplex
    encapsultation      => $encapsulation
    etherchannel        => $etherchannel
    ipaddress           => $ipaddress
    mode                => $mode
    provider            => $provider
    speed               => $speed
  } 

# SwitchPort Autogenerated Puppetcode

  concat {"/etc/puppet/manifests/network/switch/${switchname}/port/${name}.pp":
    owner    => 'root',
    group   => 'root',
    mode    => '0644',
  }
  concat::fragment {"${name}-fileheader":
    target  => "/etc/puppet/manifests/network/switch/${switchname}/port/${name}.pp",
    content => template("network_switch/warning.erb"),
    order   => '00',
  }

  concat::fragment {"${name}-fileheader":
    target  => "/etc/puppet/manifests/network/switch/${switchname}/port/${name}.pp",
    content => template("network_switch/interface.erb"),
    order   => '00',
  }


}
