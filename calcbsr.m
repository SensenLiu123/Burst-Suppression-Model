function [bsr_ave] = calcbsr(c_range,trial,plt)

if nargin < 3
  plt = 0;
end

len = length(c_range);
bsr_wave = zeros(len,trial);
bsr_phi = zeros(len,trial);

%
[~, X] = noisecase(200000,12);
wavethreshold =  mean(X(1,:));
phithreshold = mean(X(5,:));
% over j = 1,2,3... N samples
for j=1:trial
    for i = 1:len,
        c = c_range(i);
        [t, X] = noisecase(20000,c);
        %% get bsr from e
        wave = X(1,:);
        t = t (6000*5:end);
        wave = wave(6000*5:end);% 
        supp1 = find(wave<wavethreshold);
        r_w = length(supp1)/length(t);
        bsr_wave(i,j) = r_w;
        %% get bsr from phi
        phi = X(5,:);
        phi = phi(6000*5:end);
        supp2 = find(phi<phithreshold);
        r_p = length(supp2)/length(t);
        bsr_phi(i,j) = r_p;
    end
end

a = mean(bsr_phi,2);
b = mean(bsr_wave,2);
bsr_ave = b'.*linspace(0.1,0.9,len) + a'.* linspace(0.9,0.1,len);

  
if plt,
      figure;
      plot(c_range,bsr_ave)
  end