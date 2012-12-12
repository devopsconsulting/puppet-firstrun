puppet-firstrun: know when puppet has it's first run.
=====================================================

puppet-firstrun gives you an extra fact - ``firstrun`` - which is a boolean
and let's you know if this was the first time that puppet runs.

Register firstrun only after class was succeful::

    class foo {
        Class['foo'] -> class {"firstrun":}
    }

Use firstrun to conditionally include resources::

    if $firstrun {
        # do something.
    } else {
        # do something else.
    }
