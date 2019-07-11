function data18Open(spath)
if ~ispref('data18', 'root')
    root = pwd;
    setpref('data18', 'root', root);
else
    root = getpref('data2018', 'root');
end
if nargin < 1
    spath = 'content';
end
dpath = fullfile(root, fileparts(spath));
spath = fullfile(root, spath);
cd(dpath);
open(spath + ".mlx");
end