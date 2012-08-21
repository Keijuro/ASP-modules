%%
%% ���̃X�^�C���t�@�C���́C�l�H�m�\�w��s�̐l�H�m�\�w��̂��߂̃X�^�C���t
%% �@�C���ł��D
%%
%% jsai.bst�͓d�͒����������̏��䐳�ꎁ�����삵��jalpha.bst �����ƂɁC���̑�
%% �̃X�^�C���t�@�C���́i���j�E���X�̍�����������삵���o�[�W����1.1������
%% �Ɂi���jZoo.COM�Ɛl�H�m�\�w����ς������̂ł��D���䎁���тɍ������ɂ�
%% �{�X�^�C���t�@�C���̎g�p�ɂ�萶�������ɑ΂���ӔC�͈�؂���܂���D
%%
%% ���̃X�^�C���t�@�C���̒��쌠�́Cjsai.bst �������C�l�H�m�\�w��ɂ���܂��D
%% jsai.bst �̒��쌠�́C�I���W�i�������ɂ��Ă͏��䎁�ɁC���ϕ����ɂ��Ă�
%% �l�H�m�\�w��ɁC���ꂼ�ꂠ��܂��D
%%
%% 
%% This is file `jsaiart.cls',
%% 
\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{jsaiart}[1999/09/20]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{jsai2e}}

%% Article Style
\newif\if@jsaiart
\@jsaiartfalse
\DeclareOption{jsaiart}{\@jsaiarttrue}
\newif\if@final
\@finalfalse
\DeclareOption{final}{\@finaltrue}

\newif\if@jaws \@jawsfalse
\DeclareOption{jaws}{\@jawstrue}

\ProcessOptions

\LoadClass{jsai2e}


\def\@JAWSYEAR{\number\year}
\def\jawsyear#1{\gdef\@JAWSYEAR{#1}}

\if@jaws
\if@english
\renewcommand{\journalname}{Proceedings of JAWS\@JAWSYEAR}
\else
\renewcommand{\journalname}{JAWS\@JAWSYEAR �\�e�W}
\fi
\def\Volume{}
\fi

%% 
%%HEADER STYLE
\def\Fbox#1{\setlength{\unitlength}{1mm}
    \begin{picture}(16,4)%
    \put(8,2){\oval(16,3.5)}%
    \put(0,0){\makebox(16,4){\hss{\bf #1}\hss}}%
    \end{picture}%
}
\def\DFbox#1{\setlength{\unitlength}{1mm}
    \begin{picture}(20,4)%
    \put(10,2){\oval(20,3.5)}%
    \put(0,0){\makebox(20,4){\hss{\bf #1}\hss}}%
    \end{picture}%
}
\def\WDFbox#1{\setlength{\unitlength}{1mm}
    \begin{picture}(32,4)%
    \put(16,2){\oval(32,3.5)}%
    \put(0,0){\makebox(32,4){\hss{\bf #1}\hss}}%
    \end{picture}%
}
%% 2008.08.13-begin by morita
\def\WWDFbox#1{\setlength{\unitlength}{1mm}
    \begin{picture}(36,4)%
    \put(18,2){\oval(36,3.5)}%
    \put(0,0){\makebox(36,4){\hss{\bf #1}\hss}}%
    \end{picture}%
}
%% 2008.08.13-end by morita
%%
\def\GIbox#1{\fbox{\rule[-.5mm]{0mm}{5mm}{\hbox to 5mm{%
\kern.4ex
\hss {\reset@font\LARGE\bfseries #1}\hss }}}}
%%

\if@jaws\@originalpapertrue\fi

\def\type@technicalpaper{%
  \fboxsep=.5mm
  \vbox to 12mm{%
  \Fbox{�_\hskip1zw ��}
  \hfill
  \vtop{\hbox to 33.5mm{\hss\smash{%
   \reset@font\slarge\sffamily\slshape Technical Papers}\hss}%
   \nointerlineskip\vskip1mm
   \hbox to 33.5mm{\leaders\hrule height.1mm\hfil}}%
  \unitlength=.3mm
  \begin{picture}(5.5,12.5)
   \put(0,-3){\line(2,5){6}}%
  \end{picture}\par
  \vss}
\nointerlineskip%%\vskip3mm
}

\def\type@researchnote{%
   \fboxsep=.5mm
   \vbox to 12mm{%
   \WDFbox{�V���[�g�m�[�g}\hfill
   \vtop{\hbox to 31.5mm{\hss %
       {\reset@font\slarge\sffamily\slshape Research Notes}\hss}%
   \nointerlineskip\vskip1mm
   \hbox to 31.5mm{\leaders\hrule height.1mm\hfil}}%
   \unitlength=.3mm
   \begin{picture}(5.5,12.5)
   \put(0,-3){\line(2,5){6}}%
   \end{picture}\par
   \vss}
   \nointerlineskip%%\vskip5mm
}

\def\type@technicalreport{%
  \vbox to 12mm{%
  \GIbox{�Z}\hskip1mm\GIbox{�p}\hskip1mm\GIbox{��}\hskip1mm\GIbox{��}%
  \hfill
  \vtop{\hbox to 33.5mm{\hss\smash{%
        \reset@font\slarge\sffamily\slshape Technical Reports}\hss}%
   \nointerlineskip\vskip1mm
  \hbox to 33.5mm{\leaders\hrule height.1mm\hfil}}%
  \unitlength=.3mm
  \begin{picture}(5.5,12.5)
  \put(0,-3){\line(2,5){6}}%
  \end{picture}\par
  \vss}
  \nointerlineskip%%\vskip5mm
}

\def\type@Specialissue{%
  \vbox to 12mm{\Fbox{��\hskip1zw �W}
  \hskip3mm\@issueon
  \vss}%
\nointerlineskip
}

\def\type@specialissue{%
  \vbox to 12mm{\DFbox{��\hskip1zw ��\hskip1zw �W}
  \hskip3mm\@issueon
  \vss}%
\nointerlineskip
}

\def\type@specialpaper{%
  \vbox to 12mm{\DFbox{���W�_��}
  \hskip3mm\@issueon
  \vss}%
\nointerlineskip
}
\def\type@interimreport{%
  \vbox to 12mm{\Fbox{��\hskip1zw ��}
  \hskip3mm\@issueon
  \vss}%
\nointerlineskip
}

\def\type@surveypaper{%
  \vbox to 12mm{\Fbox{��\hskip1zw ��}
  \hskip3mm\@issueon
  \vss}%
\nointerlineskip
}

\def\type@aimap{%
%%\if@final
%%\includegraphics[height=8mm]{../logo-eps/aimap.eps}\par
%%\else
  \vbox to 12mm{\makebox{{\Huge\sl A\kern-.25ex I}�}�b�v}
  \hskip3mm\@issueon
  \vss}%
\nointerlineskip
%%\fi

%%
%% 2008.08.13-begin by morita
\def\type@originalpaper{%
  \fboxsep=.5mm
  \vbox to 12mm{%
\if@jaws
  \DFbox{JAWS\@JAWSYEAR}
\else
  \Fbox{�����_��}
\fi
  \hfill
  \vtop{\hbox to 33.5mm{\hss\smash{%
   \reset@font\slarge\sffamily\slshape%
   \if@jaws JAWS\@JAWSYEAR\else Original Paper\fi%
    }\hss}%
   \nointerlineskip\vskip1mm
   \hbox to 33.5mm{\leaders\hrule height.1mm\hfil}}%
  \unitlength=.3mm
  \begin{picture}(5.5,12.5)
   \put(0,-3){\line(2,5){6}}%
  \end{picture}\par
  \vss}
\nointerlineskip%%\vskip3mm
}

\def\type@aifrontierpaper{%
  \fboxsep=.5mm
  \vbox to 12mm{%
  \WWDFbox{AI �t�����e�B�A�_��}
  \hfill
  \vtop{\hbox to 35.0mm{\hss\smash{%
   \reset@font\slarge\sffamily\slshape AI Frontier Paper}\hss}%
   \nointerlineskip\vskip1mm
   \hbox to 35.0mm{\leaders\hrule height.1mm\hfil}}%
  \unitlength=.3mm
  \begin{picture}(5.5,12.5)
   \put(0,-3){\line(2,5){6}}%
  \end{picture}\par
  \vss}
\nointerlineskip%%\vskip3mm
}

\def\type@shortpaper{%
  \fboxsep=.5mm
  \vbox to 12mm{%
  \Fbox{����_��}
  \hfill
  \vtop{\hbox to 33.5mm{\hss\smash{%
   \reset@font\slarge\sffamily\slshape Short Paper}\hss}%
   \nointerlineskip\vskip1mm
   \hbox to 33.5mm{\leaders\hrule height.1mm\hfil}}%
  \unitlength=.3mm
  \begin{picture}(5.5,12.5)
   \put(0,-3){\line(2,5){6}}%
  \end{picture}\par
  \vss}
\nointerlineskip%%\vskip3mm
}
%% 2008.08.13-end by morita

%% 2008.10.14-begin by morita
\def\type@exploratorypaper{%
  \fboxsep=.5mm
  \vbox to 12mm{%
  \Fbox{�G��_��}
  \hfill
  \vtop{\hbox to 57.0mm{\hss\smash{%
   \reset@font\slarge\sffamily\slshape Exploratory Research Paper}\hss}%
   \nointerlineskip\vskip1mm
   \hbox to 57.0mm{\leaders\hrule height.1mm\hfil}}%
  \unitlength=.3mm
  \begin{picture}(5.5,12.5)
   \put(0,-3){\line(2,5){6}}%
  \end{picture}\par
  \vss}
\nointerlineskip%%\vskip3mm
}
%% 2008.10.14-end by morita

%% 2008.11.06-begin by morita
\def\type@invitedpaper{%
  \fboxsep=.5mm
  \vbox to 12mm{%
  \Fbox{���Ҙ_��}
  \hfill
  \vtop{\hbox to 33.5mm{\hss\smash{%
   \reset@font\slarge\sffamily\slshape Invited Paper}\hss}%
   \nointerlineskip\vskip1mm
   \hbox to 33.5mm{\leaders\hrule height.1mm\hfil}}%
  \unitlength=.3mm
  \begin{picture}(5.5,12.5)
   \put(0,-3){\line(2,5){6}}%
  \end{picture}\par
  \vss}
\nointerlineskip%%\vskip3mm
}
%% 2008.10.06-end by morita

%%% 2002.10.14-begin by kamisima
\if@interimreport
 \@ShowCommentatorfalse
\else
 \if@surveypaper 
  \@ShowCommentatorfalse
 \else
  \if@aimap
   \@ShowCommentatorfalse
  \else
   \if@jaws
    \@ShowCommentatorfalse
   \else
   \@ShowCommentatortrue
   \fi
  \fi
 \fi
\fi
%%% 2002.10.14-end by kamisima
\if@english
 \let\@english\@technicalpaper
\fi
%%
%% 2008.10.15-begin by morita
%% 2008.11.06 modified by morita
\def\@maketitle{%
  \if@originalpaper          {\reset@font\large\bfseries \type@originalpaper}
  \else \if@aifrontierpaper  {\reset@font\large\bfseries \type@aifrontierpaper}
  \else \if@shortpaper       {\reset@font\large\bfseries \type@shortpaper}
  \else \if@exploratorypaper {\reset@font\large\bfseries \type@exploratorypaper}
  \else \if@Specialissue     {\reset@font\large\bfseries \type@Specialissue}
  \else \if@specialissue     {\reset@font\large\bfseries \type@specialissue}
  \else \if@specialpaper     {\reset@font\large\bfseries \type@specialpaper}
  \else \if@interimreport    {\reset@font\large\bfseries \type@interimreport}
  \else \if@surveypaper      {\reset@font\large\bfseries \type@surveypaper}
  \else \if@aimap            {\reset@font\large\bfseries \type@aimap}
  \else \if@invitedpaper     {\reset@font\large\bfseries \type@invitedpaper}
  \else {\reset@font\large\bfseries \type@originalpaper}
  \fi
  \fi
  \fi
  \fi
  \fi
  \fi
  \fi
  \fi
  \fi
  \fi
  \fi
%% 2008.10.15-end by morita
  
\if@english
%% NEW ADD 2000.11.20
  {\Huge\bfseries \@etitle \par} %% 2008.10.10 T.Kamishima
  \vskip1mm
  {\Eslarge \@esubtitle\par}
\else
\font\TMPfont=min10 at 33Q
\let\TMPfont\HUGE
  {\TMPfont\kanjiskip=-1H plus 1H minus 1H \@jtitle\par}
 \ifx\@jsubtitle\empty\else
 \nointerlineskip
 \vskip2mm
 {\LARGE \@jsubtitle\par}
 \fi
  \vskip2mm
  {\LARGE\bfseries \@etitle \par}
 \ifx\@esubtitle\empty
 \else
 \nointerlineskip
 \vskip2mm
%% {\Large \@esubtitle\par}
%% {\Eslarge\bfseries \@esubtitle\par}
 {\Eslarge \@esubtitle\par}
 \fi
%%  {\LARGE\bfseries \@etitle \par}
%%\else
%%  {\HUGE \@jtitle\par}
%%  \vskip2mm
%%  {\LARGE\bfseries \@etitle \par}
%% NEW ADD 2000.11.20
\fi
\vskip20H
%% \@ifundefined{@author}{}{\@author}
\@ifundefined{@author}{}{%
      \noindent
      \begin{tabular}[t]{l}%
      \@author
      \end{tabular}\par}
\vskip20H
%%
 \ifvoid\@keywordbox
 \else
  \nointerlineskip
  \leavevmode\box\@keywordbox\par
 \fi
%%\vskip\baselineskip
 \ifvoid\@summarybox
 \else
  \vskip\baselineskip
  \leavevmode\box\@summarybox\par
 \fi
  \nointerlineskip
  \vskip12mm
  \vspace*{0mm}
}

\endinput
%% 
%% End of file `jsaiart.cls'.
%%