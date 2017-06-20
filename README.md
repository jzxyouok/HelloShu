# HelloShu

### jdbc.properties 内容如下
* 放在　resources 目录下


    jdbc.driverClassName=com.mysql.jdbc.Driver
    
    jdbc.url=jdbc:mysql://ip:3306/dbHelloShu?useUnicode=true&amp&characterEncoding=utf-8
    
    jdbc.username=userName
    
    jdbc.password=password



### 一些命令提示
* 每次工作前　　　git pull
* 每次提交前　　　git status

#### zihua 完成接口说明
* http://localhost/register 请求方式为post请求,参数 uId,password,email（为必填），若留空服务器返回失败的状态

    成功返回json数据,success=1表示成功
    {"success":1,"faild":0}
    失败返回空，也就是异常
* .../login 请求方式为post,参数　uId,password,其他同　register






