# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory untuk container
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menentukan environment agar berjalan dalam production mode
# dan menggunakan item-db sebagai host database
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port 8080 untuk aplikasi
EXPOSE 8080

# Menjalankan server dengan perintah npm start saat container diluncurkan
CMD ["npm", "start"]
