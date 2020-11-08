\LoadClassWithOptions{article}

\usepackage{makecell}

\def\submissionreason#1{\def\@submissionreason{#1}}

\def\committeei#1{\def\@committeei{#1}}
\def\committeeii#1{\def\@committeeii{#1}}
\def\committeeiii#1{\def\@committeeiii{#1}}
\def\committeeiv#1{\def\@committeeiv{#1}}

% This part has been pulled out from the article.cls file
% and changed appropriately.
\def\maketitle{\begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \null
%    \vskip 2em
    \begin{center}%
        {\LARGE \@title \par}%
        \vskip 7em%
        {\large
            \lineskip .75em%
            \begin{tabular}[t]{c}%
                \@author
            \end{tabular}\par
        }%
        \vskip 3.5em%
        {\large \@date \par}%       % Set date in \large size.
        \vskip 3.5em
        \@submissionreason \\
        \vskip 3.5em
        {\large Thesis Committee} \\
        \begingroup
            \setlength{\tabcolsep}{20pt}   % Default value: 6pt
            \renewcommand{\arraystretch}{5.5}    % Default value: 1
            \begin{tabular}{cc}
                \makecell{\@committeei} & \makecell{\@committeeii} \\
                \makecell{\@committeeiii} & \makecell{\@committeeiv} \\
            \end{tabular}
        \endgroup
    \end{center}\par
    \@thanks
    \vfil\null
    \end{titlepage}%
    \setcounter{footnote}{0}%
    \global\let\thanks\relax
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
