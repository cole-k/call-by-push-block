import System.IO
n="晘㋲㛻嚵ѫ盝㞝ቂ㝑߳ⳛ㎋拓㾋ⱘ孭ひ・励㓛⭭マᙲ㛾⃝㱛㚙㛨宪㕵㝘㋐⛎㫛ϛ㙉ኛ㙈ኛ涀ʶ氉Ⴖぉ㚛㛛ᇛⴙ䘈㭾⛛䉀媴㛛㫯ⶭッ㑍坝㚤㛛坓䥫㛚≫〃㾵㛝㛛囚㛛ڛ㛫⛛孭嫭"
e('λ':c)|(a,b)<-span(>'n')c=u(u a#m 1 b)%e(y b);e(c:d)=c:e d;e l=l;e&0=u.v;f&_=f
v=foldr(zipWith(:))a;main=do{hSetBuffering stdin NoBuffering; print=<<(mapM o.zip[1..].r(h.words).lines$m 5.w.c=<<x)}
e%f=e<>f;p=putStr;l=length;w n="λo .+#_\n"!!mod n 8:w(n`div`8);d=getChar;z=m 1.u
r=map;1?f=z;4?f=h[];5?f=y%z%z;i?f=(h.(f&i).r e.f.head)%id;q(x:_)=c x`mod`7;q _=0
g=print;o(n,x)|x==[]=h 0|any(elem '_')$x!!0=do{n!x;p"λ:wasd 🔄:x 🔙:u\n";i<-q.pure<$>d;
o(n,i?([v.u,v,id,v,v,v,r u]!!i)$x)}|0<3=l x<$n!x<*p"↩"<*d;k="λ.";y=drop 1;m=take
n!x@(s:_)=p"\^[cLvl "*>g n*>g(l x)*>p(unlines s);c=fromEnum;[]#""=".";l#""=y l%k
n#"."=n%k;[]#"+"="..";l#"+"='.':y l%k;('o':r)#"_"='O':r%k;l#x=x%l%"λ";h x=pure x
a=[]:a;u=reverse;x=n%"ᅕ䤉喤孭坫㛚㫛㪛囃盃㞛⛳䞛⛳䨫❭ቫ⨉੫❍婫❍ቅ❙孫❅㛛盫棛⛜䛣✛㛛⛛卝⫩㘛⛃㫫❝桝⫌㛝竛㝭㛛㪛㛰㛃ᝪ㭫哈坛ë㝓坝烰"
-- ^10 ------------------------------------------------------------------ 80> --
{- call-by-push-block-no-buffering (cole-k), ghc 9.2.5

     λ.o.o.o.o.o._.o.o.o.o.o.λ Call-by-push-block λ.o.o.o.o.o._.o.o.o.o.o.λ

     !!! This is a convenience version of call-by-push-block.hs which    !!!
     !!! makes it so you do not have to press enter to submit each move. !!!
     !!! Refer to call-by-push-block.hs for more details.                !!!
-}
