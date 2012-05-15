%%
%% This is file `uw-wkrpt.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% uw-wkrpt.dtx  (with options: `class')
%% 
%% Copyright (C) 2002, 2003  Simon Law
%% 
%%   This program is free software; you can redistribute it and/or modify
%%   it under the terms of the GNU General Public License as published by
%%   the Free Software Foundation; either version 2 of the License, or
%%   (at your option) any later version.
%% 
%%   This program is distributed in the hope that it will be useful,
%%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%%   GNU General Public License for more details.
%% 
%%   You should have received a copy of the GNU General Public License
%%   along with this program; if not, write to the Free Software
%%   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307  USA
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{uw-wkrpt}[2003/05/20 v2.6 U. of Waterloo work reports]
\newif\ifuwwkrpt@math \uwwkrpt@mathfalse
\DeclareOption{math}{%
  \uwwkrpt@mathtrue
  \write10{([math] Mathematics report)}}
\newif\ifuwwkrpt@ece \uwwkrpt@ecefalse
\DeclareOption{ece}{%
  \uwwkrpt@ecetrue
  \write10{([ece] Electrical and Computer Engineering report)}}
\newif\ifuwwkrpt@se \uwwkrpt@sefalse
\DeclareOption{se}{%
  \uwwkrpt@setrue
  \write10{([se] Software Engineering report)}}
\DeclareOption{10pt}{\ClassWarning{uw-wkrpt}{%
  You requested a 10pt font but reports must be 12pt}}
\DeclareOption{11pt}{\ClassWarning{uw-wkrpt}{%
  You requested a 11pt font but reports must be 12pt}}
\newcommand{\@blockletter}{}
\DeclareOption{modifiedletter}{%
  \newcommand{\@blockletter}{}}
\DeclareOption{blockletter}{%
  \newcommand{\@blockletter}{\setlength{\parindent}{0pt}}}
\DeclareOption*{\PassOptionsToClass {\CurrentOption}{article}}
\ProcessOptions
\LoadClass[titlepage,12pt]{article}
\RequirePackage{ifthen}
\RequirePackage{fullpage}
\ifx\FP@margin\undefined
  \newlength{\FP@margin}
\fi
\setlength{\FP@margin}{1.5in}
\setlength{\textwidth}{\paperwidth}
\addtolength{\textwidth}{-2\FP@margin}
\setlength{\oddsidemargin}{\FP@margin}
\addtolength{\oddsidemargin}{-1in}
\setlength{\evensidemargin}{\oddsidemargin}
\RequirePackage{setspace}
\newcommand{\uwwkrpt@spacing}{\doublespacing}
\ifthenelse{\boolean{uwwkrpt@se}}
  {\renewcommand{\uwwkrpt@spacing}{\onehalfspacing}}{}
