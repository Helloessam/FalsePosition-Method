a = input('enter the start of the interval');
b = input('enter the end of the interval');
tol= input('enter the tol');
syms x;
func= input('enter the function');
f=inline(func);
fa=f(a);
fb=f(b);
fprintf('i\t a\t fa\t b\t fb\t c\t fc\n');
for i=0:20
   c=b-(fb*(b-a))/(fb-fa); 
   fc=f(c);
   fprintf('%d\t %f\t %f\t %f\t %f\t %f\t%f\n',i,a,fa,b,fb,c,fc);
   if f(c)<=tol
       fprintf('C %d is the aprrox value %f',i,c);
       break;
   end
   if (fc*fa)<0
       fb=fc;
       b=c;
   else
       fa=fc;
       a=c;
   end
end