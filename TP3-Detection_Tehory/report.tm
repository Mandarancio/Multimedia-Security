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

  \;

  <paragraph|Exercise 1>

  Given <math|X\<sim\>\<cal-N\><around*|(|0,1|)>> and
  <math|Y\<sim\>\<cal-N\><around*|(|0,2|)>>:

  <\big-figure|<image|plots/ms_tp3_e1_plt1.png|191pt|142pt||>>
    <math|X> and <math|Y> <with|font-shape|italic|pdf>
  </big-figure>

  compute <math|P<around*|[|-1\<less\>Y\<leqslant\>1|]>>,
  <math|P<around*|[|Y\<gtr\>3.5|]>>, <math|P<around*|[|-1\<less\>X\<leqslant\>1|]>>
  and <math|P<around*|[|X\<gtr\>3.5|]>>:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|P<around*|[|-1\<less\>Y\<leqslant\>1|]>=\<Phi\><around*|(|<frac|1|2>|)>-\<Phi\><around*|(|-<frac|1|2>|)>=0.393>>|<cell|>|<cell|<math|P<around*|[|Y\<gtr\>3.5|]>=1-\<Phi\><around*|(|<frac|3.5|2>|)>=0.0401>>>|<row|<cell|<math|P<around*|[|-1\<less\>X\<leqslant\>1|]>>=<math|\<Phi\><around*|(|1|)>-\<Phi\><around*|(|-1|)>=>0.683>|<cell|>|<cell|<math|P<around*|[|X\<gtr\>3.5|]>=1-\<Phi\><around*|(|3.5|)>=0.000233>>>>>>|Numerical
  results of exercise 2>

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|plots/ms_tp3_e1_plt2.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e1_plt3.png|191pt|142pt||>>>|<row|<cell|<image|plots/ms_tp3_e1_plt4.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e1_plt5.png|191pt|142pt||>>>>>>|graphical
  results of exercise 1>

  \;

  <paragraph|Exercise 2>

  Given <math|X\<sim\>\<cal-N\><around*|(|30,10|)>> that denote the peak
  temperature of Geneva in June, what is <math|P<around*|[|X\<gtr\>40|]>>,
  <math|P<around*|[|X\<leqslant\>15|]>> and
  <math|P<around*|[|20\<less\>X\<leqslant\>40|]>>:

  The numerical results are:

  \ <big-table|<tabular|<tformat|<table|<row|<cell|<math|P<around*|[|X\<gtr\>40|]>=1-\<Phi\><around*|(|<frac|40-30|10>|)>=0.159>>|<cell|>|<cell|<math|P<around*|[|X\<leqslant\>15|]>=\<Phi\><around*|(|<frac|15-30|10>|)>=0.0668>>>|<row|<cell|<math|P<around*|[|20\<less\>X\<leqslant\>40|]>=\<Phi\><around*|(|<frac|40-30|10>|)>-\<Phi\><around*|(|<frac|20-30|10>|)>>=0.683>|<cell|>|<cell|>>>>>|Numerical
  results of exercise 2>

  \ <big-figure|<tabular|<tformat|<table|<row|<cell|<image|plots/ms_tp3_e2_plt1.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e2_plt2.png|191pt|142pt||>>>|<row|<cell|<image|plots/ms_tp3_e2_plt3.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e2_plt4.png|191pt|142pt||>>>>>>|graphical
  results of exercise 2 >

  <paragraph|Exercise 3>

  Let <math|X> be a Gaussian random variable, for which <math|E[X] = 0> and
  <math|P [\|X\| \<leq\> 10] = 0.1>. What is <math|\<sigma\><rsub|X>>?

  <math|P<around*|[|<around*|\||X|\|>\<leq\>10|]>> is equivalent to
  <math|P<around*|[|-10\<less\>X\<leq\>10|]>>. To find
  <math|\<sigma\><rsub|X>> we have to find:

  <\equation*>
    \<sigma\><rsub|X>:<around*|[|\<Phi\><around*|(|<frac|10|\<sigma\><rsub|X>>|)>-\<Phi\><around*|(|<frac|-10|\<sigma\><rsub|X>>|)>|]>=0.1
  </equation*>

  This results in <math|\<sigma\><rsub|X>=79.58>

  <paragraph|Exercise 4>

  Next to the <math|Q>-function, the communications field uses
  the<with|font-shape|italic| complementary error function> (ERFC) for the
  tail probabilities of Gaussian random variables. It is defined as:

  <\equation*>
    ercf<around*|(|n|)>=<frac|2|<sqrt|\<pi\>>><big|int><rsub|n><rsup|\<infty\>>e<rsup|-x<rsup|2>>d
    x
  </equation*>

  Prove that:

  <\equation*>
    Q<around*|(|n|)>=<frac|1|2>ercf<around*|(|<frac|n|<sqrt|2>>|)>
  </equation*>

  \;

  <\equation*>
    Q<around*|(|n|)>=<with|color|dark red|<frac|1|<sqrt|2\<pi\>>><big|int><rsub|n><rsup|\<infty\>>e<rsup|-<frac|x<rsup|2>|2>>d
    x>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|1|2>ercf<around*|(|<frac|n|<sqrt|2>>|)>=<frac|1|<sqrt|\<pi\>>>\<cdot\><big|int><rsub|<frac|n|<sqrt|2>>><rsup|\<infty\>>e<rsup|-x<rsup|2>>d
    x>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|x\<rightarrow\><frac|n|<sqrt|2>>>>|<row|<cell|>|<cell|>|<cell|u\<rightarrow\>n>>|<row|<cell|>|<cell|>|<cell|n=<sqrt|2>x\<rightarrow\>x=<frac|n|<sqrt|2>>>>|<row|<frac|1|<sqrt|\<pi\>>>\<cdot\><frac|1|<sqrt|2>>\<cdot\><big|int><rsub|n><rsup|\<infty\>>e<rsup|-<around*|(|<frac|u|<sqrt|2>>|)><rsup|2>>d
    u|<cell|>|<cell|<with|color|dark red|<frac|1|<sqrt|2\<pi\>>>\<cdot\><big|int><rsub|n><rsup|\<infty\>>e<rsup|-<around*|(|<frac|u|<sqrt|2>>|)><rsup|2>>d
    u>>>>>
  </eqnarray*>

  \;

  <section|Bayesian and Neyman-Pearson Test>

  <paragraph|Exercise 1>

  Let there be two hypothesizes, <math|H<rsub|0>> and <math|H<rsub|1>>:

  <\equation*>
    <around*|{|<tabular|<tformat|<table|<row|<cell|H<rsub|0>:X=Z>>|<row|<cell|H<rsub|1>:X=\<mu\><rsub|1>+Z>>>>>|\<nobracket\>>
  </equation*>

  where <math|Z \<sim\> \<cal-N\>(0, 1)> and <math|\<mu\><rsub|1>=1>.

  The separation threshold <math|\<tau\>> for the MAP hypothesis is:
  <math|\<tau\>=0.5> such that it minimize the
  <math|p<rsub|err>=p<rsub|m>+p<rsub|f>>. In this specific case the two
  hypothesis have both same probability and distribution (only shifted of
  <math|\<mu\><rsub|1>-\<mu\><rsub|0>>. Then
  <math|\<tau\>=<frac|<around*|(|\<mu\><rsub|1>+\<mu\><rsub|0>|)>|2>=0.5>:

  <\big-figure|<image|plots/ms_tp3_e4_plt1.png|191pt|142pt||>>
    <math|H<rsub|0> and H<rsub|1>>
  </big-figure>

  To compute the <math|p<rsub|m>> is enough to compute is simply equal to
  <math|p<rsub|m>=Q<around*|(|\<tau\>|)>>, while the
  <math|p<rsub|f>=\<Phi\><around*|(|\<tau\>-\<mu\><rsub|0>|)>> as
  <math|\<sigma\><rsub|X>=1>. However as explained before, in this particular
  case <math|p<rsub|m>=p<rsub|f>>, so:

  <math|p<rsub|f>=p<rsub|m>=0.309 >

  and

  <math|p<rsub|d>=<around*|(|1-p<rsub|m>|)>\<rightarrow\>0.69>1

  <paragraph|Exercise 2>

  Let there be two hypothesizes, <math|H<rsub|0>> and <math|H<rsub|1>>:

  <\equation*>
    <around*|{|<tabular|<tformat|<table|<row|<cell|H<rsub|0>:X=Z>>|<row|<cell|H<rsub|1>:X=\<mu\><rsub|1>+Z>>>>>|\<nobracket\>>
  </equation*>

  where <math|Z \<sim\> \<cal-N\>(0, 1)> and
  <math|\<mu\><rsub|1>=<around*|{|0,1,2|}>>.

  <\big-figure>
    <tabular|<tformat|<table|<row|<cell|<image|plots/ms_tp3_e5_plt0.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e5_plt1.png|191pt|142pt||>>>|<row|<cell|<image|plots/ms_tp3_e5_plt2.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e5_RCO.png|191pt|142pt||>>>>>>

    \;
  </big-figure|graphical results of exercise 3>

  As before to compute the distributions are equal and equiprobables and so
  <math|\<tau\>=<frac|<around*|(|\<mu\><rsub|1>+\<mu\><rsub|0>|)>|2>> and
  <math|p<rsub|m>=p<rsub|f>>:

  <big-table|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|-1|cell-halign|r>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|1ln>|<cwith|1|-1|1|-1|cell-rborder|1ln>|<cwith|4|4|1|-1|cell-tborder|0ln>|<cwith|3|3|1|-1|cell-bborder|0ln>|<cwith|4|4|1|-1|cell-bborder|1ln>|<cwith|4|4|1|1|cell-lborder|1ln>|<cwith|4|4|5|5|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|5|5|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-background|pastel
  blue>|<table|<row|<cell|<with|font-series|bold|<math|\<mu\><rsub|1>>>>|<cell|<with|font-series|bold|<math|\<tau\>>>>|<cell|<with|font-series|bold|<math|p<rsub|f>>>>|<cell|<math|<with|font-series|bold|p<rsub|m>>>>|<cell|<math|<with|font-series|bold|p<rsub|d>>>>>|<row|<cell|0>|<cell|0>|<cell|0.500>|<cell|0.500>|<cell|0.500>>|<row|<cell|1>|<cell|0.5>|<cell|0.309>|<cell|0.309>|<cell|0.691>>|<row|<cell|2>|<cell|1>|<cell|0.159>|<cell|0.159>|<cell|0.841>>>>>|Numerical
  results of exercise 3>

  <paragraph|Exercise 4>

  Given a binary communication system transmits a signal
  <math|X\<sim\>\<cal-B\><around*|(|0.5|)>>. The receiver receives:

  <\equation*>
    <text|>Y=V*X+W<space|1em>\<wedge\><space|1em>W\<bot\>V\<bot\>X<space|1em>\<wedge\><space|1em>W,V\<sim\><frac|\<cal-E\><around*|(|1,1|)>|ln<around*|(|1|)>>
  </equation*>

  In particular <math|W and V> has the following representation:

  <\equation*>
    p<rsub|W><around*|(|x|)>,p<rsub|V><around*|(|x|)>=<around*|{|<tabular|<tformat|<table|<row|<cell|e<rsup|-x>>|<cell|>|<cell|x\<geqslant\>1>>|<row|<cell|0>|<cell|>|<cell|x\<less\>1>>>>>|\<nobracket\>>
  </equation*>

  <with|font-series|bold|However this is not a pdf> because by definition the
  integral from <math|-\<infty\>> to <math|+\<infty\>> of the
  <with|font-shape|italic|pdf> has to be 1, and:

  <\equation*>
    <big|int><rsup|+\<infty\>><rsub|-\<infty\>>p<rsub|W><around*|(|x|)>d
    x=<big|int><rsub|1><rsup|\<infty\>>e<rsup|-x>d
    x=<around*|(|-e<rsup|-\<infty\>>+e<rsup|-1>|)>=<with|font-series|bold|e<rsup|-1>\<neq\>1>
  </equation*>

  <\equation*>
    \;
  </equation*>

  So this function has can be normalize as follow:

  <\equation*>
    p<rsub|W><around*|(|x|)>,p<rsub|V><around*|(|x|)>=<around*|{|<tabular|<tformat|<table|<row|<cell|e<rsup|<around*|(|1-x|)>>>|<cell|x\<geqslant\>1>>|<row|<cell|0>|<cell|\<less\>1>>>>>|\<nobracket\>>
  </equation*>

  This can be represented with two equiprobables hypothesis \ (as
  <math|X\<sim\>B<around*|(|p|)>,p=0.5>):

  <\equation*>
    <around*|{|<tabular|<tformat|<table|<row|<cell|H<rsub|0>:W>>|<row|<cell|H<rsub|1>:W+V>>>>>|\<nobracket\>>
  </equation*>

  Where the sum of <math|W+V> is equivalent to the convolution of the two
  <with|font-shape|italic|pdf> but due the fact that the two signal have
  identical exponential low:\ 

  <\equation*>
    p<rsub|<around*|[|W+V|]>><around*|(|x|)>=<around*|{|<tabular|<tformat|<table|<row|<cell|<around*|(|x-2|)>\<cdot\>e<rsup|-<around*|(|x-2|)>>>|<cell|>|<cell|x\<geqslant\>2>>|<row|<cell|0>|<cell|>|<cell|x\<less\>2>>>>>|\<nobracket\>>
  </equation*>

  the <with|font-shape|italic|cdf> functions of <math|H<rsub|0>> and
  <math|H<rsub|1>> are:

  <\equation*>
    \<Phi\><rsub|H<rsub|0>><around*|(|t|)>=<big|int><rsub|1><rsup|t>e<rsup|1-x>dx=1-e<rsup|1-t><space|2em>t\<geqslant\>1
  </equation*>

  <\equation*>
    \<Phi\><rsub|H<rsub|1>><around*|(|t|)>=<big|int><rsub|2><rsup|t><around*|(|x-2|)>e<rsup|2-x>dx=1-<around*|(|t-1|)>e<rsup|2-t>
  </equation*>

  \ 

  \;

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|plots/ms_tp3_e6_h0h1.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e6_pfpm.png|191pt|142pt||>>>|<row|<cell|<image|plots/ms_tp3_e6_perr.png|191pt|142pt||>>|<cell|<image|plots/ms_tp3_e6_sim.png|191pt|142pt||>>>>>>|graphical
  results of exercise 2>

  The threshold <math|\<tau\>> is such that minimizes the
  <math|p<rsub|err><around*|(|x|)>=P<around*|(|H<rsub|0>|)>\<cdot\>p<rsub|m><around*|(|x|)>+P<around*|(|H<rsub|1>|)>\<cdot\>p<rsub|f><around*|(|x|)><rsub|>>.
  However the two hypotheses are equiprobables
  (<math|P<around*|(|H<rsub|0>|)>=p,P<around*|(|H<rsub|1>|)>=1-p,p=0.5>) and
  so we can simplify in:

  <\equation*>
    \<tau\>=<below|arg min|x> <around*|(|p<rsub|m><around*|(|x|)>+p<rsub|f><around*|(|x|)>|)>=<below|arg
    min|x> <around*|(|<around*|(|1-\<Phi\><rsub|H<rsub|0>><around*|(|x|)>|)>+\<Phi\><rsub|H<rsub|1>><around*|(|x|)>|)>
  </equation*>

  in the range from 2 to infinite this can be expressed as

  <\equation*>
    \<tau\>=<below|arg min|x\<in\><around*|[|2,\<infty\>|[>><around*|(|<around*|(|1-<around*|(|1-e<rsup|1-x>|)>|)>+<around*|(|1-<around*|(|x-1|)>e<rsup|2-x>|)>|)>
  </equation*>

  <\equation*>
    <below|arg min|x\<in\><around*|[|2,\<infty\>|[>><around*|(|-e<rsup|1-x>+1-<around*|(|x-1|)>e<rsup|2-x>|)>
  </equation*>

  It is now possible to find the minimum deriving:

  <\equation*>
    p<rsub|err><rprime|'>=e<rsup|1-x>+<around*|(|e<rsup|2-x>-x*e<rsup|2-x>|)>+e<rsup|2-x>=e<rsup|1-x>+e<rsup|2-x><around*|(|2-x|)>
  </equation*>

  <\equation*>
    p<rprime|'><rsub|err>=0\<rightarrow\>\<tau\>=x=e<rsup|-1><around*|(|2e+1|)>
  </equation*>

  resulting in <math|\<tau\>=2.37> with a total <math|p<rsub|err>=0.154>,
  <math|p<rsub|m>=0.249> and <math|p<rsub|f>=0.054>.

  To verify the hypothesis and the choice of <math|\<tau\>>, I chose to
  simulate <math|10<rsup|5>> realization of <math|Y> and first display the
  histogram of the two hypothesis (last plot of figure 6) and then to compute
  the <math|p<rsub|err>> of the classified events,
  <math|p<rsub|err>=<frac|error|N<rsub|events>>=0.154>.

  <section|Code>

  The code is written in <with|font-shape|italic|Python 3>, using the
  mathematical libraries <with|font-shape|italic|numpy> and
  <with|font-shape|italic|scipy>. Attached there is both the
  <with|font-shape|italic|Jupyter notebook>
  (<hlink|http://jupyter.org/|http://jupyter.org/>) and the converted
  <with|font-shape|italic|python> source.
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4|3>>
    <associate|auto-11|<tuple|2|4>>
    <associate|auto-12|<tuple|5|4>>
    <associate|auto-13|<tuple|4|4>>
    <associate|auto-14|<tuple|6|4>>
    <associate|auto-15|<tuple|5|5>>
    <associate|auto-16|<tuple|3|5>>
    <associate|auto-17|<tuple|7|5>>
    <associate|auto-18|<tuple|6|6>>
    <associate|auto-19|<tuple|3|7>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|1|1>>
    <associate|auto-4|<tuple|1|1>>
    <associate|auto-5|<tuple|2|2>>
    <associate|auto-6|<tuple|2|2>>
    <associate|auto-7|<tuple|2|2>>
    <associate|auto-8|<tuple|3|3>>
    <associate|auto-9|<tuple|3|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <\tuple|normal>
        <with|mode|<quote|math>|X> and <with|mode|<quote|math>|Y>
        <with|font-shape|<quote|italic>|pdf>
      </tuple|<pageref|auto-3>>

      <tuple|normal|graphical results of exercise 1|<pageref|auto-5>>

      <tuple|normal|graphical results of exercise 2 |<pageref|auto-8>>

      <\tuple|normal>
        <with|mode|<quote|math>|H<rsub|0> and H<rsub|1>>
      </tuple|<pageref|auto-13>>

      <tuple|normal|graphical results of exercise 3|<pageref|auto-15>>

      <tuple|normal|graphical results of exercise 2|<pageref|auto-18>>
    </associate>
    <\associate|table>
      <tuple|normal|Numerical results of exercise 2|<pageref|auto-4>>

      <tuple|normal|Numerical results of exercise 2|<pageref|auto-7>>

      <tuple|normal|Numerical results of exercise 3|<pageref|auto-16>>
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
      <no-break><pageref|auto-6><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 3
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Bayesian
      and Neyman-Pearson Test> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <with|par-left|<quote|4tab>|Exercise 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Code>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>