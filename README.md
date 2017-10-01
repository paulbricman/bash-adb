# ADB-Android Dismantled Bridge

Android Dismantled Bridge is an exploitation framework based on the Android Debug Bridge protocol. It features 5 usage modes which allow the users to tweak their pwnage according to their needs. It covers the following steps of the exploitation cycle: weaponization, delivery, exploitation, installation.

## Getting Started

To get the project running, get all the files in the same folder and run the setup.sh script. If the android-adb-tools repo is not accessible to you, install it separately.

## Usage

### AIO
  
The all-in-one mode assists the user in generating a payload, deploying it and connecting to it. 

### Generate Payload

This mode allows the user to generate an android meterpreter payload with specific parameters.

### Attack with Existant Payload

This mode assists the user in deploying and connecting to an already created payload.

### Uninstall AVs

This mode uninstalls popular android antiviruses based on their packet names. 

### Minimum Access Method

The minimum access method is very similar to the all-in-one method, but it generates the payload in advance and automatically deploys and connects when a device is attached.

## Contributing

Feel free to improve the scripts, add modes, add uninstallable AVs etc.

1. Fork it
2. Create your feature branch: git checkout -b my-new-feature
3. Commit your changes: git commit -am 'Add some feature'
4. Push to the branch: git push origin my-new-feature
5. Submit a pull request 

## Licence

SignApk.jar is a tool included with the Android platform source bundle.
The copyright on the Metasploit Framework is held by Rapid7, Inc.
