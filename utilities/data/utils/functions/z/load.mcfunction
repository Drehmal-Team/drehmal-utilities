scoreboard objectives add utils.temp dummy
scoreboard objectives add utils.int dummy
scoreboard objectives add utils.const dummy
scoreboard objectives add utils.global dummy
scoreboard objectives add utils.bool dummy

scoreboard objectives add utils.API dummy
scoreboard objectives add utils.API.id dummy

scoreboard objectives add utils.id dummy

scoreboard objectives add utils.tag_scores.checked dummy

scoreboard objectives add utils.inv.update dummy


# NUMERICAL CONSTANTS #

scoreboard players set #3 utils.const 3
scoreboard players set #4 utils.const 4
scoreboard players set #8 utils.const 8

scoreboard players set #2^6 utils.const 64
scoreboard players set #2^8 utils.const 256
scoreboard players set #2^12 utils.const 4096
scoreboard players set #2^16 utils.const 65536
scoreboard players set #2^18 utils.const 262144
scoreboard players set #2^24 utils.const 16777215

forceload add 30000000 -15000000
setblock 30000000 0 -15000000 barrel

# LOOKUP TABLES #

data modify storage utils:z lookups.b64.num.b64 set value {A:0,B:1,C:2,D:3,E:4,F:5,G:6,H:7,I:8,J:9,K:10,L:11,M:12,N:13,O:14,P:15,Q:16,R:17,S:18,T:19,U:20,V:21,W:22,X:23,Y:24,Z:25,a:26,b:27,c:28,d:29,e:30,f:31,g:32,h:33,i:34,j:35,k:36,l:37,m:38,n:39,o:40,p:41,q:42,r:43,s:44,t:45,u:46,v:47,w:48,x:49,y:50,z:51,0:52,1:53,2:54,3:55,4:56,5:57,6:58,7:59,8:60,9:61,+:62,"/":63,"=":0}
data modify storage utils:z lookups.b64.char.b64 set value {0:A,1:B,2:C,3:D,4:E,5:F,6:G,7:H,8:I,9:J,10:K,11:L,12:M,13:N,14:O,15:P,16:Q,17:R,18:S,19:T,20:U,21:V,22:W,23:X,24:Y,25:Z,26:a,27:b,28:c,29:d,30:e,31:f,32:g,33:h,34:i,35:j,36:k,37:l,38:m,39:n,40:o,41:p,42:q,43:r,44:s,45:t,46:u,47:v,48:w,49:x,50:y,51:z,52:0,53:1,54:2,55:3,56:4,57:5,58:6,59:7,60:8,61:9,62:+,63:"/"}



data modify storage utils:z lookups.b64.char.ascii set value {0:NUL,1:SOH,2:STX,3:ETX,4:EOT,5:ENQ,6:ACK,7:BEL,8:BS,9:TAB,10:LF,11:VT,12:FF,13:CR,14:SO,15:SI,16:DLE,17:DC1,18:DC2,19:DC3,20:DC4,21:NAK,22:SYN,23:ETB,24:CAN,25:EM,26:SUB,27:ESC,28:FS,29:GS,30:RS,31:US,32:' ',33:'!',34:'"',35:'#',36:'$',37:'%',38:'&',39:"'",40:'(',41:')',42:'*',43:'+',44:',',45:'-',46:'.',47:'/',48:'0',49:'1',50:'2',51:'3',52:'4',53:'5',54:'6',55:'7',56:'8',57:'9',58:':',59:';',60:'<',61:'=',62:'>',63:'?',64:'@',65:'A',66:'B',67:'C',68:'D',69:'E',70:'F',71:'G',72:'H',73:'I',74:'J',75:'K',76:'L',77:'M',78:'N',79:'O',80:'P',81:'Q',82:'R',83:'S',84:'T',85:'U',86:'V',87:'W',88:'X',89:'Y',90:'Z',91:'[',92:'\\',93:']',94:'^',95:'_',96:'`',97:'a',98:'b',99:'c',100:'d',101:'e',102:'f',103:'g',104:'h',105:'i',106:'j',107:'k',108:'l',109:'m',110:'n',111:'o',112:'p',113:'q',114:'r',115:'s',116:'t',117:'u',118:'v',119:'w',120:'x',121:'y',122:'z',123:'{',124:'|',125:'}',126:'~'}

data modify storage utils:z lookups.b64.num.ascii set value {NUL:0,SOH:1,STX:2,ETX:3,EOT:4,ENQ:5,ACK:6,BEL:7,BS:8,TAB:9,LF:10,VT:11,FF:12,CR:13,SO:14,SI:15,DLE:16,DC1:17,DC2:18,DC3:19,DC4:20,NAK:21,SYN:22,ETB:23,CAN:24,EM:25,SUB:26,ESC:27,FS:28,GS:29,RS:30,US:31,' ':32,'!':33,'"':34,'#':35,'$':36,'%':37,'&':38,"'":39,'(':40,')':41,'*':42,'+':43,',':44,'-':45,'.':46,'/':47,'0':48,'1':49,'2':50,'3':51,'4':52,'5':53,'6':54,'7':55,'8':56,'9':57,':':58,';':59,'<':60,'=':61,'>':62,'?':63,'@':64,'A':65,'B':66,'C':67,'D':68,'E':69,'F':70,'G':71,'H':72,'I':73,'J':74,'K':75,'L':76,'M':77,'N':78,'O':79,'P':80,'Q':81,'R':82,'S':83,'T':84,'U':85,'V':86,'W':87,'X':88,'Y':89,'Z':90,'[':91,'\\':92,']':93,'^':94,'_':95,'`':96,'a':97,'b':98,'c':99,'d':100,'e':101,'f':102,'g':103,'h':104,'i':105,'j':106,'k':107,'l':108,'m':109,'n':110,'o':111,'p':112,'q':113,'r':114,'s':115,'t':116,'u':117,'v':118,'w':119,'x':120,'y':121,'z':122,'{':123,'|':124,'}':125,'~':126}