[org 0x0100]

arr: dw  2, 4, 2, 8, 2, 3, 4, 5, 6, 7
mov ax, 2
mov bx, arr
mov cx,0
Compare: cmp ax, bx
      je frequency
add bx, 2
jnz Compare
frequency:
     add cx, 1
     add bx, 2
     jnz Compare


mov dx, 0x4c00
int 0x21

