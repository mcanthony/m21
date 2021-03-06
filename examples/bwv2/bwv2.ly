%=============================================
%   created by MuseScore Version: 1.3
%          quinta-feira, 9 de julho de 2015
%=============================================

\version "2.12.0"



#(set-default-paper-size "a5")

\paper {
  line-width    = 120\mm
  right-margin  = 15\mm
  left-margin   = 15\mm
  top-margin    = 15\mm
  bottom-margin = 5\mm
  %%indent = 0 \mm 
  %%set to ##t if your score is less than one page: 
  ragged-last-bottom = ##t 
  ragged-bottom = ##f  
  %% in orchestral scores you probably want the two bold slashes 
  %% separating the systems: so uncomment the following line: 
  %% system-separator-markup = \slashSeparator 
  }

\header {
title = "Coral #2"
dedication  = "para Renato Fabbri"
subtitle = "Após extração de notas do BWV2 em 09/7/15"
composer = "Bach / music21"
arranger = "Guilherme Lunhani"
}

AvoiceAA = \relative c'{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key c \major 
    %barkeysig: 
    \key c \major 
    %bartimesig: 
    \time 3/8 
    \mark \markup{ \italic {Allegro} }
    <e a>16 r <f g> r <g a bes>~ r \clef bass
         | % 1
    r4.      | % 2
    r4.      | % 3
    <bes,, d>4 \shortfermata\p r8 \breathe \clef treble
         | % 4
    <d' g>16 r d4~      | % 5
    d8 \clef bass
    e,4 \shortfermata \breathe \clef treble
         | % 6
    bes''16 r <d, ees> r <d ees> r      | % 7
    <d ees f> r r4 \clef "bass_8"
         | % 8
    a,,4 r8 \clef treble
         | % 9
    a'''4.\shortfermata \breathe     | % 10
    r4 <g a bes>16 r      | % 11
    r8 a,16 r8.      | % 12
    r4 <a' g'>16 r      | % 13
    r8 \clef bass
    c,,4~      | % 14
    c4.~      | % 15
    c4.      | % 16
    r4.\fermata \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key c \major 
    %barkeysig: 
    \key c \major 
    %bartimesig: 
    \time 3/8 
    d'16 \f r r4
         | % 1
    <g,, g'>4.~ \ff      | % 2
    <g g'>4.~      | % 3
    <g g'>4\shortfermata r8 \clef bass
         | % 4
    cis'16 \mf r r4      | % 5
    r8 
    <d,, d'>4\shortfermata \ff \clef bass
         | % 6
    d''16 \mf r r4 \<      | % 7
    r8 \< \! \f a4~      | % 8
    a \! \ff r8 \clef "bass_8"
         | % 9
    <a,, cis>4.\shortfermata \clef bass
         | % 10
    <f'' g a>4 \pp c'16 \< r      | % 11
    r8 \! 
    <g, g'>16 \mf r8. \clef bass
         | % 12
    <e' f g>4 \< \clef "bass_8"
    <a,, g'>16 \f r      | % 13
    r8 \! <fis' d>4~      | % 14
    <fis d>4.~      | % 15
    <fis d>4.      | % 16
    r4.\fermata \bar "|." 
}% end of last bar in partorvoice


\score { 
    << 
        \context PianoStaff <<
        \set PianoStaff.instrumentName="Piano" 
            \context Staff = ApartA << 
                \context Voice = AvoiceAA \AvoiceAA
                \set Staff.instrumentName = #""
                \set Staff.shortInstrumentName = #""
            >>


            \context Staff = ApartB << 
                \context Voice = AvoiceBA \AvoiceBA
                \set Staff.instrumentName = #""
                \set Staff.shortInstrumentName = #""
            >>


        >> %end of PianoStaffA
  >>
}%% end of score-block 

#(set-global-staff-size 20)
