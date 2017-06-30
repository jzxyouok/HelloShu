### 项目名称
* HelloShu

### 小组成员
* 袁子华　[(组长)](https://github.com/yahaa)
* 李乾梅　[(组员)](https://github.com/Aly0)
* 李长虹　[(组员)](https://github.com/ggeh)


#### 分工
* 袁子华

        1. 系统功能分析
        2. 系统框架搭建
        3. 小组任务分工
        4. 数据接口设计 (controller层)
        5. 业务逻辑层设计 (service层)


* 李乾梅

        1. 前端界面设计 (webapp层)
        2. 前端与后端数据交互 (DataController 层下的数据接口)
        3. 分析发现系统还可以开发的功能

* 李长虹

        1. 数据设计 (Entity层)
        2. 数据访问接口层设计 (dao层)
        3. 系统通用工具层设计　(tools层)


### 环境
* 开发工具　Intellij Idea
* 版本控制　git+github
* 数据库　Mysql
* 框架　spring+springmvc+hibernate


### 项目背景
* 模拟 stackoverflow 做一个校园问答系统，把校园内常问的问题集中起来，方便他人特别是新生．
* 新生有很多问题得不到及时的回答

#### 可行性分析
1. 新生确实有很多问题,作为过来人,我们都知道,但是我们也知道,我们的问题得不到及时准确的回答．
2. 该项目涉及到的技术主要有web技术，数据库技术，javaee技术,因此技术上是可行的.


#### 需求分析
1. 系统界面友好，给人看了心情能有所变好．
2. 用户可提问题，提出问题后在问题列表中显示．
3. 用户提出的问题可以被其他用户回答，回答后系统会通知给发布问题的用户．
4. 系统方便使用，能通过第三方帐号(微信)登录．
5. 主界面突出强调被问得最多的前100个问题．
6. 用户发布的问题带有副文本内容，评论也带有副文本


### 项目用例图
* 图1


![image1](https://github.com/yahaa/HelloShu/raw/master/img/HelloShu.jpeg)



### ER图
* 图2


![image1](https://github.com/yahaa/HelloShu/raw/master/img/ER.jpeg)



#### 项目运行提示
* 在　resources 目录下 添加　jdbc.properties 内容如下


    jdbc.driverClassName=com.mysql.jdbc.Driver

    jdbc.url=jdbc:mysql://ip:3306/dbHelloShu?useUnicode=true&amp&characterEncoding=utf-8

    jdbc.username=userName

    jdbc.password=password



#### 一些命令提示
* 每次工作前　　　git pull
* 每次提交前　　　git status

#### zihua 任务完成说明
* http://localhost/register 请求方式为post请求,参数 uId,password,email（为必填），若留空服务器返回失败的状态

    成功返回json数据,success=1表示成功,失败返回空，也就是异常,数据如下

        {"success":1,"faild":0}

* .../login 请求方式为post,参数　uId,password,其他同　register


#### changhong 任务完成说明
* 待完成



#### qianmei 任务完成说明

* 完成首页设计　(6月20)
