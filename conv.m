clc
clear
r= 'E:\archive\Dataset\Mild_Demented\mild_';
rr='E:\archive\Dataset\Mild_Demented1\mild_';
 
for ii=1:896

% r= 'E:\archive\Dataset\Moderate_Demented\moderate_';
% rr='E:\archive\Dataset\Moderate_Demented1\moderate_';
%  
% for ii=1:64
%  


% r= 'E:\archive\Dataset\Non_Demented\non_';
% rr='E:\archive\Dataset\Non_Demented1\non_';
%  
% for ii=1:3200


%   r= 'E:\archive\Dataset\Very_Mild_Demented\verymild_'
%   rr= 'E:\archive\Dataset\Very_Mild_Demented1\verymild_'
%  jj=2241;
%   for ii=1:2240  
    r1=[r num2str(ii) '.jpg'];
    rr1=[rr  num2str(ii) '.jpg'];
    a=imread(r1);
    [n m]=size(a);
    a1=zeros(n,m,3);
    a1(:,:,1)=a;
    a1(:,:,2)=a1(:,:,1);
    a1(:,:,3)=a1(:,:,1);
    a1=a1/255;
    imwrite(a1,rr1)


%     mild 
    k=1
   
   while k*896+ii<=3200
      rr1=[rr num2str(k*896+ii) '.jpg'];
        imwrite(a1,rr1);
        k=k+1;
   end
% Moderate_Demented1
%     k=1
%    
%    while k*64+ii<=3200
%       rr1=[rr num2str(k*64+ii) '.jpg']
%         imwrite(a1,rr1)
%         k=k+1
%    end

% Very_Mild_Demented1

%     if jj<=3200
%         rr1=[rr num2str(jj) '.jpg']
%         imwrite(a1,rr1)
%         jj=jj+1
%     end
    
end
 



 