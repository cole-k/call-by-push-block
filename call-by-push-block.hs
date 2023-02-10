x="Move:[hjkl] Redo:[x]\nL1\nλ.o._ _.o..\nL2\nλ.o_ oXoX _X_X\nL3\nX._.. λoooo X"
y="..._\nL4\n.λ..._ .o_o.. .o_.o_\nL5\n.λ.o_ XXXXX _oλ..\nL6\n.λ.o_ oX... .XXXX"
z=" _..λ. _o.o_\nL7\n._.o.. ._.o.X .o_.λ. .o_XXX ....o_ .λX.o_\nL8\noλooo.... o"
main=g.o((,)<*>id<$>words).lines$x%y%z%b;d=getLine;e=[]:e;h x=p$"\^[c"%unlines x
t=foldr(zipWith(:))e;g[]=p"🎉";g((s,_):v)|all('_'`notElem`)s=h s*>p"⮑ ️"*>d*>g v
g(w@(s,u):v)=h s*>d>>=(\i->g$(i?([id,t,t.r,id,o r]!!i)$w,u):v).q;k="λ.";(%)=(++)
m('λ':c:d)|c<'/'=r k%m d|(a,b)<-span(>'n')$c:d,a>[]=r(take 1 b#r a)%m(drop 1 b)
m"λ"=".";m(c:r)=c:m r;m l=l;b="oλoo.... ooλλ_____ oλooλ____ λooooλ... ........."
i?f|i<1=snd|0<3=(i&f).o m.f.fst;q(c:_)=fromEnum c`mod`5;q _=0;r=reverse;p=putStr
""#(c:r)|c>'n'=r%k;"."#r=r%k;"_"#('o':r)='O':r%k;x#l=x%l%"λ";2&f=r.t;_&f=f;o=map
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
