FROM node:20-alpine

# إنشاء مجلد التطبيق
WORKDIR /app

# نسخ ملفات الحزم
COPY package*.json ./

# تثبيت dependencies
RUN npm install --production

# نسخ باقي الملفات
COPY . .

# فتح البورت
EXPOSE 8000

# تشغيل التطبيق
CMD ["node", "index.js"]
