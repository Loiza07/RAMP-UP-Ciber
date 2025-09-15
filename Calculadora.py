#Mi primer proyecto de Python, crearemos una calculadora facil y simple.

print('Hola mundo, esta es mi primera calculadora en Python!!!')

num1 =float(input("Ingresa el primer numero: "))
num2 =float(input("Ingresa el segundo numero: "))


print("Elige la operación:")
print("1. Sumar")
print("2. Restar")
print("3. Multiplicar")
print("4. Dividir")

opcion = input("Opción: ")

if opcion == "1":
    print("Resultado:", num1 + num2)
elif opcion == "2":
    print("Resultado:", num1 - num2)
elif opcion == "3":
    print("Resultado:", num1 * num2)
elif opcion == "4":
    if num2 != 0:
        print("Resultado:", num1 / num2)
    else:
        print("Error: no se puede dividir entre 0")
else:
    print("Opción no válida")