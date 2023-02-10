# Call-by-push-block

A game written in 10 lines of Haskell for the Feb '23 [Haskell Tiny Game Jam](https://github.com/haskell-game/tiny-games-hs). 
It is for the Prelude category and as such does not use any imports.

## Quick run

Assuming you have Haskell installed, run this for the vanilla user experience

``` bash
$ runghc call-by-push-block.hs
```

And this for a nicer user experience (but not fitting the rules of the jam
and its category)

``` bash
$ runghc call-by-push-block-more-playable.hs
```

See the [Running section](#running) for more details.

## The cast
  - `λ`: The player character.
  - `o`: A block you can push.
  - `_`: The switch you need to push a block into.
  - And a couple others!

## The controls
  Note that you need to press enter in order to make a move.
  - Movement: [`hjkl`] (Vim-style movement: h=left, j=down, k=up, l=right)
  - Redo: [`x`] (Reverts to the original state)

## Other notes on controls
  - You need to press enter in order to make a move.
  - When prompted with ⮑, press enter to continue.
  - Technically, all keys map to one of the above controls, so if you find
    a set of keys you prefer, feel free to use them.

## Tips
  - Try everything! You can always redo if you make a mistake.
  - The game will not redo for you if you enter an unwinnable state, you must
    reset it manually.

## Running

First, make sure that you have Haskell installed. I recommend using
[GHCUp](https://www.haskell.org/ghcup/). This game is tested on GHC 9.2.5 but
should run on most modern GHC versions.

I highly recommend running `call-by-push-block-more-playable.hs` for a better
experience, although it might be behind `call-by-push-block.hs` if I make any
more changes since I probably won't update the two at the same time.

Both files require no additional arguments and can be run using `runghc`. For example,

``` bash
$ runghc call-by-push-block.hs
```

Or with `stack`,

``` bash
$ stack runghc call-by-push-block.hs
```

## File structure

- `call-by-push-block.hs` is the submission to the game jam.
- `call-by-push-block-more-playable.hs` is a version of `call-by-push-block.hs`
  with some QoL improvements for playtesting (most notably its IO is unbuffered
  which means that you do _not_ have to hit enter after each move).
- `call-by-push-block-ungolfed.hs` is a much earlier version that I wrote before
  golfing it. It has, however, diverged significantly from the golfed version.
- `puzzle-scratch.txt` contains nicely-formatted versions of the levels since
  it's much harder to visualize them if you write them in the format they're
  stored. This contains some spoilers on the level content if you haven't played
  the game.
