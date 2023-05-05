# Prak1_Probstat2023_C_5025211159
Nama: Victor Gustinova
NRP: 5025211159

## No1
Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488.
Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran,
maka:

### a. Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan parameter yang sesuai.
Berdasarkan soal dapat diketahui distribusi yang digunakan adalah distribusi binomial dengan nilai n adalah 10 dan p adalah 0,488.

### b. Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin lakilaki?
Perhitungan dilakukan menggunakan dbinom(3,n,p) dan didapatkan hasil 0.1286265.

### c. Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki?
Probabilitas yang perlu dihitung adalah jika terjadi hanya 0, 1, atau 2 bayi berjenis kelamin laki-laki. Dihitung total probabilitas itu menggunakan sum(dbinom(0:2,n,p) dan didapatkan hasil 0.0636442.

### d. Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki?
Tiga atau lebih berarti >3 bayi berjenis kelamin laki-laki. Perlu dihitung probabilitas terjadi 3 - 10 bayi berjenis kelamin laki-laki. Probabilitas ini dihitung dengan rumus 1 - (sum(dbinom(0:2,n,p))) dan didapatkan hasil 0.9363558

### e. Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?
Nilai harapan dihitung dengan rumus n * p dan didapatkan 4.88
Nilai simpangan baku dihitung dengan rumus sqrt(n*p*(1.0-p)) dan didapatkan 1.580683

### f. Gambarkan histogram pendistribusian banyak bayi laki-laki.
Histogram pada r dibuat dengan cara menghitung densitas keluarnya suatu nilai. Oleh karena itu perlu didapatkan nilai bangkit acak terlebih dahulu dengan menggunakan rbinom. Semakin banyak data yang diberikan maka histogram akan semakin akurat. 
Bar histogram dipecah menjadi 10 dan agar berukuran proporsional density adalah TRUE dan frequency adalah FALSE. Variabel ylim dan xlim digunakan untuk mengubah angka pada kedua axis.
![Hist1](.Images/Hist1.png)
![1](.Images/No1.png)

## No2
Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik
ban dalam 20 tahun ke depan adalah 1,8.

### a. Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan distribusi dengan parameter yang sesuai.
Distribusi yang digunakan adalah distribusi poisson dengan lambda adalah 1,8.

### b. Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.
Probabilitas ini dapat dihitung dengan dpois(4,lambda) menghasilkan nilai 0.07230173. Angka probabilitas ini sangat kecil sehingga bisa dibilang merupakan peristiwa tidak biasa.

### c. Berapa peluang paling banyak 4 kematian akibat kanker tulang?
Peluang paling banyak 4 kematian berarti perlu dihitung peluang 0-4 kematian. Peluang dihitung dengan sum(dpois(0:4, lambda)) dan didapatkan nilai 0.9635933. 

### d. Berapa peluang lebih dari 4 kematian akibat kanker tulang?
Lebih dari 4 berarti kebalikan dari no2c sehingga perhitungan menjadi 1 - sum(dpois(0:4, lambda)) sehingga didapatkan nilai 0.03640666.

### e. Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?
Nilai harapan adalah nilai lambda itu sendiri yakni 1,8.
Nilai standar deviasi merupakan akar dari lambda yakni 1.341641.

### f. Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.
Menggunakan langkah yang sama dengan histogram no 1 maka didapatkan histogram seperti berikut.

### g. Gunakan simulasi untuk memeriksa hasil sebelumnya.
Dibuat suatu variabel baru bernama simulasi yang menyimpan rpois(10000, lambda). 

### h. Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda. Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.
Untuk mendapatkan jawaban yang  sama dengan pertanyaan 2d dilakukan perhitungan sum(simulasi>4) / 10000 dan didapatkan nilai 0.0373. Dibandingkan dengan jawaban 2d, yakni 0.0364, terdapat selisih sebanyak 0.0009. Selisih ini tidaklah banyak dan dapat dihitung normal.

## No3
Diketahui nilai x = 3 dan v = 10. Tentukan:

### a. Fungsi probabilitas dari distribusi Chi-Square.
Hasil perhitungan probabilitasi tersebut adalah 0.02353326, dihitung menggunakan dchisq(x,v).

### b. Histogram dari distribusi Chi-Square dengan 500 data acak.
Data acak diambil dengan d <- rpois(500, lambda) dan dibuat menjadi histogram seperti nomor sebelumnya. Berikut merupakan hasilnya.

### c. Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.
Nilai v sama dengan nilai rataan yakni 10 sedangkan nilai varian adalah 2v yakni 20.

##No4
Diketahui data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5.
Tentukan:
### a. Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan fungsi plot()).
Pertama perlu dicari data bangkitan acak rnorm(100, mean, sd). Berdasarkan keterangan yang diberikan, maka dicari x1 menggunakan floor(mean(data)) dan x2 menggunakan ceiling(mean(data)). Karena ada x1 dan x2 maka z score juga ada 2, z1 dan z2. 
Nilai z dihitung dengan rumus (x-mean(data))/sd(data). Didapatkan nilai z1 adalah -0.03240334 dan z2 adalah 0.1681271. Plot data bangkitan dibuat dengan fungsi plot() sesuai petunjuk. 
Nilai x dicari terlebih dahulu dengan seq(-4, 4, length=100) *sd + mean dilanjutkan dengan mencari nilai y menggunakan dnorm(x,mean,sd). Selanjutnya plot dapat dibuat dengan plot(x,y, type = "l", lwd = 2, axes = TRUE).

### b. Gambarkan histogram dari distribusi Normal dengan breaks 50
Karena data sudah ada, histogram tinggal perlu dibuat saja dengan hist(data, breaks = 50).

### c. Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.
Nilai varian dapat dicari menggunakan fungsi var. Dihitung var(data) dan didapatkan nilai 24.86792


##No5
Kerjakanlah menggunakan distribusi T-Student.
### a. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan?
Digunakan pt(-2.34,df) dengan df adalah 6 sehingga menghasilkan 0.02892197.

### b. Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan?
Karena "lebih dari", digunakan lower.tail=FALSE sehingga perhitungan menjadi pt(1.34,df,lower.tail=FALSE) dengan df adalah 6 sehingga menghasilkan 0.09666729. 

### c. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan?
Pada perhitungan ini terdapat dua tail yang berbeda. Kurang dari -1.23 menggunakan lower.tail dan lebih besar dari 1,23 tidak menggunakan lower.tail. 
Perhitungan akan menjadi pt(-1.23,df,lower.tail = TRUE) + pt(1.23,df,lower.tail = FALSE) dengan df=3 menghasilkan 0.306356.

### d. Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan?
Probabilitas ini dapat dihitung dengan mencari selisih kedua probabilitas, -0,94 dan 0,94. Perhitungan yang dilakukan adalah pt(0.94,df) - pt(-0.94,df) dengan df = 14 sehingga menghasilkan 0.6368457

### e. Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?
T-score dihitung dengan qt. Untuk p=0,0333 dan df = 5 maka qt(0.0333, df) adalah -2.337342.

### f. Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?
Karena disebelah kana t-score, lower tail adalah false. Perhitungan menjadi qt(0.125, df, lower.tail = FALSE) dengan df=25 sehingga bernilai 1.177716.

### g. Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut?
Jika menggunakan dua nilai maka perhitungan dinamakan two-tailed test.  Perhitungan akan menghasilkan 2 nilai t-score dan dilakukan seperti berikut 

qt(0.75/2,df, lower.tail = TRUE) dan qt(0.75/2,df, lower.tail = FALSE) sehihingga didapatkan nilai -0.3267364 dan 0.3267364. Hal ini berarti tscore akan bernilai lebih signifikan berada di antara -0.3267364 dan 0.3267364. 


### h. Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut?
Menggunakan cara yang sama dengan 5g yakni two tailed test. Dilakukan perhitungan qt(0.0333/2,df, lower.tail = TRUE) dan qt(0.0333/2,df, lower.tail = FALSE) sehingga didapatkan nilai -2.264201 dan 2.264201. 
T-score akan bernilai lebih signifikan jika kurang dari -2.264201 atau lebih dari 2.264201.
