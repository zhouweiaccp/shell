#!/bin/expect
#spawn 自动应答demo
ssh_key_create(){
    yum localinstall Install_Packages/expect/*.rpm -y
    if [ ! -f /root/.ssh/id_rsa ];then
        expect <<EOF
        set timeout -1
        spawn ssh-keygen -t rsa
        expect "(/root/.ssh/id_rsa):"
        send "\r"
        expect "(empty for no passphrase):"
        send "\r"
        expect "again:"
        send "\r"
        expect eof
EOF
    else
        echo "key is existed"
    fi
}

ssh_key_config(){
    for ip in ${IP_LIST[@]}
    do
    sed -i /${ip}/d /root/.ssh/known_hosts &> /dev/null
    expect <<EOF
    set timeout -1
    spawn ssh-copy-id root@${ip}
    expect "(yes/no)?"
    send "yes\r"
    expect "password:"
    send "${PASSWORD}\r"
    expect eof
EOF
     done
}

