import System.IO (stdin, hSetBuffering, BufferMode(..))
-- x="oλooo.... ooλoo.... ooλλ_____ oλooλ____ λooooλ... .........\nλoo+_\nλoλ+_\n##..... λλoo++_ ##.....\n"
x="λoo+_\nλoλ+_"
-- y="#.#.####### .λ.λ.###### .#.#.###### .....++++o_ #.#.####### .....###### .λλλ.######\n"
-- z="...._.... ..._+.... ..#_+.... .#λ#+###. .#oooooλ# .#o#λ#o#. .#o###o#. #λoooo.#. .#####λ#. ......#.."
main=do
  hSetBuffering stdin NoBuffering
  (f=<<).mapM g.zip[1..].o(pure.words).lines$x --o c x>>=o(i!!).n 5.w
g(k,x@(s:_))|all('_'`notElem`)s=l x<$k!x<*p"⮑  "<*d
g(k,x)=do{k!x;p b;i<-q.pure<$>d;g(k,i?([t.r,t,id,t,t,t,o r]!!i)$x)}
m('λ':c:d)|(a,b)<-span(>'n')$c:d=r(u b#r a)%m(e b);m"λ"=".";m(c:r)=c:m r;m l=l;
(1?f)x=u$r x;(5?f)x=e x%u(r x)%u(r x);(i?f)x=((i&f).o m.f.head$x):x;
0&f=r.t;_&f=f
d=getChar;
q(x:_)=c x`mod`7;q _=0;
r=reverse;
v=[]:v;
t=foldr(zipWith(:))v
k!x@(s:_)=p"\^[cLvl "*>a k*>p"Steps: "*>a(l x)*>p(unlines s)
""#(_:r)=r%k;"."#r=r%k;"+"#(_:r)='.':r%k;"+"#_="..";"_"#('o':r)='O':r%k;x#l=x%l%"λ"
k="λ.";
i="λ_.o+# \n";
n=take;
c=fromEnum;
w n=n`mod`8:w(n`div`8);
p=putStr;
o=map
(%)=(++);
a=print;
l=length;
e=drop 1;
u=take 1;
f s=p"🎉\nSteps:"*>print s
b="Move[wasd] Reset[x] Undo[u]\n"
--wasdxu [0,6,3,2,1,5]
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
