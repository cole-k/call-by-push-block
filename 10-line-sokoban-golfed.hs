x="λλ.._ ..oo_ ..o.. _X...\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
y="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
z="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
main=g.o((,)<*>id<$>words).lines$x%y%z;r=reverse;o=map;(%)=(<>);p=putStrLn;k="λ."
g[]=p"You win!";g l|(s,_):v<-l,all('_'`notElem`)s=g v
g((s,u):v)=mapM p s*>(q<$>getLine>>=(\i->g$(n i u([id,t.r,t,id,o r]!!i)s,u):v))
m('λ':c:d)|c<'/'=r k%m d|(a,b)<-span(>'n')$c:d,a>[]=(r$take 1 b#r a)%m(drop 1 b)
m"λ"=".";m(c:r)=c:m r;m l=l;e=[]:e;t=foldr(zipWith(:))e;q(c:_)=fromEnum c`mod`5
n i u f|i<1=pure u|i<2=r.t.o m.f|0<3=f.o m.f;""#(c:r)|c>'n'=r%k;"."#r=r%k
"_"#('o':r)='X':r%k;x#l=x%l%"λ"
-- ^ 10 ----------------------------------------------------------------------80
-- Instructions: move: hjkl, reset: x
