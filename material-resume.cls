% Intro Options
\ProvidesClass{material-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{tikz,lipsum}
\usepackage[most]{tcolorbox}

% Color definitions
\definecolor{w}{HTML}{ffffff} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{purp}{HTML}{673AB7}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/roboto/]{Roboto-Light}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #1 \normalfont}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{date}\fontspec[Path = fonts/roboto/]{Roboto-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}
\definecolor{nameSection}{HTML}{03A9F4} 
\definecolor{primaryDark}{HTML}{0D47A1}
\definecolor{background}{HTML}{E0E0E0}
% Headings command
\titleformat{\section}{
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{12pt}{20pt}\selectfont\raggedright}{}{0em}{\vspace{-10pt}}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{10pt}\selectfont\bfseries}{}{0em}{\vspace{-7pt}}

% runsubsect
\newcommand{\runsubsect}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{9pt}{8pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descrip}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/roboto/]{Roboto-Medium}\fontsize{8pt}{10pt}\selectfont {#1 } \normalfont}
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/roboto/]{Roboto-Medium}\fontsize{8pt}{10pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\loc}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/roboto/]{Roboto-Medium}\fontsize{9pt}{12pt}\selectfont {#1\\} \normalfont}

\newcommand{\reducedstrut}{\vrule width 0pt height .9\ht\strutbox depth .9\dp\strutbox\relax}

% Name command
\newcommand{\namesect}[3]{
    \hspace{-\dimexpr\oddsidemargin+1.5in}%
    \colorbox{nameSection}{
        \parbox{\dimexpr\paperwidth+5\fboxsep}{
            \vspace{.5\baselineskip}  %% this line added
            \centering{
                \color{white}
                \fontsize{25pt}{60pt}
                \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #1 
                \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
            } \\[5pt]
            \centering{
                \color{white}
                \fontspec[Path = fonts/roboto/]{Roboto-Light}\fontsize{11pt}{14pt}\selectfont #3
            }
            \vspace{.5\baselineskip}  %% this line added
        }
    }
}

\newtcolorbox{materialbox}[1]{
    boxrule=0pt,
    top=0pt,
    colback=white,
    colframe=purp,
    enhanced,
    drop shadow,
    title=\protect\section{#1},
    fontupper=\color{black},
    fonttitle={\color{white}}
}

 \geometry{
     inner=1mm,
     outer=1mm,
     top=0mm,
     bottom=1mm,
 }
