def addition(num1, num2):
    return num1 + num2

def subtraction(num1, num2):
    return num1 - num2

def division(num1, num2):
    return num1 / num2

def multiplication(num1, num2):
    return num1 * num2

def main():
    print("This is a simple calculator program.\n\nPlease choose from the below options:\n\t1. Addition (a)\n\t2. Subtraction (s)\n\t3. Division (d)\n\t4. Multiplication (m)\n")

    choice = input("Enter your choice: ")

    num1 = int(input("Enter the first number: "))

    num2 = int(input("Enter the second number: "))

    if choice == 'a':
        result = addition(num1, num2)
        print("\nThe sum of " + str(num1) + " and " + str(num2) + " is " + str(result))

    if choice == 's':
        result = subtraction(num1, num2)
        print("\nThe difference between " + str(num1) + " and " + str(num2) + " is " + str(result))

    if choice == 'd':
        result = division(num1, num2)
        print("\nThe quotient of " + str(num1) + " and " + str(num2) + " is " + str(result))

if __name__ == '__main__':
    main()

