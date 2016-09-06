#Lannister: LDAP and PXE install server

##LDAP
Student uid start: yy000 (where yy is the two digit year the student account was created)

list users: `getent passwd`

### Bulk user import
Use `ldapbulkimport` script:

`sudo ./ldapbulimport` 

##PXE Installation


