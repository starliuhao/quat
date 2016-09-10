% ģ��Modulus����quatmod(p)    %  5.4772
% ������Norm����quatnorm(p)    0
% ��λ����Normalize����quatnormalize(p)    %  0.1826    0.3651    0.5477    0.7303
% ���棨Inverse����quatinv(p)    %0.0333   -0.0667   -0.1000   -0.1333
% ��Ԫ��������quatdivide(q,p)    %0.6667         0   -0.6667   -0.3333
% ��Ԫ���˷���quatmultiply(p,q)  % -12     6    24    12
% ������Ԫ����quatconj(p)      % 1    -2    -3    -4 
% DCM QUAT ELUR ת��
% dcm2quat quat2dcm 
% angle2dcm dcm2angle    ŷ���Ǳ�dcm ��ת  
% quat2angle��angle2quat ��Ԫ����ŷ���ǻ����ĺ���
% quaternion  �������ҵ�λ��ת
% ��λ��ת r=rotx(pi/2) ��roty rotz
% ���� ����x����ת alpha 
% ��Ӧ��һ��                1     0      0 
%     �ڶ����һ��0��
%     �ڶ���ΪΪ�Լ�ӳ��cos(alpha)
%     ������Ϊsin(alpha) ����ȡֵ Ϊz->y ����ȡ����
%                          0    cos(alpha)  -sin(alpha)
%     �����᣺ ��һ��Ϊ0
%            �ڶ���Ϊsin(alpha) y->z ȡ����
%            ������ȡ�Լ�cos(alpha)
%            so            0     sin(alpha)  cos(alpha)
%matlabĬ�ϵĽǶȵ�λΪ���ȣ���������ö�����Ϊ��λ
r=rotx(30)
b=rotx(30/180*3.14)
b=rotx(30/180*pi)
b=rotx(pi/2)
b=rotx(90)
%���R��Ч��������ת�任����ת��ʸ��vec��ת��theta
[theta,vec] = angvec2tr(r);
tr2angvec(r)

z=rotz(30/180*pi)
y=roty(30/180*pi)
x=rotx(30/180*pi)

% Matlab code by MulinB, Aerospace Toolbox is needed  
% Gimbal Lock experiments  
yaw1 =   45;  
pitch1 = 0;  
roll1 =  0;  
yaw2 =   0;  
pitch2 = 0;  
roll2 =  60;  
% quat2angle(p1)/pi*180  
R1 = angle2dcm(yaw1/180*pi,pitch1/180*pi,roll1/180*pi);   
R2 = angle2dcm(yaw2/180*pi,pitch2/180*pi,roll2/180*pi);  
disp(R1);disp(R2);  
p1=dcm2quat(R1);
p1=quatnormalize(p1);
p2=dcm2quat(R2);
p2=quatnormalize(p2);
a=R2*R1;
a=a';
b=quatmultiply(p2,p1);
b=quatnormalize(b);
c=quat2dcm(b)