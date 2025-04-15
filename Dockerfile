# Gunakan image Python
FROM python:3.8-slim

# Install dependencies
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Salin source code
COPY . .

# Expose port 5000
EXPOSE 5000

# Jalankan aplikasi
CMD ["python", "app.py"]
