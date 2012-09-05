class firstrun {
    # create a firstrun file, that will be turned into a fact called
    # `firstrun` if present.
    exec{"firstrun":
        path => ["/usr/bin/", "/bin", "/usr/sbin"],
        command => "touch /etc/puppet/.firstrun",
        creates => "/etc/puppet/.firstrun",
    }
}
