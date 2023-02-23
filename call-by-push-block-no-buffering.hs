import System.IO
n="噞㋪㛃䚬摣ۜ㝜ቲ㜑昫⫛㍋勓ㅋ⩞䤤㱪㳃䊩㓛⤤㳝ᙪ㛅Ⳝ㩛㚙㛦䥢㔬㜞㋖⛍㣛戛㙉ኛ㙎ኛ孶抭安Ჭ㱉㚛㛛ᰛ⯙瞎㤅⛛牶䢯㛛㣠⭤㳳㑌䜜㚿㛛䜓缣㛚≣㶳ㅬ㛜㛛䛚㛛暛㛣⛛䤤䣤"
e('λ':c)|(a,b)<-span(>'n')c=u(u a#m 1 b)%e(y b);e(c:d)=c:e d;e l=l;k="λ.";m=take
v(x:_)=c x`mod`7;v _=0;l=print;s=[]:s;c=fromEnum;i="\no .#_λ+";y=drop 1;(%)=(++)
e&0=u.t;f&_=f;p=putStr;(1?f)x=z x;(5?f)x=y x%z x%z x;(i?f)x=(f&i$r e$f$head x):x
r=map;main=do
  hSetBuffering stdin NoBuffering
  print=<<(mapM g.zip[1..].r(pure.words).lines$r(i!!).m 5.w=<<r c(n%x))
g(k,o)|any(elem '_')$head o=do{k!o;p b;i<-v.pure<$>d;g(k,i?([t.u,t,id,t,t,t,r u]!!i)$
o)};g(k,x)=a x<$k!x<*p"↩"<*d;t=foldr(zipWith(:))s;z=m 1.u;w n=n`mod`8:w(n`div`8)
n!x@(s:_)=p"\^[cLvl "*>l n*>l(a x)*>p(unlines s);d=getChar;(_:r)#""=r%k;_#""="."
n#"."=n%k;(_:r)#"+"='.':r%k;_#"+"="..";('o':r)#"_"='O':r%k;l#x=x%l%"λ";u=reverse
a=length;b="λ:wasd 🔄:x 🔙:u\n";x="ᴔ翉䕿䤤䜣㛚㣛㢛䛳۳四⛛竛⛛笛⛛禣✤ባ⦉档✌䡣✌ቴ✙䤣✴㛛ۣ廛⛟盻⟛㛛⛛䌜⣡㞛⛳㣣✜幜⣏㛜ࣛ"
-- ^10 ------------------------------------------------------------------ 80> --
{- Unbuffered IO version of call-by-push-block (cole-k) ghc-9.2.5

   !!! This is a modified version of the game call-by-push-block where IO is !!!
   !!! set to NoBuffering so that you do not need to hit enter for every     !!!
   !!! move you make. It is not the proper submission and only offered for   !!!
   !!! convenience purposes.                                                 !!!

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
     - The jam and feedback: #haskell-game and the organizers of The Haskell Tiny
       Game Jam. Thank you!
-}
