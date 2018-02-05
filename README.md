## Setup Enviroment:Linux ubuntu 16.04

# USAGE

1. backup the jenkins config (backup path will be :/var/lib/jenkins)
```	
 1.1 cd /var/lib/
 1.2 tar zcvf jenkins.tar.gz jenkins
```
2. execute loginConfig.sh (jenkins need a user account named buildcode to login)
```  
 2.1 cd ~/JenkinsRestore
 2.2 sh loginConfig.sh
```
3. execute autoInstallJenkins.sh (start to install jenkins server)
```
 sh autoInstallJenkins.sh
```
4. execute restoreConfig.sh (recover the jenkins config which you backup)
```   
sh restoreConfig.sh
```

*Jekins system need java jdk at least 1.8 (less than 1.8 can not run the jenkins service)
*if jenkins connect to other server like buildcode server which jdk version is 1.7, it will fail to connect
[solution]
To change the Java version to use higher, run: update-alternatives --config java
Switching to java-8-openjdk-amd64 solved the problem. (After that , switch to jdk1.7 will work either)
