from datetime import datetime

current_year = datetime.now().year
birth_year1 = int(input("Enter your birth year: "))
#birth_month = int(input("Enter your birth Month: "))
age = current_year - birth_year1

print("Your age is: ", age)
