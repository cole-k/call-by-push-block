x="Move:[hjkl] Reset:[x]\nλ.o._ _.o..\nλ.o_ oXoX _X_X\nX._.. λoooo X..._\n.λ."
y=".._ .o_o.. .o_.o_\n.λ.o_ oX... .XXXX _..λ. _o.o_\n._.o.. ._.o.X .o_.λ. .o_XX"
z="X ....o_ .λX.o_\noλooo.... ooλoo.... ooλλ_____ oλooλ____ λooooλ... ........."
main=g.o((,)<*>id<$>words).lines$x%y%z;r=reverse;(%)=(<>);p=putStrLn;k="λ."
g[]=p"You win!";g l|(s,_):v<-l,all('_'`notElem`)s=j s*>p"Level start"*>g v
g(w@(s,u):v)=j s*>(q<$>getLine>>=(\i->g$(i?([id,t,t.r,id,o r]!!i)$w,u):v))
m('λ':c:d)|c<'/'=r k%m d|(a,b)<-span(>'n')$c:d,a>[]=(r$take 1 b#r a)%m(drop 1 b)
m"λ"=".";m(c:r)=c:m r;m l=l;e=[]:e;t=foldr(zipWith(:))e;q(c:_)=fromEnum c`mod`5
i?f|i<1=snd|i==2=r.t.o m.f.fst|0<3=f.o m.f.fst;""#(c:r)|c>'n'=r%k;"."#r=r%k
"_"#('o':r)='O':r%k;x#l=x%l%"λ";o=map;j=mapM p
-- ^ 10 ----------------------------------------------------------------------80
-- Instructions: move: hjkl, reset: x