\newlength{\uwwkrpt@parskip}
\setlength{\uwwkrpt@parskip}{1ex}
\setlength{\parskip}{\uwwkrpt@parskip}
\RequirePackage{url}
\urlstyle{sf}
\renewcommand{\title}[1]{%
  \renewcommand{\@title}{#1}%
  \renewcommand{\@@title}{#1}}
\newcommand{\@@title}{\ClassError{uw-wkrpt}%
  {No \noexpand\title given}{}}
\renewcommand{\author}[1]{%
  \renewcommand{\@author}{#1}%
  \renewcommand{\@@author}{#1}}
\newcommand{\@@author}{\ClassError{uw-wkrpt}%
  {No \noexpand\author given}{}}
\renewcommand{\date}[1]{%
  \renewcommand{\@date}{#1}%
  \renewcommand{\@@date}{#1}}
\newcommand{\@@date}{\today}
\newcommand{\uwid}[1]{\renewcommand{\@uwid}{#1}}
  \newcommand{\@uwid}{\ClassError{uw-wkrpt}%
    {No \noexpand\uwid given}{}}
\newcommand{\address}[1]{\renewcommand{\@address}{#1}}
  \newcommand{\@address}{\ClassError{uw-wkrpt}%
    {No \noexpand\address given}{}}
\newcommand{\employer}[1]{\renewcommand{\@employer}{#1}}
  \newcommand{\@employer}{\ClassError{uw-wkrpt}%
    {No \noexpand\employer given}{}}
\newcommand{\employeraddress}[1]{\renewcommand{\@employeraddress}{#1}}
  \newcommand{\@employeraddress}{\ClassError{uw-wkrpt}%
    {No \noexpand\employeraddress given}{}}
\newcommand{\school}[1]{\renewcommand{\@school}{#1}}
  \newcommand{\@school}{\ClassError{uw-wkrpt}%
    {No \noexpand\school given}{}}
\newcommand{\faculty}[1]{\renewcommand{\@faculty}{#1}}
  \newcommand{\@faculty}{\ClassError{uw-wkrpt}%
    {No \noexpand\faculty given}{}}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
  \newcommand{\@email}{\ClassError{uw-wkrpt}%
    {No \noexpand\email given}{}}
\newcommand{\term}[1]{\renewcommand{\@term}{\textsc{\lowercase{#1}}}}
  \newcommand{\@term}{\ClassError{uw-wkrpt}%
    {No \noexpand\term given}{}}
\newcommand{\program}[1]{\renewcommand{\@program}{#1}}
  \newcommand{\@program}{\ClassError{uw-wkrpt}%
    {No \noexpand\program given}{}}
\newcommand{\chair}[1]{\renewcommand{\@chair}{#1}}
  \newcommand{\@chair}{\ClassError{uw-wkrpt}%
    {No \noexpand\chair given}{}}
\newcommand{\chairaddress}[1]{\renewcommand{\@chairaddress}{#1}}
  \newcommand{\@chairaddress}{\ClassError{uw-wkrpt}%
    {No \noexpand\chairaddress given}{}}
\newcommand{\confidential}[1]{\renewcommand{\@confidential}{#1}}
  \newcommand{\@confidential}{}
\newcommand{\thetitle}{\@@title}
\newcommand{\theauthor}{\@@author}
\newcommand{\theuwid}{\@uwid}
\newcommand{\theaddress}{\@address}
\newcommand{\theemployer}{\@employer}
\newcommand{\theemployeraddress}{\@employeraddress}
\newcommand{\theschool}{\@school}
\newcommand{\thefaculty}{\@faculty}
\newcommand{\theemail}{\@email}
\newcommand{\theterm}{\@term}
\newcommand{\theprogram}{\@program}
\newcommand{\thechair}{\@chair}
\newcommand{\thechairaddress}{\@chairaddress}
\newcommand{\thedate}{\@@date}
\newcommand{\theconfidential}{\@confidential}
\RequirePackage{textcase}
\renewcommand{\maketitle}{%
  \begin{titlepage}
  \begin{singlespacing}
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \begin{center}
    {\large \MakeTextUppercase{\@school} \par \@faculty}%
  \end{center}
  \null\vfill%
  \begin{center}%
    {\huge \MakeTextUppercase{\@title} \par}%
  \end{center}\par
  \null\vfill%
  \begin{center}%
    {\large \@employer\\ \@employeraddress\par \textit{\@confidential}}%
  \end{center}\par
  \null\vfill%
  \begin{center}%
    {\large
      Prepared by\\
      \begin{tabular}[t]{c}%
        \@author\\
        ID \#\@uwid\\
        \@email\\
        \@term{} \@program
      \end{tabular}\par}%
    {\large \@date \par}%       % Set date in \large size.
  \end{center}
  \@thanks
  \end{singlespacing}
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\@gobble
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\newenvironment{letter}{%
  \everyvbox={\thispagestyle{empty}}%
  \@setletterpagenum%
  \ifthenelse{\boolean{uwwkrpt@math}}
    {\raggedright}{}
  \@blockletter%
  \singlespacing%
  \noindent\@@author\\\@address\par\noindent%
  \@@date \par\noindent%
  \@chair, Chair\\*\@chairaddress\par\noindent%
  Dear \@chair:%
  \begin{center}\textbf{Re: Submission of my work term report.}\end{center}}
  {\par This report was written entirely by me and has not received any previous
  academic credit at this or any other institution.
  \ifthenelse{\boolean{uwwkrpt@math}}{%
    \par The Faculty of Mathematics requests that you evaluate this report
    for command of topic and technical content/analysis.  Following your
    assessment, the report, together with your evaluation, will be submitted
    to the Math Undergrad Office for evaluation on campus by qualified
    work report markers.  The combined marks will determine whether the
    report will receive credit and whether it will be considered for an
    award.
    \par I would like to thank you for your assistance in preparing this
    document.}{}%
  \par\noindent
  \begin{minipage}{\textwidth}
  \setlength{\parskip}{\uwwkrpt@parskip}
  \vspace*{\uwwkrpt@parskip}
  Yours sincerely,\\*%
  \rule{0in}{0.3in}\\*{\hrule \@width 3in}%
  \noindent\@@author, \@uwid
  \par\noindent
  Encl.%
  \end{minipage}
  \@setpostletterpagenum\uwwkrpt@spacing%
  \global\let\@@author\@empty
  \global\let\@@title\@empty
  \global\let\@@date\@empty
  \global\let\uwid\relax
  \global\let\@uwid\@empty
  \global\let\email\relax
  \global\let\@email\@empty
  \global\let\employer\relax
  \global\let\@employer\@empty
  \global\let\employeraddress\relax
  \global\let\@employeraddress\@empty
  \global\let\address\relax
  \global\let\@address\@empty
  \global\let\chair\relax
  \global\let\@chair\@empty
  \global\let\chairaddress\relax
  \global\let\@chairaddress\@empty
  \global\let\school\relax
  \global\let\@school\@empty
  \global\let\faculty\relax
  \global\let\@faculty\@empty
  \global\let\term\relax
  \global\let\@term\@empty
  \global\let\program\relax
  \global\let\@program\@empty
  \global\let\confidential\relax
  \global\let\@confidential\@empty
}
\newcommand{\frontmatter}{%
  \clearpage
  \@notmainsect%
  \pagenumbering{roman}%
  \uwwkrpt@spacing%
}
\newcommand{\mainmatter}{%
  \clearpage
  \@mainsect%
  \pagenumbering{arabic}%
  \ifthenelse{\boolean{uwwkrpt@math}}{\let\section\section@rig}
  \global\def\dotzero{}
  \global\def\@secdotzerostart##1{}
  \global\def\@secdotzeroend##1{}
  \ifthenelse{\boolean{uwwkrpt@math}}{%
    \renewcommand{\@secdotzerostart}[1]{%
      \let\quad@rig\quad
      \ifthenelse{\equal{##1}{section}}{%
        \renewcommand{\quad}{.0\quad@rig}%
        \renewcommand{\dotzero}{.0}}{\renewcommand{\dotzero}{}}
    }
    \renewcommand{\@secdotzeroend}[1]
      {\ifthenelse{\equal{##1}{section}}{\let\quad\quad@rig}}
  }{}%
  \global\def\@appendixtitle{}
}
\let\appendix@rig\appendix
\renewcommand{\appendix}{%
  \@mainsect%
  \ifthenelse{\boolean{uwwkrpt@math}}{%
    \renewcommand{\@secdotzerostart}[1]{\renewcommand{\dotzero}{}}
    \renewcommand{\@secdotzeroend}[1]{}
    }{}%
  \ifthenelse{\boolean{uwwkrpt@ece}}
    {\renewcommand{\@appendixtitle}{Appendix }}{}
  \appendix@rig%
}
\newcommand{\backmatter}{%
  \clearpage
  \@notmainsect%
  \ifthenelse{\boolean{uwwkrpt@math}}%
    {\renewcommand{\section}{\clearpage\section@rig}}{}%
}
\newenvironment{summary}
  {\@notmainsect}
  {\@mainsect}
\newcommand{\@notmainsect}{%
  \def\@sect##1##2##3##4##5##6[##7]##8{%
    \@tempskipa ##5\relax
    \ifdim \@tempskipa>\z@
      \begingroup
        ##6{%
          \@hangfrom{\hskip ##3}%
            \interlinepenalty \@M ##8\@@par}%
      \endgroup
      \csname ##1mark\endcsname{##7}%
      \addcontentsline{toc}{##1}{##7}%
    \else
      \def\@svsechd{%
        ##6{\hskip ##3\relax
        \@svsec ##8}%
        \csname ##1mark\endcsname{##7}%
        \addcontentsline{toc}{##1}{##7}}%
    \fi
    \@xsect{##5}}%
}

\newcommand{\@mainsect}{%
  \def\@sect##1##2##3##4##5##6[##7]##8{%
    \ifnum ##2>\c@secnumdepth
      \let\@svsec\@empty
    \else
      \refstepcounter{##1}%
      \@secdotzerostart{##1}
      \protected@edef\@svsec{\@appendixtitle\@seccntformat{##1}\relax}%
      \@secdotzeroend{##1}
    \fi
    \@tempskipa ##5\relax
    \ifdim \@tempskipa>\z@
      \begingroup
        ##6{%
          \@hangfrom{\hskip ##3\relax\@svsec}%
            \interlinepenalty \@M ##8\@@par}%
      \endgroup
      \csname ##1mark\endcsname{##7}%
      \addcontentsline{toc}{##1}{%
        \ifnum ##2>\c@secnumdepth \else
          \protect\numberline{\@appendixtitle\csname the##1\endcsname\dotzero}
          \protect\phantom{\@appendixtitle}%
        \fi
        ##7}%
    \else
      \def\@svsechd{%
        ##6{\hskip ##3\relax
        \@svsec ##8}%
        \csname ##1mark\endcsname{##7}%
        \addcontentsline{toc}{##1}{%
          \ifnum ##2>\c@secnumdepth \else
            \protect\numberline{\@appendixtitle\csname the##1\endcsname\dotzero}
            \protect\phantom{\@appendixtitle}%
          \fi
          ##7}}%
    \fi
    \@xsect{##5}}%
}
\let\section@rig\section
\renewcommand{\section}{\clearpage\section@rig}
\newcommand{\@setletterpagenum}{}
\newcommand{\@setpostletterpagenum}{\setcounter{page}{0}}
\ifthenelse{\boolean{uwwkrpt@math}}{%
  \renewcommand{\@setletterpagenum}{\setcounter{page}{1}}
  \renewcommand{\@setpostletterpagenum}{}
}{}
\ifthenelse{\boolean{uwwkrpt@ece} \or \boolean{uwwkrpt@se}}{%
  \renewcommand{\@setletterpagenum}{\setcounter{page}{2}}
  \renewcommand{\@setpostletterpagenum}{}
}{}
\renewcommand{\contentsname}{Table of Contents}
\let\tableofcontents@rig\tableofcontents
\renewcommand{\tableofcontents}{%
  \clearpage
  \begin{singlespacing}
  \setlength{\parskip}{0pt}
  \tableofcontents@rig\par
  \end{singlespacing}
}
\renewcommand*\l@section[2]{%
    \ifnum \c@tocdepth >\m@ne
      \addpenalty{-\@highpenalty}%
      \vskip 1.0em \@plus\p@
      \setlength\@tempdima{1.5em}%
      \begingroup
        \parindent \z@ \rightskip \@pnumwidth
        \parfillskip -\@pnumwidth
        \leavevmode \bfseries
        \advance\leftskip\@tempdima
        \hskip -\leftskip
        #1\nobreak\
          \leaders\hbox{$\m@th
          \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
          mu$}\hfil\nobreak\hb@xt@\@pnumwidth{\hss #2}\par
        \penalty\@highpenalty
      \endgroup
    \fi%
  }
\newcommand{\listoffigures@intoc}{\relax}
\newcommand{\listoftables@intoc}{\relax}
\ifthenelse{\boolean{uwwkrpt@ece} \or \boolean{uwwkrpt@se}}{%
  \renewcommand{\listoffigures@intoc}{%
    \addcontentsline{toc}{section}{List of Figures}}
  \renewcommand{\listoftables@intoc}{%
    \addcontentsline{toc}{section}{List of Tables}}
}{}
\let\listoffigures@rig\listoffigures
\renewcommand{\listoffigures}{%
  \clearpage
  \begin{singlespacing}
  \listoffigures@rig \listoffigures@intoc%
  \end{singlespacing}
}
\let\listoftables@rig\listoftables
\renewcommand{\listoftables}{%
  \clearpage
  \begin{singlespacing}
  \listoftables@rig \listoftables@intoc%
  \end{singlespacing}
}
\let\table@rig\table
\let\endtable@rig\endtable
\let\figure@rig\figure
\let\endfigure@rig\endfigure
\renewenvironment{figure}[1][p]{\begin{figure@rig}[#1]}{\end{figure@rig}}
\renewenvironment{table}[1][p]{\begin{table@rig}[#1]}{\end{table@rig}}
\ifthenelse{\boolean{uwwkrpt@ece}
            \or \boolean{uwwkrpt@math}
            \or \boolean{uwwkrpt@se}}{%
  \renewenvironment{figure}[1][htbp]{\begin{figure@rig}[#1]}{\end{figure@rig}}
  \renewenvironment{table}[1][htbp]{\begin{table@rig}[#1]}{\end{table@rig}}
}{}
\bibliographystyle{ieeetr}
\let\bib@rig\bibliography
\renewcommand{\bibliography}[1]{%
  \clearpage
  \begin{singlespacing}
  \bibliography@intoc \bib@rig{#1}\par
  \end{singlespacing}
}
\newcommand{\refn@me}{References}
\newcommand{\bibliography@intoc}{%
  \renewcommand{\refname}{%
    \addtocounter{section}{1}%
    \arabic{section}\hspace{2.5ex}\refn@me%
    \addcontentsline{toc}{section}{%
      \numberline{\arabic{section}}{\refn@me}}}%
}
\ifthenelse{\boolean{uwwkrpt@ece}
            \or \boolean{uwwkrpt@math}
            \or \boolean{uwwkrpt@se}}{%
  \renewcommand{\bibliography@intoc}{%
      \addcontentsline{toc}{section}{\refn@me}}%
}{}
\endinput
%%
%% End of file `uw-wkrpt.cls'.
