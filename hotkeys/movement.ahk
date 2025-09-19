#Requires AutoHotkey v2.0

#Include ../lib/functions.ahk

; 热键绑定
CapsLock & e::MoveUp()
CapsLock & d::MoveDown()
CapsLock & s::MoveLeft()
CapsLock & f::MoveRight()
CapsLock & a::MoveToLineStart()
CapsLock & g::MoveToLineEnd()
CapsLock & w::DeleteBackward()
CapsLock & r::DeleteForward()
CapsLock & q::MoveToDocumentStart()
CapsLock & t::MoveToDocumentEnd()
CapsLock & z:: IndentCurrentLine()

CapsLock & i::SelectUp()
CapsLock & k::SelectDown()
CapsLock & j::SelectLeft()
CapsLock & l::SelectRight()
CapsLock & u::SelectToLineStart()
CapsLock & o::SelectToLineEnd()

CapsLock & `;::SelectWholeLine()
CapsLock & h::SelectAll()
CapsLock & Backspace::DeleteCurrentLine()
CapsLock & Space::Space()
CapsLock & Enter::LineBreak()

CapsLock & -::VolumeDown()
CapsLock & =::VolumeUp()
CapsLock & 0::VolumeMute()
CapsLock & 1::PlayPreviousTrack()
CapsLock & 2::PlayPauseTrack()
CapsLock & 3::PlayNextTrack()



