clear; clc; close all;

%random data
X = randn(1000,2);  
figure;
plot(X(:,1),X(:,2),'.');       %plot of data without clustering
title 'Randomly Generated Data';

n = 5; %number of clusters, max of 7

%bank of colors
color = ["r.",'b.','g.','c.','m.','y.','k.'];

[idx,C] = kmeans(X,n); 
%idx is n-by-1 vector with cluster indices for each point
%C is cluster centroid locations with x and y coordinates
figure;

%loop generating clusters
for i = 1:n
    plot(X(idx==i,1),X(idx==i,2),color(i),'MarkerSize',12) 
    hold on
end

plot(C(:,1),C(:,2),'kx','MarkerSize',15,'LineWidth',3)
title 'Cluster Assignments and Centroids'
hold off


