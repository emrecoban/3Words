<style type="text/css">
<!--
.stil1 {color: #339900}
.stil4 {font-size: 16px}

-->
</style>
	  <td width="173" height="27" colspan="3" valign="top" background="images/Untitled-1_09.gif" alt="">
  <div class="stil6"><span class="stil7"><span class="stil1">Bu baðlantýyý arkadaþlarýnýzla paylaþýn.</span><br />
  
    
    <input name="username_share" type="text" id="username_share" value="3k.asp?u=<%=session("user_id")%>"  style="width: 760px; height: 40px; border:medium; border:#000000; font-size:28px; margin-left: 10px;" onclick="this.select();" >
    <hr size="1" noshade="noshade" style="color:#E6E6E6;" />
    <span class="stil4">3Kelime sayesinde arkadaþlarýnýz tarafýndan en belirgin özelliklerinizi öðrenebilirsiniz.</span> 
  <hr size="1" noshade="noshade" style="color:#E6E6E6;">
 
  <%
  set rs = server.createobject("adodb.recordset")
Sql="select * from answers where user_id='"&session("user_id")&"' order by ans_id desc"
rs.open sql,baglan,1,3

 do while not rs.eof
  %>
  3Kelime'de sen; <%=rs("ans_1")%>, <%=rs("ans_2")%> ve <%=rs("ans_3")%>. <br />
  <%
  rs.movenext
loop
  %>

  </div>
<br></td>