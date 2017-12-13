ssh-auto-login-manage
=====================

SSH auto login without password and managing ssh hosts list on Mac OSX & Linux.

You can use these scripts instead of SecureCRT, xshell.

Refer to [ssh-auto-login](https://github.com/liaohuqiu/ssh-auto-login) and [sshgo](https://github.com/emptyhua/sshgo).

### How to use
1. `git clone https://github.com/upton/ssh-auto-login-manage`
2. Modify file `/path/to/ssh-auto-login-manage/hosts`, use your hosts, you can set the special username & password for each hostname, split with blankspace. Will use the default username & password that defined in the `/path/to/ssh-auto-login-manage/login.sh` file if the hostname without username & password :

    ```
    deploy
        1.1.1.0  user1  password1
        1.1.1.1
        2.2.2.2
        3.3.3.3  user2  password2
        4.4.4.4:2509 user2 
    Online
        login1.gateway.net user3 password3
        login2.gateway.net
    ```

* 支持免密码登录(不设置密码时候)
* 支持自定义端口号

3. Modify file `/path/to/ssh-auto-login-manage/login.sh`, use your own default username and password for hostname that not set in hosts file:
 - user="admin"
 - password="admin123456"   
4. Run script `sshgo`, or you can alias `sshgo` command, add the line to the end of ~/.bash_profile and source it:
 * alias sshgo='/path/to/ssh-auto-login-manage/sshgo'
5. enjoy the `sshgo`.

### screenshot

![screenshot](https://github.com/upton/ssh-auto-login-manage/blob/master/screenshot.png)

-----
### 说明

* ssh免密码自动登录和主机管理，可以替代SecureCRT的自动登录。

* Mac下的term功能较弱，无法提供像SecureCRT那样方便的主机管理和自动登录功能。在网上找到用expect做自动登录的项目ssh-auto-login，和一个用python写的主机管理界面，于是把两个工程合并在一起，就是现在这个工程了。

* 参考了 [ssh-auto-login](https://github.com/liaohuqiu/ssh-auto-login) and [sshgo](https://github.com/emptyhua/sshgo)
