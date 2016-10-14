# Change expired password on RDP session

Windows 10 will not open RDP session if password is expired on remote machine, UI for
changing the password will not be shown. 

 1. save rdp file to disk
 2. add this line to the end:   
     enablecredsspsupport:i:0
 3. open rdp file and connect, then change the password on remote machine