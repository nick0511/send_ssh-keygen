运行文件：send.sh

send.sh 是核心调用模块，将各个脚本做整合。

send-ssh-key.exp 是expect脚本，用于分发给单个用户密钥。相当于shell的函数

ssh1.sh 是expect脚本，用于生产新的密钥

userlist 存放服务器ip，用户，密码的地方

ssh_cp_log 记录每一次是否分发成功。