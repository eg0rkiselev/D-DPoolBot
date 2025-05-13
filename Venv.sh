#!/bin/bash

# Проверяем, находимся ли мы в правильной папке
if [ ! -f "botv2.py" ]; then
    echo "Ошибка: файл botv2.py не найден. Запустите этот скрипт в папке проекта."
    exit 1
fi

# Создаем виртуальную среду, если её ещё нет
if [ ! -d "venv" ]; then
    echo "Создаю виртуальную среду..."
    python3 -m venv venv
fi

# Активируем виртуальную среду
echo "Активирую виртуальную среду..."
source venv/bin/activate

# Обновляем pip и устанавливаем aiogram
echo "Обновляю pip и устанавливаю зависимости..."
pip install --upgrade pip
pip install aiogram
pip install flask
# Запускаем бота
echo "Запускаю бота..."
python botv2.py
