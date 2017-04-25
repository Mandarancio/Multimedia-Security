load hashes.mat
distances = []
for i=1:columns(hashes)
  for j=i+1:columns(hashes)
    distances(end+1) = ErrorProbability(cell2mat(hashes(i)),cell2mat(hashes(j)));
  endfor
endfor

hist(distances, 59,1);
xlabel('P_b');
ylabel('Normed Occurency');