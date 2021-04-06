# Snake Art Maker
Simplfiles making snake art for shared projects. 

## Requirements
- inkscape
- bash

## Setup
- The snake can be any number of squares/rectangles/shapes.
- The ids of the shapes must be named by their position with the top left starting ad "1-1"
- The snake must be a path named "snake"
```shell
./generate_snake.sh [height] [width] [snake svg path]
# included example whould be
./generate_snake.sh 5 3 Snake.svg
```
### generate_snake.sh does the following
- converts the path to stroke and swaps fill with stroke to make an outline
- generate PNGs for each of the shapes with the snake in the using the same basefile name and adding `_[Height]-[Width].png` at the end
  - example: Snake_1-1.png, Snake_1-2.png, ...

## TODO: add examples.
