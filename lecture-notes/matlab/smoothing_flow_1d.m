load('chfusd-04-2010-04-2012.mat','D');
% Uncomment this to put mesh-independence to the test.
%D = D(1:4:end);
n = numel(D);

dt = 0.03; % Safe for Explicit
%dt = 0.4; % Unsafe for Explicit
%dt = 1.0; % Safe for Explicit

clf;
hold on;
plot(D,'ok');
s = plot(D,'-','LineWidth',6);
tit = title(sprintf('dt: %g, t: %g',dt,0),'FontSize',30);
hold off;
set(gca,'Visible','off');set(gcf,'Color','w');
set(tit,'Visible','on');
axis manual;

% Build Second derivative matrix
A = sparse(1:n-1,2:n,n^2/40000,n,n);
L = (A'+A) - diag(sum(A'+A,2));
I = speye(n,n);

t = 0;
U = D(:);
while t<5
  % Explicit time integeration
  U = U + (dt*L)*U;
  %% Implicit time integration
  %U = (I - dt*L)\U;
  s.YData = U;
  t = t+dt;
  tit.String = sprintf('dt: %g, t: %g',dt,t);
  figgif('../images/1d-smoothing-explicit-stable.gif');
  drawnow;
end
