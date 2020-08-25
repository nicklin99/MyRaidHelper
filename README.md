
# WowHelper

初始化界面，主要功能

## buff检查，是否喝药、职业buff齐全

1. 通过接口拿到所有raid成员
2. UnitBuff方法获取每个成员的buff列表
3. 遍历buff列表，根据buff的id来匹配是否包含

## 

## 开发依赖

ACE3

### AceAddon

创建一个插件对象

### AceConfig

注册一个控制台设置项

### AceGui

创建UI

### AceDB、AceDBOptions

存储设置

### Ace