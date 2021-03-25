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
      r4 r4 \tuplet 5/4 {r16\pp b'4~ } | \tuplet 5/4 { b4\< bf16-.\sf\! } r4 r4 | 
      r8 r16 cs,16( \tuplet 6/4 { b16[ bf af gf f]) r} \tuplet 6/4 {r4 r16 cs'16( } | \tuplet 6/4 { b16[ a g gf f e]) } \tuplet 6/4 { r8 cs'16\>[( b a af  ]} g16)\!\mp r16 r8  | R2. | 
        \mark \default
      r16_ "meno mosso" e'8.(->\mf~ e4. g16) r16 | 
      r16 e8.->~ \tuplet 5/4 {e8.[ a16( g16]~ } \tuplet 5/4 { g16[ f8. e16] } | \tuplet 5/4 { ef16 d16) r8. } r4 r4 | r4 r4 \tuplet 5/4 {r8 a'8.->(~ } | \tuplet 5/4 {a4 g16) }  \tuplet 5/4 { r4 a16->~ } a8. ef16~( |
     ef4\>~ \tuplet 5/4 {ef16 d cs b a } af16\p\!) r16 r8 | \tuplet 5/4 { r8 a16\>[(g f ] } \tuplet 5/4 { e16) r8 b'16( a16} \tuplet 5/4 {g16[ f e])\! r8 } |  ef'2~\pp\< ef8 d16-.->\sf r16 | R2.^"take oboe" | 
        
        
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
 \mark \default  R2._"a tempo" | R2. |
     e2.(^"Oboe"\pp~ | e8\< f8)~ f2~\pp\!\> | f2\!_"niente" r4 |   r16\pp\< e'8.-- f,16\! e'8.-- r16\> e8 b16\!~ | \tuplet 6/4 { b16_"accelerando"(\< a gs) bf( a gs  } \tuplet 6/4 {g!16) bf( a g f e)  } \tuplet 7/4 { b'!16(  a g f e\! ef df } |
     \tuplet 6/4 {b16) r16 c'16\< ( bf af gf } \tuplet 7/4 { e16-.) a ( g\!\mf e d c b  } bf16-.) r16 r8   | R2. | 
     \time 4/4 
        \mark \default  \tempo "Piu mosso" 4 = 96 
        \pitchedTrill b''1->\f \startTrillSpan c |  as16-> r8 \stopTrillSpan  r16 r4 r2 | 
           \pitchedTrill c,1->~ \startTrillSpan df |  c1~ | c1\< \stopTrillSpan  | \mark \default   c16->\ff_"ritenuto"  r16 r8 r16 b'16->\f r8 r4 r8 r16 as,16-> | 
           b16-.-> r16 r8  \tuplet 5/4 {  bf8.[-- r16 bf16]->~ } bf8  g'16-.-> r16  \tuplet 5/4 {  gf,8[-- r16 g8]--~ }  | g16 g'16-.\> r8 \tuplet 5/4 {  e,8-- e8.--~( } e8 e'16-.) r16 \tuplet 5/4 {d,16-> d4--\!( } | cs'16) r16  r8 r4 r4 b16-. cs,8.( | 
           d16-.->) r16 r8 r4 c'16\p r16 r8 r4 | r2 b16-. r16 r8 r4 | 
           \mark \default  \tempo "Tempo I" 4 = 69 
           af1--\pp~ | 
           \time 2/4
           \tuplet 5/4 {af16 gf( a! af g! } \tuplet 5/4  {fs16 as d ds e~ } | 
           \time 4/4 
           e1\pp\>~)
           \time 2/4
           \tuplet 6/4 {e16\! ef( d cs as fs } \tuplet 6/4 { g16 a! gs\< f a af\p\!~) }
           \time 4/4 
           af1\>\pp~
           \time 2/4
           \tuplet 6/4 {af16\!\< a!( af g af\! a!  }  \tuplet 6/4 {b16) r16 gs16(\> a b c)\!~ } |
           \time 4/4 
           c4~ \tuplet 3/2 {c4~ c16 cs16(  } \tuplet 6/4 { c!16\< a af g af\! a~ } \tuplet 5/4 {a16) bf8.( fs16)~ } |
           \time 3/4
          \tuplet 3/2 {fs4\<~ fs16\! g16-.} \tuplet 6/4 { as16->( b c-.) b8.\>~ } \tuplet 6/4 { b16\!\< ( c as b d e   } |  \mark \default a2~ a16) bf16->\sf  r8 | af4--\mf~ af16 ( g16\> d16 ds16 \tuplet 6/4 {gf16\mp\! f e df c b )} |  
          bf16(\< a8 g16\!~ g16 gf16) r8 f4\<~  | f8 fs16\!\mf ( g16 f16 f!8 e16\>~ e4~ | 
          \mark \default \tempo "Tempo II" 4 = 76
          e2\pp\!) r4 | R2.*7 | 
          \mark \default e'8.->\f f16->~ f8. e16->~ e8.-> f16-. | 
          \time 4/4
          e16-> r16 r8  r4 r2 | 
          \time 3/4 
          R2. | r16 e,8.--\p~ e2~\< | \tuplet 5/4 {e16\mf\! e4--\p\< } ds16[-.\f r16 ds'16]->\ff r16 r4 | bf'8.--\mf bf16->~ bf8.\< bf16->~ bf8. bf16\!( | 
          \time 4/4
           \mark \default
            a16->\f) r16 r8 r4 r2  | 
            \time 3/4 
            \tuplet 5/4 {bf16[-. r8 bf16]-. r16} \tuplet 5/4 {r16 bf16[-.  r8 bf16]-.  } \tuplet 5/4 {r8 bf16-. r8} | 
            \tuplet 5/4 {df8-> ( c8) r16 } \tuplet 5/4 {c8-> ( b8) r16 } \tuplet 5/4 {b8 ( as8) b16  } | c16->\> r16 r8 cs,16-.\! r16 r8 d,16-.\p r16 r8 |  c4-- c4-- \tuplet 5/4 {c4-- df16->~ } | 
             \tuplet 5/4 {df4-- df16--~ } \tuplet 5/4 {df4-- df16--~ } \tuplet 5/4 {df4--\> df16--\!~ } |
             \mark \default
             
          \tuplet 5/4 {df16[--\pp r8. c16]-. } \tuplet 5/4 {c16-. c16-. r8. } df4--~ | df16 r16 r8 r4 \tuplet 5/4 { r8. cs'8-.\mp } | 
           
   
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