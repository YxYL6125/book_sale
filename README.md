

## 基于B/S模式的图书在线销售系统的设计与实现

## 一、绪论

### 1.1摘 要

随着国际互联网的发展，越来越多的企业开始建造自己的网站去找寻更多的消费者以销售更多的商品。由于近几年网购的火热加大了企业间的竞争，很多企业都已不满足于建立一个简单的仅仅能够发布信息的静态网站。现代企业需要的是一个功能强大的，能提供完善的电子商务服务的动态商务网站。同时人们的生活方式也在随着发生改变，传统的购物方式已不能满足人们的需求。  
（采用什么开发工具：JSP是Sun公司推出的一种网站开发技术，Sun公司借助自己在Java上的不凡造诣，又把人们引进JSP时代，JSP即Java Server Page，它可以在Servlet和JavaBean的支持下，完成功能强大的Web应用程序。所以，我们采用JSP作为开发工具，）构建了一个能实现基本功能的电子商务的小型动态商务网站——网上图书销售系统。该系统能实现用户的注册、登录功能；能够实现商品的查询，订购，退货等功能。该系统基本上具备一个网上商品销售系统应该具备的常用功能，该设计项目基本上体现了构建一个动态商务网站所需要的技术，可以说，目前的大型商务网站也就是我们这个小型网站在内容上的扩充和完善

---

### **Abstract**



---
####  1.2概述

随着时代的发展，信息技术、Internet/Intranet技术、数据库技术的不断发展完善，网络进程的加快，传统的购物方式也越来越不能满足人们快节奏的生活需求，使得企业的IT部门已经认识到网络的优势,电子商务就是在这样一个背景下产生发展起来的。根据会员企业艾瑞咨询集团的预测，2008年我国网络购物交易将同比增长125.1％，交易总量将达1263亿，形成了中国网络购物的快速增长浪潮。其中，图书消费人群成为推动此浪潮的一大主力。究其原因，除了该人群对网络购物等新兴的购物模式接受程度较高之外，相比其他细分行业和产品，图书网络购物有着更加完备的产业链条和发展后劲，为其高速增长提供了保障。伴随着电子商务技术的不断成熟，电子商务的功能也越来越强大，注册用户可以在网上搜索购买到自己想要的各种商品，初步让人们体会到了足不出户,便可随意购物的快感。

---
####  1.3目的和意义

图书在线销售系统的目的就是让消费者通过网络在网上购买、网上支付，节省大量时间，顾客可与客户良好沟通，成本低，速度快、不通过中间商直接双向沟通，提高交易效率，也消除了时间与空间带来的障碍，特别是对工作忙碌的上班族和想要找一本冷门书的人，在信息多元化时代中可以通过足不出户的网络渠道，然后在享受购物的乐趣，成为消费者的习惯。
与传统方式销售相比在线销售有很多的优点如：
> - （1）检索便捷：在线销售提供了多种检索途径，可以从品种、书名、出版社、图书编号、特价等途径进行检索，快捷准确
> - （2）信息量大：与传统销售方式相比，在线销售能够提供海量产品信息
> - （3）成本低，风险小，无地域限制：网络销售最突出的优点是：不再限制消费者的购买时段，扩大和巩固了客户群，从而增加了企业的核心竞争力，节省实际开店时需要投入的成本和租用费用


---

#### 1.4系统设计思想

对于典型的数据库管理系统，尤其是对于像图书在线销售系统这样的数据流量特别大的网络管理系统如果想要取得成功，必须要满足使用方便、操作灵活、吸引眼球等要求。本系统在设计时应该满足以下几个目标：
> - （1）便于顾客快捷地进行图书产品信息查询。
> - （2）规范、完善的基础信息设置。
> - （3） 图书分类详尽，可按不同类别查看商品信息。
> - （4）实现网上购书。
> - （5）新书及特价图书展示。
> - （6）吸人眼球的酷炫网站设计
> - （7）系统最大限度地实现了易维护性和易操作性。
> - （8）系统运行稳定、安全可靠。

