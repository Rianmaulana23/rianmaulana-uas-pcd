img = imread('D:\MATERI KULIAH\CitraDigital\UAS\jarak.jpg');
[tinggi, lebar] = size(img);

ambang = 210
biner = zeros(tinggi, lebar);
for baris=1 : tinggi
  for kolom=1 : lebar
    if img(baris, kolom) >= ambang
      biner(baris, kolom) = 0;
    else
      biner(baris, kolom) = 1;
    end
  end
end

imshow(biner);