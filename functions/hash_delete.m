function [out, succ] = hash_delete(hash, key)
indx = hash_function(key, hash.size);
arr = hash.key{indx};
indx1 = find(arr==key);
if isempty(indx1)
    succ = false;
else
    arr(indx1) = [];
    hash.key(indx) = arr;
    succ = true;
end;
out = hash;