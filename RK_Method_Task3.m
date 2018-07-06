   % Muhammad Hamza
   % 1602028



              % This is 4th Order RK Method...

X=[0.5 1 1.5 2 2.5 3 3.5 4];   % Given X values
Y_RK=[];                   % it store the Eular values
[Row,Col]=size(X);           % Row and Col Size of Given X

xOld=0;                      % Starting value of x
yOld=2;                      % Starting value of y
h=0.5;                       % The value of H...
i=1;
while i<=Col
   k1=Func(xOld,yOld);                  % Find K1
   k2=Func((xOld+h/2),(yOld+(k1*h)/2)); % Find K2
   temp1=(yOld)-(k1*h)+(2*k2);
   k3=Func(xOld+h,temp1);               % Find K3
   k4=Func(xOld+h,yOld+(k3*h));         % Find K4

   Y_RK(i)=yOld+(1/6)*(k1+2*k2+2*k3+k4)*h; % Find the Yn+1

   xOld=xOld+h;              % Update value of Old x
   yOld=Y_RK(i);             % Update value of Old y
   i=i+1;
end
disp(X);
disp(Y_RK);                % Display Eular values
plot(X,Y_RK);              % Plot Eular values
hold on                      % Plot ModefiedEular values




         % This is a 3rd Order RK Method

X=[0.5 1 1.5 2 2.5 3 3.5 4];   % Given X values
YEular=[];                     % it store the Eular values
[Row,Col]=size(X);             % Row and Col Size of Given X

xOld=0;                        % Starting value of x
yOld=2;                        % Starting value of y
h=0.5;                         % The value of H...
i=1;
while i<=Col
   k1=Func(xOld,yOld);                   % Find K1
   k2=Func((xOld+h/2),(yOld+(k1*h)/2));  % Find K2
   temp1=(yOld)-(k1*h)+(2*k2);
   k3=Func(xOld+h,temp1);                % Find K3
   YEular(i)=yOld+(1/6)*(k1+4*k2+k3)*h;  % Find the Yn+1

   xOld=xOld+h;              % Update value of Old x
   yOld=YEular(i);           % Update value of Old y
   i=i+1;
end
disp(X);
disp(YEular);                % Display Eular values
plot(X,YEular);              % Plot Eular values
hold on                      % Plot ModefiedEular values

zoom on

            % This is 2nd Order RK Method...

X=[0.5 1 1.5 2 2.5 3 3.5 4];   % Given X values
YEular=[];                   % it store the Eular values
[Row,Col]=size(X);           % Row and Col Size of Given X

xOld=0;                      % Starting value of x
yOld=2;                      % Starting value of y
h=0.5;                       % The value of H...
i=1;
while i<=Col
   k1=Func(xOld,yOld);       % Find k1
   k2=Func((xOld+h/2),(yOld+(k1*h)/2));  % Find K2
   YEular(i)=yOld+k2*h;
   xOld=xOld+h;              % Update value of Old x
   yOld=YEular(i);           % Update value of Old y
   i=i+1;
end
disp(X);
disp(YEular);                % Display Eular values
plot(X,YEular);              % Plot Eular values
hold on                      % Plot ModefiedEular values

                 % Original Function

Y=[];
xOld=0;                      % Starting value of x
yOld=2;                      % Starting value of y
h=0.5;                       % The value of H...
i=1;
while i<=Col
   Y(i)=OrigFunc(xOld);      % Original Function Values on x
   xOld=xOld+h;              % Update value of Old x
   yOld=YEular(i);           % Update value of Old y
   i=i+1;
end
disp(X);
disp(Y);                % Display Eular values
plot(X,Y);              % Plot Eular values
hold on
