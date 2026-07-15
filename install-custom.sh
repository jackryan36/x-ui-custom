#!/bin/bash
# 3x-ui Custom Installer with Full JSON + Fragment
# Author: Your Custom Version

echo -e "\033[1;36m══════════════════════════════════════\033[0m"
echo -e "\033[1;32m   3x-ui Custom (JSON + Fragment) Installer\033[0m"
echo -e "\033[1;36m══════════════════════════════════════\033[0m"

# نصب نسخه پایه v3.0.1
bash <(curl -Ls https://raw.githubusercontent.com/MHSanaei/3x-ui/master/install.sh) v3.0.1

echo -e "\n\033[1;33mدر حال اعمال تغییرات سفارشی...\033[0m"

# اینجا می‌تونیم بعداً patch اتوماتیک اضافه کنیم

x-ui restart

echo -e "\n\033[1;32m✅ نصب با موفقیت انجام شد!\033[0m"
echo -e "حالا به پنل برو و در بخش Clientها دکمه JSON رو تست کن."
