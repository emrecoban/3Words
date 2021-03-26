<%
if not session("girdikmi")="girdik" then
response.redirect "login.asp"
else
%>

<html>
<head>
	<script src="js/jquery/jquery.js" type="text/javascript"></script>
	<script src="js/jquery/ifx.js" type="text/javascript"></script>
	<script src="js/jquery/idrop.js" type="text/javascript"></script>
	<script src="js/jquery/idrag.js" type="text/javascript"></script>
	<script src="js/jquery/iutil.js" type="text/javascript"></script>
	<script src="js/jquery/islider.js" type="text/javascript"></script>
    <script src="js/jquery/color_picker/color_picker.js" type="text/javascript"></script>
	<link href="js/jquery/color_picker/color_picker.css" rel="stylesheet" type="text/css">
<!-- #include file="inc/dt.asp" -->


<%
username= session("username")

set rs = server.createobject("adodb.recordset")
Sql="select * from users where username='"&username&"'"
rs.open sql,baglan,1,3
%>

<title>3Kelime - Ayarlarým</title>
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
            <h2>         Ayarlarým        </h2>
            <form name="form2" method="post" action="options2.asp">
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
    <td>
    <% if rs("image")="" then %>
    <input name="image" class="n1" type="text" id="image" value="http://" size="50">
    <%else%>
    <input name="image" class="n1" type="text" id="image" value="<%=rs("image")%>" size="50">
    <% end if %></td>
  </tr>
  <tr>
    <td><div align="right">rastgele yazý:</div></td>
    <td><input name="notice" class="n1" type="text" id="notice" value="<%=rs("notice")%>" maxlength="50" size="50"></td>
  </tr>
  <tr>
    <td><div align="right">arkaplan rengi:</div></td>
    <td><div style="float:left;width:350px;display:block"><input name="background" class="n1" type="text" id="myhexcode" value="<%=rs("background")%>" maxlength="6" size="45"></div>
    <div style="float:left"><a href="javascript:void(0);" rel="colorpicker&objcode=myhexcode&objshow=myshowcolor&showrgb=1&okfunc=myokfunc" style="text-decoration:none;" ><div id="myshowcolor" style="width:22px;height:22px;border:1px solid black;">&nbsp;</div></div></a>
    </td>
  </tr>
  <script language="Javascript">



			//init colorpicker:
			$(document).ready(
				function()
				{
					$.ColorPicker.init();
				}
			);

		</script>
  <tr>
    <td><div align="right"></div></td>
    <td>
      <input type="submit" class="buton" name="send" id="send" value="kaydet"> 
    </form>
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