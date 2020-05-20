# Program make a simple calculator


# This function adds two numbers

def add(x, y):
    
    return x + y


# This function subtracts two numbers

def subtract(x, y):
    
    return x - y 

print("Select operation.")

print("1.Add")

print("2.Subtract")

while True:
   
 # Take input from the user
    
   choice = input("*****Enter choice 1 or 2**** ")

    
# Check if choice is one of the four options
    
   if choice in ('1', '2'):
        
        num1 = int(input("Enter first number: "))
        
        num2 = int(input("Enter second number: "))

        
   if choice == '1':
            
       print(num1, "+", num2, "=", add(num1, num2))

  
   elif choice == '2':
           
        print(num1, "-", num2, "=", subtract(num1, num2))

        
        break
    
   else:
        
        print("Invalid Input")
