# Description 
An example data service for ZSS.

# Steps To Build
First, clone ZSS. You can clone by doing: ```git clone --recursive git@github.com:zowe/zss.git```. Note this should be done outside of this repository. You should end up with the following:

project-folder
  - hello-world-service
  - zss

Second, go into zss and run "set-ssh.sh".

Third, go into zss/build and run "ant zis"

Fourth, go into hello-world-service and run "build.sh"

The DLL should now be built. You should see helloWorld.so inside zss/bin

# Plugin
Make sure that you have a plugin locator that correctly gives the location of your plugin definition. This is in zlux-app-server/plugins. This should also match the plugin identifier that was used in this example (hello.world).

# Testing
Put this DLL into an existing version of Zowe, in the same location as the zssServer binary. If you start the zssServer, then you should see the DLL being loaded in. To test, go to the following URL:

```{HOSTNAME}:{PORT}/ZLUX/plugins/hello.world/services/data```

This service accepts GET and POST requests.

