/
til equivalent for prime numbers
\
tilPrime:{
  xrt:(-2+ceiling x xexp 0.5)#x1:2_til x;
  x1 where count[x1]#all (x1=/:xrt) or 0<>x1 mod/:xrt
  };

/
Prime factorisation
\
pf:{
  fac:fac!count[fac:tilPrime 1+x]#0;
  f:{(x:x div/d;y:@[y;d:key[y] where 0=x mod key y;1+])};
  fac:where[fac<>0]#fac:last (.[f]/) (x;fac);
  fac
  };

/
Largest Common Multiple of an array of +ve integers
\
lcm:{ x1 last where all 0=x mod\: x1:1+til min x };