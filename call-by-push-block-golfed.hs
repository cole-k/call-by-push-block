x="Move:[hjkl] Redo:[x]\nL1\nλ.o._ _.o..\nL2\nλ.o_ oXoX _X_X\nL3\nX._.. λoooo X"
y="..._\nL4\n.λ..._ .o_o.. .o_.o_\nL5\n.λ.o_ XXXXX _oλ..\nL6\n.λ.o_ oX... .XXXX"
z=" _..λ. _o.o_\nL7\n._.o.. ._.o.X .o_.λ. .o_XXX ....o_ .λX.o_\nL8\noλooo.... o"
main=g.o((,)<*>id<$>words).lines$x%y%z%b;t=foldr(zipWith(:))e;p=putStrLn;k="λ."
j=mapM p;e=[]:e;g[]=p"You win!";g l|(s,_):v<-l,all('_'`notElem`)s=j s*>p""*>g v
g(w@(s,u):v)=j s*>getLine>>=(\i->g$(i?([id,t,t.r,id,o r]!!i)$w,u):v).q;o=map
m('λ':c:d)|c<'/'=r k%m d|(a,b)<-span(>'n')$c:d,a>[]=r(take 1 b#r a)%m(drop 1 b)
m"λ"=".";m(c:r)=c:m r;m l=l;b="oλoo.... ooλλ_____ oλooλ____ λooooλ... ........."
i?f|i<1=snd|i==2=r.t.o m.f.fst|0<3=f.o m.f.fst;""#(c:r)|c>'n'=r%k;"."#r=r%k
"_"#('o':r)='O':r%k;x#l=x%l%"λ";r=reverse;(%)=(<>);q(c:_)=fromEnum c`mod`5;q _=0
-- ^ 10 ----------------------------------------------------------------------80
-- Instructions: move: hjkl, reset: x
