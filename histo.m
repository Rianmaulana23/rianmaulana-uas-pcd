function histo(Img)
  
  [jum_baris, jum_kolom] = size (Img);
  Img = double(Img);
  
  Histog = zeros(256, 1);
  for baris=1 : jum_baris
    for kolom=1 : jum_kolom
      Histog(Img(baris, kolom)+1) = ...
          Histog(Img(baris, kolom)+1) + 1;
    end
  end
  
  Horis = (0:255)';
  bar(Horis, Histog);