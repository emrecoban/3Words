<!-- #include file="inc/dt.asp" -->
<%
function temizle(temizlik)
temizlik = replace(temizlik, "<","3K")
temizlik = replace(temizlik, ">","3K")
temizlik = replace(temizlik, "'","3K")
temizlik = replace(temizlik, "=","3K")
temizlik = replace(temizlik, "%","3K")
temizle = temizlik
end function

username = temizle(request.form("username"))
password = temizle(request.form("password"))

if username="" or password="" then
response.redirect "error.asp?id=2"
response.end
end if

sql="select * from users where username='"&username&"' and password='"&password&"'"
set kontrol=baglan.execute(sql)

if kontrol.eof then
response.redirect "error.asp?id=3"
else

session("Girdikmi")="girdik"
session("user_id")=kontrol("user_id")
session("password")=kontrol("password")
session("username")=kontrol("username")
response.redirect "default.asp"
end if
%>
