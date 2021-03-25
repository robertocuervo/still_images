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
  cornaco_one = \relative c' {
     \time 4/4  
    r4_"Englishhorn" \tuplet 3/2 { r4 d8~(\pp} d8 \acciaccatura e16 ef8~-> ef16 d8.~ | d8[) r16 e!16](->~e16[ d16) r16 e!16](->~e16 d16\>)  r16 e16(->~ \tuplet 3/2 {e16 d16 e4~\!} | 
     \time 3/4  
     e16)_"niente"  r16 r 8 r4 r4 | 
       \time 4/4 
       r8 e8(\pp d8. e16~ \tuplet 3/2 { e8) f4(->~} f16 e16 d8~ | \tuplet 3/2 { d8[) r8  \acciaccatura ds16( e8]~->\>}
       \tuplet 3/2 { e4 ef8~} ef16_"niente"\!) r16 r8 r4 |  r4_"acc." r16 d8\pp(c16) \acciaccatura cs16( d8.-> b16~ \tuplet 3/2 {b8) d8( bf8) } | 
       r16 b!8.->~ b16 \acciaccatura as16( b8-> c16 df8. c16) \acciaccatura b16( df8-> d8~ |  d16[) r16 \acciaccatura af16( d16-> ds16]  e8.) e16-. \tuplet 3/2 { e4--\< e8--~} e16 e8.\! | 
       \time 3/4
        \mark \default  \tempo "Tempo II" 4 = 76
      \tuplet 5/4 { bf'16[-.\mp r8. e,16]( } \tuplet 5/4 {ef16[ d e! cs ef]} \tuplet 5/4 { df16 c! d! ef d)}  | \tuplet 5/4 {r16[ df( c d! ef ]} \tuplet 5/4 {df16[ ef d  c df ]} \tuplet 5/4 { e16[) r16 d!( ef e!]} |
      \tuplet 5/4 {ds16[ e ds e d]}  \tuplet 5/4 {d!16[ ds e ds d!] }   \tuplet 6/4 { ds16[ r d! ef d df] } | \tuplet 6/4 {c16[) r d( ef d cs] } \tuplet 6/4 { d16[) r16 d( c b as] } \tuplet 6/4 { b[ as a! as b c!]} | 
      \tuplet 6/4 { cs16[ d cs bs cs bs]} \tuplet 6/4 { d16[ cs16) r16 bs8( cs16]} \tuplet 5/4 { d16[ cs bs cs d]} | e16) r16 r8 r4 r4 |
     }

maple_leaf_rag =  \relative c'' {
  \set Score.markFormatter = # format-mark-box-alphabet
  \key c \major
  \tempo "Largo" 4 = 69
  \compressFullBarRests
  \time 4/4
     R1 |
     R1 \mark \default |
     R1*3 |
     \tuplet 3/2 {
     d,4^\markup {
       \column {
            \line {  mute }
             \line { \italic  articulate each note }  }
                     }_\pp d8~  }   \tuplet 3/2 {d8. d16 d8~}  \tuplet 3/2 { d8 d4~} \tuplet 3/2 { d8. d16 d8~ } | 
    \tuplet 3/2 { d8 d4~ } \tuplet 3/2 { d8 d16 d8.~ } \tuplet 3/2 { d4 d8~ } \tuplet 3/2 { d8 d16 d8.~ } |
     \tuplet 3/2 { d4 d8~}   \tuplet 3/2 {d8[ d16 d8.]~}  \tuplet 3/2 { d4 ef16 (fs16} \tuplet 5/4 { g16[af  b c cs ]}	 | 
  \time 3/4    \mark \default 
  d16-.)_\pp r16 r 8 r4 r4  |
  r2. |
  e,16_\pp [ e8.]~ \tuplet 3/2 { e8 e4~} e8.[ e16~] |
   e2~ e8.[ e16]~ | e2~ e8.^\markup { \italic gliss. }\< [\glissando f16]->_\fz  |
  \time 4/4 R1^\markup {\italic mute off}
    R1 \mark \default   \tempo "Andante" 4 = 76 |
    R1  |
    g1~->_\f |
    g4~\< \tuplet 5/4 {g4 b,16->\ff\!~} b2 |
     r2 r4 \tuplet 6/4 {r16_\mf d'16->~ d4~ } |      \pitchedTrill d4~\< \startTrillSpan cs d8.\stopTrillSpan c'!16 (cs,!2)\!   \mark \default |  
   f,16->\f r16 r8 r4 r4 \tuplet 5/4 {r8 g8.\mf~}  | 
   g4~ g4\f\< g'16-.\ff r16 r8 r4 | R1 | \time 3/4 c,16->\f r16 r8 r4  \tuplet 3/2 {r4 r16 d16~->\f} |
    \tuplet 3/2 {d4 r16 c16-.}    \tuplet 6/4 { df16[-. r8 c8.]~} \repeat tremolo 4 c16\< | c'16->\fz r16 r8  r4 r4 | R2. |
    r4 g,8--\mf\> g8~--\tuplet 6/4 { g16 g8.-- g8-\!} |  
    
    \time 4/4  
   g16-.\pp^\markup {take Englishhorn}_"molto ritenuto" r16  r8 r4 r2 | R1*2 | 
    \mark \default  \tempo "Tempo I" 4 = 69
    %Corno%
 
  % \transpose c g { \cornaco_one } %
   \cornaco_one

   
}


cornaco =  \relative c'' {

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