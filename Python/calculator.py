import os
import math

operations = (
    '0. Exit',
    '1. Addition',
    '2. Subtraction',
    '3. Multiplication',
    '4. Division',
    '5. Square Root'
)


def print_menu(menu):
    frame_width_menu = max(len(max(menu, key=len)) + 4, 16)
    print('┌', '─' * (frame_width_menu - 2), '┐', sep='')
    for op in menu:
        print(f'│ {op.ljust(frame_width_menu - 4)} │')
    print('└', '─' * (frame_width_menu - 2), '┘', sep='')


def print_result(results):
    frame_width_result = max(len(results) + 4, 16)
    print('\n┌', '─' * (frame_width_result - 2), '┐', sep='')
    print('│', results.center(frame_width_result - 4), '│')
    print('└', '─' * (frame_width_result - 2), '┘', sep='')


while True:
    os.system('clear')
    print('Simple Calculator Application\n')
    print_menu(operations)

    operation = input('\nSelect a operation: ')
    os.system('clear')

    try:
        operation = int(operation)
    except ValueError:
        print('\nInvalid operation! Please enter a number between 0 and 5.')
        input('\nPress Enter to continue... ')
        os.system('clear')
        continue

    if operation == 0:
        print('\nSee you!')
        break
    elif operation == 5:
        while True:
            print(f"\n{operations[operation]}")
            first_value = input('\nFirst value: ')

            try:
                first_value = float(first_value)
                break
            except ValueError:
                print('\nInvalid input! Please enter a valid number.')

        sqrt_operation = math.sqrt(first_value)
        result = f"√{first_value} = {sqrt_operation}"
        print_result(result)

        input('\nPress Enter to continue... ')
        os.system('clear')
        continue
    if 1 <= operation <= 4:
        while True:
            print(f"\n{operations[operation]}")
            first_value = input('\nFirst value: ')

            try:
                first_value = float(first_value)
                break
            except ValueError:
                print('\nInvalid input! Please enter a valid number.')

        while True:
            second_value = input('\nSecond value: ')

            try:
                second_value = float(second_value)
                break
            except ValueError:
                print('\nInvalid input! Please enter a valid number.')

        if operation == 1:
            sum_operation = first_value + second_value
            result = f"{first_value} + {second_value} = {sum_operation}"
            print_result(result)
        elif operation == 2:
            subtract_operation = first_value - second_value
            result = f"{first_value} - {second_value} = {subtract_operation}"
            print_result(result)
        elif operation == 3:
            product_operation = first_value * second_value
            result = f"{first_value} * {second_value} = {product_operation}"
            print_result(result)
        elif operation == 4:
            if second_value != 0:
                divide_operation = first_value / second_value
                result = f"{first_value} / {second_value} = {divide_operation}"
            else:
                result = 'Division by zero is not allowed.'
            print_result(result)
    else:
        print('\nInvalid operation! Please enter a number between 0 and 5.')

    input('\nPress Enter to continue... ')
    os.system('clear')
