

## 基于B/S模式的图书在线销售系统的设计与实现

### 摘 要



---

### **Abstract**



---

####  目的和意义



---

#### 系统设计思想



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
