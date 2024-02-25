<img src="utils/printf_banner.png" alt="logo_ft-printf" style="width: 100%">
<img src="utils/printf_logo.png" alt="logo_ft-printf" style="width: 100%">

[ENGLISH VERSION](#english-version)

# Sujet
Reproduire la (célèbre) fonction `printf()`, en prenant en compte les conversions suivantes :

`%c` : Imprimer un seul caractère. <br>
`%s` : Imprimer une chaîne de caractères. <br>
`%p` : Imprimer un pointeur void * en format hexadécimal. <br>
`%d` : Imprimer un nombre décimal (base 10). <br>
`%i` : Imprimer un entier en base 10. <br>
`%u` : Imprimer un nombre décimal non signé (base 10). <br>
`%x` : Imprimer un nombre en format hexadécimal en lettres minuscules (base 16). <br>
`%X` : Imprimer un nombre en format hexadécimal en lettres majuscules (base 16). <br>
`%%` : Imprimer un signe de pourcentage. <br>

<br>

## Protoype

**```int ft_printf(const char *format, ...)```**

Le programme ft_printf est une implémentation simplifiée de la fonction printf en langage C. Il permet d’afficher du texte formaté en utilisant divers spécificateurs de format, tels que %d, %s, %c, et d’autres. Cette documentation vous expliquera comment utiliser et comprendre le fonctionnement de ft_printf.

<br>

#### Fonctions principales

Le programme ft_printf est composé de plusieurs fonctions, dont voici les principales :

```int ft_printf(const char *format, ...)```

Cette fonction principale est l’équivalent de la fonction printf. Elle prend une chaîne de format en premier argument (comme "Hello, %s!") et des arguments supplémentaires en fonction des spécificateurs de format dans la chaîne. Elle renvoie le nombre de caractères écrits.

```static void check_next(char c, va_list args, int *count)```

Cette fonction est utilisée pour gérer les spécificateurs de format individuels. Elle prend en charge les spécificateurs de format tels que %c, %s, %d, %i, %u, %x, %X, et %p. Elle renvoie le nombre de caractères écrits pour ce spécificateur.

#### Fonctions auxiliaires

Le programme ft_printf utilise également plusieurs fonctions auxiliaires pour accomplir sa tâche, telles que print_c, print_s, print_p et print_n. Elles sont utilisées pour l’affichage de caractères, de chaînes, de nombres, de pointeurs et de bases différentes.

<br>

#### Comment ça fonctionne

	1.	Lorsque vous appelez ft_printf avec une chaîne de format, il parcourt la chaîne caractère par caractère.
	2.	Lorsqu’il rencontre un caractère %, il analyse le caractère suivant pour déterminer le spécificateur de format.
	3.	En fonction du spécificateur de format rencontré, ft_printf appelle la fonction appropriée (par exemple, print_c pour %c, print_s pour %s, etc.) avec les arguments correspondants.
	4.	Ces fonctions auxiliaires sont responsables de formater et d’afficher correctement les données en utilisant write pour l’affichage.
	5.	Une fois que chaque spécificateur de format a été géré, ft_printf continue de parcourir la chaîne de format jusqu’à ce qu’il ait traité tous les caractères.
	6.	En fin de compte, ft_printf renvoie le nombre total de caractères écrits.


## Résultat de Moulinette
|          Note          |          Tests          |
|:----------------------:|:-----------------------:|
| ![](./utils/grade.png) | ![](./utils/detail.png) |

---

# ENGLISH VERSION

# Topic
Reproduce the (famous) `printf()` function, taking into account the following conversions:

`%c`: Print a single character. <br>
`%s`: Print a string of characters. <br>
`%p`: Print a void pointer in hexadecimal format. <br>
`%d`: Print a decimal number (base 10). <br>
`%i`: Print an integer in base 10. <br>
`%u`: Print an unsigned decimal number (base 10). <br>
`%x`: Print a number in lowercase hexadecimal format (base 16). <br>
`%X`: Print a number in uppercase hexadecimal format (base 16). <br>
`%%`: Print a percentage sign. <br>

<br>

## Prototype

**```int ft_printf(const char *format, ...)```**

The ft_printf program is a simplified implementation of the C language printf function. It allows for formatted text to be displayed using various format specifiers, such as %d, %s, %c, and others. This documentation will explain how to use and understand the workings of ft_printf.

<br>

#### Main Functions

The ft_printf program consists of several functions, here are the main ones:

```int ft_printf(const char *format, ...)```

This main function is the equivalent of the printf function. It takes a format string as its first argument (like "Hello, %s!") and additional arguments depending on the format specifiers in the string. It returns the number of characters written.

```static void check_next(char c, va_list args, int *count)```

This function is used to handle individual format specifiers. It supports format specifiers such as %c, %s, %d, %i, %u, %x, %X, and %p. It returns the number of characters written for that specifier.

#### Auxiliary Functions

The ft_printf program also utilizes several auxiliary functions to accomplish its task, such as print_c, print_s, print_p, and print_n. They are used for displaying characters, strings, numbers, pointers, and different bases.

<br>

#### How It Works

	1.	When you call ft_printf with a format string, it traverses the string character by character.
	2.	When it encounters a % character, it analyzes the following character to determine the format specifier.
	3.	Depending on the encountered format specifier, ft_printf calls the appropriate function (e.g., print_c for %c, print_s for %s, etc.) with the corresponding arguments.
	4.	These auxiliary functions are responsible for formatting and correctly displaying the data using write for display.
	5.	After each format specifier has been handled, ft_printf continues to traverse the format string until it has processed all characters.
	6.	Ultimately, ft_printf returns the total number of characters written.


## Moulinette Result
|          Grade          |          Tests          |
|:----------------------:|:-----------------------:|
| ![](./utils/grade.png) | ![](./utils/detail.png) |


## Licence
This work is published under the terms of **[42 Unlicense](./LICENSE)**.
