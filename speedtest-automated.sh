#!/usr/bin/expect -f
set timeout -1
spawn speedtest
match_max 10000
expect {
    -re "Do you accept the license?.*:" {
        send -- "YES\r"
        exp_continue
    }
    eof {
        exit
    }
}