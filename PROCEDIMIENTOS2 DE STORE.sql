declare @a int
declare @b int
declare @c int

set @a=8
set @b=2
set @c=@a+@b

select @c

declare @tabla int=5
declare @count int=1

while @count<=12
begin
	print concat (@count, ' x ', @tabla, ' = ', @count*@tabla)
	set @count =@count+1
end