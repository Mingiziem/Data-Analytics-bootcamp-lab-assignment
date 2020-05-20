#No fixing error
def random_string_generator(length=12):
    import random;
    ALPHA_NUM = [chr(item) for item in list(range(97,123)) + list(range(48,58))];
    return "".join(random.sample(ALPHA_NUM, length));

def batch_string_generator(n_strings, min_len=8, max_len=12):
    import random;
    import sys;
    
    if min_len > max_len:
        return sys.exit('Incorrect min and max string lengths. Try again.');
    else:
        var_len = [min_len if min_len == max_len else random.choice(range(min_len, max_len)) for n in range(n_strings)];
        return list(map(random_string_generator, var_len));

min_len = input('Enter minimum string length: ');
max_len = input('Enter maximum string length: ');
n_strings = input('How many random strings to generate? ');

print(batch_string_generator(int(n_strings), int(min_len), int(max_len)));