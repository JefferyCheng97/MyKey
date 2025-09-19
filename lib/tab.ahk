#Requires AutoHotkey v2
#Include loadfile.ahk

replacements := loadReplacements()

; 把 text 中的 key 替换为对应的 value
ReplaceFromMap(text, replacements) 
{
    for key, val in replacements 
    {
        if InStr(text, key) 
        {
            text := StrReplace(text, key, val) ; 替换所有匹配到的 key
        }
    }
    return text
}

#HotIf GetKeyState("CapsLock", "P")
Tab::
{
    ; 备份原剪贴板
    oldClip := A_Clipboard
    A_Clipboard := ""

    ; 选中当前光标所在的单词保存到剪切板
    SendInput("^+{Left}") 
    sleep(30)
    SendInput("^{c}") 
    clipOk := ClipWait(0.3)
    text := clipOk ? Trim(A_Clipboard, "`r`n `t ") : ""

    ; 恢复原剪贴板
     A_Clipboard := oldClip

    ; 如果没有选到任何东西（例如刚好在空格处），取消选择并返回
    if (text = "")
    {
        SendInput("{Right}")     ; 取消选择，移动到单词后
        SetCapsLockState "Off"
        return
    }

    newText := ReplaceFromMap(text, replacements)
    SendInput("{Del}") ; 删除原单词
    Sleep(20)
    SendInput(newText) ; 输入替换后的内容

    SetCapsLockState "Off"
}
#HotIf
