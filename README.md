# lab-riscv-asm

Отчет по выполнению первой лабораторной работы RISC-V asm

## Вариант №2

Найти индекс максимального элемента массива. (N = 4, M = 3) 

## Результаты работы

* **lab1.S** - программа на RISC-V ASM
* **lab1.c** - программа на Си
* **lab1.dump** - дамп-файл программы на Си

## Сборка

* **Настройка рабочего окружения:** PATH=/home/parallels/riscv-tools/riscv-gcc/bin:$PATH
* **Компиляция:** riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 lab1.c -o lab1.elf
* **Формирование dump фаила:** riscv64-unknown-elf-objdump -D lab1.elf > lab1.dump
