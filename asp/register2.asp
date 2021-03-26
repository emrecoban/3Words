<html>
<head>
<!-- #include file="inc/dt.asp" -->
<script type="text/javascript" src="jquery_library.js"></script>
<script type="text/javascript" src="js_data-post.js"></script>
<script type="text/javascript" src="jq.js"></script>
<script type="text/javascript">
function gizle(nesneID){
if(document.getElementById(nesneID).style.display=='none'){
$("#nesneID").show("slow");
}else{
$("#nesneID").hide("slow");
}
}
</script>



<title>3Kelime - kayıt ol</title>
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
	  <td width="173" height="27" colspan="3" valign="middle" background="images/Untitled-1_09.gif" alt="">
        <div align="center" class="stil6">
        
          <%
		  username=request.form("username")
		  password=request.form("password")
		  mail=request.form("mail")
		  
		  if mail="@" or mail="" or username="" or password="" then
		  response.redirect "error.asp?id=1"
		  end if
		  
set rs = server.createobject("adodb.recordset")
Sql="select * from users where username='"&username&"'"
rs.open sql,baglan,1,3

if not rs.eof then
response.redirect "error.asp?id=4"
response.End
end if

rs.addnew
rs("username")=username
rs("password")=password
rs("email")=mail
rs.update


		  %>
            kimlik:
            <input name="username" class="n1" type="text" id="username" value="<%=username%>" maxlength="36">
parola:
            <input name="password" class="n1" type="password" id="password" value="<%=password%>" maxlength="36">
            e-posta:
            <input name="mail" class="n1" type="text" id="mail" value="<%=mail%>" maxlength="36">
            
            <br><br>
             Kayıt işleminiz başarıyla gerçekleşmiştir. <br>Yukarıda girmiş olduğunuz kimlik ve parola bilgileri ile hesabınıza ulaşabilirsiniz.

            
           
          

          
              </div>
      <br></td>
		<td>
			<img src="images/spacer.gif" width="1" height="517" alt=""><br></td>
	</tr>
</table>
<!-- #include file="inc/copy.asp" -->
</body>
</html>