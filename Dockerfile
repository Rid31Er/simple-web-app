# Menggunakan Python versi 3.8 sebagai base image
FROM python:3.8-slim

# Menetapkan direktori kerja
WORKDIR /app

# Menyalin file requirements.txt dan menginstal dependensi
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Menyalin sisa kode aplikasi ke dalam container
COPY . /app/

# Menjalankan aplikasi Flask
CMD ["python", "app.py"]
