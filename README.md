# James' Vim Configuration

This Vim configuration utilizes the vundle package manager for automatic bundle management.

## Getting started

1. Clone this repository into ~/.vim
2. Symlink ~/.vimrc to ~/.vim/vimrc
3. Launch vim, and run the Ex command :BundleInstall

## Included Bundles

### Align
Align and AlignMaps lets you align statements on their equal
signs, make comment boxes, align comments, align declarations, etc. 

### delimitMate
Automatic closing of quotes, parenthesis and brackets.

### Powerline
Better vim status lines.

### Rooter
Change your working directory to the project root when you open
a file.

### Surround
Adds motion of "surround" to add, delete or manipulate surroundings.

### Commentary
Manage comments for all manner of filetypes. `gcc` to toggle
commenting on the current line (accepts a motion), `gc` in visual
mode to toggle commenting on a block.

### ctrlp.vim
Full path file, buffer, mru, tag searching. `<c-p>` to open.

### SuperTab
Insert mode competition. Just press `tab`.

### Repeat
Repeat more than just native commands.

### Yaifa
Automatically detect the indent settings when you open a file.

### CSSComb
Sort CSS properties based on box-model, out to in. Use `:CSSComb`.

### Zen Coding
https://code.google.com/p/zen-coding/
Turn `ul.list>li*3` into HTML with `<c-y>,`.
