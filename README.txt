运行文件：send.sh

send.sh 是核心调用模块，将各个脚本做整合。


send-ssh-key.exp 是expect脚本，用于分发给单个用户密钥。


ssh1.sh 是expect脚本，用于生产新的密钥。


userlist 存放服务器ip，用户，密码的文本。
书写的规范是：
 ip username  password

ssh_cp_log 最后生成的结果，记录每一次是否分发成功。
