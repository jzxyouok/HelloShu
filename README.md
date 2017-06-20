# HelloShu

### 项目来源
* 模拟 stackoverflow 做一个校园问答系统，把校园内常问的问题集中起来，方便他人特别是新生．

### 项目用例图
* 图1


![image1](https://github.com/yahaa/HelloShu/raw/master/img/HelloShu.jpeg)



### ER图
* 图2


![image1](https://github.com/yahaa/HelloShu/raw/master/img/ER.jpeg)

#### 需求
1. 系统界面友好，给人看了心情不至于想杀人．
2. 用户可提问题，提出问题后在问题列表中显示．
3. 用户提出的问题可以被其他用户回答，回答后系统会通知给发布问题的用户．
4. 系统方便使用，能通过第三方帐号(微信)登录．
5. 主界面突出强调被问得最多的前100个问题．
6. 用户发布的问题带有副文本内容，评论也带有副文本

#### 项目运行提示
* 在　resources 目录下 添加　jdbc.properties 内容如下


    jdbc.driverClassName=com.mysql.jdbc.Driver
    
    jdbc.url=jdbc:mysql://ip:3306/dbHelloShu?useUnicode=true&amp&characterEncoding=utf-8
    
    jdbc.username=userName
    
    jdbc.password=password



#### 一些命令提示
* 每次工作前　　　git pull
* 每次提交前　　　git status

#### zihua 完成接口说明
* http://localhost/register 请求方式为post请求,参数 uId,password,email（为必填），若留空服务器返回失败的状态

    成功返回json数据,success=1表示成功,失败返回空，也就是异常,数据如下
    
        {"success":1,"faild":0}
    
* .../login 请求方式为post,参数　uId,password,其他同　register






