%[V,F,VT,FT] = readOBJ('/Users/ajx/Dropbox/geometry-processing/parameterization/shared/data/keenan-ogre.obj');
%[~,Q] = lscm(V,F,[],[]);
%M = repdiag(massmatrix(V,F),2);
%[EV,ED] = eigs(Q,M,5,'sm');
%V = V*(sV*sU');
%V(:,3)  = V(:,3) - min(V(:,3));
%O = outline(F);
U(:,3) = 0;
C = repmat(blue,size(V,1),1);
for t = linspace(0,1,30);
  W = V+t*(U-V);
  clf;
  tsh = tsurf(F,W,'FaceVertexCData',C,'EdgeColor','none',fphong,fsoft);
  hold on;
  plot_edges(W,O,'Color',orange,'LineWidth',3);
  hold off;
  axis equal;
  view(-80,50)
  axis equal;
  axis([-0.96132 1.0041 -0.9762 0.9843 0 0.82048]);
  axis manual;
  camlight;
  apply_ambient_occlusion(tsh);
  set(gca,'Visible','off');set(gcf,'Color','w');
  set(gca,'pos',[0 0 1 1]);
  drawnow;
  figgif('../images/ogre-flatten.gif');
end
