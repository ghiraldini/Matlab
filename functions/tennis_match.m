function a = tennis_match(p)
% If A is the transition of a Marker
% Chain, and 'p' is the starting 
% probablility vector, than ((A')^n)p
% is the vector that describes the
% probability after n steps.
% lim(n->infinity):((A')^n)p is the steady-state
% probability distribution.
% ---------------------------------------------
% sets up the Markov chain for a game of tennis
% with p = probability that server wins a point
a(20,20)=0;
for j=1:4
  for k =0:2
    a(4*j-3+k,4*j-2+k)=p;
  end;
end;
for j=1:12
    a(j,j+4)=1-p;
end;
a(4,19)=p;
a(8,19)=p;
a(12,19)=p;
a(16,17)=p;
a(17,19)=p;
a(18,16)=p;
a(13,20)=1-p;
a(14,20)=1-p;
a(15,20)=1-p;
a(18,20)=1-p;
a(16,18)=1-p;
a(17,16)=1-p;
a(19,19)=1;
a(20,20)=1;