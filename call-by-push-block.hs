x="⣡䜖㡼㫲⪵⥽㎤峛甤䤌✲䴣✓㡧孲㖭伡擡䤫学䢵㖡亜䣢㢦㦬桢媜䤵䲜✩㙟䤣ឞ䤛ᛴ⒑㋲⒋㙲䡛䤴䤤㙼㏐庁䤥㉴搃䤭䯤孥歭䌌孭䬵孥䵭त☀䬮孭䦭嬤歭䉌孭䤽䤔䤴䤂头䤂᬴孅"
main=print=<<(mapM g.zip[1..].o(pure.words).lines$o(i!!).n 5.w=<<o c(x%y));o=map
b="λ:[wasd] 🔄:[x] 🔙:[u]\n";g(k,x)|all('_'`notElem`)$head x=l x<$k!x<*p"⮑  "<*d
g(k,x)=do{k!x;p b;i<-q<$>d;g(k,i?([t.r,t,id,t,t,t,o r]!!i)$x)};c=fromEnum;k="λ."
m('λ':c:d)|(a,b)<-span(>'n')$c:d=r(n 1 b#r a)%m(e b);m"λ"=".";m(c:r)=c:m r;m l=l
(1?f)x=z x;(5?f)x=e x%z x%z x;(i?f)x=((i&f).o m.f.head$x):x;0&f=r.t;_&f=f;n=take
p=putStr;""#(_:r)=r%k;"."#r=r%k;"+"#(_:r)='.':r%k;"+"#_="..";"_"#('o':r)='O':r%k
x#l=x%l%"λ";k!x@(s:_)=p"\^[cL"*>a k*>a(l x)*>p(unlines s);i="+λ_o.# \n";l=length
q(x:_)=c x`mod`7;q _=0;d=getLine;e=drop 1;a=print;r=reverse;t=foldr(zipWith(:))v
(%)=(++);z=n 1.r;v=[]:v;w n=n`mod`8:w(n`div`8);y="㬴ᛛ㬵坍㬴坭㍴壛嬴卭䤴䬤<"
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
