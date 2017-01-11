% Load model
[V,F] = load_mesh('noisy-max.ply');

% Visualize Input
tsurf(F,V,'EdgeColor','none','FaceColor',blue);
set(gcf,'Color','w');
set(gca,'Visible','off');
axis equal;
camlight;
pause

for smoothing_amount =  (10.^0:6).^2
  % Smooth
  U = conformalized_mean_curvature_flow(V,F,'MaxIter',1,'delta',smoothing_amount);
  % Visualize Smoothed model
  tsurf(F,U,'EdgeColor','none','FaceColor',blue);
  set(gcf,'Color','w');
  set(gca,'Visible','off');
  axis equal;
  camlight;
  pause
end
