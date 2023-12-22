#!/bin/bash

# Проверка, является ли дистрибутив Ubuntu
if grep -q "Ubuntu" /etc/os-release; then
    echo "Дистрибутив - Ubuntu. Запись использования ЦП."
    # Запись данных об использовании ЦП за последний час в файл cpu-usage.log
    # Убедитесь, что установлен пакет sysstat для использования команды sar
    sar -u 1 3600 > cpu-usage.log
else
    echo "Ошибка: дистрибутив не Ubuntu."
    exit 1
fi
