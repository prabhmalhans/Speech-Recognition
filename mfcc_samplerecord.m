function samplerecord()
v=audiorecorder(44010,24,1);
symbol=input('Enter symbol No.'); %Every sound is to be given unique symbol starting from 1-N 
samples=input('Enter no. of samples to be taken'); 
%No. of times sample of each sound to take(more variation->increased accuracy)
totalsym=input('Enter no. of total symbols');%Total kinds of sounds to be recognized
soundfiles=samples*totalsym;%no. of sound files that will be generated.(1 for each sound)
mfcc=cell(1,soundfiles);

for k=0:samples-1
    array_1=wav_record(v)
    array=speechcompress(array_1)
    index=symbol+k*totalsym;
    savefile=sprintf('mfcc_%d', index);
    variable=mfcc_calc(array);
    index=symbol+k*totalsym;
    save(savefile,'variable') %save workspace containing mfcc coefficients stored in variable
    disp('saved');
end
