import System.IO (stdin, hSetBuffering, BufferMode(..))
-- x="ᓐ⚎㐺㫱᩵ᕽ㆒峛犒⒂ᚱⲓᚋ㐗孱㎭⺐拐⒫孖⑵㎐⹚ⓑ㑖㖪搑婚⒵ⱚᚨ㘟⒓ޞ⒛۲ቈヱቃ㘱␛⒲⒒翺"
x="oλooo.... ooλoo.... ooλλ_____ oλooλ____ λooooλ... .........\nλoo+_\nλoλ+_\n##..... λλoo++_ XX.....\n"
y="#.#.####### .λ.λ.###### .#.#.###### .....++++o_ #.#.####### .....###### .λλλ.######\n"
z="...._.... ..._+.... ..#_+.... .#λ#+###. .#oooooλ# .#o#λ#o#. .#o###o#. #λoooo.#. .#####λ#. ......#.."
main=do
  hSetBuffering stdin NoBuffering
  g 1.o((,)<*>id<$>words).lines$x%y%z --o c x>>=o(i!!).n 5.l
t=foldr(zipWith(:))e
d=getChar;g k[]=p"🎉";g k((s,_):v)|all('_'`notElem`)s=k!s*>p"⮑ ️"*>d*>g(k+1)v
g k(w@(s,u):v)=k!s*>p b*>d>>=(\i->g k$(i?([id,t,t.r,id,o r]!!i)$w,u):v).q.pure
m('λ':c:d)|(a,b)<-span(>'n')$c:d=r(n 1 b#r a)%m(drop 1 b)
m"λ"=".";m(c:r)=c:m r;m l=l;i?f|i<1=snd|0<3=(i&f).o m.f.fst;2&f=r.t;_&f=f
q(x:_)=c x`mod`5;q _=0;r=reverse;e=[]:e;k!x=p"\^[cLevel "*>print k*>p(unlines x)
""#(_:r)=r%k;"."#r=r%k;"+"#(_:r)='.':r%k;"+"#_="..";"_"#('o':r)='#':r%k;x#l=x%l%"λ"
k="λ.";i="λ_.o+# \n";n=take;c=fromEnum;l n=mod n 8:l(n`div`8);p=putStr;o=map;(%)=(++)
b="Move [hjkl] Reset [x]\n"
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
