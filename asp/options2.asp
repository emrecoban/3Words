<%
if not session("girdikmi")="girdik" then
response.redirect "login.asp"
else
%>

<html>
<head>
<!-- #include file="inc/dt.asp" -->


<%
username= session("username")

set rs = server.createobject("adodb.recordset")
Sql="select * from users where username='"&username&"'"
rs.open sql,baglan,1,3

if request.form("password")="" or request.form("email")="" or request.form("email")="@" Then
response.redirect "error.asp?id=1"
response.End
end if

rs("password")=request.form("password")
rs("email")=request.form("email")
rs("background")=request.form("background")
rs("image")=request.form("image")
rs("notice")=request.form("notice")
rs.update
%>

<title>3Kelime - Ayarlarım</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
<link rel="stylesheet" type="text/css" href="css/style_2.css" /></head>
<body bgcolor="#FFFFFF" topmargin="0" marginheight="0">
<!-- ImageReady Slices (Untitled-1) -->
<table id="Table_01" width="901" height="600" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="5">
			<img src="images/Untitled-1_01.gif" width="900" height="5" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="5" alt=""></td>
	</tr>
	<tr>
		<td rowspan="4">
			<img src="images/Untitled-1_02.gif" width="59" height="595" alt=""></td>
		<td background="images/Untitled-1_03.gif" width="173" height="27" alt="">
			<!-- #include file="inc/header.asp" --></td>
		<td width="443" height="78" rowspan="3" valign="top" background="images/Untitled-1_04.gif" alt="">
			<!-- #include file="inc/header2.asp" --></td>
		<td rowspan="2">
			<a href="default.asp"><img src="images/Untitled-1_05.gif" width="154" height="46" alt="3Kelime - Anasayfa"></a></td>
		<td rowspan="4">
			<img src="images/Untitled-1_06.gif" width="71" height="595" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="27" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/Untitled-1_07.gif" width="173" height="51" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="19" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/Untitled-1_08.gif" width="154" height="32" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="32" alt=""></td>
	</tr>
	<tr>
	  <td width="173" height="27" colspan="3" valign="top" background="images/Untitled-1_09.gif" alt="">
        <div align="center" class="stil6">
          <div align="left" class="stil6">
            <h2>         Ayarlarım        </h2>
           
<table width="504" border="0">
  <tr>
    <td width="178"><div align="right">parola:</div></td>
    <td width="316"><input name="password" class="n1" type="password" id="password" value="<%=rs("password")%>" maxlength="36" size="50"></td>
  </tr>
  <tr>
    <td><div align="right">e-posta:</div></td>
    <td><input name="email" class="n1" type="text" id="email" value="<%=rs("email")%>" maxlength="50" size="50"></td>
  </tr>
  <tr>
    <td><div align="right">profil resmi:</div></td>
    <td><input name="image" class="n1" type="text" id="image" value="<%=rs("image")%>" size="50"></td>
  </tr>
  <tr>
    <td><div align="right">rastgele yazı:</div></td>
    <td><input name="notice" class="n1" type="text" id="notice" value="<%=rs("notice")%>" maxlength="50" size="50"></td>
  </tr>
  <tr>
    <td><div align="right">arkaplan rengi:</div></td>
    <td><input name="background" class="n1" type="text" id="background" value="<%=rs("background")%>" maxlength="7" size="50"></td>
  </tr>
  <tr>
    <td><div align="right"></div></td>
    <td>
      Bilgileriniz başarıyla güncellendi.
    
    </td>
  </tr>
</table>
            
          </div>
        </div>
      <br></td>
<td>
			<img src="images/spacer.gif" width="1" height="517" alt=""><br></td>
	</tr>
</table>
<!-- #include file="inc/copy.asp" -->
</body>
</html>
<%end if%>