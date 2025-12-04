<p align="center">
  <img src="https://paste.c-net.org/ClarkeWiener" width="900"><br><br>

  <img src="https://img.shields.io/badge/version-1.0.3-cyan?style=for-the-badge&logo=github" /> 
  <img src="https://img.shields.io/badge/bash-5.2+-yellow?style=for-the-badge&logo=gnu-bash&logoColor=white" /> 
  <img src="https://img.shields.io/badge/termux-0.118+-green?style=for-the-badge&logo=android&logoColor=white" /> <br> 

  <img src="https://img.shields.io/github/stars/Bayu12345677/BashAbstrak-Obfuscate?style=for-the-badge&logo=starship&logoColor=white" /> 
  <img src="https://img.shields.io/github/forks/Bayu12345677/BashAbstrak-Obfuscate?style=for-the-badge&logo=git&logoColor=white" /> 
  <img src="https://img.shields.io/badge/Obfuscator-Bash_Abstrak-blueviolet?style=for-the-badge&logo=gnu" /><br><br>

  <img src="https://img.shields.io/static/v1?label=Sec&color=green&message=Pyramid+DOM+Net&logo=dotnet&logoColor=white&style=for-the-badge">
  <img src="https://img.shields.io/static/v1?label=safe&color=blue&message=Pyramid+Filter&logo=gnuprivacyguard&logoColor=white&style=for-the-badge"><br>
  <img src="https://img.shields.io/static/v1?label=Author&color=yellow&message=Polygon&logo=stackhawk&logoColor=white&style=for-the-badge">
  <br><br>
</p>

<h2>📌 Apa itu Bash-Abstrak?</h2>

<p>
<b>Bash-Abstrak</b> adalah closed-source obfuscator untuk Bash yang dirancang untuk memberikan perlindungan ekstra pada script tanpa mengubah cara pemakaiannya.<br><br>
Obfuscator ini membangun ulang struktur script menjadi bentuk pseudo-OOP yang kompleks, acak, dan penuh lapisan dummy logic. Tujuannya adalah membuat script sangat sulit dibaca, dianalisis, ataupun direverse.
</p>

<br>

<table>
  <tr>
    <th>Fitur</th>
    <th>Status</th>
  </tr>
  <tr>
    <td>Melindungi source code dari pembacaan manusia</td>
    <td>✔️</td>
  </tr>
  <tr>
    <td>Mengamankan script dari reverse engineering dasar</td>
    <td>✔️</td>
  </tr>
  <tr>
    <td>Anti penyisipan perintah berbahaya (Dangerous Command Filter)</td>
    <td>✔️</td>
  </tr>
  <tr>
    <td>Anti-debug, anti-scan, anti-runtime tracing</td>
    <td>✔️</td>
  </tr>
  <tr>
    <td>Closed-source & hardened abstraction layer</td>
    <td>✔️</td>
  </tr>
</table>

<br>

# ⚙️ Cara Kerja (How It Works)

Bash-Abstrak bekerja menggunakan beberapa lapisan algoritma obfuscation modern yang disesuaikan khusus untuk Bash.  
Berbeda dengan obfuscator tradisional (yang hanya menyembunyikan variabel atau memampatkan kode), Bash-Abstrak **meregenerasi struktur script menjadi arsitektur baru**.

Berikut komponen utamanya:

---

## 🔹 1. Hard-Obfuscate OOP-Like Structure
Script akan dibangun ulang menjadi struktur pseudo-OOP:

- kelas pseudo `__ABSTRACT_CLASS__`
- metode dengan nama acak
- pemanggilan fungsi melalui indirect-call
- shadow-layer / ghost-layer
- blok kode yang terlihat valid, tapi sebenarnya dummy

Tujuannya:  
**membuat script tampak seperti program OOP yang berantakan sehingga reversing menjadi sangat sulit.**

---

## 🔹 2. “Where Are You Dummy” Layer
Lapisan kebingungan alur eksekusi:

- blok kosong acak
- goto-simulation (melompat antar label semu)
- variabel mirror
- flow logic palsu
- ghost logic yang tidak pernah digunakan

Layer ini membuat analyzer & beautifier menghasilkan output yang semakin kacau.

---

## 🔹 3. Anti-Debug & Anti-Traffic Scan (Pyramid DOM Security)
Meliputi:

- deteksi debugger (strace, ltrace, ptrace, ps tracing)
- deteksi intersepsi melalui pipe/redirection abnormal
- random runtime behavior
- anti sniffing pada environment Termux & Linux

Jika terdeteksi debugging:  
script **akan terminate** atau masuk **dummy execution mode**.

---

## 🔹 4. Built-in Dangerous Command Filter
Sebelum proses obfuscate dimulai, engine akan menolak code yang mengandung perintah atau kode berbahaya

Tujuannya agar tool ini **tidak bisa dipakai untuk membuat malware**.
---
# ⚠️ Disclaimer

<p>
Bash-Abstrak dibuat untuk tujuan edukasi, keamanan, dan perlindungan script pribadi.<br>
<strong>Dilarang keras</strong> menggunakan tool ini untuk tindakan ilegal, merusak, atau aktivitas berbahaya lainnya.<br>
Segala bentuk penyalahgunaan sepenuhnya menjadi tanggung jawab pengguna dan tools akan di hapus jika penyalahgunaan berlanjut.
</p>

<details open>
  <summary><b>🔧 Cara Install (Termux ONLY)</b></summary>
  <br>
  
```bash
apt-get update
apt-get upgrade -y
apt-get install git make python ruby nodejs -y
git clone https://github.com/Bayu12345677/BashAbstrak-Obfuscate
cd BashAbstrak-Obfuscate
make install
make run
```
</details>

<h2>🌐 Sosial Media</h2>

<p align="left">

<a href="https://t.me/ScriptingCli21" target="_blank">
  <img src="https://img.shields.io/badge/Telegram-Contact-blue?style=for-the-badge&logo=telegram&logoColor=white" />
</a>

<a href="https://www.youtube.com/@pejuangkentang4401" target="_blank">
  <img src="https://img.shields.io/badge/YouTube-Pejuang%20Kentang-red?style=for-the-badge&logo=youtube&logoColor=white" />
</a>

</p><br><br>

<code>@Poweredby Pejuang Kentang | Polygon</code>
