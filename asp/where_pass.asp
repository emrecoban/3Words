
<!-- #include file="inc/dt.asp" -->
<%
komut = request.form("komut")

set rs = server.createobject("adodb.recordset")
Sql="select * from users where email='"&komut&"'"
rs.open sql,baglan,1,3


if rs.eof then
response.write "<br>Böyle bir e-posta adresi sistemde bulunamadı !<br>"
response.write "<b>" & komut & "</b>"
response.end
else
response.write "<br>Aşağıdaki e-posta adresine parolanızı gönderdik.<br>"
response.write "<b>" & komut & "</b>"
end if


Dim iMsg, iConf, Flds

Set iMsg = CreateObject("CDO.Message")
Set iConf = CreateObject("CDO.Configuration")
Set Flds = iConf.Fields

schema = "http://schemas.microsoft.com/cdo/configuration/"
Flds.Item(schema & "sendusing") = 2
Flds.Item(schema & "smtpserver") = "smtp.gmail.com"
Flds.Item(schema & "smtpserverport") = 465
Flds.Item(schema & "smtpauthenticate") = 1
Flds.Item(schema & "sendusername") = "fbdarktole@gmail.com"
Flds.Item(schema & "sendpassword") = "aoqexmciyiuuzzsv"
Flds.Item(schema & "smtpusessl") = 1
Flds.Update

K3= "3Kelime.com"

With iMsg
.To = komut
.From = "3Kelime <no-reply@3Kelime.com>"
.Subject = "3Kelime - Parolanız"
.HTMLBOdy = "Bu e-posta sizin isteğiniz üzerine sistem tarafından gönderilmiştir. <BR><br><b>Kimlik:</b> " & rs("username") & "<br><b>Parolanız:</b> " & rs("password") & "<BR><br><br>------------------------------------------------------------<br><a href='http://" & K3 & "'>3Kelime</A> - <a href='http://" & K3 & "/login.asp'>Giriş Yap</a> - <a href='http://" & K3 & "/register.asp'>Kayıt Ol</a>"
.Sender = "3Kelime"
.Organization = "GMail"
.ReplyTo = "3Kelime <no-reply@3Kelime.com>"
Set .Configuration = iConf
SendEmailGmail = .Send
End With

set iMsg = nothing
set iConf = nothing
set Flds = nothing


%>
