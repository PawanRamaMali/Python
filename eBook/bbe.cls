%% TEMPLATE WRITER: SAY OL  %%
%% EMAIL: say_ol@yahoo.com  %%
%% WEBSITE: khtug.blogspot.com  %%
%% PERSONAL BLOG: bunnybookshelf.blogspot.com  %%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bbe}[2020/04/20]
\LoadClassWithOptions{book}
% geometry
\RequirePackage{geometry}
\geometry{%
	left=1cm,%
	right=1cm,%
	top=1.5cm,%
	bottom=1.5cm,%
	bindingoffset=0cm}
% math font
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{arev}
\RequirePackage[sfdefault]{roboto}%change font to roboto
% color
\RequirePackage[table]{xcolor}
\DeclareOption{black}{%
	\colorlet{bbe}{black}
	\colorlet{blue}{black}
	\colorlet{brown}{black}
	\colorlet{cyan}{black}
	\colorlet{darkgray}{black}
	\colorlet{gray}{black}
	\colorlet{green}{black}
	\colorlet{lime}{black}
	\colorlet{magenta}{black}
	\colorlet{olive}{black}
	\colorlet{orange}{black}
	\colorlet{pink}{black}
	\colorlet{purple}{black}
	\colorlet{red}{black}
	\colorlet{teal}{black}
	\colorlet{violet}{black}
	\colorlet{yellow}{black}
}
\DeclareOption{blue}{\colorlet{bbe}{blue}}
\DeclareOption{brown}{\colorlet{bbe}{brown}}
\DeclareOption{cyan}{\colorlet{bbe}{cyan}}
\DeclareOption{darkgray}{\colorlet{bbe}{darkgray}}
\DeclareOption{gray}{\colorlet{bbe}{gray}}
\DeclareOption{green}{\colorlet{bbe}{green}}
\DeclareOption{lime}{\colorlet{bbe}{lime}}
\DeclareOption{magenta}{\colorlet{bbe}{magenta}}
\DeclareOption{olive}{\colorlet{bbe}{olive}}
\DeclareOption{orange}{\colorlet{bbe}{orange}}
\DeclareOption{pink}{\colorlet{bbe}{pink}}
\DeclareOption{purple}{\colorlet{bbe}{purple}}
\DeclareOption{red}{\colorlet{bbe}{red}}
\DeclareOption{teal}{\colorlet{bbe}{teal}}
\DeclareOption{violet}{\colorlet{bbe}{violet}}
\DeclareOption{yellow}{\colorlet{bbe}{yellow!45!red}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{magenta}
\ProcessOptions\relax
% floating object
\RequirePackage{float}
% graphic
\RequirePackage{graphicx}
% table
\RequirePackage{colortbl}
\arrayrulecolor{bbe}
% picture
\RequirePackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{angles}
\usetikzlibrary{quotes}
\usetikzlibrary{arrows.meta}
\tikzset{%
	every picture/.style={%
		line width=1pt,%
		fill=bbe,%
		draw=bbe,%
		text=blue,%
	},%
	>={Stealth[length=6pt,inset=2pt]}%
}
%
\RequirePackage[many]{tcolorbox}
\tcbset{
    colframe=magenta,
    colback=magenta!12!white,
    boxed title style={colback=magenta},
	breakable,
	enhanced,
	sharp corners,
	boxsep=1pt,
	attach boxed title to top left={yshift=-\tcboxedtitleheight,  yshifttext=-.75\baselineskip},
	boxed title style={boxsep=1pt,sharp corners},
    fonttitle=\bfseries\sffamily,
    drop lifted shadow
}
\newtcolorbox{solution}[1][]{
    no shadow,
    top=2ex,
    boxrule=0pt,
    leftrule=1.4pt,
    title={Solution},
    colframe=green!79!blue,
    colback=green!12!white,
    boxed title style={colback=green!79!blue},
    overlay unbroken and first={
        \node[below right,font=\small,color=magenta,text width=.8\linewidth]
        at (title.north east) {#1};
    }
}
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{activity}[1][]{
	title={Activity~\thetcbcounter},
	colframe=green,
	colback=green!22!white,
	coltitle=black,
	boxed title style={colback=green},
	overlay unbroken and first={
		\node[below right,font=\small,color=green,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{definition}[1][]{
	title={Definition~\thetcbcounter},
	colframe=blue,
	colback=blue!12!white,
	boxed title style={colback=blue},
	overlay unbroken and first={
		\node[below right,font=\small,color=blue,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{theorem}[1][]{
	title={Theorem~\thetcbcounter},
	colframe=violet,
	colback=violet!12!white,
    fontupper=\itshape,
	boxed title style={colback=violet},
	overlay unbroken and first={
		\node[below right,font=\small,color=violet,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{example}[1][]{
	title={Example~\thetcbcounter},
	colframe=magenta,
	colback=magenta!12!white,
	boxed title style={colback=magenta},
	overlay unbroken and first={
		\node[below right,font=\small,color=magenta,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{exercise}[1][]{
    title={Exercise~\thetcbcounter},
    colframe=red,
    colback=red!12!white,
    boxed title style={colback=red},
    overlay unbroken and first={
        \node[below right,font=\small,color=red,text width=.8\linewidth]
        at (title.north east) {#1};
    }
}
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{generality}[1][]{
	title={Generality~\thetcbcounter},
	colframe=teal,
	colback=teal!12!white,
	boxed title style={colback=teal},
	overlay unbroken and first={
		\node[below right,font=\small,color=teal,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{property}[1][]{
	title={Property~\thetcbcounter},
	colframe=teal,
	colback=teal!12!white,
	boxed title style={colback=teal},
	overlay unbroken and first={
		\node[below right,font=\small,color=teal,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox{remark}[1][]{
    title={\scalebox{1.75}{\raisebox{-.25ex}{\ding{43}}}~Remark},
    colframe=yellow!45!white,
    colback=yellow!45!white,
    coltitle=bbe,
    fontupper=\sffamily,
    boxed title style={colback=yellow!45!white},
    boxed title style={boxsep=1ex,sharp corners},%%
    overlay unbroken and first={
        \node[below right,font=\normalsize,color=red,text width=.8\linewidth]
        at (title.north east) {#1};
    }
}
\newtcolorbox{note}[1][]{
    title={\scalebox{1.75}{\raisebox{-0.1ex}{\ding{45}}}~Note},
    colframe=yellow!45!white,
    colback=yellow!45!white,
    coltitle=bbe,
    fonttitle=\bfseries\sffamily,
    fontupper=\frfamily,
    boxed title style={colback=yellow!45!white},
    boxed title style={boxsep=1ex,sharp corners},%%
    overlay unbroken and first={
        \node[below right,font=\normalsize,color=red,text width=.8\linewidth]
        at (title.north east) {#1};
    }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% table of contents
% chapter
\def\l@chapter#1#2{%
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
			\textcolor{bbe}{\bfseries\sffamily \chaptername~#1}\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss\color{bbe}#2}\par
			\penalty\@highpenalty
		\endgroup
	\fi}
% section
\renewcommand*\l@section{\@dottedtocline{1}{2ex}{3ex}}
\renewcommand*\l@subsection{\@dottedtocline{1}{5ex}{3ex}}
\def\@pnumwidth{6ex}
\def\@dotsep{.25}
\def\@dottedtocline#1#2#3#4#5{%
	\ifnum #1>\c@tocdepth \else
	\vskip \z@ \@plus.2\p@
	{\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
		\parindent #2\relax\@afterindenttrue
		\interlinepenalty\@M
		\leavevmode
		\@tempdima #3\relax
		\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
		\color{bbe}\bfseries\sffamily #4\nobreak
		\leaders\hbox{$\m@th
			\mkern \@dotsep mu\hbox{.}\mkern \@dotsep
			mu$}\hfill
		\nobreak
		\hb@xt@\@pnumwidth{\hfil\normalfont\color{bbe}#5}%
		\par}%
	\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part
\renewcommand*{\partname}{ផ្នែក}
% chapter
% \RequirePackage{tikz}
\def\@makechapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		\begin{tikzpicture}[overlay,every node/.style={font=\LARGE\bfseries\sffamily}]
		\node[right,minimum height=6ex,draw=bbe,fill=bbe,text=white](chapter)at(0,0){\chaptername~\thechapter};
		\node[right,text=bbe](title)at(chapter.east){ #1};
		\draw[very thick](chapter.north west)--([xshift=\linewidth]chapter.north west);
		\end{tikzpicture}}%
	%
	\fi\@@par\nobreak\vskip5ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% chapter star
\def\@makeschapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		\begin{tikzpicture}[overlay,every node/.style={font=\LARGE\bfseries\sffamily}]
		\node[right,minimum height=6ex,draw=bbe,fill=bbe,text=white](chapter)at(0,0){\hphantom{\chaptername}};
		\node[right,text=bbe](title)at(chapter.east){ #1};
		\draw[very thick](chapter.north west)--([xshift=\linewidth]chapter.north west);
		\end{tikzpicture}}%
	%
	\fi\@@par\nobreak\vskip5ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section spacing
\long\def\section{%
	\@startsection{section}{1}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\subsection{%
	\@startsection{subsection}{2}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\subsubsection{%
	\@startsection{subsubsection}{3}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\paragraph{%
	\@startsection{paragraph}{4}{\z@}{%
		1.5ex\@plus.2ex\@minus.2ex}{-1em}{\normalfont\bfseries}}
\long\def\subparagraph{%
	\@startsection{subparagraph}{4}{\parindent}{%
		1.5ex\@plus.2ex\@minus.2ex}{-1em}{\normalfont\bfseries}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section drawing
% \RequirePackage{tikz}
\def\@sect#1#2#3#4#5#6[#7]#8{%
	\ifnum #2>\c@secnumdepth
		\let\@svsec\@empty
	\else
		\refstepcounter{#1}%
		\protected@edef\@svsec{\@seccntformat{#1}\relax}%
	\fi
	\@tempskipa #5\relax
	\ifdim \@tempskipa>\z@
		\begingroup
		#6{%
			\vskip1ex\noindent%
			\begin{tikzpicture}[overlay,every node/.style={font=\large\bfseries\sffamily}]
			\node[right,minimum height=3.25ex,draw=bbe,fill=bbe,text=white,text width=5ex,align=center](section)at(0,0){\@svsec};
			\node[right,text=bbe](title)at(section.east){#8};
			\draw[very thick](section.north west)--([xshift=\linewidth]section.north west);
			\end{tikzpicture}
			\@@par\nobreak\vskip1ex}%
		\endgroup
		\csname #1mark\endcsname{#7}%
		\addcontentsline{toc}{#1}{%
			\ifnum #2>\c@secnumdepth \else
				\protect\numberline{\csname the#1\endcsname}%
			\fi
			#7}%
	\else
		\def\@svsechd{%
			#6{\hskip #3\relax
				\@svsec #8}%
			\csname #1mark\endcsname{#7}%
			\addcontentsline{toc}{#1}{%
				\ifnum #2>\c@secnumdepth \else
					\protect\numberline{\csname the#1\endcsname}%
				\fi
				#7}}%
	\fi
	\@xsect{#5}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section star
% \RequirePackage{tikz}
\def\@ssect#1#2#3#4#5{%
	\@tempskipa #3\relax
	\ifdim \@tempskipa>\z@
		\begingroup
		#4{%
			\noindent%
			\begin{tikzpicture}[overlay,every node/.style={font=\large\bfseries\sffamily}]
			\node[right,minimum height=3.25ex,draw=bbe,fill=bbe,text=white,text width=4ex,align=center](section)at(0,0){?};
			\node[right,text=bbe](title)at(section.east){#5};
			\draw(section.north west)--([xshift=\linewidth]section.north west);
			\end{tikzpicture}%
			\@@par\nobreak\vskip1ex}%
		\endgroup
	\else
		\def\@svsechd{#4{\hskip #1\relax #5}}%
	\fi
	\@xsect{#3}}
% reference
\RequirePackage{hyperref}
\hypersetup{%
	linktoc=all,%
	bookmarksnumbered,%
	bookmarksopen,%
	hidelinks}
\RequirePackage{bookmark}
\bookmarksetup{
	addtohook={%
		\ifnum\bookmarkget{level}=0%
		\bookmarksetup{color=red}%
		\fi%
		\ifnum\bookmarkget{level}=1%
		\bookmarksetup{color=blue}%
		\fi%
		\ifnum\bookmarkget{level}=2%
		\bookmarksetup{color=teal}%
		\fi}}
% enumerate
\RequirePackage[inline]{enumitem}
\RequirePackage{multicol}
\RequirePackage{pifont}
% set enumerate and itemize key for number of columns
% \RequirePackage{multicol}
\SetEnumitemKey{2}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{2},after=\end{multicols}}
\SetEnumitemKey{3}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{3},after=\end{multicols}}
\SetEnumitemKey{4}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{4},after=\end{multicols}}
\SetEnumitemKey{5}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{5},after=\end{multicols}}
\SetEnumitemKey{6}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{6},after=\end{multicols}}
%
\setlist[enumerate]{%
    parsep=0pt,%
    topsep=1ex,%
    partopsep=0pt,%
    leftmargin=*,%
    itemsep=.5ex,%
    labelsep=0.5ex,%
    format=\color{bbe}\small\bfseries\sffamily
}
% enumerate keys
\SetEnumitemKey{1}{label=\arabic*.}
\SetEnumitemKey{a}{label=\alph*.}
\SetEnumitemKey{A}{label=\Alph*.}
\SetEnumitemKey{i}{label=\roman*.}
\SetEnumitemKey{I}{label=\Roman*.}
% ball enumerate
\SetEnumitemKey{b1}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        ball color=blue]{\arabic*};
    }%
}
%
\SetEnumitemKey{ba}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        ball color=blue]{\alph*};
    }%
}
%
\SetEnumitemKey{bA}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        ball color=blue]{\Alph*};
    }%
}
%
\SetEnumitemKey{bi}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        ball color=blue]{\roman*};
    }%
}
%
\SetEnumitemKey{bI}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        ball color=blue]{\Roman*};
    }%
}
%
% circled enumerate
\SetEnumitemKey{c1}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe]{\arabic*};
    }%
}
%
\SetEnumitemKey{ca}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe]{\alph*};
    }%
}
%
\SetEnumitemKey{cA}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe]{\Alph*};
    }%
}
%
\SetEnumitemKey{ci}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe]{\roman*};
    }%
}
%
\SetEnumitemKey{cI}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe]{\Roman*};
    }%
}
%
% squared enumerate
\SetEnumitemKey{s1}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        sharp corners,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe,%
        text width=2ex,%
        align=center]{\arabic*};
    },%
}
%
\SetEnumitemKey{sa}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        sharp corners,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe,%
        text width=2ex,%
        align=center]{\alph*};
    }%
}
%
\SetEnumitemKey{sA}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        rounded corners=1pt,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe%
        text width=2ex,%
        align=center]{\Alph*};
    }%
}
%
\SetEnumitemKey{si}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        rounded corners=1pt,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe%
        text width=2ex,%
        align=center]{\roman*};
    }%
}
%
\SetEnumitemKey{sI}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        rounded corners=1pt,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe%
        text width=2ex,%
        align=center]{\Roman*};
    }%
}
%
% itemize keys
\SetEnumitemKey{f1}{label=\protect\ding{95}}
\SetEnumitemKey{f2}{label=\protect\ding{96}}
\SetEnumitemKey{f3}{label=\protect\ding{118}}
\SetEnumitemKey{f4}{label=\protect\ding{68}}
\SetEnumitemKey{b}{label=\protect\ensuremath{\bullet}}
\SetEnumitemKey{c}{label=\protect\ensuremath{\circ}}
\SetEnumitemKey{d}{label=\protect\ensuremath{\diamond}}
\SetEnumitemKey{t}{label=\protect\ensuremath{\triangleright}}
\SetEnumitemKey{p}{label=\protect\ding{43}}
\SetEnumitemKey{w}{label=\protect\ding{45}}
% styling enumerate
\setlist[enumerate,1]{1}
\setlist[enumerate,2]{a}
\setlist[enumerate,3]{i}
\setlist[enumerate,4]{A}
% styling itemize
\setlist[itemize]{%
	parsep=0pt,%
	topsep=1ex,%
	partopsep=0pt,%
	leftmargin=*,%
	itemsep=.5ex,%
	labelsep=.5ex,
    format=\color{bbe}}
