%   感谢亲亲使用此代码，此代码解决您的问题了吗~(@^_^@)~
%   没解决的话告诉亲亲一个好消息，我这里可以1分钱帮助代码改错，还提供1分钱成品代码(′▽`〃)哦~
%   登录淘宝店铺“大成软件工作室”便可领取
%   是的，亲亲真的没有看错，挠破头皮的问题真的1分钱就可以解决了\(^o^)/YES!
%   小的这就把传送门给您，记得要收藏好哦(づ￣3￣)づ╭～
%   传送门：https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-15151018122.5.uwGoq5&id=538759553146
%   如果传送门失效，亲亲可以来店铺讨要，客服MM等亲亲来骚扰哦~(*/ω╲*)
function SF=space_frequency(X)
X=double(X);
[n0,n0]=size(X);%%%%   X是一个方阵
X=double(X);                          %空间频率;
RF=0;
CF=0;

for fi=1:n0
    for fj=2:n0
        RF=RF+(X(fi,fj)-X(fi,fj-1)).^2;
    end
end

RF=RF/(n0*n0);

for fj=1:n0
    for fi=2:n0
        CF=CF+(X(fi,fj)-X(fi-1,fj)).^2;
    end
end

CF=CF/(n0*n0);%%%%可以思考，空间频率是不是只描述一个方阵

SF=sqrt(RF+CF)