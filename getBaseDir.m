function baseDir = getBaseDir()
% -------------------------------------------------------------------------
% usage: function to get path to experiment base directory, which is
% different depending on which computer this function is running on
% 
% OUTPUT:
%   baseDir - string specifiying data directory path
% 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cName=getComputerName;

if strcmp(cName,'uncus')               % uncus server
    baseDir = '/Volumes/pegasus/cuefmri';
elseif strcmp(cName,'vta')               % vta server
    baseDir = '/home/span/rvta/abcddwi/test_pipeline';
elseif strcmp(cName,'ains')               % ains server
    baseDir = '/home/span/archive/abcd_4_0/test_pipeline';
else                                   % assume its my laptop
    baseDir = '/Users/kelly/abcddwi/test_pipeline';
end
