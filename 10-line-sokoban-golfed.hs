x="λ..._ ..o.. ..o.. _█...\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
y="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
z="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
main=g.o((,)<*>id<$>words).lines$x<>y<>z;b=reverse;o=map;a c=all(c`notElem`)
g l|[]<-l=putStrLn"You win!"|(s,_):r<-l,all('_'`notElem`)s=g r
 |(s,u):r<-l=w s*>(q<$>getLine>>=(\i->g$(n i u([id,t.b,t,id,o b]!! i)s,u):r))
m('λ':c:d)|c<'/'=".λ"<>m d|e:r<-d,c=='o',e<'o'=".λ"<>[last$'o':['█'|e>'.']]<>m r
m"λ"=".";m(c:r)=c:m r;m l=l;e=[]:e;t=foldr(zipWith(:))e;q(c:_)=fromEnum c`mod`5
n i u f|i<1=pure u|i<2=b.t.o m.f|0<3=f.o m.f;w=mapM putStrLn

-- ^ 10 ----------------------------------------------------------------------80
-- pushing multiple cursors and blocks: span(>'n') and handle the end case
-- using an auxilliary function. will require some thought on how to handle
-- walls since they are also >'n' (maybe change walls to 'X' or find characters
-- that work for the player and ball which are greater than the wall).
