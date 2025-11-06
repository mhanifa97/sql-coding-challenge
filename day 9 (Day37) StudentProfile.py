# Day 37 – Student Profile Creator

# 1. Create variables for student information
student_name = "Sheik Mohamed"
student_age = 20
favourite_subjects = ["Maths", "Physics", "Computer Science"]

# 2. Display student information
print("----- Student Profile -----")
print("Name       :", student_name)
print("Age        :", student_age)
print("Subjects   :", favourite_subjects)

# 3. Ask the student to enter a new favourite subject
new_subject = input("Enter your favourite subject to add: ")

# 4. Add to the list
favourite_subjects.append(new_subject)

# 5. Display updated subjects
print("\n----- Updated Subjects List -----")
print(favourite_subjects)