---

## 二、可行性分析

网络平台已经成为企业经营管理中不可忽视的一个重要的方面，拥有一个全面的、功能强大的、操作简单的在线销售系统网站，已经成为企业营销发展的一个必然趋势。图书在线销售系统网站的建立，从销售方面来讲，不仅给图书企业增加了一个新的销售渠道，而且方便了顾客购买与了解公司的图书及新的销售方向。

#### 2.1业务流程图

---




#### 技术选型：

> 后端框架：SSM
>
> 
>
> 
>
> 
>
> 前端框架：
>
> 
>
> 



**TODO**

> - **后期将后端框架优化：SpringBoot**
> - **数据验证**：
> - **异常处理**：
> - **图书展台模块**：通过新品上架，分页显示特价图书，图书销售排行展示网站的所有图书
> - **图书查询模块**：按图书的类别查询图书的相关信息
> - **购物车模块**：用户添加图书至购物车，查看购物车中的图书，从购物车中移除不满意的图书，清空购物车中的产品，修改所要购买的图书的数量
> - **收银台模块**：用户满意购物车中的产品后进行结账并填写订单信息
> - **用户维护模块**：为用户提供了用户注册、用户登录、用户资料修改以及找回密码的功能
> - **订单查询模块**：用户通过查看订单能够了解到自己的当前订单信息及历史订单记录
> - **公告浏览模块**：用户通过浏览公告信息，能够及时了解到网站最新的各种信息
> - **留言模块**：客户可以进行留言给我们提意见，我们在不断地改进中前进

**......**

---

#### 数据字典

数据字典的作用是在软件分析和设计的过程中给人提供关于数据的描述信息。它主要是对数据流图中的数据流、处理逻辑、外部实体、数据存储和数据项等方面进行具体的定义。数据流程图配以数据字典，就可以从图形和文字两个方面对系统的逻辑模型进行完整的描述。

**系统数据项目定义**

| 序号 | 名称 | 别名 | 类型 | 长度 |
| ---- | ---- | ---- | ---- | ---- |
|      |      |      |      |      |





####  数据库设计

对于一个电子商务网站而言

