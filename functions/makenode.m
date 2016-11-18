function res = makenode(value, varargin)
% Collect value and some other nodes into 
% a structure with fields
% <value> and <branches>
res.value = value;
if length(varargin) == 1 & iscell(varargin{1})
    res.branches = varargin{1};
else
    res.branches = varargin;
end