		
	* Initiate the latex doc
	texdoc init "$script\stata_workshop_for_govt_officials", replace ///
		gropts(optargs(width=0.8\textwidth))
	
	/***
	% Set document type and scheme
	\documentclass[10pt]{beamer}
	\usetheme[progressbar=frametitle]{metropolis}

	% Load packages
	\usepackage{appendixnumberbeamer}
	\usepackage{booktabs}
	\usepackage[scale=2]{ccicons}
	\usepackage{pgfplots}
	\usepackage{xspace}
		\newcommand{\themename}{\textbf{\textsc{metropolis}}\xspace}
	\usepackage{stata}
	\usepackage{graphicx}

	\title{Stata Workshop} %% that will be typeset on the
	\subtitle{At MINAGRI} %% title page.
	\author{Roshni Khincha and Sakina Shibuya \\ DIME, World Bank}
	\date{August, 2018}

	\titlegraphic{%
		\includegraphics[width=.2\textwidth]{DIME}\hfill % I think I should probably ask for a better image for this thing....
		\includegraphics[width=.15\textwidth]{logo_minagri}\hfill
		\includegraphics[width=.2\textwidth]{logo_eu}
		}

	\makeatletter
	\setbeamertemplate{title page}{
		\begin{minipage}[b][\paperheight]{\textwidth}
			\vfill%
			\ifx\inserttitle\@empty\else\usebeamertemplate*{title}\fi
			\ifx\insertsubtitle\@empty\else\usebeamertemplate*{subtitle}\fi
			\usebeamertemplate*{title separator}
			\ifx\beamer@shortauthor\@empty\else\usebeamertemplate*{author}\fi
			\ifx\insertdate\@empty\else\usebeamertemplate*{date}\fi
			\vfill
			\ifx\inserttitlegraphic\@empty\else\inserttitlegraphic\fi
			\vspace*{1cm}
		\end{minipage}
		}
	\makeatother

	\begin{document}
		
	\maketitle

	\section{Section 1}

		% 1.1 Why learn stata?
		\begin{frame}
		
			\frametitle{\textsc{Why learn stata?}}
			\begin{center}
				\textbf{Excel vs Stata} \\ \text{Can I use Excel?}
			\end{center}
		
		\end{frame}

		
		\begin{frame}
			\frametitle{\textsc{Why learn stata?}}
			\begin{center}
				\Large\textbf{The main reasons to use Stata}
			\end{center}
			\begin{itemize}
				\item In Excel you make changes directly to the data and save new versions of the data set
			
				\item In Stata you make changes to the instructions on how to get from the raw data to the final analysis and save new versions of the instructions
			
				\item Since Stata is a more statistics oriented software, processing the data to create analytical products can be a lot easier. 
			
			\end{itemize}
		\end{frame}



		\begin{frame}
			\frametitle{\textsc{Why learn stata?}}
			\begin{center}
				\Large\textbf{The main reasons to use Stata}
			\end{center}
			\begin{itemize}
				\item Powerful tool with may capabilities:
				
				\begin{itemize}
					\item Descriptive statistics
					
					\item Inference statistics
					
					\item Complex data analysis
					
				\end{itemize}
				
				\item But it’s also good for beginner programmers:
				
				\begin{itemize}
					\item User friendly interface
					
					\item Relatively easy programming language that can be learned while you’re using the software
					
				\end{itemize}
			\end{itemize}
		\end{frame}	

		\begin{frame}
			\frametitle{\textsc{Why learn stata?}}
			\begin{center}
				\Large\textbf{What's the fuss about do-files?}
			\end{center}
			\begin{itemize}
				\item It’s through the do-file you communicate your work to other members in your team, both current and future
				\item Think of the do-files as instructions on how to get from raw data to final report
				\item For a simple task you can enter commands manually. But for more complex tasks you need to write a recipe, or a list of instructions
				
				\end{itemize}
			\end{frame}
		
	\begin{frame}
		\frametitle{\textsc{The basics of Stata}}
		\begin{center}
			\textbf{Stata interface}
		\end{center}
	\end{frame}
		
		
	\begin{frame}
		\frametitle{\textsc{The Stata interface}}
		
		\begin{figure}[H] 
		\centering
		\includegraphics[width=0.9\linewidth]{stata_interface}
		\end{figure}
	\end{frame}

	\begin{frame}

		\frametitle{\textsc{The Stata interface}}
			\begin{center}
				\textbf{The review window} 
			\end{center}
		\begin{itemize}
			\item  Provides a history of your actions
			\item  A convenient way to bring back your previous commands and modify it to do something new
			\item Double click on a command you want to use again and it will appear in your command window
			\begin{itemize}
				\item You can also click in command window and select the commands in the result window by using \textit{PageUp/PageDown} buttons (or \textit{fn+ArrowUp/ fn+ArrowDown} on Mac)
			\end{itemize}
			\item If a command is \textcolor{red}{red} in the review window, it means it did not finish because an error
		\end{itemize}
	\end{frame}

	\begin{frame}
		\frametitle{\textsc{The Stata interface}}
		\begin{center}
			\textbf{Filtering in variable and review windows} 
		\end{center}
	\begin{minipage}{0.45\linewidth}
		\begin{itemize}
			\item  Both the variable and the review window will soon be very crowded. You can then search both of them for commands/variables
			
			\item  If you do not see the search bar, click the little funnel symbol
			
			
		\end{itemize}
	\end{minipage}
 	\hfill
	\begin{minipage}{0.45\linewidth}
		\begin{figure}[H] 
			\centering
			\includegraphics[width=0.75\linewidth]{review_window}
		\end{figure}
		\begin{figure}[H] 
			\centering
			\includegraphics[width=0.75\linewidth]{variable_window}
		\end{figure}
	\end{minipage}
	\end{frame}


 
		\begin{frame}

			\frametitle{\textsc{The basics of Stata}}
			\begin{center}
				\textbf{How to open a data set in Stata} 
			\end{center}

		\end{frame}


		\begin{frame}
			\frametitle{\textsc{Opening datasets}}
			\begin{center}
				\Large\textbf{Three ways to tell Stata what to do}
			\end{center}
			\begin{itemize}
				\item Drop-down menus
				
				\begin{itemize}
					\item An easy place to start but quickly becomes inefficient
					
				\end{itemize}
				
				\item Command window
				
			\begin{itemize}
				\item Faster than menus but require that you are familiar with the command
				
			\end{itemize}
				\item Do-file
				
			\begin{itemize}
				\item The only feasible way to run long instructions
				
				\item Use menus and command window to figure out what you need to write, then copy to a do file
				
			\end{itemize}
			\end{itemize}
		\end{frame}



		\begin{frame}
			\frametitle{\textsc{Opening datasets}}
			\begin{center}
				\Large\textbf{Open a dataset - menus}
			\end{center}
			 \begin{figure}[H] 
				\centering
				\includegraphics[width=0.9\linewidth]{open_dataset_menu}
			\end{figure}
		\end{frame}

	\begin{frame}
		\frametitle{\textsc{Opening datasets}}
		\begin{center}
			\Large\textbf{Open a dataset - command window}
		\end{center}
		\begin{figure}[H] 
			\centering
			\includegraphics[width=0.9\linewidth]{open_dataset_command}
		\end{figure}
		\begin{itemize}
			\item When you use the menus, Stata produces the code for that action (except for Data Browse)
			\begin{itemize}
				\item Highlight, right-click and copy the code
				\item Paste the code in the command window
				\item Hit enter
			\end{itemize}
		\end{itemize}
	\end{frame}


	\begin{frame}
		\frametitle{\textsc{Tasks}}
		\begin{center}
			\Large\textbf{Task 1}
		\end{center}
		\begin{enumerate}
			\item Open Stata and then open the EICV household data set \textbf{cs\_s0\_s5\_household.dta} using the menu: File $\rightarrow$ Open. Navigate to where you saved the material for this lab. Select the data set and click \textit{Open}
			\item Browse to check that you have data: Data  $\rightarrow$ Data Editor  $\rightarrow$ Data Editor Browse 
			\item Describe to get additional information on the data: Data  $\rightarrow$ Describe data $\rightarrow$ Describe data in memory or in a file.
			\begin{itemize}
				\item A new window will open
				\item Select In memory and press OK
			\end{itemize}
		\end{enumerate}
	\end{frame}

	\begin{frame}
		\frametitle{\textsc{Tasks}}
		\begin{center}
			\Large\textbf{Task 1}
		\end{center}
		\begin{itemize}
			\item You can see that one the second command printed information on your screen.
			\begin{itemize}
				\item The first part is the command used
				\item The second part are the results
			\end{itemize}
		\end{itemize}

		 \begin{figure}[H] 
				\centering
				\includegraphics[width=0.9\linewidth]{task1}
		\end{figure}
	\end{frame}



	\begin{frame}
		\frametitle{\textsc{Tasks}}
		\begin{center}
			\Large\textbf{Task 1}
		\end{center}
		\begin{itemize}
			\item You can perform both tasks by typing the in your command prompt. This will yield the same results
			
			\item Type \textit{browse} in the command window and press enter
			
			\item Type \textit{describe} and press enter
			
		\end{itemize}
	\end{frame}





	\begin{frame}
		\frametitle{\textsc{The basics of stata}}
		\begin{center}
			\Large\textbf{Exploring a data set opened for the first time}
		\end{center}
	\end{frame}


	\begin{frame}
		\frametitle{\textsc{Exploring a new dataset}}
		\begin{center}
			\Large\textbf{The EICV data}
		\end{center}
		\begin{itemize}
			\item For our exercises we will explore part of EICV 4 data
			\item The data is a household survey collected between 2013 and 2014 by NISR
			\item It is a cross-section of more than 14 thousand Rwandese households both in rural and urban areas
			\item Close to 2 thousand of these households form a panel have been also interviewed in EICV 3		
		\end{itemize}
	\end{frame}

	\begin{frame}
		\frametitle{\textsc{Exploring a new dataset}}
		\begin{center}
			\Large\textbf{Types of variables}
		\end{center}
		\begin{itemize}
			\item 	In Stata, each variable (column) has to be either:
			\begin{itemize}
				\item string (text) – values are red when browsing
				\item numeric (number) – values are black or blue when browsing
			\end{itemize}
			\item Numbers \textbf{can} be stored as text, but text \textbf{cannot} be stored as number
			\begin{itemize}
				\item Not possible to do computations on numbers stored as text 		
			\end{itemize}
			\item Categorical variables should be stored as numeric variables and have labels
		\end{itemize}
	\end{frame}

	\begin{frame}
		\frametitle{\textsc{Exploring a new dataset}}
		\begin{center}
			\Large\textbf{How the data looks}
		\end{center}	
		\begin{figure}[H] 
			\centering
			\includegraphics[width=0.9\linewidth]{dataset1}
		\end{figure}
	\end{frame}
	\begin{frame}
		\frametitle{\textsc{Exploring a new dataset}}
		\begin{center}
			\Large\textbf{How the data actually is}
		\end{center}	
		\begin{figure}[H] 
			\centering
			\includegraphics[width=0.9\linewidth]{dataset2}
	\end{figure}	
	\end{frame}


	\begin{frame}
		\frametitle{\textsc{Exploring a new dataset}}
		\begin{center}
			\Large\textbf{Useful commands}
		\end{center}
		\begin{itemize}
			\item 	\textit{\underline{br}owse}: see all data in spreadsheet format
			\item \textit{\underline{d}escribe}: list of all variables in memory
			\begin{itemize}
				\item Total number of variables \& observations (size of matrix)
				\item Variable name, type, format, value label name, variable label
			\end{itemize}
			\item \textit{\underline{su}mmarize}: Basic statistics for numeric variables
			\begin{itemize}
				\item Obs (Number of observations), Mean, Std. Dev. (Standard deviation), Min (Minimum), Max (Maximum)
			\end{itemize}
			\item \textit{\underline{tab}ulate}: frequencies
			
		\end{itemize}
	\end{frame}

	\begin{frame}
		\frametitle{\textsc{Exploring a new dataset}}
		\begin{center}
			\Large\textbf{More commands}
		\end{center}
		\begin{itemize}
			\item 	\textit{codebook}: displays the following for each variable
		
			\begin{itemize}
				\item Type (more detail than describe)
				\item Number of unique values and number of missing values
				\item Range and units
				\item Examples of values (strings); tabulations (categorical); or mean, sd and percentiles (continuous)
				\item Warnings if embedded blanks (may or may not be ok)
			\end{itemize}
			\item \textit{labelbook}: displays the following for each stored value label
			\begin{itemize}
				\item Label definitions
				\item Which variables labels are applied to
			\end{itemize}
			\item \textit{\underline{l}ist}: lists all variables and observations
			\begin{itemize}
				\item Can qualify: \textit{“list if price \textless 5000”, “list in 1/10”}
			\end{itemize}
			\item \textit{\underline{su}mmarize, \underline{d}etail} : percentiles, variance, skewness, kurtosis
			
		\end{itemize}
	\end{frame}

	\begin{frame}
		\frametitle{\textsc{Tasks}}
		\begin{center}
			\Large\textbf{Task 2}
		\end{center}
		\begin{enumerate}
			\item Open the \textbf{cs\_s0\_s5\_household.dta} again. Use the command prompt this time.
			\item Explore the dataset
			\begin{itemize}
				\item browse - see the different colors in the columns
				\item describe - check the storage type column
				\item summarize - are there any statistics that might not make sense to interpret?
			\end{itemize}
			\item Learn more about the variable \textit{‘s5bq3a’}, the household estimated rent amount. What values does it take on? What is minimum, maximum, mean of this variable? How many unique values does it have?
		\end{enumerate}
		
	***/
		texdoc stlog, nooutput
			use "$data\cs_s0_s5_household.dta", clear
			tabulate s5bq3a
			summarize s5bq3a 
			codebook s5bq3a
		texdoc stlog close
	/***
		\end{frame}

	\begin{frame}
		\frametitle{\textsc{Tasks}}
		\begin{center}
			\Large\textbf{Task 2}
		\end{center}
		\begin{itemize}
			\item Learn more about the variable \textit{ur2012}, to learn about the proportion of urban and rural households in Rwanda
		\begin{itemize}
				\item
			
	***/
		texdoc stlog, nooutput	
			tabulate ur2012 
		texdoc stlog close
	/***	
				\item Create now a pie chart: Graphics $\rightarrow$ Pie chart, select \textit{ur2012} as Category variable and press OK
			\end{itemize}
		\item Now, create a pie-chart graph for the variable \textit{s5cq7}, the type drinking water source used. This time, use the command prompt!
			\begin{itemize}
				\item Use the code printed by the previous graph and replace the name of the variable
			\end{itemize}

		\end{itemize}
	\end{frame}

	\begin{frame}
		\frametitle{\textsc{Tis and resources}}
		\begin{itemize}
			\item Using help - Type \textit{help summarize} to get documentation on the summarize function
			\item Using search - Type \textit{search regression} to get general documentation on running regressions in Stata
			\item Google - Search what you want to do. There are many resources online (e.g. Statalist)
			
		\end{itemize}
	\end{frame}
		
\section{Section 2}

	\begin{frame}
		\frametitle{\textsc{Edit data in Stata}}
		\begin{center}
			\textbf{How can we delete irrelevant variables?}
		\end{center}
	\end{frame}

	\begin{frame}[fragile]
		\frametitle{\textsc{Edit data in Stata}}
		\begin{center}
		\Large\textbf{Delete variables}
		\end{center}
		\begin{itemize}
		\item blah blah
		\end{itemize}

	***/
		texdoc stlog
			use "$data\cs_s0_s5_household.dta", clear
			keep hhid province district ur2012 s5cq2 s5cq4 s5cq8 s5cq15 s5cq23 s5bq2 s5cq22 s5cq13 s5cq17 
		texdoc stlog close
	/***
	\end{frame}


	\section{Section 3}

	\end{document}
	***/

