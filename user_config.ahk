; Close focused window with Windows + Q
#q::Send !{F4}

; Run terminal with Windows + Enter
#Enter::Run, wt.exe

; Run admin terminal with Windows + Shift + Enter
#+Enter::Run, *runas wt.exe

; Switch desktop with Windows + Number
#1::switchDesktopByNumber(1)
#2::switchDesktopByNumber(2)
#3::switchDesktopByNumber(3)
#4::switchDesktopByNumber(4)
#5::switchDesktopByNumber(5)
#6::switchDesktopByNumber(6)
#7::switchDesktopByNumber(7)
#8::switchDesktopByNumber(8)
#9::switchDesktopByNumber(9)

; Move window to specific desktop with Windows + Shift + Number
#+1::MoveCurrentWindowToDesktop(1)
#+2::MoveCurrentWindowToDesktop(2)
#+3::MoveCurrentWindowToDesktop(3)
#+4::MoveCurrentWindowToDesktop(4)
#+5::MoveCurrentWindowToDesktop(5)
#+6::MoveCurrentWindowToDesktop(6)
#+7::MoveCurrentWindowToDesktop(7)
#+8::MoveCurrentWindowToDesktop(8)
#+9::MoveCurrentWindowToDesktop(9)
