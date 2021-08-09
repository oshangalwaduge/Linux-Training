#!/bin/bash
awk -v FPAT='[^,]*|"[^"]+"' '(NR>1) {print \
		"dn: mail="$3",ou=employees,dc=ltacademy,dc=com\n"\
		"objectClass: inetOrgPerson\n"\
		"cn: "$1" "$2"\n"\
		"sn: "$2"\n"\
		"mail: "$3"\n"\
		"mobile: "$4"\n"\
		"homePhone: "$5"\n"\
		"employeeType: "$6"\n"\
		"localityName: "$7"\n\n"}' employees.csv
