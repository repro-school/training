fprintf(1,'Executing %s at %s:\n',mfilename(),datestr(now));
ver,
try,
        %% Generated by nipype.interfaces.spm
        if isempty(which('spm')),
             throw(MException('SPMCheck:NotFound', 'SPM not in matlab path'));
        end
        [name, version] = spm('ver');
        fprintf('SPM version: %s Release: %s\n',name, version);
        fprintf('SPM path: %s\n', which('spm'));
        spm('Defaults','fMRI');

        if strcmp(name, 'SPM8') || strcmp(name(1:5), 'SPM12'),
           spm_jobman('initcfg');
           spm_get_defaults('cmdline', 1);
        end

        jobs{1}.spm.spatial.realign.estwrite.data = {...
{...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,1';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,2';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,3';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,4';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,5';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,6';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,7';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,8';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,9';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,10';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,11';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,12';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,13';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,14';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,15';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,16';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,17';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,18';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,19';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,20';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,21';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,22';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,23';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,24';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,25';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,26';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,27';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,28';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,29';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,30';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,31';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,32';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,33';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,34';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,35';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,36';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,37';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,38';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,39';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,40';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,41';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,42';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,43';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,44';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,45';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,46';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,47';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,48';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,49';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,50';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,51';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,52';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,53';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,54';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,55';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,56';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,57';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,58';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,59';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,60';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,61';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,62';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,63';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,64';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,65';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,66';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,67';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,68';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,69';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,70';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,71';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,72';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,73';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,74';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,75';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,76';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,77';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,78';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,79';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,80';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,81';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,82';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,83';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,84';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,85';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,86';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,87';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,88';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,89';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,90';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,91';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,92';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,93';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,94';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,95';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,96';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,97';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,98';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,99';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,100';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,101';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,102';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,103';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,104';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,105';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,106';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,107';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,108';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,109';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,110';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,111';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,112';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,113';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,114';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,115';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,116';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,117';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,118';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,119';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,120';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,121';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,122';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,123';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,124';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,125';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,126';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,127';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,128';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,129';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,130';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,131';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,132';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,133';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,134';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,135';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,136';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,137';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,138';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,139';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,140';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,141';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,142';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,143';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,144';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,145';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,146';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,147';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,148';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,149';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,150';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,151';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,152';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,153';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,154';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,155';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,156';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,157';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,158';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,159';...
'/media/finc/Elements/ds000003-00001/sub-01/func/sub-01_task-rhymejudgment_bold.nii,160';...
};
};
jobs{1}.spm.spatial.realign.estwrite.eoptions.rtm = 1;
jobs{1}.spm.spatial.realign.estwrite.roptions.which(1) = 2;
jobs{1}.spm.spatial.realign.estwrite.roptions.which(2) = 1;
jobs{1}.spm.spatial.realign.estwrite.roptions.prefix = 'r';

        spm_jobman('run', jobs);

        
,catch ME,
fprintf(2,'MATLAB code threw an exception:\n');
fprintf(2,'%s\n',ME.message);
if length(ME.stack) ~= 0, fprintf(2,'File:%s\nName:%s\nLine:%d\n',ME.stack.file,ME.stack.name,ME.stack.line);, end;
end;