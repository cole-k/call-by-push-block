module Sokoban where
x="λ..._ ..o.. ..o.. _█...\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
y="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
z="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
main=g.o((,)<*>id<$>words).lines$x<>y<>z;p=([id,t.b,t,id,o b]!!)
g l|[]<-l=putStrLn"You win!"|(s,_):r<-l,a 'o's=g r|(s,u):r<-l,a 'λ's=g$(u,u):r
 |(s,u):r<-l=w s*>((`mod`5).fromEnum.q<$>getLine>>=(\i->g$(n i(p i)s,u):r))
m('λ':c:d)|c<'/'=".λ"<>m d|e:r<-d,c=='o',e<'o'=".λ"<>[last$'o':['█'|e>'.']]<>m r
m"λ"=".";m(c:r)=c:m r;m l=l;e=[]:e;t=foldr(zipWith(:))e;a c=all(c`notElem`)
n i f|i<1=id|i<2=b.t.o m.f|0<3=f.o m.f;w=mapM putStrLn;q(c:_)=c;b=reverse;o=map
