# 花市网
## 使用
`git clone https://github.com/tucaoxingren/FlowerNetwork`
将此工程导入MyEclipse中,配置好tocmat,添加好数据库

访问`https://localhost:4040`

数据库文件及数据简介在`\dateBase`

静态网页文件目录:`\Static Html Page`

## 界面及实现功能展示

1. 前台用户界面

登录注册设计--登录框

登录框会判断输入是否为空，为空弹窗提示，用户名或密码错误，弹窗提示。

![v1.0](https://github.com/tucaoxingren/FlowerNetwork/raw/master/img/1.png)
 
注册

![v1.0](https://github.com/tucaoxingren/FlowerNetwork/raw/master/img/2.png)

注册时会对一些注册要求进行提示。

![v1.0](https://github.com/tucaoxingren/FlowerNetwork/raw/master/img/3-1.png)
![v1.0](https://github.com/tucaoxingren/FlowerNetwork/raw/master/img/3-2.png)
![v1.0](https://github.com/tucaoxingren/FlowerNetwork/raw/master/img/3-3.png)
   
注册成功跳转到登录页面，可使用刚才进行注册的账号进行登录。

![v1.0](https://github.com/tucaoxingren/FlowerNetwork/raw/master/img/4.png)
 
登录成功，在右上角显示用户名。

![v1.0](https://github.com/tucaoxingren/FlowerNetwork/raw/master/img/5.png)
 
全部鲜花类型展示
对数据库中所有鲜花进行展示。

![v1.0](https://github.com/tucaoxingren/FlowerNetwork/raw/master/img/6.png)
 
按鲜花类型展示鲜花
按类型展示
 
当点击鲜花图片时，获取到此鲜花的编号，在FindFlowerByTypeId.java中根据鲜花编号转发该鲜花的信息到detail.jsp中，即可显示鲜花所有信息。
 
添加收藏功能--添加收藏功能需要新建一个数据库保存用户的收藏信息。
 
添加购物车模块设计
购物车只需要短暂存储，且需要在多个页面查询，所以将购物车数据存入session中，方便使用，session到期，购物车需要再次添加。
 
购物结算与创建订单设计
效果展示
 
 
 
查看个人信息模块设计
在任意界面点击右上角的用户名即可查看个人信息
 
个人信息及密码修改模块设计---个人信息修改
  
用户密码修改
    
 
    
 

2. 后台管理员页面
类型管理模块设计
根据类型名称查询功能设计
根据类型名称查询具体的类型，查看全部类型时加入了登录判断功能，没有登录不可查询，查询结果如下
 
增加类型功能设计
增加一种商品类型，输入类型名称和类型备注，类型名称不可为空，类型备注可以为空，输入完成，点击添加即可
 
添加成功示意图，类型编号自动递增
 
修改类型功能设计
类型修改前
 
    修改类型
 
    类型修改后
 
删除类型功能设计---删除前
 
点击删除后
 
商品管理模块设计---根据商品名称查询功能设计
全部商品列表
 
根据商品名查询结果
 
增加商品功能设计---点击选择文件弹出浏览框
 
    选择文件成功，准备上传
 
    点击上传，上传成功
 
    鲜花类型自动获取所有鲜花类型
 
    填入相关信息，即可添加成功
 
 
修改商品功能设计
修改前
 
修改后
 
 
用户管理模块设计--根据用户名查询功能设计  所有用户列表
 
查询到的用户列表
 
订单管理模块设计--根据用户名查询订单功能设计  所有订单展示
 
查询到的订单展示
 
点击订单详情，可查看具体购买时间及购买物品。下单时间根据订单号重排版，重排代码如下，使用String类中的substring字符串裁剪，然后重新拼接。
 
修改密码功能设计---修改密码
 
    修改成功后跳转到登录页面重新登录
