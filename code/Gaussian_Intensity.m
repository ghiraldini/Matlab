w = .001;
r = -.001:1e-6:.001;
I = exp(-(2*r.^2));
I1 = exp(-(2*r.^2)./w.^2);
%plot(r,I)
%hold on 
plot(r,I1)
%xlim([-1.2 1.2]);