# ACL — Access Control Lists


### Examples

#### Get/Set ACL permissions
| Command                                      | Explanation                                              |
|----------------------------------------------|----------------------------------------------------------|
|```getfacl <FILE_PATH>```                     |show file permissions including ACL file permissions      |
|```setfacl -m u:<USER_NAME>:rw <FILE_PATH>``` |set 'rw' ACL permissions on <FILE_PATH\> for <USER_NAME\> |
|```setfacl -m g:<GROUP_NAME>:rw <FILE_PATH>```|set 'rw' ACL permissions on <FILE_PATH\> for <GROUP_NAME\>|
|```setfacl -b <FILE_PATH>```                  |remove all ACL permissions on <FILE_PATH\>                |
|```setfacl -x u:<USER_NAME\> <FILE_PATH\>```  |remove ACL permissions on <FILE_PATH\> for <USER_NAME>    |

#### Set/Remove ACL mask
| Command                          | Explanation       |
|----------------------------------|-------------------|
|```setfacl -m m:rwx <FILE_PATH>```|set the ACL mask   |
|```setfacl -x m: <FILE_PATH>```   |remove the ACL mask|


