\version "2.18.2"
\pinclude "../package.ly"

musicA = \new Staff
  <<
    \new Voice \relative c'
    {
      \voiceOne
      e4 r e r |
      R1 |
      r2 e |
    }
    \new Voice \relative c'
    {
      \voiceTwo
      r4 c r r |
      R1 |
      r2 r4 c |
    }
  >>


musicB = \relative c'
  <<
    {
      \compressFullBarRests
      c4 r r2 |
      R1 |
      r2 r4 r8 r16 r32 r |
      R1*3 |
    }
    \\
    {
      c4 r r r |
      R1 |
      r2 r4 r8 r16 r32 r |
      R1*3 |
    }
  >>

\score { \musicA }

\score {
  \layout {
    \context { \Staff \consists #merge-rests-engraver }
    \context { \Staff \consists #merge-mmrests-engraver }
  }
  \musicA
}

\score { \musicB }

\score {
  \layout {
    \context { \Staff \consists #merge-rests-engraver }
    \context { \Staff \consists #merge-mmrests-engraver }
  }
  \musicB
}
