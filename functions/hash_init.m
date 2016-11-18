function hash = hash_init(size1)
% function initializes hash table
hash.size = size1;
for j = 1:size1
    hash.key{j} = [];
end;
