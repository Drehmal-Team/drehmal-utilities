#$say $(0) $(1) $(2) $(3) $(4) $(5) $(6) $(7) $(8) $(9) $(10)
$execute unless data storage ntils:z {edata:{get_all_scores:{args:{Allowed_Chars:[$(0_2)$(0)$(0_1)$(0_2)]}}}} run return fail
$execute unless data storage ntils:z {edata:{get_all_scores:{args:{Allowed_Chars:[$(1_2)$(1)$(1_1)$(1_2)]}}}} run return fail
$execute unless data storage ntils:z {edata:{get_all_scores:{args:{Allowed_Chars:[$(2_2)$(2)$(2_1)$(2_2)]}}}} run return fail
$execute unless data storage ntils:z {edata:{get_all_scores:{args:{Allowed_Chars:[$(3_2)$(3)$(3_1)$(3_2)]}}}} run return fail
$execute unless data storage ntils:z {edata:{get_all_scores:{args:{Allowed_Chars:[$(4_2)$(4)$(4_1)$(4_2)]}}}} run return fail
$execute unless data storage ntils:z {edata:{get_all_scores:{args:{Allowed_Chars:[$(5_2)$(5)$(5_1)$(5_2)]}}}} run return fail
$execute unless data storage ntils:z {edata:{get_all_scores:{args:{Allowed_Chars:[$(6_2)$(6)$(6_1)$(6_2)]}}}} run return fail
$execute unless data storage ntils:z {edata:{get_all_scores:{args:{Allowed_Chars:[$(7_2)$(7)$(7_1)$(7_2)]}}}} run return fail
$execute unless data storage ntils:z {edata:{get_all_scores:{args:{Allowed_Chars:[$(8_2)$(8)$(8_1)$(8_2)]}}}} run return fail
$execute unless data storage ntils:z {edata:{get_all_scores:{args:{Allowed_Chars:[$(9_2)$(9)$(9_1)$(9_2)]}}}} run return fail
$execute unless data storage ntils:z {edata:{get_all_scores:{args:{Allowed_Chars:[$(10_2)$(10)$(10_1)$(10_2)]}}}} run return fail
$execute unless data storage ntils:z {edata:{get_all_scores:{args:{Allowed_Chars:[$(11_2)$(11)$(11_1)$(11_2)]}}}} run return fail
scoreboard players remove #len ntils.z.temp 12
execute unless score #len ntils.z.temp matches 0.. run return 1

