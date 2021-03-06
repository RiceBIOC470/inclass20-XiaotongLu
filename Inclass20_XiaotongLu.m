%Inclass 20
%GB comments
1A 100
1B 100
1C 100
2. 100
Overall 100


%In this folder you will find a .mat file with x and y data

% For all of the questions below, use any options as necessary to get a
% good fit - starting points, lower bounds etc. 

% 1. Define a custom model and try to fit the data to a Michaelis function 
% y = V*x/(K+x). 
fit_str='V*x/(K+x)';
fitmodel=fittype(fit_str);
[fit_out, fit_metric]=fit(xx',yy',fitmodel);
plot(fit_out,xx',yy')

% 2. Use a custom model to try to fit the data to a Hill function with
% exponent 2: y = V*x^2/(K^2+x^2)
fit_str2='V*x^2/(K^2+x^2)';
fitmodel2=fittype(fit_str2);
[fit_out2, fit_metric2]=fit(xx',yy',fitmodel2);
plot(fit_out2,xx',yy')

% 3. Now treat the exponent as a free parameter and perform the fit again,
% that is fit to the model y = V*x^n/(K^n+x^n)
fit_str3='V*x^n/(K^n+x^n)';
fitmodel3=fittype(fit_str3);
[fit_out3, fit_metric3]=fit(xx',yy',fitmodel3,'Lower',[0, 0, 0]);
plot(fit_out3,xx',yy')

% 4. Redo parts 1 and 2, but using your model from 3 and fixing the value of
% n to either 1 or 2.
fit_str3='V*x^n/(K^n+x^n)';
fitmodel3=fittype(fit_str3,'problem','n');
for i=1:2
[fit_out3, fit_metric3]=fit(xx',yy',fitmodel3,'problem',i);
figure(i);
plot(fit_out3,xx',yy');
end




