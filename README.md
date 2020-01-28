# Description 
The source code and build instructions for an example data service in ZSS.

# Steps To Build
First, clone this repository inside of your zowe installation directory. Inside of the /build directory, clone https://github.com/zowe/zss/. You should then run the build.sh script inside of the /build directory. The build should succeed and create a /lib folder, which contains your compiled dll (.so).

# File Structure Example
zowe-installation
  - hello-world-service
    - build
      - zss
      - build.sh
      - pluginAPI.x
    - pluginDefinition.json
    - deploy.sh
    - lib
      - helloWorld.so
  - zlux-app-server
  - zlux-app-manager
  - ...
  - ...

# Setting Up
You should then run deploy.sh, which will install the plugin in your zowe installation directory.

# Testing
If you start the zssServer, then you should see the DLL being loaded in. 

```
For plugin=hello.world, found 1 data service(s)
added identifier for hello.world/data
going for DLL EP lib={path-to-zowe-installation}/hello-world-data-service/lib/helloWorld.so epName=helloWorldDataServiceInstaller
DLL EP = 0x3653f218
```

To test, go to the following URL:

```{HOSTNAME}:{PORT}/ZLUX/plugins/hello.world/services/data```

This service accepts GET and POST requests.

To turn on logging, add the following snippet into your zluxserver.json file:

```
"logLevels": {
   "hello.world": 6
}
```

The number after the plugin identifier represents the level of logging. This is read into the server at startup.
