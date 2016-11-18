function [out, succ] = hash_insert(hash, key)
indx = hash_function(key, hash.size);
succ = false;
sindx = find(hash.key{indx}==key);
if isempty(sindx)
    hash.key{indx} = [key, hash.key{indx}];
    succ = true;
end;
out = hash;