data modify storage ntils:z edata.get_all_scores.macro set value {0:null,1:null,2:null,3:null,4:null,5:null,6:null,7:null,8:null,9:null,10:null,11:null,0_1:"",1_1:"",2_1:"",3_1:"",4_1:"",5_1:"",6_1:"",7_1:"",8_1:"",9_1:"",10_1:"",11_1:"",0_2:'"',1_2:'"',2_2:'"',3_2:'"',4_2:'"',5_2:'"',6_2:'"',7_2:'"',8_2:'"',9_2:'"',10_2:'"',11_2:'"'}
execute if score #len ntils.z.temp matches 1.. run data modify storage ntils:z edata.get_all_scores.macro.0 set string storage ntils:z edata.get_all_scores.checkstr 0 1
execute if score #len ntils.z.temp matches 2.. run data modify storage ntils:z edata.get_all_scores.macro.1 set string storage ntils:z edata.get_all_scores.checkstr 1 2
execute if score #len ntils.z.temp matches 3.. run data modify storage ntils:z edata.get_all_scores.macro.2 set string storage ntils:z edata.get_all_scores.checkstr 2 3
execute if score #len ntils.z.temp matches 4.. run data modify storage ntils:z edata.get_all_scores.macro.3 set string storage ntils:z edata.get_all_scores.checkstr 3 4
execute if score #len ntils.z.temp matches 5.. run data modify storage ntils:z edata.get_all_scores.macro.4 set string storage ntils:z edata.get_all_scores.checkstr 4 5
execute if score #len ntils.z.temp matches 6.. run data modify storage ntils:z edata.get_all_scores.macro.5 set string storage ntils:z edata.get_all_scores.checkstr 5 6
execute if score #len ntils.z.temp matches 7.. run data modify storage ntils:z edata.get_all_scores.macro.6 set string storage ntils:z edata.get_all_scores.checkstr 6 7
execute if score #len ntils.z.temp matches 8.. run data modify storage ntils:z edata.get_all_scores.macro.7 set string storage ntils:z edata.get_all_scores.checkstr 7 8
execute if score #len ntils.z.temp matches 9.. run data modify storage ntils:z edata.get_all_scores.macro.8 set string storage ntils:z edata.get_all_scores.checkstr 8 9
execute if score #len ntils.z.temp matches 10.. run data modify storage ntils:z edata.get_all_scores.macro.9 set string storage ntils:z edata.get_all_scores.checkstr 9 10
execute if score #len ntils.z.temp matches 11.. run data modify storage ntils:z edata.get_all_scores.macro.10 set string storage ntils:z edata.get_all_scores.checkstr 10 11
execute if score #len ntils.z.temp matches 12.. run data modify storage ntils:z edata.get_all_scores.macro.11 set string storage ntils:z edata.get_all_scores.checkstr 11 12
execute if score #len ntils.z.temp matches 1.. if data storage ntils:z {edata:{get_all_scores:{macro:{0:"\\"}}}} run data modify storage ntils:z edata.get_all_scores.macro."0_1" set value "\\"
execute if score #len ntils.z.temp matches 2.. if data storage ntils:z {edata:{get_all_scores:{macro:{1:"\\"}}}} run data modify storage ntils:z edata.get_all_scores.macro."1_1" set value "\\"
execute if score #len ntils.z.temp matches 3.. if data storage ntils:z {edata:{get_all_scores:{macro:{2:"\\"}}}} run data modify storage ntils:z edata.get_all_scores.macro."2_1" set value "\\"
execute if score #len ntils.z.temp matches 4.. if data storage ntils:z {edata:{get_all_scores:{macro:{3:"\\"}}}} run data modify storage ntils:z edata.get_all_scores.macro."3_1" set value "\\"
execute if score #len ntils.z.temp matches 5.. if data storage ntils:z {edata:{get_all_scores:{macro:{4:"\\"}}}} run data modify storage ntils:z edata.get_all_scores.macro."4_1" set value "\\"
execute if score #len ntils.z.temp matches 6.. if data storage ntils:z {edata:{get_all_scores:{macro:{5:"\\"}}}} run data modify storage ntils:z edata.get_all_scores.macro."5_1" set value "\\"
execute if score #len ntils.z.temp matches 7.. if data storage ntils:z {edata:{get_all_scores:{macro:{6:"\\"}}}} run data modify storage ntils:z edata.get_all_scores.macro."6_1" set value "\\"
execute if score #len ntils.z.temp matches 8.. if data storage ntils:z {edata:{get_all_scores:{macro:{7:"\\"}}}} run data modify storage ntils:z edata.get_all_scores.macro."7_1" set value "\\"
execute if score #len ntils.z.temp matches 9.. if data storage ntils:z {edata:{get_all_scores:{macro:{8:"\\"}}}} run data modify storage ntils:z edata.get_all_scores.macro."8_1" set value "\\"
execute if score #len ntils.z.temp matches 10.. if data storage ntils:z {edata:{get_all_scores:{macro:{9:"\\"}}}} run data modify storage ntils:z edata.get_all_scores.macro."9_1" set value "\\"
execute if score #len ntils.z.temp matches 11.. if data storage ntils:z {edata:{get_all_scores:{macro:{10:"\\"}}}} run data modify storage ntils:z edata.get_all_scores.macro."10_1" set value "\\"
execute if score #len ntils.z.temp matches 12.. if data storage ntils:z {edata:{get_all_scores:{macro:{11:"\\"}}}} run data modify storage ntils:z edata.get_all_scores.macro."11_1" set value "\\"
execute if score #len ntils.z.temp matches 1.. if data storage ntils:z {edata:{get_all_scores:{macro:{0:'"'}}}} run data modify storage ntils:z edata.get_all_scores.macro."0_2" set value "'"
execute if score #len ntils.z.temp matches 2.. if data storage ntils:z {edata:{get_all_scores:{macro:{1:'"'}}}} run data modify storage ntils:z edata.get_all_scores.macro."1_2" set value "'"
execute if score #len ntils.z.temp matches 3.. if data storage ntils:z {edata:{get_all_scores:{macro:{2:'"'}}}} run data modify storage ntils:z edata.get_all_scores.macro."2_2" set value "'"
execute if score #len ntils.z.temp matches 4.. if data storage ntils:z {edata:{get_all_scores:{macro:{3:'"'}}}} run data modify storage ntils:z edata.get_all_scores.macro."3_2" set value "'"
execute if score #len ntils.z.temp matches 5.. if data storage ntils:z {edata:{get_all_scores:{macro:{4:'"'}}}} run data modify storage ntils:z edata.get_all_scores.macro."4_2" set value "'"
execute if score #len ntils.z.temp matches 6.. if data storage ntils:z {edata:{get_all_scores:{macro:{5:'"'}}}} run data modify storage ntils:z edata.get_all_scores.macro."5_2" set value "'"
execute if score #len ntils.z.temp matches 7.. if data storage ntils:z {edata:{get_all_scores:{macro:{6:'"'}}}} run data modify storage ntils:z edata.get_all_scores.macro."6_2" set value "'"
execute if score #len ntils.z.temp matches 8.. if data storage ntils:z {edata:{get_all_scores:{macro:{7:'"'}}}} run data modify storage ntils:z edata.get_all_scores.macro."7_2" set value "'"
execute if score #len ntils.z.temp matches 9.. if data storage ntils:z {edata:{get_all_scores:{macro:{8:'"'}}}} run data modify storage ntils:z edata.get_all_scores.macro."8_2" set value "'"
execute if score #len ntils.z.temp matches 10.. if data storage ntils:z {edata:{get_all_scores:{macro:{9:'"'}}}} run data modify storage ntils:z edata.get_all_scores.macro."9_2" set value "'"
execute if score #len ntils.z.temp matches 11.. if data storage ntils:z {edata:{get_all_scores:{macro:{10:'"'}}}} run data modify storage ntils:z edata.get_all_scores.macro."10_2" set value "'"
execute if score #len ntils.z.temp matches 12.. if data storage ntils:z {edata:{get_all_scores:{macro:{11:'"'}}}} run data modify storage ntils:z edata.get_all_scores.macro."11_2" set value "'"
data modify storage ntils:z edata.get_all_scores.checkstr set string storage ntils:z edata.get_all_scores.checkstr 12
return run function ntils:z/edata/get_all_scores/v/chars_loop with storage ntils:z edata.get_all_scores.macro