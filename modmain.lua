-- 模组主文件
-- 这个文件在游戏启动时加载

-- 资源列表
Assets = {
    -- 角色选择界面
    Asset("IMAGE", "images/saveslot_portraits/mycharacter.tex"),
    Asset("ATLAS", "images/saveslot_portraits/mycharacter.xml"),
    
    Asset("IMAGE", "images/selectscreen_portraits/mycharacter.tex"),
    Asset("ATLAS", "images/selectscreen_portraits/mycharacter.xml"),
    
    Asset("IMAGE", "images/selectscreen_portraits/mycharacter_silho.tex"),
    Asset("ATLAS", "images/selectscreen_portraits/mycharacter_silho.xml"),
    
    -- 地图图标
    Asset("IMAGE", "images/map_icons/mycharacter.tex"),
    Asset("ATLAS", "images/map_icons/mycharacter.xml"),
    
    -- 头像
    Asset("IMAGE", "images/avatars/avatar_mycharacter.tex"),
    Asset("ATLAS", "images/avatars/avatar_mycharacter.xml"),
    
    Asset("IMAGE", "images/avatars/avatar_ghost_mycharacter.tex"),
    Asset("ATLAS", "images/avatars/avatar_ghost_mycharacter.xml"),
    
    Asset("IMAGE", "images/avatars/self_inspect_mycharacter.tex"),
    Asset("ATLAS", "images/avatars/self_inspect_mycharacter.xml"),
    
    -- 名字标签
    Asset("IMAGE", "images/names_mycharacter.tex"),
    Asset("ATLAS", "images/names_mycharacter.xml"),
    
    Asset("IMAGE", "images/names_gold_mycharacter.tex"),
    Asset("ATLAS", "images/names_gold_mycharacter.xml"),
    
    -- 大头像
    Asset("IMAGE", "bigportraits/mycharacter.tex"),
    Asset("ATLAS", "bigportraits/mycharacter.xml"),
    
    -- 动画文件
    Asset("ANIM", "anim/mycharacter.zip"),
    Asset("ANIM", "anim/ghost_mycharacter_build.zip"),
}

-- 预制体文件（角色定义）
PrefabFiles = {
    "mycharacter",  -- 角色代码名
}

-- 添加小地图图标
AddMinimapAtlas("images/map_icons/mycharacter.xml")

-- 添加角色到游戏
-- 参数1: 角色代码名
-- 参数2: 性别 ("MALE" 或 "FEMALE")
AddModCharacter("mycharacter", "MALE")

-- 获取配置选项
local difficulty = GetModConfigData("difficulty")

-- 根据配置调整游戏
if difficulty == "easy" then
    -- 简单模式的调整
    print("简单模式已启用")
elseif difficulty == "hard" then
    -- 困难模式的调整
    print("困难模式已启用")
end

-- 添加自定义字符串（可选）
STRINGS = GLOBAL.STRINGS
STRINGS.NAMES.MYCHARACTER = "我的角色"
STRINGS.CHARACTER_TITLES.mycharacter = "标题"
STRINGS.CHARACTER_NAMES.mycharacter = "我的角色"
STRINGS.CHARACTER_DESCRIPTIONS.mycharacter = "* 自定义属性\n* 特殊能力\n* 独特技能"
STRINGS.CHARACTER_QUOTES.mycharacter = "\"这是一句台词！\""

-- 角色解锁（默认解锁）
STRINGS.CHARACTER_SURVIVABILITY.mycharacter = "简单"

-- 添加自定义代码
-- 例如：修改游戏机制、添加新物品等
