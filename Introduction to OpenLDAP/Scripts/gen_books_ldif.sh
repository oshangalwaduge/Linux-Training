#!/bin/bash
awk -v FPAT='[^,]*|"[^"]+"' '(NR>1) {print \
	"dn: documentIdentifier="$2",ou=books,dc=ltacademy,dc=com\n" \
	"documentTitle: "$1"\n" \
	"documentIdentifier: "$2"\n" \
	"documentPublisher: "$3"\n" \
	"objectClass: document\n\n"}' books.csv
