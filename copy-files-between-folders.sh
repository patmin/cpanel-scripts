#! /bin/bash
    from='/homes/'
    cd $from
    find . -name "*" -mtime -7 -exec cp -n /homes/{} /home2/{} \;
