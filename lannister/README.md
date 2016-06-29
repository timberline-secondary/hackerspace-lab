#Lannister: LDAP and PXE install server

##LDAP
Student uid start: 1000
Student gid start: 1001

### Bulk user import
Requires a CSV file with 3 columns: username, first_name, last_name

`9912345,test,student`

Then create the ldif file:

`awk -F"," -f ldapimport.awk users.csv > users.ldif`

And add users to ldap:

```
ldapadd -x -D "cn=admin,dc=hackerspace,dc=tbl" -w password -f users.ldif
# -x        don't use SASL
# -D bindn  use this to bind to the LDAP directory
# -w passwd 
```


##PXE Installation


