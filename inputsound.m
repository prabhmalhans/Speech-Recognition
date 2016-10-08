function [voice]= inputsound()
v=audiorecorder(44010,24,1);
ready=input('Press Y or y when you are ready','s');
if(ready=='Y'||ready == 'y')
    voice = wav_record(v)
else
    disp('try again')
    inputsound()
end
end
   

