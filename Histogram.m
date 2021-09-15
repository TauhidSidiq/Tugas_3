citra_a = [1 3 4 5; 1 2 1 1; 3 3 4 7; 2 1 1 7]

H = zeros(1,8)

[n m] = size(citra_a);
for x = 1:n
    for y = 1:m
        ii = citra_a(x,y);
        H(ii) = H(ii)+1;
    end
end
figure(1)
bar(0:7,H);

%Distribusi kumulatif

for w = 1: 8
    c(w) = sum(H(1:w));
end
figure(2)
bar(0:7,c(w));

%Distribusi Equivalen
for k = 1: 8
    wb(k) = round(c(k)*7/(m*n));
end
c = citra_a;
[n m] = size(c);

for x = 1:n
    for y = 1:m
        ii = c(x,y);
        c(x,y) = wb(ii+1);
    end
end
figure(3)
bar(0:7,k);