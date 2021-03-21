\language "english"
%{
Two Joplin Rags, transcription for soprano sax of the oboe part of the Two Joplin Rags by Joplin
===================

%}

num =
#(define-music-function (parser location musique) (ly:music?)
    #{ 
      \override Score.BarNumber.break-visibility = ##(#f #t #t)
      $musique 
      \revert Score.BarNumber.break-visibility 
    #})
  

maple_leaf_rag =  \relative c''{
  \key af \major
  \tempo "Moderato" 4 = 96
  \time 2/4
  \partial 8 r8 | \repeat volta 3 {  
    \once \override Score.RehearsalMark.font-size = #-2
    \mark \markup { \musicglyph #"scripts.segno" } r8 ef,8_\f ef8 r8 | r8 g8 g8 r8 | r8 ef8 ef8 r8 | r8 g8 g8 r16 ef16   |
 
  ff16 (af16) cf16 ff16 r16 ef8 ef,16 | ff16 (af16) cf16 ff16 r16 ef8 r16 | 
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
         \num r2 | 
  \revert Score.BarNumber.stencil 
  r16 af,16_\mp\< (cf16 ef16 af8\!) r8 | f,8_\mf  f8  f8  f8 |  af8 af8 af8 af8 |
  af8 af8 af8 c8 | af8 g8 ef8 r16 af'16^"Solo"_\p~ | 
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
     \num
  af8 af8 af8  af16 af16~ | 
   \revert Score.BarNumber.stencil 
  
  af16 ef16 f16 c16 ef16 (f8) af,16~ |
  af16 bf16 cf16 af16 bf16 (c8) af16   
  
  } \alternative {
    \relative c'' { c16 (af16) bf8 af8 r8}
    {
                    c16 (af16) bf8 af8^"To 19" r8  \bar "||"
    }
    {
                    c16 (af16) bf8 af8^"To 36"\< af8\!  \bar "||"
    }
  }
  
   \repeat volta 2 {
      \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
     \num
     r8 g8\mf[ r8 g8] | 
      
       \revert Score.BarNumber.stencil
      r8 g8[ r8 ef8] |
      r8 af8[ r8 af8] |
      r8 ef8[ r8 ef8] |
      r8 ef8[ r8 ef8] |
      r8 ef8[ r8 d8] |
      r8 ef8[ r8 ef8] |
      r8 ef8\<[ r8 ef8\!] |
        \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
     \num
      r8 df'8\f[ r8 df8] |
       \revert Score.BarNumber.stencil 
       r8 df8[ r8 df8] |
       r8 c8[ r8 c8] |
       af8 af8->\< g8-> gf8->\! |
       r16 f16\ff a16 c16 f16 (c16) a16 f16 |
       r16 f16 bf16 df16 f8 df8 |
       d8.-> df16-> r16 df8-> df16-> 
  } \alternative {
    \relative c'' { c8-> c8 c8 fs,8}
    {
    r16_"D.S (3rd ending)" ef,16 af16 c16 ef8 r8 \bar "||"
    }
  }
  \repeat volta 2 {
     \key df \major
    \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
      \bar ".|:" \num
     c8.\mp c16~ c16 c16 c8 |
       \revert Score.BarNumber.stencil
       c8. c16~ c16 c16 ef16 ef16 |
       df8 r8 r4 | r2 |  c8. c16~ c16 c16 c8 | c8. c16~ c16 c16 ef16 ef16 |df8 r8 r4 |  r4 r8 c8\< |
    \override Score.BarNumber.stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
     \num       d8.\mf\! f16 f16 f16 f8 |
     \revert Score.BarNumber.stencil
      d8. d16~ d16 d16 d16 d16 | 
      ef16 ef,16 bf'16 ef,16 gf16 c8 ef16 | bf16 ef,16 gf16 c16~ c16\< ef,16 bf'8\! | ff'8\f f8 df8 df8 | df8 ef16 g16~ g16 bf,16 f'8 |
      f16 (df16) ef16 f16  (f16) c16 ef16 df16~ |
  }
    \alternative {
    \relative c'' {df16 f8 ef16 f16 (df16) b16 b16   }
    { 
      df16\repeatTie  af16 df16 f16 af8-> r8 \bar "||" 
    }
}

\repeat volta 2 {
 \key af \major  
  \compressFullBarRests
   \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  \bar ".|:"  \num  
  R1*1    |
    \revert Score.BarNumber.stencil
  r8 c,8\mf c8 r8 |
  r8 af8[ r8 c8] | r8 g8[ r8 g8] | r8 g8[ r8 df'8] | r8 c8 r8 r16 c16~ | c16\< ef16 f16 c16 ef16 (f8) ef16\!( | df8->\f) af8-> df8-> af8-> | 
  df8->\< df16 f16~ f16\!\> f16 d16 d16\! | ef8 ef8 c16 (ef8) af,16~ | af16 c16 ef16 af,16 c16 (ef8) af,16~ | af16 bf16 af8 af8 bf16 (af16~ | 
  af16) bf16 c16 af16 bf16 c8 d16~ | d16\ff f16 af16 (d,16) r16 df8-> df16-> | 
  
} \alternative {
    \relative c'' { 
    c8-> af8\> g8 gf8\! 
    
    }
{ c8-> g'8-> af8-> r8 \bar "|." 
}
}

}

the_cascades =  \relative c''{
  \key c \major
  \tempo "Allegro" 4 = 128
  \time 2/4
  g8 g4 a8 | b8 b4 f'8 | e4-> d4-> | g8-> r8 r4 |

  \repeat volta 2 {  
          \compressFullBarRests
           \override Score.BarNumber.stencil
            = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
          \bar ".|:"  \num  
          R1*2    |
         \revert Score.BarNumber.stencil 
         d,8\mf\>( f8 e8\mp\!) r8  | 
        R1*1 |
           \override Score.BarNumber.stencil
            = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
          \num fs16\p( ds16 fs16 a16 c16 ds16 fs16 a16 |
          \revert Score.BarNumber.stencil 
          c8\f) fs,16^"Solo" fs16~ fs16 fs16 fs8 | g4 g16( e16 c16 g16) | a4\> d16 d16 g,8\! | c8\mp r8 r4 |
        \set Score.skipBars = ##t
        R2*3 |
  } \alternative {
    \relative c'' { r2 }
    {
                    r8 g16\p\< g16 g8 g8\!  
    }
  }  
    \repeat volta 2 {
          \override Score.BarNumber.stencil
            = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
          \bar ".|:"  \num  
          r2 |
          \revert Score.BarNumber.stencil 
          r8 a16\mp g16~ g16 a16 g8 | b8 a16 g16~ g16 a16 g8 | c8 a16 g16~ g8 r8 | r2 | r8 a16\< g16~ g16 g16 e'8\! | e8\mf d16 b16~ b16 g16 a8 | 
           \override Score.BarNumber.stencil
            = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
            \num g8\>[ r8 b8\!] r8  |
            \revert Score.BarNumber.stencil 
            r8 f8\mp[ r8 f8] | r8 a16\mp g16~ g16 a16 g8 | b8 a16 g16~ g16 a16 g8 | c8 a16 g16~ g8 g'8 |
                         \override Score.BarNumber.stencil
            = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
          \num r2 | 
            \revert Score.BarNumber.stencil 
            a,16_"cresc"( c16) f16 a16 r8 c,16 (ds16 | e8\f) g,8-> fs8-> f8-> |
    } \alternative {
     
     \relative c'' { e,8-> g16\> g16 g8 g8\! }
     { 
      e4-> \grace { a16( b16 } c8->) r8 \bar  "||" 
     }  
    }
     \override Score.BarNumber.stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
          \num f8\f-> f4-> f8-> | 
           \revert Score.BarNumber.stencil 
          f8-> f4-> f8-> | ef4-> e4-> | f8-> r8 a4-> \bar "||"
        \repeat volta 2 {
       \key bf \major  
              \compressFullBarRests
                     \override Score.BarNumber.stencil
                      = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
                    \bar ".|:"  \num  
                    R2*7    |
                \revert Score.BarNumber.stencil
                r8 c,16\mf\< f16~ f4\!  | 
       \override Score.BarNumber.stencil
                      = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
                     \num f4\f~ f16 d16 ef16 e16  | 
                     \revert Score.BarNumber.stencil
                    f16( d16) ef16 d16~ d16 d16 f16 af16 | r16 g16 f16 ef16 c16 bf8 d16~ | d16 d16 f16 f,16 bf16( d16) f16 af16 |
                    r16 g16 bf16 g16 c16 bf8 f16~ | f16 d16 f16 g16->~ g16 d16 b16 g16 | c16 (g16) bf!8 a16 f'16 ef16 c16 | 
   } \alternative {
    \relative c'' {bf8-> r8 r4  }
        {  bf4-> f'8-> r8 \bar "||"  }
  }
  
    \repeat volta 2 {
       \key f \major  
                     \override Score.BarNumber.stencil
                      = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
                    \bar ".|:"  \num  
                    r2  |
                \revert Score.BarNumber.stencil
                 r8 a,16\p (f16~ f16 ) f16( a8)   |  r2 |  r8 a16 (f16~ f16 ) f16( a8)   | bf16 bf8 a16 g16 (fs16 g16 gs16 |
                 a16) bf16_"cresc" c16 d16~ d16 e16 f8 | e16 f16 fs16 g16~ g16 g,16 d'8 | c4.\f\> r8\!  |
                     \override Score.BarNumber.stencil
                      = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
                      \num r2 |
                      \revert Score.BarNumber.stencil
                 r8 a16\mp (f16~ f16 ) f16(a8) | r2 |  d16 (e16) f16 d16~ d16 d16 f8 | r8 bf,8_"cresc"[ r8 bf8] | c16( a16 c8) d4->\ff | r8 c8-> b8-> bf!8-> |
   } \alternative {
    \relative c'' {a8-> r8 r4  }
        {  a4-> \grace  { g16( a16 bf16 } c8->) r8 \bar "|."  }
  }
}
 



\bookpart {
  \header{
    title = "Two Joplin Rags"
    subtitle = "1. Maple Leaf Rag"
    composer = "Scott Joplin"
    tagline = ""  % removed
  }

  \markup {Oboe }
  \score {
      <<
        \new Staff \maple_leaf_rag
      >>
  }
 
  }
  
  
\bookpart {
  \header{
      subtitle = "2. The Cascades"
    tagline = ""  % removed
  }

  
      \score {
          <<
        \new Staff \the_cascades
      >>
    
  }
}
  


\bookpart {
  \header{
   title = "Two Joplin Rags"
   subtitle = "1. Maple Leaf Rag"
    composer = "Scott Joplin"
    tagline = ""  % removed
  }
 \markup {Soprano Sax}
  \score {
    \transpose bf c'
    <<
   
      \new Staff \maple_leaf_rag
    >>
  }
}

\bookpart {
  \header{
      subtitle = "2. The Cascades"
    tagline = ""  % removed
  }

  
      \score {
         \transpose bf c'
          <<
        \new Staff \the_cascades
      >>
    
  }
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
