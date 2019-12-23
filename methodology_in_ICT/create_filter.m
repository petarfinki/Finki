function filter = create_filter(nx,ny,d0,d1)

filter = ones(nx,ny);

for i = 0:nx-1,
            for j = 0:ny-1
                 dist= sqrt((i-nx/2)^2 + (j-ny/2)^2);
                 filter(i+1,j+1) = exp(-dist^2/(2*(d1^2))).*(1.0-exp(-dist^2/(2*(d0^2))));
            end
end

filter(nx/2+1,ny/2+1)=1;
end