\setlist[itemize,1]{f1}
\setlist[itemize,2]{f2}
\setlist[itemize,3]{f3}
\setlist[itemize,4]{f4}
% sub enumerate
\RequirePackage{tasks}
\settasks{%
	label=\alph*.,%
	label-format=\color{bbe}\bfseries\sffamily,%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=3ex,%
	item-indent=3.5ex,%
	column-sep=2ex,%
	before-skip=0ex,%
	after-skip=0ex,%
	after-item-skip=0.5ex%
}
\NewTasksEnvironment[%
	style=enumerate,%
	label=\alph*.,%
	label-format=\color{bbe}\bfseries\sffamily,%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=3ex,%
	item-indent=3.5ex,%
	column-sep=2ex,%
	before-skip=0ex,%
	after-skip=0ex,%
	after-item-skip=0.5ex]{Enumerate}[\item](2)
    \setlist[itemize]{%
        parsep=0pt,%
        topsep=1ex,%
        partopsep=0pt,%
        leftmargin=*,%
        itemsep=.5ex,%
        labelsep=.5ex,
        format=\color{bbe}}
\NewTasksEnvironment[%
	style=itemize,
	label=\ding{95},
	label-format=\color{bbe},%
	label-offset=1.45ex,%
	label-align=right,%
	label-width=1ex,%
	item-indent=2.45ex,%
	column-sep=2ex,%
    before-skip=0ex,%
    after-skip=0ex,%
	after-item-skip=0ex]{Itemize}[\item](2)
    %
    \NewTasksEnvironment[%
    style=enumerate,%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        ball color=blue]{\alph*};
    },%
    label-format=\upshape\small\bfseries\sffamily,%
    label-offset=0.5ex,%
    label-align=right,%
    label-width=3ex,%
    item-indent=3.5ex,%
    column-sep=2ex,%
    before-skip=0ex,%
    after-skip=0ex,%
    after-item-skip=0.5ex]{bEnumerate}[\item](2)
    %
    \NewTasksEnvironment[%
    style=enumerate,%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        fill=bbe]{\alph*};
    },%
    label-format=\upshape\small\bfseries\sffamily,%
    label-offset=0.5ex,%
    label-align=right,%
    label-width=3ex,%
    item-indent=3.5ex,%
    column-sep=2ex,%
    before-skip=0ex,%
    after-skip=0ex,%
    after-item-skip=0.5ex]{cEnumerate}[\item](2)
    %
    \NewTasksEnvironment[%
    style=enumerate,%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        rounded corners=1pt,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        fill=bbe]{\protect\parbox{1.5em}{\protect\centering\alph*}};
    },%
    label-format=\upshape\small\bfseries\sffamily,%
    label-offset=0.5ex,%
    label-align=right,%
    label-width=3ex,%
    item-indent=3.5ex,%
    column-sep=2ex,%
    before-skip=0ex,%
    after-skip=0ex,%
    after-item-skip=0.5ex]{sEnumerate}[\item](2)
    %
