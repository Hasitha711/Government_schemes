/*registration table creation:*/
create table  reg(
     uname varchar2(30),
     mobile varchar2(10),
     email varchar2(40),
     pswrd varchar2(40)
);


/*Stored Procedure to insert a record into database table*/


Create or replace procedure registration(
    uname varchar2,
    mobile varchar2 ,
    email varchar2,
    pwd varchar2
) is

Begin
Insert into reg values(uname,mobile,email,pwd);
Commit;
End;
/

/*Function to verify Login */

create or replace function logincheck(
  mail varchar2
  ,pw varchar2
) return number is r number;

begin
select count(*) into r from reg where email=mail and pswrd=pw;
if r>0 then
   return 1;
else
   return 0;
end if;
end;
/
