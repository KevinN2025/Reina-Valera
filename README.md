# rv

Read the Reina-Valeria spanish bible on your terminal.

Forked from [https://github.com/LukeSmithxyz/kjv.git](https://github.com/LukeSmithxyz/kjv.git) but with the Apocrypha added.


## Usage

    usage: ./rv [flags] [reference...]

      -l      list books
      -W      no line wrap
      -h      show help

      Reference types:
          <Book>
              Individual book
          <Book>:<Chapter>
              Individual chapter of a book
          <Book>:<Chapter>:<Verse>[,<Verse>]...
              Individual verse(s) of a specific chapter of a book
          <Book>:<Chapter>-<Chapter>
              Range of chapters in a book
          <Book>:<Chapter>:<Verse>-<Verse>
              Range of verses in a book chapter
          <Book>:<Chapter>:<Verse>-<Chapter>:<Verse>
              Range of chapters and verses in a book

          /<Search>
              All verses that match a pattern
          <Book>/<Search>
              All verses in a book that match a pattern
          <Book>:<Chapter>/<Search>
              All verses in a chapter of a book that match a pattern

## Build

rv can be built by cloning the repository and then running make:

    git clone https://github.com/KevinN2025/rv.git
    cd rv 
    sudo make install

## Screenshot

<img width="1279" height="1004" alt="image" src="https://github.com/user-attachments/assets/a30ba3b2-4560-4d94-9091-8f2e45680a24" />


## License

Public domain
