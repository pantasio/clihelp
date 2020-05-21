more info https://ligerlearn.com/how-to-edit-files-within-docker-containers/  
### Check value of file  
```
cat ~/.bashrc | grep -i "alias grep='grep --color=auto'"
```

* Explanation of the command:  
    * `cat ~/.bashrc` kiem tra gia tri trong file .bashrc  
    * ```"alias grep='grep --color=auto'"``` la gia tri chung ta can kiem tra 

### Use sed to search and replace the line with what we want  
```
sed 's/LogLevel warn/LogLevel debug/' conf/httpd.conf > conf/httpd.conf.changed && mv conf/httpd.conf.changed conf/httpd.conf

```

* Explanation of the command:  
    * 's/LogLevel warn/LogLevel debug/'
    * `s/LogLevel warn` gia tri tim kiem la LogLevel
    * `LogLevel debug` gia tri thay the 
