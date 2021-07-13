function [meta] = PrepareMetadata( dataset,callbackresult )
%PREPAREMETADATA Prepare Experica metadata
%   Detailed explanation goes here

meta=[];
if (isempty(dataset) || ~isfield(dataset,'ex'))
    return;
end
disp('Preparing Experica Metadata:    ...');
fields = {'Subject_ID','RecordSession','RecordSite','ID','sourceformat','date'};
meta = NeuroAnalysis.Base.getstructfields(dataset.ex,fields);

meta.files={dataset.filepath};
[~, meta.filename, ~] = fileparts(dataset.filepath);
disp('Preparing Experica Metadata:    Done.');
end