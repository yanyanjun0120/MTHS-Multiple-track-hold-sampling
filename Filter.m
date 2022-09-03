function [Samples] = Filter(Sig,FIR_h);
% low pass filtering and downsampling
f_lpf = fftshift(fft(FIR_h));
f_sig = fftshift(fft(Sig));
Samples = ifft(f_lpf.*f_sig);
