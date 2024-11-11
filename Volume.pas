program VolumeBentukDasar;
uses crt, math;

var
  pilihan: integer;
  sisi, panjang, lebar, tinggi, jariJari, tinggiSilinder, volume: real;

begin
  clrscr;
  writeln('Program Menghitung Volume Bentuk Dasar');
  writeln('1. Kubus');
  writeln('2. Balok');
  writeln('3. Silinder');
  writeln('4. Bola');
  writeln('Pilih bentuk (1-4): ');
  readln(pilihan);

  clrscr;
  case pilihan of
    1: begin
         writeln('Menghitung Volume Kubus');
         write('Masukkan panjang sisi kubus : ');
         readln(sisi);
         volume := power(sisi, 3);
         writeln('Volume kubus  : ', volume:0:2);
       end;
    2: begin
         writeln('Menghitung Volume Balok');
         write('Masukkan panjang: ');
         readln(panjang);
         write('Masukkan lebar  : ');
         readln(lebar);
         write('Masukkan tinggi : ');
         readln(tinggi);
         volume := panjang * lebar * tinggi;
         writeln('Volume balok    : ', volume:0:2);
       end;
    3: begin
         writeln('Menghitung Volume Silinder');
         write('Masukkan jari-jari alas : ');
         readln(jariJari);
         write('Masukkan tinggi silinder: ');
         readln(tinggiSilinder);
         volume := Pi * power(jariJari, 2) * tinggiSilinder;
         writeln('Volume silinder         : ', volume:0:2);
       end;
    4: begin
         writeln('Menghitung Volume Bola');
         write('Masukkan jari-jari bola: ');
         readln(jariJari);
         volume := (4/3) * Pi * power(jariJari, 3);
         writeln('Volume bola: ', volume:0:2);
       end;
  else
    writeln('Pilihan tidak valid');
  end;

  readln;
end.
