# Description 
An example data service for ZSS.

# Steps To Build
First, clone ZSS. You can clone by doing: ```git clone --recursive git@github.com:zowe/zss.git```. Note this should be done outside of this repository. You should end up with the following:

project-folder
  - hello-world-service
  - zss

Second, go into zss and run "set-ssh.sh".

Third, go into hello-world-service and run "build.sh"

The DLL should now be built. You should see helloWorld.so.

# Setting Up
Move this folder to your Zowe install location and run deploy.sh. Then, go into zlux-build and run ```ant deploy```.

# Testing
If you start the zssServer, then you should see the DLL being loaded in. To test, go to the following URL:

```{HOSTNAME}:{PORT}/ZLUX/plugins/hello.world/services/data```

This service accepts GET and POST requests.

