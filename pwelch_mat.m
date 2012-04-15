function [Pxx,f] = pwelch_mat(varargin)
X=varargin{1};

for ii=1:size(X,2)
	[p,f]=pwelch(X(:,ii),varargin{2:end});
	if ii==1
		Pxx=p;
	else
		Pxx=1/ii*(p+(ii-1)*Pxx);
	end
end


