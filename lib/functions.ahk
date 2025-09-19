#Requires AutoHotkey v2.0

;============================光标移动操作=====================================

; 光标上移
MoveUp() 
{
    if GetKeyState("Alt", "P")
    {
        Loop 5
            Send("{Up}")        ; 按住Alt键时，连续上移5行
    }
    else
    {
        Send("{Up}")        ; 普通上移
    }
}

; 光标下移
MoveDown() 
{
    if GetKeyState("Alt", "P")
    {
        Loop 5
            Send("{Down}")    ; 按住Alt键时，连续下移5行
    }
    else
    {
        Send("{Down}")      ; 普通下移
    }
}

; 光标左移
MoveLeft() 
{
    if GetKeyState("Alt", "P")
        Send("^{Left}")    ; 按单词左移
    else
        Send("{Left}")     ; 普通左移
}

; 光标右移
MoveRight() 
{
    if GetKeyState("Alt", "P")
        Send("^{Right}")   ; 按单词右移
    else
        Send("{Right}")    ; 普通右移
}

; 光标移动到行首
MoveToLineStart() 
{
    Send("{Home}")
}

; 光标移动到行尾
MoveToLineEnd() 
{
    Send("{End}")
}

; 光标移动到文档开头
MoveToDocumentStart() 
{
    Send("^{Home}")     
}

; 光标移动到文档结尾
MoveToDocumentEnd() 
{
    Send("^{End}")        
}

; 向前删除
DeleteBackward() 
{
    if GetKeyState("Alt", "P")
        Send("^{Backspace}")    ; 按住Alt键时，删除到单词开头
    else
        Send("{Backspace}")     ; 普通删除
}

; 向后删除
DeleteForward() 
{
    if GetKeyState("Alt", "P")
        Send("^{Delete}")       ; 按住Alt键时，删除到单词结尾
    else
        Send("{Delete}")        ; 普通删除
}

; 按下空格
Space() 
{
    Send("{Space}")
}

; 换行
LineBreak()
{
    Send("{End}")    
    Send("{Enter}")  
}

; 缩进当前行
IndentCurrentLine()
{
    Send("{Home}")
    Send("{Tab}")
}

;============================光标选中操作=====================================

; 光标向上选中
SelectUp() 
{
    Send("+{Up}")
}

; 光标向下选中
SelectDown()
{
    Send("+{Down}")
}

; 光标向左选中
SelectLeft() 
{
    if GetKeyState("Alt", "P")
    {
        Send("^+{Left}")      ; 按住Alt键时，按单词左选中
    }
    else
        Send("+{Left}")      ; 普通左选中
}

; 光标向右选中
SelectRight() 
{
    if GetKeyState("Alt", "P")
        Send("^+{Right}")     ; 按住Alt键时，按单词右选中
    else
        Send("+{Right}")      ; 普通右选中
}

; 选中到行首
SelectToLineStart() 
{
    Send("+{Home}")      
}

; 选中到行尾
SelectToLineEnd() 
{
    Send("+{End}")        
}

; 选中当前行
SelectWholeLine() 
{
    Send("{Home}+{End}")
}

; 全选
SelectAll() 
{
    Send("^a")
}

; 删除当前行
DeleteCurrentLine() 
{
    Send("{Home}+{End}{Del}")
}


;============================系统操作=====================================

; 静音
VolumeMute() 
{
    Send("{Volume_Mute}")
}

; 音量调低
VolumeDown() 
{
    Send("{Volume_Down}")
}

; 音量调高
VolumeUp() 
{
    Send("{Volume_Up}")
}

; 播放上一首
PlayPreviousTrack() 
{
    Send("{Media_Prev}")
}

; 播放下一首
PlayNextTrack() 
{
    Send("{Media_Next}")
}

; 播放/暂停
PlayPauseTrack()   
{
    Send("{Media_Play_Pause}")
}

;============================tab操作=====================================

