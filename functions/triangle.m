function res = triangle(a,b,c)
% function takes inputs a,b,c and 
% determines if triangle is acute, obtuse
% or a right triangle
q = sort([a b c]);
if (q(1)<0 | q(2)<0 | q(3)<0)
    'must be positive coords'
elseif (q(1).^2 + q(2).^2 == q(3).^2)
    'Right Triangle'
elseif (q(1).^2 + q(2).^2 < q(3).^2)
    'Obtuse Triangle'
elseif (q(1).^2 + q(2).^2 > q(3).^2)
    'Acute Triangle'
end
    
