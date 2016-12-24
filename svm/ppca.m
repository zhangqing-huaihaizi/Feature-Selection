function [chosen] = ppca(vec,feature_dim)

x=vec(:,1:end-1);
[coeff,score,latent] = princomp(x);
cumsum(latent)./sum(latent);
chosen=score(:,1:feature_dim);
