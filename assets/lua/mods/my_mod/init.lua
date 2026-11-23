local towners = require("devilutionx.towners")

-- 给艾德莉的对话菜单加一个选项
towers_hack = nil -- 删掉这行，别留
towners.addDialogOption("adria",
    function()
        return "Enter Secret Realm"
    end,
    function()
        -- 这里以后放"进秘境"的逻辑
        -- 现在先空着
    end
)
