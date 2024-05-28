# Microprocessor Interfacing Embedded System

## Description

This repository is fully coded and made by me that contains Assembly language programs designed to demonstrate various operations such as generating arithmetic series, summing elements of an array, and more. The primary focus is on building a series of numbers and computing their summation, showcasing fundamental assembly programming techniques using the EMU8086 emulator. These programs serve as educational examples for understanding the basics of assembly language and the Intel 8086 instruction set.

## Features

- **Generate Arithmetic Series:** Programs to build arithmetic series like 1, 3, 5, 7, 9, ..., up to the nth position as specified by the user.
- **Sum Calculation:** Calculate the sum of the elements in the series and store it in a variable.
- **User Input Handling:** Read and process user inputs to dynamically build series and perform calculations.
- **Basic I/O Operations:** Demonstrates basic input and output operations using interrupts in Assembly.
- **Educational Focus:** Step-by-step examples to help learners grasp assembly language programming concepts.

## Getting Started

### Prerequisites

To get started with these programs, you will need:

- **EMU8086 Emulator:** Ensure you have the EMU8086 emulator installed to assemble and run these programs. You can download it from [here](https://emu8086-microprocessor-emulator.en.softonic.com/).

### Running the Programs

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/assembly-series-sum.git
   cd assembly-series-sum
   ```

2. **Open EMU8086:**
   - Launch the EMU8086 emulator.
   - Load the `.asm` files from the cloned repository.
   - Assemble the code by clicking on the "Assemble" button.
   - Run the assembled code by clicking on the "Run" button.

3. **Input Handling:**
   - Follow the on-screen instructions to input the required values (e.g., the value of "n" for the series length).

### Example Program

Below is an example program to generate an arithmetic series up to the nth position and calculate the sum of the series:

```assembly
org 100h

mov ah, 9
mov dx, offset msg1
int 21h

mov ah, 1
int 21h
sub al, 48  ; Convert ASCII to numeric
mov n, al

lea si, arr
mov [si], 1
mov bl, 2
dec al       ; n = n - 1
mov ah, 0    ; clear AH
mov dx, ax   ; move AX to DX
mov cx, dx   ; initialize loop counter

loop1:
    mov al, [si]
    add al, bl
    inc si
    mov [si], al
    loop loop1

; Calculate the sum of the series
mov si, offset arr
mov sum, 0   ; Initialize sum to 0
mov cx, n    ; Set loop counter to n

calc_sum:
    mov al, [si]
    add sum, al
    inc si
    loop calc_sum

ret

msg1 db "Enter a number: $"
n db 0
arr db 9 dup(0)
sum db 0  ; Variable to store the sum of the series
```

## Repository Structure

- `src/` - Directory containing all the `.asm` source files.
- `README.md` - This file, providing an overview and instructions.

## Contributions

Contributions are welcome! Please feel free to submit a Pull Request if you have any improvements or additional examples.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or feedback, feel free to reach out via GitHub Issues or contact me at [smifahim@gmail.com].

---

Happy coding!
```