![业务关系](https://github.com/YxYL6125/Nameless_Project/blob/main/images/%E4%B8%9A%E5%8A%A1%E5%85%B3%E7%B3%BB.png)

##### 表1.图书信息表goods_info（记录了任意一本图书商品的基本信息）

| 序号 | 名称                      | 别名（注释） | 类型    | 长度（字符） |
| ---- | ------------------------- | ------------ | ------- | ------------ |
| 1    | goods_id（主键）          | 编号         | Int     | 10           |
| 2    | goods_name                | 图书名       | varchar | 50           |
| 3    | goods_miaoshu             | 图书描述     | varchar | 5000         |
| 4    | goods_pic                 | 存放商品图片 | varchar | 50           |
| 6    | goods_shichangjia         | 市场价       | int     | 10           |
| 7    | goods_tejia               | 特价         | int     | 10           |
| 8    | goods_isnottejia          | 普通图书     | varchar | 50           |
| 9    | goods_catelog_id（外键1） | 商品种类号   | int     | 10           |

##### 表2.图书类别信息表bookcatelog_info（记录某本书的类别，比如说科普类）

| 序号 | 名称               | 别名     | 类型    | 长度（字符） |
| ---- | ------------------ | -------- | ------- | ------------ |
| 1    | catelog_id（主键） | 种类编号 | Int     | 10           |
| 2    | catelog_name       | 种类名称 | Varchar | 50           |
| 3    | catelog_miaoshu    | 种类描述 | Varchar | 5000         |

##### 表3.订单信息表order_info（记录订单信息，类似于一个购物车。例如某次付款买5本a书，买3本b书，记为同一个订单）

| 序号 | 名称                   | 别名         | 类型    | 长度（字符） |
| ---- | ---------------------- | ------------ | ------- | ------------ |
| 1    | order_id（主键）       | 订单ID       | Int     | 10           |
| 2    | order_bianhao          | 订单编号     | Varchar | 50           |
| 3    | order_date             | 订单生成日期 | varchar | 50           |
| 4    | order_zhuangtai        | 订单状态     | varchar | 50           |
| 5    | order_jine             | 总的消费金额 | Int     | 10           |
| 6    | order_songhuodizhi     | 送货地址     | Varchar | 50           |
| 7    | order_fukuangfangshi   | 付款方式     | Varchar | 50           |
| 8    | order_user_id（外键1） | 用户ID       | Int     | 10           |

##### 表4.订单明细信息表details_info（一个订单对应多个订单明细，比如买a书5本，记为一个明细）

| 序号 | 名称                         | 别名         | 类型 | 长度（字符） |
| ---- | ---------------------------- | ------------ | ---- | ------------ |
| 1    | details_orderItem_id（主键） | 订单明细编号 | Int  | 10           |
| 2    | details_order_id（外键1）    | 订单编号     | Int  | 10           |
| 3    | details_goods_id（外键2）    | 商品编号     | Int  | 10           |
| 4    | details_goods_quantity       | 购买数量     | Int  | 10           |

##### 表5.用户信息表user_info（记录用户的基本信息）

| 序号 | 名称            | 别名     | 类型    | 长度（字符） |
| ---- | --------------- | -------- | ------- | ------------ |
| 1    | user_id（主键） | 用户ID   | Int     | 10           |
| 2    | user_name       | 用户名   | Varchar | 50           |
| 3    | user_pw         | 用户密码 | Varchar | 50           |
| 4    | user_realname   | 真实姓名 | Varchar | 50           |
| 5    | user_address    | 住址     | Varchar | 50           |
| 6    | user_sex        | 性别     | Varchar | 50           |
| 7    | user_tel        | 联系电话 | Varchar | 50           |
| 8    | user_email      | 用户邮箱 | Varchar | 50           |
| 9    | user_qq         | 用户QQ   | Varchar | 50           |

##### 表6.管理员信息表  root_info（记录管理员信息）

| 序号 | 名称           | 别名       | 类型    | 长度（字符） |
| ---- | -------------- | ---------- | ------- | ------------ |
| 1    | rootId（主键） | 管理员ID   | int     | 10           |
| 2    | rootName       | 管理员名称 | Varchar | 50           |
| 3    | rootPw         | 管理员密码 | Varchar | 50           |

##### 表7.公告信息表announcement_info（为用户提供网站的最新消息）

| 序号 | 名称                 | 别名         | 类型    | 长度（字符） |
| ---- | -------------------- | ------------ | ------- | ------------ |
| 1    | announcement_id      | 公告编号     | Int     | 10           |
| 2    | announcement_title   | 公告标题     | Varchar | 50           |
| 3    | announcement_content | 公告内容     | Varchar | 5000         |
| 4    | announcement_data    | 公告创建时间 | Varchar | 50           |
| 5    | announcement_fabuzhe | 发布人       | Varchar | 50           |

##### 表8.留言信息表message_info（记录用户对网站的建议，对商品的建议）

| 序号 | 名称            | 别名     | 类型    | 长度（字符） |
| ---- | --------------- | -------- | ------- | ------------ |
| 1    | message_id      | 留言id   | Int     | 10           |
| 2    | message_title   | 留言标题 | Varchar | 50           |
| 3    | message_content | 留言内容 | Varchar | 5000         |
| 4    | message_date    | 留言时间 | Varchar | 50           |
| 5    | message_user    | 留言客户 | Varchar | 50           |

表逆向结构图

![多表关系](https://github.com/YxYL6125/Nameless_Project/blob/main/images/%E5%A4%9A%E8%A1%A8%E5%85%B3%E7%B3%BB.png)
