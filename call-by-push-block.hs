n="ܞ㣅㛓睇欻⛟㘟䤵㟬暃僛㠣࣫㐣儞翿㴅㳓祄㫛忿㳘䜅㛐峟ㄛ㝜㛾總㯇㟞㣮因㻛梛㜤䥛㜦䥛6楀Ƥ䵀㴤㝛㛛䲛停ឦ㿐四ᤶ罁㛛㻺倿㳳㬧矟㝉㛛矫ᏻ㛝夻㶳㐇㛟㛛盝㛛杛㛻四翿绿"
e('λ':c)|(a,b)<-span(>'n')c=u(u a#m 1 b)%e(y b);e(c:d)=c:e d;e l=l;m=take;h=pure
x%y=x<>y;p=putStr;c=fromEnum;a=length;s=[]:s;w n="_+\n.o λ#"!!mod n 8:w(n`div`8)
e&0=u.t;f&_=f;1?f=z;5?f=y%z%z;i?f=(h.(f&i).r e.f.head)%id;v(x:_)=c x`mod`7;v _=0
t=foldr(zipWith(:))s;main=print=<<(mapM g.zip[1..].r(h.words).lines$m 5.w.c=<<x)
l=print;g(k,o)|any(elem '_')$o!!0=do{k!o;p"λ:wasd 🔄:x 🔙:u\n";i<-v<$>d;g(k,i?([t.
u,t,id,t,t,t,r u]!!i)$o)};g(k,x)=a x<$k!x<*p"↩"<*d;k="λ.";y=drop 1;r=map;z=m 1.u
n!x@(s:_)=p"\^[cLvl "*>l n*>l(a x)*>p(unlines s);d=getLine;(_:r)#""=r%k;_#""="."
n#"."=n%k;(_:r)#"+"='.':r%k;_#"+"="..";('o':r)#"_"='O':r%k;l#x=x%l%"λ";u=reverse
x=n%"䷯ቤ稉翿矻㛝㻛㽛盳⛳ۛ四მ四ᇛ四Ά埿䤻徤漻埧缻埧䤷埜翻執㛛⛻˛囙ᛋ噛㛛四租廼㞛図㻻域̟廡㛟⻛㟿㛛㷫㣃竜㻷㟿泽矟杘㞛⛛"
-- ^10 ------------------------------------------------------------------ 80> --
{- gam-10-80-hs-prelude/call-by-push-block (cole-k), ghc 9.2.5

     λ.o.o.o.o.o._.o.o.o.o.o.λ Call-by-push-block λ.o.o.o.o.o._.o.o.o.o.o.λ

     Call-by-push-block is a sokoban game where you go code golfing. To clear a
     level, you must move the lambda (`λ`) to push a block (`o`) into every hole
     (`_`).

     Your score is the number of moves you take. Like in real golf, a lower
     score is better, but make sure you can complete the level first before you
     try to get the best score.

     There are 14 levels of increasing difficulty. They will take around an hour
     to complete, depending on experience. Your scores for each level are given
     at the end: compete with your friends to see who can get the lowest scores!

   Running:
     - This program requires no additional arguments and can be run using
       `runghc`.

   General advice:
     - You need to hit enter to submit your move (a quirk of this entry being in
       the Prelude category).
     - Try everything! You can always undo or reset if you reach an unsolvable
       state.
     - Read the "Controls in detail" section if you're confused by the controls.

   The cast:
     - λ: The player character.
     - o: A block you can push.
     - _: The hole you need to push a block into.
     - Joined by several others!

   Scoring:
     - Your score is displayed beneath the level number, starting at 1.
     - It increments for every move and undo you make and resets whenever you
       reset the level.
     - A lower score is better.

   Controls in detail:
     Note that you need to press enter in order to make a move.
     - Movement: [wasd]
       - [w]: up [s]: down [a]: left [d]: right.
     - Reset: [x]
       - Resets the level. Also resets your score.
     - Undo: [u]
       - Undoes one move. This feature is added for convenience since moves must
         be sent using the enter key (and thus it takes longer to get back where
         you were if you make a mistake) and incurs a small score penalty.
     - Additional notes
        - You need to press enter in order to make a move.
        - When prompted with ⮑, press enter to continue.
        - Technically, all keys map to one of the above controls, so if you find
        a set of keys you prefer, feel free to use them.

   Acknowledgements :
     - Golfing: I've learned a bunch about code golfing in Haskell from various
       tips and threads I've read from inumerably many people. I got some
       explicit help from The Ninteenth Byte on Stack Exchange with shaving
       characters off. Thank you!
     - Testing and design: I solicited help from a bunch of people who
       graciously lent me their time and feedback. Thank you!
     - The jam and feedback: #haskell-game and the organizers of The Haskell Tiny
       Game Jam. Thank you!
-}
