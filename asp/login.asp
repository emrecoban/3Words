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



<title>3Kelime - giri� yap</title>
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
        
          <form name="form1" method="post" action="login2.asp">
            
            <input name="username" class="n1" type="text" id="username" maxlength="36">

            <input name="password" class="n1" type="password" id="password" maxlength="36">
            
             <input type="submit" class="buton" name="send" id="send" value="giri� yap"> 
             
<input type="button" class="buton2" onClick="gizle('nesneID');" value="parolam� unuttum!">
            
           
          </form>
        <div id="nesneID" style="display:none;">
        <hr size="1" noshade="noshade" style="color:#E6E6E6;"><form>
        e-posta: <input type="text" class="n2" name="komut" id="komut" value="@"> <input type="button" onClick="komutekle()" class="but" value="g�nder">
        <div id='ajax_gelen_komut'></div>
        </form>
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