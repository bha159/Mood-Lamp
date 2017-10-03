a = input('Press 1 to start recording\n');
rec=audiorecorder(8000,8,1);
while(1)
    recordblocking(rec,0.1);
    a=getaudiodata(rec);
    b = fft(transpose(a+1));
    [~,freq] = pwelch(b);
    arduino(freq);
end