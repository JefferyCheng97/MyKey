#Requires AutoHotkey v2.0

loadReplacements() 
{
    ; 配置文件路径
    iniFile := A_ScriptDir "\settings.ini"
    section := "Replacements"

    ; 默认键值对（用 Map 写法）
    defaultKV := Map("btw", "by the way", "sfz", "123456X", "123", "123456")

    ; 如果 .ini 文件不存在，则创建并写入默认值
    if !FileExist(iniFile) {
        for key, value in defaultKV
            IniWrite value, iniFile, section, key
    }

    ; 读取 .ini 文件到 Map
    replacements := Map()

    ; 先尝试读取整个 section
    allKeys := IniRead(iniFile, section, , "")

    if (allKeys != "")
    {
        ; IniRead 返回格式是 `key=value` 的多行文本
        for , line in StrSplit(allKeys, "`n", "`r") {
            if (line = "")
                continue
            parts := StrSplit(line, "=",,2)
            if (parts.Length = 2)
                replacements[Trim(parts[1])] := Trim(parts[2])
        }
    }

    return replacements
}