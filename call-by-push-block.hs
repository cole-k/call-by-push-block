import System.IO
x="杘㫲㛋䚴գᛜ㞜孂㜕ٳⳛ㮫櫓㎫ⵘ䤤ㅲニ䪵㓛⤤マ坲㛎⃜㵛㚝㛠䦢㔴㜘㫐⛮㣛ਜ਼㝭媛㝨媛涀શ氭傶ㅭ㚛㛛偛ⷝ瘨㤎⛛筀䢷㛛㣡ⶤッ㕬䜜㚿㛛䜓缣㛚⭣〃㎴㛜㛛䛚㛛ڛ㛣⛛䤤䣤"
main=do
     hSetBuffering stdin NoBuffering
     print=<<(mapM g.zip[1..].o(pure.words).lines$o(i!!).n 5.w=<<o c(x%y))
o=map
t=foldr(zipWith(:))v;e=drop 1;g(k,x)|all(notElem '_')$head x=l x<$k!x<*p"⮑  "<*d
g(k,x)=do{k!x;p b;i<-q.pure<$>d;g(k,i?([t.r,t,id,t,t,t,o r]!!i)$x)};c=fromEnum;v=[]:v
m('λ':c)|(a,b)<-span(>'n')c=r(n 1 b#r a)%m(e b);m(c:r)=c:m r;m l=l;k="λ.";n=take
(4?f)_=[[]];
(1?f)x=z x;(5?f)x=e x%z x%z x;(i?f)x=(i&f$o m$f$head x):x;0&f=r.t;_&f=f;p=putStr
d=getChar;(%)=(++);""#(_:r)=r%k;""#""=".";"."#r=r%k;"+"#(_:r)='.':r%k;"+"#_=".."
"_"#('o':r)='O':r%k;x#l=x%l%"λ";q(x:_)=c x`mod`7;q _=0;r=reverse;z=n 1.r;a=print
k!x@(s:_)=p"\^[cL"*>a k*>a(l x)*>p(unlines s);i="λ\n .#o_+";b="λ:wasd 🔄:x 🔙:u\n"
l=length;w n=n`mod`8:w(n`div`8);y="儔翭䖿䤤䜣㛚㣛㢛䛃ᛃ㞛⛳瞛⛳砣✤季Ⱝॣ✬䥣✬孆✝䤣✄㛛ᛳ滛⛟盻⟛㛛⛛䬜⣥㘛⛃㣣✜潜⣯㛜ᣛ"
-- ^10 ------------------------------------------------------------------ 80> --
{- gam-10-80-hs-prelude/call-by-push-block (cole-k), ghc 9.2.5

   This program requires no additional arguments and can be run using `runghc`.

   The cast:
     - λ: The player character.
     - o: A block you can push.
     - _: The switch you need to push a block into.
     - And a couple others!

   The controls:
     Note that you need to press enter in order to make a move.
     When prompted with ⮑
     - Movement: [hjkl] (Vim-style movement: h=left, j=down, k=up, l=right)
     - Redo: [x] (Reverts to the original state)

   Notes on controls:
     - You need to press enter in order to make a move.
     - When prompted with ⮑, press enter to continue.
     - Technically, all keys map to one of the above controls, so if you find
       a set of keys you prefer, feel free to use them.

   Tips:
     - Try everything! You can always redo if you make a mistake.
     - The game will not redo for you if you enter an unwinnable state, you must
       reset it manually.
-}
