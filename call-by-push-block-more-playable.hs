import System.IO (stdin, hSetBuffering, BufferMode(..))
import Data.Maybe (fromMaybe)
-- 10 lines begin
x="Move:[wasd] Redo:[x]\nL1\nλ.o._ _.o..\nL2\nλ.o_ oXoX _X_X\nL3\nX._.. λoooo X"
y="..._\nL4\n.λ..._ .o_o.. .o_.o_\nL5\n.λ.o_ XXXXX _oλ..\nL6\n.λ.o_ oX... .XXXX"
z=" _..λ. _o.o_\nL7\n._.o.. ._.o.X .o_.λ. .o_XXX ....o_ .λX.o_\nL8\noλooo.... o"
d=getChar;e=[]:e;h x=p$"\^[c"%unlines x--main=g.o((,)<*>id<$>words).lines$x%y%z%b;d=getLine;
t=foldr(zipWith(:))e;g[]=p"🎉";g((s,_):v)|all('_'`notElem`)s=h s*>p"⮑ ️"*>d*>g v
g(w@(s,u):v)=h s*>d>>=(\i->g$(i?([id,t,t.r,id,o r]!!i)$w,u):v).q;k="λ.";(%)=(++)
m('λ':c:d)|c<'/'=r k%m d|(a,b)<-span(>'n')$c:d,a>[]=r(take 1 b#r a)%m(drop 1 b)
m"λ"=".";m(c:r)=c:m r;m l=l;b="oλoo.... ooλλ_____ oλooλ____ λooooλ... ........."
i?f|i<1=snd|0<3=(i&f).o m.f.fst;q c=fromMaybe 0$lookup c[('s', 1), ('w', 2), ('d', 3), ('a', 4)];r=reverse;p=putStr
""#(c:r)|c>'n'=r%k;"."#r=r%k;"_"#('o':r)='O':r%k;x#l=x%l%"λ";2&f=r.t;_&f=f;o=map
-- ^ 10 ----------------------------------------------------------------------80
-- Movement is WASD, everything else is redo.
--
-- If I make any updates I will not modify this version for sure so don't count
-- on it being up-to-date.
--
-- The QoL changes I made are:
--  - Replace getLine with getChar and set stdin to not buffer
--  - Rebind hjkl to wasd (this is less of a big deal for me since I use vim
--    keybindings but it's nicer for other people)
main=do
  hSetBuffering stdin NoBuffering
  g.o((,)<*>id<$>words).lines$x%y%z%b
