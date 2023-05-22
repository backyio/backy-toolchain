# Windows helper utils

<br>

## Dependencies

* Installed toolchain

## Installation
* Add backy-toolchain directory to the windows path
* Add backy-toolchain/windows directory to the windows path
* Let see behind the migration settings on windows in Migration section

### How to use windows functions
Call every command from toolchain directory, 

``` 
   cd  xxx\backy-toolchain
   windows\standalone_start.bat   
```


### Migration

*   Set migrate_certpath environment variable, need to point your backy-toolchain directory or other directory where<br>
    your certificate directory created ( mycert and certs ). Use linux like path separator "/".<br>

``` 
    migrate_certpath c:/dev/backy-platform/backy-toolchain/
```

