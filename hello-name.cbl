program-id. hello-name.
data division.
working-storage section.
01 name1.
    05 name1-str pic a(10) value is "John".
    05 name1-len pic 99 value is 4.
01 name2.
    05 name1-str pic a(10) value is "Mike".
    05 name1-len pic 99 value is 4.
01 name3.
    05 name1-str pic a(10) value is "Sarah".
    05 name1-len pic 99 value is 5.
01 name4.
    05 name1-str pic a(10) value is "Thomas".
    05 name1-len pic 99 value is 6.
01 name5.
    05 name1-str pic a(10) value is "Jennifer".
    05 name1-len pic 99 value is 8.
procedure division.
main-procedure.
    call "hello-name-function" using name1.
    call "hello-name-function" using name2.
    call "hello-name-function" using name3.
    call "hello-name-function" using name4.
    call "hello-name-function" using name5.

    display "Press ENTER to exit program.".
    accept omitted.
end program hello-name.

program-id. hello-name-function.
data division.
local-storage section.
01 ls-nameX.
    05 ls-nameX-str pic a occurs 1 to 10 times depending on nameX-len.
linkage section.
01 nameX.
    05 nameX-str pic a(10).
    05 nameX-len pic 99.
procedure division using nameX.
main-procedure.
    move nameX(1:nameX-len) to ls-nameX.
    display "Hello, " ls-nameX ", nice to meet you.".
    accept omitted.
    goback.

*>Hello, John, nice to meet you.

*>Hello, Mike, nice to meet you.

*>Hello, Sarah, nice to meet you.

*>Hello, Thomas, nice to meet you.

*>Hello, Jennifer, nice to meet you.
