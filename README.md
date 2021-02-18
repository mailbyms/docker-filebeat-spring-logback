# 说明
  基于 filebeat 自定义 spring boot 自带 logback 格式 日志收集镜像
# 注意
- 代码源自 github ，原代码是基于 filebeat 自带 apache 模块修改而成
- 把 `springboot.yml` 映射到 `/usr/share/filebeat/modules.d/` 下，里面定义了读取 logback 日志的位置
