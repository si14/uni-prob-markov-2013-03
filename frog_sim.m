figure("visible", "off");

A1 = [0   1/2 0   1/2 0   0   0   0   0
      1/3 0   1/3 0   1/3 0   0   0   0
      0   1/2 0   0   0   1/2 0   0   0
      1/3 0   0   0   1/3 0   1/3 0   0
      0   1/4 0   1/4 0   1/4 0   1/4 0
      0   0   1/3 0   1/3 0   0   0   1/3
      0   0   0   1/2 0   0   0   1/2 0
      0   0   0   0   1/3 0   1/3 0   1/3
      0   0   0   0   0   1/2 0   1/2 0];

A2 = [1/3 1/3 0   1/3 0   0   0   0   0
      1/4 1/4 1/4 0   1/4 0   0   0   0
      0   1/3 1/3 0   0   1/3 0   0   0
      1/4 0   0   1/4 1/4 0   1/4 0   0
      0   1/5 0   1/5 1/5 1/5 0   1/5 0
      0   0   1/4 0   1/4 1/4 0   0   1/4
      0   0   0   1/3 0   0   1/3 1/3 0
      0   0   0   0   1/4 0   1/4 1/4 1/4
      0   0   0   0   0   1/3 0   1/3 1/3];

##    1   2   3   4   5   6   7   8   9
B =  [0   0   0   0   0   1   0   0   0];


disp("start first sim...")
for i=1:60
  h=imagesc(reshape(B*(A1^i),3,3)',[0,1]);
  colorbar;
  axis("off");
  fname=sprintf("frog1/%05d.png",i);
  saveas(h, fname);
  refresh;
  disp(i)
end
disp("done")

disp("start second sim...")
for i=1:60
  h=imagesc(reshape(B*(A2^i),3,3)',[0,1]);
  colorbar;
  axis("off");
  fname=sprintf("frog2/%05d.png",i);
  saveas(h, fname);
  refresh;
  disp(i)
end
disp("done")
