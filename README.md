# Selamat Datang Di :
## Project UAS Pengantar Cloud Computing

**Note:** 
*Bacalah instruksi dengan seksama sebelum mengerjakan :*
*Referensi Materi ini bisa anda baca di LMS ataupun sumber lain*

### Apa yang anda butuhkan :
- Akun github
- Akun dockerhub
- Text Editor (Visual Studio Code recommended)

### Apa yang anda kerjakan :
- Download source code ini dengan meng klik pada link berikut [https://github.com/global-institute/UAS-PCCKS-2022.git](https://github.com/global-institute/UAS-PCCKS-2022/archive/refs/heads/main.zip)
- Buat repo baru di github anda dengan nama repo "UAS-PCCKS-2022"
- Clone repository yang sudah anda fork ke local pc anda
  - `$ git clone [url-git-anda.git]`
- Ubah beberapa hal berikut :
  - Ubah kata **[change me]** dengan indentitas anda, pada file berikut : 
   - **Dockerfile** : `Sesuaikan instruksi : LABEL`
   - **index.html** di forder **html** : `Ganti [change me] di line : 76 dan 172-175`
- Buat **Access Token** di dockerhub, untuk dihubungkan dengan **github action**
- Setting repository github, dan tambahkan secret yang berisi _dockerhub Access Token_
  - `Settings -> Secrets -> Actions -> New Repository Secret`
- Buat file yang berlokasi di folder **.github/workflows/actions-workflow.yml**
- Ubah dan sesuaikan _tag_, _repository_, _secrets_ pada file **actions-workflow.yml** 
  - `sesuaikan [change me] dengan repository dockerhub anda masing-masing :`
  - `docker build -t dockerhub_username/uas-pccks:latest -f Dockerfile .`
  - `docker login -u ${{secrets.[dockerhub_username]}} -p ${{secrets.[dockerhub_AccessToken]}} && docker push dockerhub_username/image_name:latest`
- Jika semua persiapan sudah selesai, silahkan push ke repository masing-masing
  - `git add .`
  - `git commit -m "commit message"`
  - `git push origin main`
- Cek menu Action pada Github anda, pastikan tidak ada error
- Jika github action berhasil, cek dockerhub anda seharusnya ada image baru dengan nama **uas-pccks:latest**
- Coba jalankan docker image yang anda buat di local docker machine ataupun docker playground
  - `docker run -itd -p8080:80 dockerhub_username/docker_image`
- dan buka web browser dengan port 8080, apakah muncul halaman web ?

### Bagaimana Penilaiannya :
Pada Assignment Final Test (UAS) di LMS, Kirimkan :
1. Link Repository Github
2. Link Image Docker
