function gendoc()
% Generate pdf documentation
% Installed ToolboxExtender is required: https://github.com/ETMC-Exponenta/ToolboxExtender
dev = ToolboxDev(pwd);
[~, dirs] = dev.ext.dir('*_*');
for i = 1 : height(dirs)
    dev.gendoc('pdf', dirs.name(i));
end