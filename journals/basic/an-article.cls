%%
%% This is file `an-article.cls',
%% is a minimalist extension over the article class for scientific writing.
%% Includes base math code and algorithm environments. 
%% %% ----------------------------------------------------------------
%% Author:  Arvind Nayak
%% ----------------------------------------------------------------
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{an-article}[2022/07/24 Customized Article class]

%%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}

%%% fonts
%\RequirePackage{lmodern}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amsmath,amssymb,amsfonts,amsthm}

\RequirePackage{graphicx}

\RequirePackage{booktabs}
\RequirePackage[table, xcdraw]{xcolor}

\definecolor{html-blue}{HTML}{0645AD}
\RequirePackage[colorlinks]{hyperref}
\hypersetup{linkcolor=blue, citecolor=blue, urlcolor=html-blue}

\RequirePackage{titling}
\setlength{\droptitle}{-6em}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}
\RequirePackage[stretch=10]{microtype}
\RequirePackage{hyphenat}
\RequirePackage{ragged2e}
\RequirePackage{subfig}
\RequirePackage[top=1in, bottom=1.25in, left=1.55in, right=1.55in]{geometry}
\renewcommand{\baselinestretch}{1.15}
\RequirePackage[explicit]{titlesec}

%%% Code
\RequirePackage{listings}
\definecolor{comment}{RGB}{0,128,0} % dark green
\definecolor{string}{RGB}{255,0,0}  % red
\definecolor{keyword}{RGB}{0,0,255} % blue
\definecolor{backgroundColour}{rgb}{0.95,0.95,0.95}
\lstdefinestyle{mystyle}{backgroundcolor=\color{backgroundColour}, commentstyle=\color{comment}, stringstyle=\color{string}, keywordstyle=\color{keyword}, basicstyle=\footnotesize\ttfamily, numbersep=5pt, frame=lines, breaklines=true, prebreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\hookleftarrow}}, showstringspaces=false, upquote=true, tabsize=2}
\lstset{style=mystyle}
\RequirePackage[ruled,vlined]{algorithm2e}

%\pretitle{\begin{center}\fontsize{20pt}{20pt}\selectfont}
%\posttitle{\par\end{center}}
%\preauthor{\begin{center}\vspace{-6bp}\fontsize{14pt}{14pt}\selectfont}
%\postauthor{\par\end{center}\vspace{-25bp}}
%\predate{\begin{center}\fontsize{12pt}{12pt}\selectfont}
%\postdate{\par\end{center}\vspace{0em}}

%\titlespacing\section{0pt}{5pt}{5pt} % left margin, space before section header, space after section header
%\titlespacing\subsection{0pt}{5pt}{-2pt} % left margin, space before subsection header, space after subsection header
%\titlespacing\subsubsection{0pt}{5pt}{-2pt} % left margin, space before subsection header, space after subsection header

\RequirePackage{enumitem}
\setlist{itemsep=-2pt} % or \setlist{noitemsep} to leave space around whole list

%% End of file `personal-plain-article.cls'.