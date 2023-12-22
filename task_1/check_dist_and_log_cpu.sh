#!/bin/bash

# Перевірка, чи є дистрибутив Ubuntu
if grep -q "Ubuntu" /etc/os-release; then
    echo "Дистрибутив – Ubuntu. Запис використання ЦП."
    # Запис даних про використання ЦП за останню годину у файлі cpu-usage.log
    sar -u 1 3600 > cpu-usage.log
else
    echo "Ошибка: дистрибутив не Ubuntu."
    exit 1
fi
