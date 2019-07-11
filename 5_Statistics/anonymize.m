function data = anonymize(data)
% Change ids
ids_all = [data.id; data.source];
ids = unique(ids_all);
ids_new = 1 : length(ids);
ids_all = categorical(ids_all);
ids_all = renamecats(ids_all, string(ids), string(ids_new));
ids_all = double(ids_all);
ids_all = reshape(ids_all, [], 2);
data.id = ids_all(:, 1);
data.source = ids_all(:, 2);
% Delete last name
data.last_name = [];