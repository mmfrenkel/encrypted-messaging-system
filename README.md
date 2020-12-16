# encrypted-messaging-system

### Setup and Build

```
$ make install DEST=tree
```

#### Start Server
```
$ cd tree/server-dir
$ ./bin/server
```

#### Run getcert

In a separate shell:
```
$ cd tree/client-dir
$ ./bin/getcert -u username -p password
```
Where username is a valid username and password is a valid password for that username. For example:

```
$ ./bin/getcert -u username -p Cardin_pwns
```
Note that you can also choose to not provide the password and you will be prompted for it:
```
$ ./bin/getcert -u addleness
Please provide your password (less than 20 characters): 
```

#### Testing/Debugging

The installation script copies over the executables into the client and server directories. If you don't want to install everything everytime as you develop and you just want to use the latest executables, you can do:
```
$ make all
```
And then run the server via:
```
$ cd tree/server-dir
$ ../../bin/server
```
And the client via:
```
$ cd tree/client-dir
$ ../../bin/getcert -u addleness
```
This approach will maintain the correct paths within the program.
