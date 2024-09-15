# Gunakan image Node.js sebagai base image
FROM node:20

# Set working directory di dalam container
WORKDIR /usr/src/app

# Salin package.json dan package-lock.json ke dalam working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin seluruh codebase ke dalam working directory
COPY . .

# Expose port yang digunakan oleh Vite
EXPOSE 5173

# Jalankan aplikasi dengan script 'dev'
CMD ["npm", "run", "dev"]
