<html>
<head>
<!-- #include file="inc/dt.asp" -->

<%
u=request.querystring("u")
set rs1 = server.createobject("adodb.recordset")
Sql="select * from users where user_id=" & u
rs1.open sql,baglan,1,3

if rs1.eof then
response.redirect "error.asp?id=3"
end if
%>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/style_2.css" />
<style type="text/css">
<!--
body {
	background-color: #<%=rs1("background")%>;
}
-->
</style></head>
<body topmargin="0" marginheight="0">
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
			<a href="default.asp"><img border="0" src="images/Untitled-1_05.gif" width="154" height="46" alt="3Kelime - Anasayfa"></a></td>
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

<title>3Kelime - <%=rs1("username")%></title>
	  <td width="173" height="27" colspan="3" valign="top" background="images/Untitled-1_09.gif" alt="">
        <div align="center" class="stil6"><span class="stil7">
        
        
        <table width="658" border="0">
  <tr>
    <td width="220"><div align="right"><span class="stil7"><%=rs1("username")%></span></div></td>
    <td width="132">
      <div align="center">
        <% if not rs1("image")="" then %>
            <img src="<%=rs1("image")%>" width="100" height="100">
            <% else %>
            <img src="images/none.png" width="100" height="100">
            <%end if%>   
      </div></td>
    <td width="292"><%=rs1("notice")%></td>
  </tr>
</table>
        
        
       
      
       <hr size="1" noshade="noshade" style="color:#E6E6E6;">
      Beni <b>3K</b>elime ile tarif et.<br>
      <form action="3k.asp?u=<%=u%>" method="POST">
      <input name="ans_1" class="n1" type="text" id="ans_1" size="30">
      <input name="ans_2" class="n1" type="text" id="ans_2" size="30">
      <input name="ans_3" class="n1" type="text" id="ans_3" size="30"> <br>
      <input type="submit" class="buton" name="send" id="send" value="gönder"> 
      </form>
      <%
	  if request.form("ans_1")="" or request.form("ans_2")="" or request.form("ans_3")="" then
	  response.write ""
	  else
	  
      set rs2 = server.createobject("adodb.recordset")
	  Sql="select * from answers"
	  rs2.open sql,baglan,1,3
	  
	  
	  
	  
	  rs2.addnew
	  rs2("user_id")=u
	  rs2("ans_1")=request.form("ans_1")
	  rs2("ans_2")=request.form("ans_2")
	  rs2("ans_3")=request.form("ans_3")
	  rs2.update
	  response.write "Başarıyla gönderildi."
	  end if
	  %>
      </div>
      </td>


  <td>
			<img src="images/spacer.gif" width="1" height="517" alt=""><br></td>
	</tr>
</table>
<!-- #include file="inc/copy.asp" -->
</body>
</html>