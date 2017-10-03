a = input('Press 1 to start recording\n');
if a
    disp('Sound recording started');
    rec=audiorecorder(8000,8,1);
    recordblocking(rec,0.05);
    disp('Sound recorded');
    a=getaudiodata(rec);
    plot(a);
    play(rec,8000);
end