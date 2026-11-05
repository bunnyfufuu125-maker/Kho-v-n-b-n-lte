#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
command -v npm >/dev/null || { echo "Chưa cài Node.js. Hãy tải tại https://nodejs.org rồi chạy lại."; exit 1; }
[ -d node_modules ] || { echo "Đang tải thư viện lần đầu, vui lòng đợi..."; npm install; }
npm start
