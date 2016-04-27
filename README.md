# merge-rests: an engraver for merging rests


`merge-rests-engraver` and `merge-mmrests-engraver` are used to combine two rests of the same duration from two voices into one.  This eliminates the need to add `\once \omit` to the rest in one of the voices.  

`merge-mmrests-engraver` combines whole measure and multi-measure rests and `merge-rests-engraver` combines all others.

The code for this package is originally by Jay Anderson, and taken from [OpenLilyLib](https://github.com/openlilylib/snippets/tree/master/editorial-tools/merge-rests-engraver).

## Installation

```bash
lyp install merge-rests
```

## Usage

Add one or both engravers to the staff context in the layout section.

```lilypond
\require "merge-rests"

\layout {
  \context { \Staff \consists #merge-rests-engraver }
  \context { \Staff \consists #merge-mmrests-engraver }
}
```

See also the included [example](https://github.com/noteflakes/lyp-merge-rests/blob/master/test/merge-rests-test.lyq)