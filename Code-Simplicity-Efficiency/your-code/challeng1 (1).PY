# Import random libraries
import math
import random

def ask_operation ():
    num1 = input('Please choose your first number (zero to five): ');
    opr = input('What do you want to do? plus or minus: ');
    num2 = input('Please choose your second number (zero to five): ');
    return (num1, opr, num2);

def check_number_input (num):
    VALID_NUMBERS = ['zero', 'one', 'two', 'three', 'four', 'five'];
    return num in VALID_NUMBERS;

 
def check_operation_input (opr):
    VALID_OPERATIONS = ['minus', 'plus'];
    return opr in VALID_OPERATIONS;

def check_inputs (num1, opr, num2):
    is_num1_valid = check_number_input(num1);
    is_opr_valid = check_operation_input(opr);
    is_num2_valid = check_number_input(num2);  
    return is_num1_valid and is_opr_valid and is_num2_valid;

def calculation (num1, opr, num2):
    NUMBERS_DICT = {'zero': '0', 'one': '1', 'two': '2', 'three': '3', 'four': '4', 'five': '5'};
    OPERATION_DICT = {'minus': '-', 'plus': '+'};
    return eval("{} {} {}".format(NUMBERS_DICT[num1], OPERATION_DICT[opr], NUMBERS_DICT[num2]));

def find_str_res (num_res):
    NUMBERS_DICT = {'0': 'zero', '1': 'one', '2': 'two', '3': 'three', '4': 'four', 
                    '5': 'five', '6': 'six', '7': 'seven', '8': 'eight', '9': 'nine', '10': 'ten'};
    return NUMBERS_DICT[str(num_res)] if num_res >= 0 else "negative {}".format(NUMBERS_DICT[str(num_res)[-1]])

def dumb_calculation ():
    print('Welcome to this calculator!');
    print('It can add and subtract whole numbers from zero to five');

    num1, opr, num2 = ask_operation();
    valid_inputs = check_inputs(num1, opr, num2);

    if not (valid_inputs):
        print("I am not able to answer this question. Check your input.");
    else:
        num_res = calculation(num1, opr, num2);
        res = find_str_res(num_res);
        print("{} {} {} equals {}".format(num1, opr, num2, res));

    print("Thanks for using this calculator, goodbye :)")


dumb_calculation();
 