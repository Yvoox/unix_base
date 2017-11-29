clear
clf

w0=67;
fv=0.1;
j=0.01;

function w=f(x)
    w=(w0+(fs/fv))*exp((-fv/j)*x)-(fs/fv);
endfunction

x=0:0.01:0.2;

//Pour fs=1kgm²/s
fs=1;

a=(w0+(fv/1))*exp((-1/j)*x)-(fv/1);
plot2d(a,leg='Pour fv=1kgm²/s',style=4);


//Pour fs=0.1kgm²/s
fs=0.1;
b=(w0+(fv/0.1))*exp((-0.1/j)*x)-(fv/0.1);
plot2d(b,leg='Pour fv=0.1kgm²/s',style=5)

//Pour fs=0.04kgm²/s
fs=0.04;
c=(w0+(fv/0.04))*exp((-0.04/j)*x)-(fv/0.04);
plot2d(c,leg='Pour fv=0.04kgm²/s',style=3)

//Pour fs=0.01kgm²/s
fs=0.01;
d=(w0+(fv/0.01))*exp((-0.01/j)*x)-(fv/0.01);
plot2d(d,leg='Pour fv=0.01kgm²/s',style=2)

//Pour fs=0.001kgm²/s
fs=0.001;
e=(w0+(fv/0.001))*exp((-0.001/j)*x)-(fv/0.001);
plot2d(e,leg='Pour fv=0.001kgm²/s',style=1)


xtitle('Décéleration en fonction des frottements visqueux')
