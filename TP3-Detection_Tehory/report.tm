<TeXmacs|1.99.5>

<style|generic>

<\body>
  <doc-data|<doc-title|TP3: Elements of Detection
  Theory>|<doc-author|<\author-data|<author-name|Martino Ferrari>>
    \;

    \;
  <|author-data>
    \;
  </author-data>>>

  <section|Elements of Detection Theory>

  <paragraph|Exercise 1>

  Given <math|X\<sim\>\<cal-N\><around*|(|0,1|)>> and
  <math|Y\<sim\>\<cal-N\><around*|(|0,2|)>>:

  <\big-figure|<image|plots/ms_tp3_e1_plt1.png|191pt|142pt||>>
    <math|X> and <math|Y> <with|font-shape|italic|pdf>
  </big-figure>

  compute <math|P<around*|[|-1\<less\>Y\<leqslant\>1|]>>,
  <math|P<around*|[|Y\<gtr\>3.5|]>>, <math|P<around*|[|-1\<less\>X\<leqslant\>1|]>>
  and <math|P<around*|[|X\<gtr\>3.5|]>>:

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|plots/ms_tp3_e1_plt2.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e1_plt3.png|191pt|142pt||>>>|<row|<cell|<image|plots/ms_tp3_e1_plt4.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e1_plt5.png|191pt|142pt||>>>>>>|graphical
  results of exercise 1>

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|P<around*|[|-1\<less\>Y\<leqslant\>1|]>=0.393>>|<cell|>|<cell|<math|P<around*|[|Y\<gtr\>3.5|]>=0.0401>>>|<row|<cell|<math|P<around*|[|-1\<less\>X\<leqslant\>1|]>>=0.683>|<cell|>|<cell|<math|P<around*|[|X\<gtr\>3.5|]>=0.000233>>>>>>|Numerical
  results of exercise 2>

  <paragraph|Exercise 2>

  Given <math|X\<sim\>\<cal-N\><around*|(|30,10|)>> that denote the peak
  temperature of Geneva in June, what is <math|P<around*|[|X\<gtr\>40|]>>,
  <math|P<around*|[|X\<leqslant\>15|]>> and
  <math|P<around*|[|20\<less\>X\<leqslant\>40|]>>:

  \ <big-figure|<tabular|<tformat|<table|<row|<cell|<image|plots/ms_tp3_e2_plt1.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e2_plt2.png|191pt|142pt||>>>|<row|<cell|<image|plots/ms_tp3_e2_plt3.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e2_plt4.png|191pt|142pt||>>>>>>|graphical
  results of exercise 2 >

  The numerical results are:

  \ <big-table|<tabular|<tformat|<table|<row|<cell|<math|P<around*|[|X\<gtr\>40|]>=0.159>>|<cell|>|<cell|<math|P<around*|[|X\<leqslant\>15|]>=0.0668>>>|<row|<cell|<math|P<around*|[|20\<less\>X\<leqslant\>40|]>>=0.683>|<cell|>|<cell|>>>>>|Numerical
  results of exercise 2>

  <paragraph|Exercise 3>

  Let <math|X> be a Gaussian random variable, for which <math|E[X] = 0> and
  <math|P [\|X\| \<leq\> 10] = 0.1>. What is <math|\<sigma\><rsub|X>>?

  <math|P<around*|[|<around*|\||X|\|>\<leq\>10|]>> is equivalent to
  <math|P<around*|[|-10\<less\>X\<leq\>10|]>>. To find
  <math|\<sigma\><rsub|X>> we have to find:

  <\equation*>
    \<sigma\><rsub|X>:<around*|[|cdf<around*|(|\<cal-N\><around*|(|0,\<sigma\><rsub|X>|)>,10|)>-cdf<around*|(|\<cal-N\><around*|(|0,\<sigma\><rsub|X>|)>,-10|)>|]>=0.1
  </equation*>

  This results in <math|\<sigma\><rsub|X>=75.58>

  <paragraph|Exercise 4>

  Next to the <math|Q>-function, the communications field uses
  the<with|font-shape|italic| complementary error function> (ERFC) for the
  tail probabilities of Gaussian random variables. It is defined as:

  <\equation*>
    ercf<around*|(|n|)>=<frac|2|<sqrt|\<pi\>>><big|int><rsub|n><rsup|\<infty\>>e<rsup|-x<rsup|2>>\<partial\>x
  </equation*>

  Prove that:

  <\equation*>
    Q<around*|(|n|)>=<frac|1|2>ercf<around*|(|<frac|n|<sqrt|2>>|)>
  </equation*>

  \;

  <\equation*>
    Q<around*|(|n|)>=<with|color|dark red|<frac|1|<sqrt|2\<pi\>>><big|int><rsub|n><rsup|\<infty\>>e<rsup|-<frac|x<rsup|2>|2>>\<partial\>x>
  </equation*>

  <\equation*>
    <frac|1|2>ercf<around*|(|<frac|n|<sqrt|2>>|)>=<frac|1|2>\<cdot\><frac|2|<sqrt|\<pi\>>>\<cdot\><big|int><rsub|<frac|n|<sqrt|2>>><rsup|\<infty\>>e<rsup|-x<rsup|2>>\<partial\>x=<frac|1|<sqrt|\<pi\>>>\<cdot\><frac|1|<sqrt|2>><big|int><rsub|n><rsup|\<infty\>>e<rsup|-<around*|(|<frac|x|<sqrt|2>>|)><rsup|2>>\<partial\>x=<with|color|dark
    red|<frac|1|<sqrt|2\<pi\>>><big|int><rsub|n><rsup|\<infty\>>e<rsup|-<frac|x<rsup|2>|2>>\<partial\>x>
  </equation*>

  <section|Bayesian and Neyman-Pearson Test>

  <paragraph|Exercise 1>

  Let there be two hypothesizes, <math|H<rsub|0>> and <math|H<rsub|1>>:

  <\equation*>
    <around*|{|<tabular|<tformat|<table|<row|<cell|H<rsub|0>:X=Z>>|<row|<cell|H<rsub|1>:X=\<mu\><rsub|1>+Z>>>>>|\<nobracket\>>
  </equation*>

  where <math|Z \<sim\> \<cal-N\>(0, 1)> and <math|\<mu\><rsub|1>=1>.

  The separation threshold <math|\<tau\>> for the MAP hypotesis is:
  <math|\<tau\>=0.5>\ 

  <\big-figure|<image|plots/ms_tp3_e4_plt1.png|191pt|142pt||>>
    <math|H<rsub|0> and H<rsub|1>>
  </big-figure>

  <math|p<rsub|m>=0.309 >

  <math|p<rsub|d>=<around*|(|1-p<rsub|m>|)>\<rightarrow\>0.69>1

  <paragraph|Exercise 2>

  Let there be two hypothesizes, <math|H<rsub|0>> and <math|H<rsub|1>>:

  <\equation*>
    <around*|{|<tabular|<tformat|<table|<row|<cell|H<rsub|0>:X=Z>>|<row|<cell|H<rsub|1>:X=\<mu\><rsub|1>+Z>>>>>|\<nobracket\>>
  </equation*>

  where <math|Z \<sim\> \<cal-N\>(0, 1)> and
  <math|\<mu\><rsub|1>=<around*|{|0,1,2|}>>.

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|plots/ms_tp3_e5_plt0.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e5_plt1.png|191pt|142pt||>>>|<row|<cell|<image|plots/ms_tp3_e5_plt2.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e5_RCO.png|191pt|142pt||>>>>>>|graphical
  results of exercise 3>

  <\equation*>
    \<tau\><rsub|0>=0<space|2em>\<tau\><rsub|1>=0.5<space|2em>\<tau\><rsub|2>=1
  </equation*>

  <paragraph|Exercise 4>

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|plots/ms_tp3_e6_h0h1.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e6_pfpm.png|191pt|142pt||>>>|<row|<cell|<image|plots/ms_tp3_e6_perr.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e6_sim.png|191pt|142pt||>>>>>>|graphical
  results of exercise 2>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|MathJax-Element-1-Frame|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Element-2-Frame|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Element-3-Frame|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Element-4-Frame|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-1|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-10|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-11|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-12|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-13|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-14|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-15|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-16|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-17|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-18|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-19|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-2|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-20|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-21|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-22|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-23|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-24|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-25|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-26|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-27|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-28|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-29|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-3|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-30|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-4|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-5|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-6|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-7|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-8|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|MathJax-Span-9|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-1|<tuple|1|1|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-10|<tuple|4|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-11|<tuple|2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-12|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-13|<tuple|4|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-14|<tuple|6|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-15|<tuple|5|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-16|<tuple|7|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-17|<tuple|6|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|1|1|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-3|<tuple|1|1|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-4|<tuple|2|1|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-5|<tuple|1|2|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-6|<tuple|2|2|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-7|<tuple|3|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-8|<tuple|2|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-9|<tuple|3|?|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <\tuple|normal>
        <with|mode|<quote|math>|X> and <with|mode|<quote|math>|Y>
        <with|font-shape|<quote|italic>|pdf>
      </tuple|<pageref|auto-3>>

      <tuple|normal|results of the first exercise|<pageref|auto-4>>

      <tuple|normal|results of the second exercise|<pageref|auto-6>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Elements
      of Detection Theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|4tab>|Exercise 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.15fn>>
    </associate>
  </collection>
</auxiliary>