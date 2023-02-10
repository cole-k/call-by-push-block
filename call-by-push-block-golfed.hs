x="Move:[hjkl] Reset:[x]\nL1\nλ.o._ _.o..\nL2\nλ.o_ oXoX _X_X\nL3\nX._.. λoooo "
y="X..._\nL4\n.λ..._ .o_o.. .o_.o_\nL5\n.λ.o_ XXXXX _oλ..\nL6\n.λ.o_ oX... .XXX"
z="X _..λ. _o.o_\nL7\n._.o.. ._.o.X .o_.λ. .o_XXX ....o_ .λX.o_\nL8\noλooo.... "
main=g.o((,)<*>id<$>words).lines$x%y%z%b;p=putStr;e=[]:e;h x=p$"\^[c"%unlines x
r=reverse;d=getLine;g[]=h["🎉"];g((s,_):v)|all('_'`notElem`)s=h s*>p"⮑ ️"*>d*>g v
g(w@(s,u):v)=h s*>d>>=(\i->g$(i?([id,t,t.r,id,o r]!!i)$w,u):v).q;k="λ.";(%)=(++)
m('λ':c:d)|c<'/'=r k%m d|(a,b)<-span(>'n')$c:d,a>[]=r(take 1 b#r a)%m(drop 1 b)
m"λ"=".";m(c:r)=c:m r;m l=l;b="ooλoo.... ooλλ_____ oλooλ____ λooooλ... ........."
i?f|i<1=snd|0<3=(i&f).o m.f.fst;q[c]=fromEnum c`mod`5;q _=0;t=foldr(zipWith(:))e
""#(c:r)|c>'n'=r%k;"."#r=r%k;"_"#('o':r)='O':r%k;x#l=x%l%"λ";2&f=r.t;_&f=f;o=map
-- ^ 10 ----------------------------------------------------------------------80
-- Instructions: move: hjkl, reset: x
