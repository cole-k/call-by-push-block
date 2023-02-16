import System.IO
x="⠥䄖ॼز⚳⣻த㰀甤䤬Ⅎ䴠ℐ१㛲֛伥搥䤘㛦䢳֥亄䠢ࢦজ楢㚄䤳䲄ℝŇ䤠ਆ䤠娆⒒ņ⒕.䤨䤦䤤ု兺㟑䤤Ů㲉䤣㣼ⓜ奦怜䜜䱋䤤䞤ᛣ䤱ä学璜䤜䤤䤴䤣䴤䣥䤤㛞㣛垛ሀ摉㛛"
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
k!x@(s:_)=p"\^[cL"*>a k*>a(l x)*>p(unlines s);i="o+_#.λ \n";b="λ:wasd 🔄:x 🔙:u\n"
l=length;w n=n`mod`8:w(n`div`8);y="䛣䤳㤤㴤䥤䥣䤧䤢⤦䤡✦䤡㫦䛙æ㨀ユ䘝ユ䘛Ş䜀㛦䝛䤦䣤ᤧ䤊䡦䌡䤦䤤ܞ㣃䬦䥤㣦䜜ᄞ㠊䤞㤤翿"
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
