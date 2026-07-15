#!/bin/bash
# 3x-ui Custom Installer with Full JSON + Fragment Feature

echo -e "\033[36m══════════════════════════════════════\033[0m"
echo -e "\033[32m   3x-ui Custom (JSON + Fragment) Installer\033[0m"
echo -e "\033[36m══════════════════════════════════════\033[0m"

# نصب نسخه پایه
bash <(curl -Ls https://raw.githubusercontent.com/MHSanaei/3x-ui/master/install.sh) v3.0.1

echo -e "\n\033[33mدر حال اعمال تغییرات سفارشی...\033[0m"

cd /usr/local/x-ui

# دانلود فایل به‌روز شده از repo خودت
curl -L -o frontend/src/pages/inbounds/InboundInfoModal.vue https://raw.githubusercontent.com/jackryan36/x-ui-custom/custom-json/frontend/src/pages/inbounds/InboundInfoModal.vue

# Build Frontend
echo "Building Frontend..."
cd frontend
npm install --silent
npm run build
cd ..

# Build Go
echo "Building Go binary..."
go build -o x-ui main.go

# جایگزینی
cp x-ui /usr/local/x-ui/x-ui

echo -e "\n\033[32m✅ نصب و اعمال تغییرات با موفقیت انجام شد!\033[0m"
echo -e "دکمه \"Full Client Config JSON + Fragment\" اضافه شد."

x-ui restart

echo -e "\n\033[36mلینک پنل: http://YOUR_SERVER_IP:2053/panel\033[0m"
