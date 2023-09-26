name = input('Enter your name: ')
age = input('Enter your age: ')

if name and age:
    print(f"Your name is {name}")
    print(f"Your age is {age}")
    print(f"Your name reversed is {name[::-1]}")

    if ' ' in name:
        print('Your name contains space(s).')
        print(f"Your name has {len(name)-1} letters.")
    else:
        print('Your name does NOT contain space(s).')
        print(f"Your name has {len(name)} letters.")

    print(f'The first letter of your name is "{name[0]}"')
    print(f'The last letter of your name is "{name[-1]}"')
else:
    print('Please fill out all fields.')
