\language "english"
%{
Still Images, Vera Ivanova
Oboe and Englishhorn part 
===================

%}

num =
#(define-music-function (parser location musique) (ly:music?)
    #{ 
      \override Score.BarNumber.break-visibility = ##(#f #t #t)
      $musique 
      \revert Score.BarNumber.break-visibility 
    #})
  

maple_leaf_rag =  \relative c'' {
  \key c \major
  \tempo "Largo" 4 = 69
  \time 4/4
     R1*5 | 
     \tuplet 3/2 {
     d,4^\markup {
       \column {
            \line {  mute }
             \line { \italic  articulate each note }  }
                     }_\pp d8~  }   \tuplet 3/2 {d8. d16 d8~}  \tuplet 3/2 { d8 d4~} \tuplet 3/2 { d8. d16 d8~ } | 
    \tuplet 3/2 { d8 d4~ } \tuplet 3/2 { d8 d16 d8.~ } \tuplet 3/2 { d4 d8~ } \tuplet 3/2 { d8 d16 d8.~ } |
     \tuplet 3/2 { d4 d8~}   \tuplet 3/2 {d8[ d16 d8.]~}  \tuplet 3/2 { d4 ef16 (fs16} \tuplet 5/4 { g16[af  b c cs ]}	 | 
  \time 3/4  
  d16-.)_\pp r16 r 8 r4 r4  |
  r2. |
  e,16[ e8.]~ \tuplet 3/2 { e8 e4~} e8.[ e16~] |
   e2~ e8.[ e16]~ | e2~ e8.^\markup { \italic gliss. }\< [\glissando f16]->_\fz  |
  \time 4/4 R1*4^\markup {\italic mute off} 
    g1~->_\f |
    g4~\< \tuplet 5/4 {g4 b,16->\ff\!~} b2 |
     r2 r4 \tuplet 6/4 {r16_\mf d'16->~ d4 } | 
   
    
   }



\bookpart {
  \header{
    title = "Still Images"

    composer = "Vera Ivanova (*1977)"
    tagline = ""  % removed
  }

  \markup {Oboe/Englishhorn }
  \score {
      <<
        \new Staff \maple_leaf_rag
      >>
  }
 
  }
  
  
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
