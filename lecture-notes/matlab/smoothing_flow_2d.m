%[V,F] = load_mesh('plane.obj');
%b = [8056 7006 14055 14600 3431 8993 8181 11867 13024 13857];
%bc = [0.84 0.25 0.81 0.24 0.93 0.35 0.20 0.25 0.62 0.47]';
%Z = kharmonic(V,F,b,bc,2,'Condensed',false);
%Z = Z+0.5*rand(size(Z));
[V,F] = load_mesh('noisy-max-sm.obj');
Z= V(:,3);
statistics(V,F)

tsh = tsurf(F,V,'CData',Z,'EdgeColor','none',fphong,fsoft);
axis equal;
set(gca,'Visible','off');set(gcf,'Color','w');camproj('persp');
view(-65,28);
camlight;
colormap(flipud(cbrewer('PRGn',20)));
set(gca,'pos',[0 0 1 1])
pause

%[~,Uall] = laplacian_smooth(V,F,'cotan',[],0.25,'implicit',Z,40);
%for i = 1:size(Uall,3)
%  tsh.CData = Uall(:,1,i);
%   drawnow;
%end

tsh.EdgeColor = 'k';
tsh.EdgeAlpha = 0.05;
%L = cotmatrix(V,F);
%N = per_vertex_normals(V,F);
%V = V+2*(1-1.5*rand(size(V,1),1)).*N;
for i = 1:400
  %L = cotmatrix(V,F);
  %M = massmatrix(V,F);
  %A = adjacency_edge_cost_matrix(V,F);
  %M = diag(1./sum(A,2));
  %L = A - diag(sum(A,2));
  A = adjacency_matrix(F);
  L = A./sum(A,2);
  L = L - diag(sum(L,2));
  M = speye(size(L));

  lambda = 0.5;
  %mu = -lambda*1.0001;
  %V = (speye(size(V,1))-lambda*(L))\V;
  %L = cotmatrix(V,F);
  %V = (speye(size(V,1))-mu*(L))\V;
  %for j = 1:10

  %% Explicit
  %V = M\((M + lambda*L)*V);
  %V = M\((M +     mu*L)*V);
  %% Implicit
  %V = (M - lambda*L)\(M*V);
  %V = (M -     mu*L)\(M*V);
  %%Desbrun
  %Not working...
  % V = (M - lambda*(L*(M\L)))\(M*V);

  %end
  tsh.Vertices = V;
  %tsh.FaceVertexCData = matrixnormalize(Uall(:,:,i));
  tsh.FaceVertexCData = matrixnormalize(per_vertex_normals(V,F));
  pause
  drawnow;
end

% Explicit Low pass filter
tsh = tsurf(F,V);
lambda = 1e-5;
U = V;
while true;
L = cotmatrix(U,F);
M = massmatrix(U,F);
U = M\((M + lambda*L - lambda^2*(L*(M\L)))*U);
tsh.Vertices = U;
drawnow;
end
