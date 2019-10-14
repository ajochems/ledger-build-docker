# ledger-build-docker
dockerfile for building a Ledger App.

# run
being:
```
/home/user/apps -> your apps folder,
/home/user/apps/ledger-build-docker -> this project,
/home/user/apps/ledger-app-csc -> the project that you want to compile
```

running:

connect ledger on usb host
```
cd /home/user/apps/ledger-build-docker
docker build . ##--> this will return an hash on the last line, eg: Successfully built c8638d26b08e
cd ..
docker run -it --privileged -v /dev/bus/usb:/dev/bus/usb -v /home/user/apps:/root/apps c8638d26b08e
```


then you can go to /root and compile it!

# compile example
```
cd /root
cd ledger-app-csc
make clean
make
```

upload binary (experimental)

```make load```
