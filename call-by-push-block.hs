import System.IO
x="杙㫲㛃䚴ᕣۜ㞜孊㜕ᘳⳛ㮫櫓ㆫⵙ䤤㍲㋃䪵㓛⤤㋞坲㛆⋜㵛㚝㛡䦢㔴㜙㫑⛮㣛ᨛ㝭媛㝩媛涉᪶汭劶㍭㚛㛛创ⷝ癩㤆⛛等䢷㛛㣠ⶤ㋋㕬䜜㚿㛛䜓缣㛚⭣㉋ㆴ㛜㛛䛚㛛᚛㛣⛛䤤䣤"
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
k!x@(s:_)=p"\^[cL"*>a k*>a(l x)*>p(unlines s);i="\nλ .#o_+";b="λ:wasd 🔄:x 🔙:u\n"
l=length;w n=n`mod`8:w(n`div`8);y="匔翭䖿䤤䜣㛚㣛㢛䛋ۋ㞛⛳瞛⛳硣✤季⡭ᥣ✬䥣✬孌✝䤣✌㛛ۣ滛⛟盻⟛㛛⛛䬜⣥㙛⛋㣣✜潜⣯㛜ࣛ"
-- ^10 ------------------------------------------------------------------ 80> --
{- gam-10-80-hs-prelude/call-by-push-block (cole-k), ghc 9.2.5

   λ.o.o.o.o.o._.o.o.o.o.o.λ Call-by-push-block λ.o.o.o.o.o._.o.o.o.o.o.λ

     Call-by-push-block is a sokoban game where you (the lambda `λ`) go code
     golfing. Push a block (`o`) into every hole (`_`) to clear the level!

     Your score is the number of moves you take. Like in real golf, a lower
     score is better, but first make sure you can complete the level before you
     try to get the best score.

     There are 14 levels of increasing difficulty which will take around an hour
     to complete, depending on experience. Your scores for each level are given
     at the end: compete with your friends to see who can get the lowest scores!

     Note before playing: You need to hit enter to submit your move (a quirk of
       this entry being in the Prelude category). Read the "Controls in detail"
       section if you're confused by the controls.

   Running:
     - This program requires no additional arguments and can be run using
       `runghc`.

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

   Tips:
     - Try everything! You can always reset or undo if you make a mistake.
     - The game will not reset for you if you enter an unwinnable state, you must
       reset it manually.
-}
