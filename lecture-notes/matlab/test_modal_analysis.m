%[V,F] = load_mesh('armadillo.ply');
L = cotmatrix(V,F);
M = massmatrix(V,F);
[EV,ED] = eigs(-L,M,40,'sm');
EV = EV(:,1:end-1);

% number of isointervals
nin = 14;
M = parula(nin);
% thickness ratio of each isointerval compared to "isoline"
thickness = 20;
MM = reshape(permute(cat(3,repmat(M,[1 1 thickness]),zeros([nin 3 1])),[3 1 2]),nin*thickness + nin,3);
colormap(MM)

for e = 1:size(EV,2)
  tsurf(F,V,'CData',EV(:,e),'EdgeColor','none',fphong,fsoft);
  set(gcf,'Color','w');
  set(gca,'Visible','off');
  axis equal;
  camlight;
  axis vis3d;
  view(-10-(e-1)*(360/(size(EV,2)+1)),5);
  figgif('../images/armadillo-modes.gif');
end
