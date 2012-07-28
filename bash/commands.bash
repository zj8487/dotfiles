cat /etc/passwd | awk -F: '{print $1 "\t" $6}' | sort > ./users
ls | nl