% caption
\RequirePackage{caption}
\RequirePackage{subcaption}
\DeclareCaptionFont{bbe}{\color{bbe}}
\captionsetup{%
	font=small,%
	skip=0pt,%
	labelfont={bbe,sf},%
	textfont={bbe,sf},%
	labelsep=period}
\captionsetup[sub]{%
	font=small,%
	skip=0.5ex,%
	labelfont={bbe,sf},%
	textfont={bbe,sf},%
	labelsep=period}
\setlength{\intextsep}{0pt}
\allowdisplaybreaks
%% change label color %%
\thm@headfont{\color{bbe}\bfseries\sffamily\bfseries}
\def\th@remark{%
	\thm@headfont{\color{bbe}\bfseries\sffamily\bfseries}%
	\normalfont % body font
	\thm@preskip\topsep \divide\thm@preskip\tw@
	\thm@postskip\thm@preskip
}
%% re-define proof environment %%
\renewenvironment{proof}[1][\color{bbe}\itshape\bfseries\sffamily\bfseries\proofname]{\par
	\pushQED{\qed}%
	\normalfont \topsep2\p@\@plus1\p@\relax
	\trivlist
	\item[\hskip\labelsep
	\color{bbe}\bfseries\sffamily
	#1\@addpunct{.}]\ignorespaces
}{%
	\popQED\endtrivlist\@endpefalse
}
%% re-define quite easy done symbol %%
\def\qedsymbol{\textcolor{bbe}{\ensuremath{\blacksquare}}}
%% paint color for bibiography counter %%
\def\@biblabel#1{\textcolor{bbe}{[#1]}}
%% footnote %%
\def\footnoterule{\kern -3pt\textcolor{bbe}{\hrule width \linewidth height 0.4pt}\kern 2.6pt}
\def\thefootnote{\color{bbe}\bfseries\sffamily(\arabic{footnote})}
%% change every inline maths to display maths %%
\everymath{\color{blue}\displaystyle}
%% increase base line skip in display formula
\addtolength{\jot}{1pt}
%% prevent book contents from vertical stretching %%
\raggedbottom
\def\preparelabel{Department of}
\def\preparename{Foundation Year}
\let\ps@origin\ps@plain
\def\ps@plain{%
	\let\@oddhead\@empty%
	\let\@evenhead\@oddhead%
	\def\@oddfoot{%
		\textcolor{bbe!89!white}{\footnotesize\itshape\preparelabel~\preparename}%និពន្ធ និងរៀបរៀង អូល សាយ
		\hfil\tikz[baseline=-0.8ex]{\node[sharp corners,inner sep=3pt,fill=bbe,text=white,font=\normalsize\bfseries\sffamily,text width=4ex,align=center]{\thepage};}%
		\hfil\textcolor{bbe!89!white}{\footnotesize\itshape Institute of Technology of Cambodia}}%
	\def\@evenfoot{%
		\textcolor{bbe!89!white}{\footnotesize\itshape Institute of Technology of Cambodia}%
		\hfil\tikz[baseline=-0.8ex]{\node[sharp corners,inner sep=3pt,fill=bbe,text=white,font=\normalsize\bfseries\sffamily,text width=4ex,align=center]{\thepage};}%
		\hfil\textcolor{bbe!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		}%
	}
%
\def\ps@bbe{%
	\def\@oddhead{%
		\textcolor{bbe!89!white}{\itshape \leftmark}%
		\hfil\textcolor{bbe!89!white}{\itshape \rightmark}}%
	\def\@evenhead{%
		\textcolor{bbe!89!white}{\itshape \rightmark}%
		\hfil\textcolor{bbe!89!white}{\itshape \leftmark}}%
	\def\@oddfoot{%
		\textcolor{bbe!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		\hfil\tikz[baseline=-0.8ex]{\node[sharp corners,inner sep=3pt,fill=bbe,text=white,font=\normalsize\bfseries\sffamily,text width=4ex,align=center]{\thepage};}%
		\hfil\textcolor{bbe!89!white}{\footnotesize\itshape Institute of Technology of Cambodia}}%
	\def\@evenfoot{%
		\textcolor{bbe!89!white}{\footnotesize\itshape Institute of Technology of Cambodia}%
		\hfil\tikz[baseline=-0.8ex]{\node[sharp corners,inner sep=3pt,fill=bbe,text=white,font=\normalsize\bfseries\sffamily,text width=4ex,align=center]{\thepage};}%
		\hfil\textcolor{bbe!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
	}%
}
%
\pagestyle{bbe}
%
\def\arraystretch{1.25}
%
\def\baselinestretch{1.2}
\def\setminus{\ensuremath{{}-{}}}
%
\RequirePackage{cancel}
\def\CancelColor{\color{bbe}}
%
% Define a simple command to set authors because standard classes use \author
\newcommand{\authors}[1]{\def\@authors{#1}}

% Redefine \maketitle for this class
\renewcommand{\maketitle}{
  \begin{titlepage}
    \centering
    \vspace*{5cm} % Adjust the vertical space as needed
    {\Huge\bfseries\sffamily \@title \par} % Document title
    \vspace{2cm}
    {\Large\bfseries\sffamily \@authors \par} % Authors
    \vspace{1cm}
    {\Large\bfseries\sffamily \@date \par} % Date
    \vfill
    % Optionally include additional details such as university name at the bottom
    {\large\bfseries\sffamily  \par}
    \vspace{1.5cm}
  \end{titlepage}
}

\endinput