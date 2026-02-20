-- 模组基本信息
name = "我的自定义角色"
description = "这是一个自定义角色模组\n\n特性：\n- 自定义属性\n- 特殊能力\n- 独特技能"
author = "Your Name"
version = "1.0.0"

-- 游戏版本兼容性
api_version = 10
dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

-- 模组类型
all_clients_require_mod = true
client_only_mod = false

-- 模组图标
icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- 服务器过滤器
server_filter_tags = {
    "character",
}

-- 配置选项
configuration_options = {
    {
        name = "difficulty",
        label = "难度",
        options = {
            {description = "简单", data = "easy"},
            {description = "普通", data = "normal"},
            {description = "困难", data = "hard"},
        },
        default = "normal",
    },
}
