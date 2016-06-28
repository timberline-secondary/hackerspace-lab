BEGIN {
  start_uid = 10010;
  start_gid = 10010;
  i=0;
}
{
  print "dn: uid="$1", ou=Users,dc=hackerspace,dc=tbl"
  print "givenName: ",$2
  print "sn: ",$3
  print "loginShell: /bin/bash" 
  print "uidNumber : "(start_uid+i); 
  print "gidNumber : "(start_gid+i); 
  print "shadowMax: 99999" 
  print "objectClass: inetOrgPerson"
  print "objectClass: posixAccount" 
  print "objectClass: shadowAccount"
  print "uid: "$1
  print "shadowLastChange: 12994"
  print "cn: "$2$3 
  print "homeDirectory: /home/"$1
  print "shadowWarning: 7" 
  print "userPassword: "$2$1
  print "\n";  
   
  i++; 
}
