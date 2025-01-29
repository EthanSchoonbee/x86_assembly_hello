# 🚀 x86 Assembly Hello World

<div align="center">
  
![Assembly Language](https://img.shields.io/badge/Assembly-x86-red)
![NASM](https://img.shields.io/badge/NASM-2.16.01-blue)
![Platform](https://img.shields.io/badge/Platform-Linux-yellow)
![License](https://img.shields.io/badge/License-MIT-green)

</div>

> 🖥️ A journey into the fascinating world of low-level programming through a classic "Hello World" implementation in x86 assembly.

<div align="center">
  <img src="https://raw.githubusercontent.com/github/explore/e495457f5ff28c343f9e422f8e3cf80fd3e80890/topics/assembly/assembly.png" width="150px" alt="Assembly Logo">
</div>

## 🧔🏻 Author

**Ethan Schoonbee**
- 💻 Graduate Software Developer

<div style="display: flex; align-items: center;">
  <div align="center">
    <img src="https://github.com/user-attachments/assets/d4118767-1bbc-46f0-af72-de206052503f" alt="whitespace_logo" width="150" height="150">
    </div>
    <div align="center">
    <img src="https://github.com/user-attachments/assets/c3d3b90b-87e0-4844-8657-4e27164b6c59" alt="whitespace_logo" width="200" height="20">
  </div>
</div>
  
## 🎯 Project Overview

This project demonstrates the fundamental building blocks of assembly programming, including:
- 📦 Data section management
- 🔄 System calls implementation
- 🎛️ Register manipulation
- 💾 Memory allocation
- 🚪 Program exit handling

## 💡 Why Assembly?

I embarked on this journey to peek behind the curtain of high-level programming and understand the raw mechanics of computer operations. Assembly programming unveils:
- ⚡ Direct hardware interaction
- 🧠 Memory management intricacies
- 🔧 CPU register operations
- 📞 System call mechanisms
- ⚙️ Program execution flow

## 🛠️ Development Environment

- **Editor**: Sublime Text 4 on Linux
- **OS**: Linux 6.12.4-1-MANJARO
- **Framework**: NASM (Netwide Assembler)
- **Terminal**: WezTerm Terminal
- **Version Control**: Git 2.34.1

## ⚙️ Prerequisites

Before you begin, ensure you have:
- 🐧 Linux-based operating system
- 🔨 NASM (Netwide Assembler)
- 🛠️ GCC (GNU Compiler Collection)

## 📥 Installation

1. Clone the repository:
```bash
git clone https://github.com/EthanSchoonbee/x86_assembly_hello.git
cd x86_assembly_hello
```

## 🚀 Building and Running

1. First, assemble the source:
```bash
nasm -f elf32 hello.asm -o hello.o
```

2. Then, create the executable:
```bash
gcc -m32 -nostartfiles hello.o -o hello
```

3. Launch the program:
```bash
./hello
```

## 📁 Code Structure

The program follows the classic assembly structure:
```
hello.asm
├── .data section
│   └── Hello World string
└── .text section
    ├── _start entry point
    ├── sys_write call
    └── sys_exit call
```

## 🎓 Key Learning Outcomes

This project helped me master:
1. 📝 Assembly language syntax and structure
2. 🐧 Linux system calls implementation
3. 🔄 x86 register management
4. 💾 Memory and string operations
5. 🔨 Compilation pipeline
6. 🐛 Assembly-level debugging

## 🔧 Technical Stack

- **Architecture**: 🖥️ x86 (32-bit)
- **Assembler**: 🛠️ NASM
- **Format**: 📄 ELF32
- **Platform**: 🐧 Linux (Manjaro x11)
- **IDE**: 📝 Sublime Text 4
- **System Calls**: 
  - 📤 `sys_write` (4)
  - 🚪 `sys_exit` (1)

## 🤝 Contributing

Your contributions are welcome! Feel free to:
1. 🍴 Fork the repository
2. 🔨 Create your feature branch
3. 💾 Commit your changes
4. 📤 Push to your branch
5. 🎯 Open a Pull Request

## 📚 Learning Resources

Helpful resources for assembly programming:
- 📖 [NASM Documentation](https://www.nasm.us/docs.php)
- 📑 [x86 Assembly Guide](https://www.cs.virginia.edu/~evans/cs216/guides/x86.html)
- 📚 [Linux System Calls Table](https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md)
- 🎥 [Assembly Language Programming on YouTube](https://www.youtube.com/results?search_query=x86+assembly+programming)

## 📊 Project Status

🎉 Initial release - A successful implementation of assembly fundamentals through a "Hello World" program.

## 📈 Future Improvements

- [ ] Add more complex string manipulations
- [ ] Implement input handling
- [ ] Add error handling
- [ ] Create more example programs
- [ ] Add detailed comments for learning purposes

---
<div align="center">
  
📅 Created: January 29, 2025 | 🔄 Last Updated: January 29, 2025

</div>
