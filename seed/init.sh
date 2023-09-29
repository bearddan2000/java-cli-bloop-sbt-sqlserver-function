#! /bin/bash

password=$MSSQL_SA_PASSWORD

for d in `find . -type f -name "*.sql" | sort`; do
    echo "<========= Start ${d}"
    /opt/mssql-tools/bin/sqlcmd -S db -U sa -P $password -i $d
    echo "<========= Finished ${d}"
done