## 系统模块

~~~
com.ruoyi     
├── ruoyi-ui              // 前端框架 [80]
├── ruoyi-gateway         // 网关模块 [8080]
├── ruoyi-auth            // 认证中心 [9200]
├── ruoyi-api             // 接口模块
│       └── ruoyi-api-system                          // 系统接口
├── ruoyi-common          // 通用模块
│       └── ruoyi-common-core                         // 核心模块
│       └── ruoyi-common-datascope                    // 权限范围
│       └── ruoyi-common-datasource                   // 多数据源
│       └── ruoyi-common-log                          // 日志记录
│       └── ruoyi-common-redis                        // 缓存服务
│       └── ruoyi-common-seata                        // 分布式事务
│       └── ruoyi-common-security                     // 安全模块
│       └── ruoyi-common-swagger                      // 系统接口
├── ruoyi-modules         // 业务模块
│       └── ruoyi-system                              // 系统模块 [9201]
│       └── ruoyi-file                                // 文件服务 [9300]
├──pom.xml                // 公共依赖
~~~

## 内置功能

1.  用户管理：用户是系统操作者，该功能主要完成系统用户配置。
2.  作业提交记录：按用户权限显示相应学生的作业提交记录。
3.  角色管理：角色菜单权限分配、设置角色按机构进行数据范围权限划分。
4.  班级管理：配置系统组织机构（学校、年级、班级），树结构展现支持数据权限。
5.  身份列表：配置系统用户的身份（校长、年级长、班主任……）。
