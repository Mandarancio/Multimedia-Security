<TeXmacs|1.99.5>

<style|generic>

<\body>
  <doc-data|<doc-title|Watermark Performance
  Evaluation>|<doc-author|<author-data|<author-name|Martino Ferrari>>>>

  <subsection|Non-blind watermark detection><label|non-blind-watermark-detection>

  <paragraph|Exercise 1.1><label|exercise-1.1>

  For the given hypothesis:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|<with|math-font|cal|H><rsub|0>:<space|1em>v=x+z>>|<row|<cell|<with|math-font|cal|H><rsub|1>:<space|1em>v=x+w+z>>>>>
  </equation*>

  where <math|x> is the host image, <math|w> is the watermark and <math|z> is
  a noise with distribution: <math|<with|math-font|cal|N><around|(|0,\<sigma\><rsub|n*o*i*s*e><rsup|2>|)>>.<next-line>Compute
  numerically the following property: <math|P<rsub|f>,P<rsub|m>,P<rsub|d>>

  <big-figure|<with|par-mode|center|<image|output_2_0.png|250pt|||>
  >|Distribution of <math|\<rho\>> depending from <math|H<rsub|0>> and
  <math|H<rsub|1>> >

  The numerical results were the following:

  <\itemize>
    <item><math|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>>=0.002>,<space|1em><math|\<sigma\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>>=0.004>

    <item><math|\<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>=0.098>,<space|1em><math|\<sigma\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>=0.004>
  </itemize>

  As expected the variance of the two distribution is very similar
  (asymptotically is the same) as in our case:

  <\equation*>
    <wide|w|\<bar\>><rsup|2>=E<around*|[|w*w<rsup|T>|]>=<frac|1|N><big|sum><rsub|i=0><rsup|N>w<around*|[|i|]>w<around*|[|i|]>=<frac|N\<cdot\>\<theta\><rsub|N>|N>=\<theta\><rsub|N>
  </equation*>

  and so:

  <\equation*>
    \<sigma\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>><rsup|2>=\<sigma\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>><rsup|2>=\<sigma\><rsup|2><rsub|\<rho\>>=<frac|\<theta\><rsub|N>\<cdot\>\<sigma\><rsup|2><rsub|x<rprime|'>>|N>
  </equation*>

  Instead the mean of <math|\<rho\>\|<with|math-font|cal|H><rsub|1>> depends
  from the intensity <math|\<gamma\>> of the watermark:

  <\equation*>
    \<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>=\<gamma\>\<cdot\><wide|w|\<bar\>><rsup|2>=\<gamma\>\<cdot\>\<theta\><rsub|N>
  </equation*>

  While the <math|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>>>
  depends only from the <math|E<around*|[|Z|]>>.

  Using this information is now possible to compute the threshold
  <math|\<tau\>> as well as displaying the different probabilities depending
  on the threshold.

  \;

  <big-figure|<with|par-mode|center|<image|output_5_1.png|250pt|||> >|plot of
  <math|P<rsub|f>,P<rsub|m>,P<rsub|d> and P<rsub|error>> depending on
  <math|\<tau\>> and the chosen threshold>

  Using the Bayes hypothesis, the threshold <math|\<tau\>> can be found in
  the middle point (0.05) of the two distribution (as the two hypothesis are
  equiprobable and have same variance). This is also shown in the figure
  above, as is in the middle point where the <math|P<rsub|e*r*r*o*r>> is
  minimal.

  The resulting probabilities are:

  <\itemize>
    <item><math|\<tau\>=0.05>

    <item><math|P<rsub|f>=0.210>

    <item><math|P<rsub|m>=0.209>

    <item><math|P<rsub|error>=0.420>

    <item><math|P<rsub|d>=0.791>
  </itemize>

  <paragraph|Exercise 1.2><label|exercise-1.2>

  In this exercise we were asked to evaluate the performance of the
  <em|Non-Blind> detector at different noise and watermark configurations.

  The next table will summarize the results:

  <big-table|<tabular|<tformat|<cwith|2|2|2|2|cell-row-span|1>|<cwith|2|2|2|2|cell-col-span|2>|<cwith|2|2|4|4|cell-row-span|1>|<cwith|2|2|4|4|cell-col-span|2>|<cwith|2|2|6|6|cell-row-span|1>|<cwith|2|2|6|6|cell-col-span|2>|<cwith|2|2|8|8|cell-row-span|1>|<cwith|2|2|8|8|cell-col-span|2>|<cwith|2|3|2|-1|cell-halign|c>|<cwith|1|1|2|2|cell-row-span|1>|<cwith|1|1|2|2|cell-col-span|4>|<cwith|1|1|6|6|cell-row-span|1>|<cwith|1|1|6|6|cell-col-span|4>|<cwith|1|1|2|2|cell-halign|c>|<cwith|1|1|6|6|cell-halign|c>|<cwith|4|6|1|1|cell-halign|r>|<cwith|4|6|2|-1|cell-halign|r>|<cwith|1|1|2|5|cell-tborder|0ln>|<cwith|6|6|2|5|cell-bborder|0ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|1ln>|<cwith|1|-1|6|6|cell-lborder|1ln>|<cwith|2|2|1|8|cell-tborder|1ln>|<cwith|1|1|1|8|cell-bborder|1ln>|<cwith|2|2|1|1|cell-lborder|0ln>|<cwith|2|2|8|8|cell-rborder|0ln>|<cwith|2|2|9|9|cell-lborder|0ln>|<cwith|2|2|2|3|cell-tborder|0ln>|<cwith|1|1|2|3|cell-bborder|0ln>|<cwith|6|6|2|3|cell-bborder|0ln>|<cwith|2|-1|2|2|cell-lborder|1ln>|<cwith|2|-1|1|1|cell-rborder|1ln>|<cwith|2|-1|3|3|cell-rborder|1ln>|<cwith|2|-1|4|4|cell-lborder|1ln>|<cwith|2|2|6|7|cell-tborder|0ln>|<cwith|1|1|6|7|cell-bborder|0ln>|<cwith|6|6|6|7|cell-bborder|0ln>|<cwith|2|-1|6|6|cell-lborder|1ln>|<cwith|2|-1|5|5|cell-rborder|1ln>|<cwith|2|-1|7|7|cell-rborder|1ln>|<cwith|2|-1|8|8|cell-lborder|1ln>|<cwith|3|3|1|-1|cell-tborder|1ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|9|9|cell-rborder|0ln>|<cwith|3|3|2|2|cell-tborder|0ln>|<cwith|2|2|2|2|cell-bborder|0ln>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|3|6|2|2|cell-lborder|1ln>|<cwith|3|6|1|1|cell-rborder|1ln>|<cwith|3|6|2|2|cell-rborder|1ln>|<cwith|3|6|3|3|cell-lborder|1ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|2|2|4|4|cell-bborder|0ln>|<cwith|6|6|4|4|cell-bborder|0ln>|<cwith|3|6|4|4|cell-lborder|1ln>|<cwith|3|6|3|3|cell-rborder|1ln>|<cwith|3|6|4|4|cell-rborder|1ln>|<cwith|3|6|5|5|cell-lborder|1ln>|<cwith|3|3|6|6|cell-tborder|0ln>|<cwith|2|2|6|6|cell-bborder|0ln>|<cwith|6|6|6|6|cell-bborder|0ln>|<cwith|3|6|6|6|cell-lborder|1ln>|<cwith|3|6|5|5|cell-rborder|1ln>|<cwith|3|6|6|6|cell-rborder|1ln>|<cwith|3|6|7|7|cell-lborder|1ln>|<cwith|3|3|8|8|cell-tborder|0ln>|<cwith|2|2|8|8|cell-bborder|0ln>|<cwith|6|6|8|8|cell-bborder|0ln>|<cwith|3|6|8|8|cell-lborder|1ln>|<cwith|3|6|7|7|cell-rborder|1ln>|<cwith|3|6|8|8|cell-rborder|1ln>|<cwith|3|6|9|9|cell-lborder|1ln>|<table|<row|<cell|>|<cell|<math|\<sigma\><rsub|noise><rsup|2>=50>>|<cell|>|<cell|>|<cell|>|<cell|<math|\<sigma\><rsub|noise><rsup|2>=100>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<math|\<theta\><rsub|N>=0.1>>|<cell|>|<cell|<math|\<theta\><rsub|N>=0.3>>|<cell|>|<cell|<math|\<theta\><rsub|N>=0.1>>|<cell|>|<cell|<math|\<theta\><rsub|N>=0.3>>|<cell|>>|<row|<cell|>|<cell|<math|\<gamma\>=\<pm\>1>>|<cell|<math|\<gamma\>=\<pm\>5>>|<cell|<math|\<gamma\>=\<pm\>1>>|<cell|<math|\<gamma\>=\<pm\>5>>|<cell|<math|\<gamma\>=\<pm\>1>>|<cell|<math|\<gamma\>=\<pm\>5>>|<cell|<math|\<gamma\>=\<pm\>1>>|<cell|<math|\<gamma\>=\<pm\>5>>>|<row|<cell|<math|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>>>>|<cell|0.003>|<cell|-0.005>|<cell|0.000>|<cell|0.005>|<cell|-0.001>|<cell|-0.010>|<cell|-0.006>|<cell|-0.013>>|<row|<cell|<math|\<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>>>|<cell|0.097>|<cell|0.500>|<cell|0.303>|<cell|1.499>|<cell|0.091>|<cell|0.505>|<cell|0.310>|<cell|1.497>>|<row|<cell|<math|\<sigma\><rsup|2><rsub|\<rho\>>>>|<cell|0.004>|<cell|0.004>|<cell|0.012>|<cell|0.012>|<cell|0.016>|<cell|0.015>|<cell|0.047>|<cell|0.045>>>>>|<math|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>><rsub|>,\<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>>
  and <math|\<sigma\><rsup|2><rsub|\<rho\>>> varying parameters of
  <with|font-shape|italic|non-blind> detector>

  Using this values is possible to display the ROC curve and the
  <math|P<rsub|error>> plot of the different configurations:

  <big-figure|<with|par-mode|center|<image|output_10_0.png|250pt|||> >|ROC
  for <with|font-shape|italic|non-blind> detector>

  <big-figure|<with|par-mode|center|<image|output_10_1.png|250pt|||>
  >|<math|P<rsub|error>> for different configuration of the
  <with|font-shape|italic|non-blind> detector>

  In conclusion the parameters control respectively:

  <\itemize>
    <item><math|\<theta\><rsub|N>>: variate proportionally
    <math|\<mu\><rsub|\<rho\>\|H<rsub|1>>> and
    <math|\<sigma\><rsub|\<rho\>><rsup|2>>

    <item><math|\<gamma\>>: variate quadratic-ally
    <math|\<mu\><rsub|\<rho\>\|H<rsub|1>>>

    <item><math|\<sigma\><rsup|2><rsub|n*o*i*s*e>>: variate quadratic-ally
    <math|\<sigma\><rsub|\<rho\>><rsup|2>>
  </itemize>

  This is visualized in the following plots:

  <big-figure|<with|par-mode|center|<image|output_12_0.png|250pt|||> >|effect
  of the variation of <math|\<sigma\><rsub|noise><rsup|2>> over
  <math|\<sigma\><rsub|\<rho\>>> and <math|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>>>,
  <math|\<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>>>

  <big-figure|<with|par-mode|center|<image|output_12_1.png|250pt|||> >|effect
  of the variation of <math|\<theta\><rsub|N>> over
  <math|\<sigma\><rsub|\<rho\>>> and <math|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>>>,
  <math|\<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>>>

  <big-figure|<with|par-mode|center|<image|output_12_2.png|250pt|||> >|effect
  of the variation of <math|\<gamma\>> over <math|\<sigma\><rsub|\<rho\>>>
  and <math|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>>>,
  <math|\<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>>>

  <subsection|Blind watermark detection><label|blind-watermark-detection>

  <paragraph|Exercise 2.1><label|exercise-2.1>

  In this exercise we will evaluate the performances of a blind watermark
  detector using the same configuration than in the previous exercise.

  The main difference (a very important one) is the fact that the detector
  doesn't have access to the original image but instead have only the
  watermarked noised one. To be able to extract the watermark, the host image
  is estimated using a low pass filter (a median filter in my case).

  The next table will summarize the results:

  <big-table|<tabular|<tformat|<cwith|2|2|2|2|cell-row-span|1>|<cwith|2|2|2|2|cell-col-span|2>|<cwith|2|2|4|4|cell-row-span|1>|<cwith|2|2|4|4|cell-col-span|2>|<cwith|2|2|6|6|cell-row-span|1>|<cwith|2|2|6|6|cell-col-span|2>|<cwith|2|2|8|8|cell-row-span|1>|<cwith|2|2|8|8|cell-col-span|2>|<cwith|2|3|2|-1|cell-halign|c>|<cwith|1|1|2|2|cell-row-span|1>|<cwith|1|1|2|2|cell-col-span|4>|<cwith|1|1|6|6|cell-row-span|1>|<cwith|1|1|6|6|cell-col-span|4>|<cwith|1|1|2|2|cell-halign|c>|<cwith|1|1|6|6|cell-halign|c>|<cwith|4|6|1|1|cell-halign|r>|<cwith|4|6|2|-1|cell-halign|r>|<cwith|1|1|2|5|cell-tborder|0ln>|<cwith|6|6|2|5|cell-bborder|0ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|1ln>|<cwith|1|-1|6|6|cell-lborder|1ln>|<cwith|2|2|1|8|cell-tborder|1ln>|<cwith|1|1|1|8|cell-bborder|1ln>|<cwith|2|2|1|1|cell-lborder|0ln>|<cwith|2|2|8|8|cell-rborder|0ln>|<cwith|2|2|9|9|cell-lborder|0ln>|<cwith|2|2|2|3|cell-tborder|0ln>|<cwith|1|1|2|3|cell-bborder|0ln>|<cwith|6|6|2|3|cell-bborder|0ln>|<cwith|2|-1|2|2|cell-lborder|1ln>|<cwith|2|-1|1|1|cell-rborder|1ln>|<cwith|2|-1|3|3|cell-rborder|1ln>|<cwith|2|-1|4|4|cell-lborder|1ln>|<cwith|2|2|6|7|cell-tborder|0ln>|<cwith|1|1|6|7|cell-bborder|0ln>|<cwith|6|6|6|7|cell-bborder|0ln>|<cwith|2|-1|6|6|cell-lborder|1ln>|<cwith|2|-1|5|5|cell-rborder|1ln>|<cwith|2|-1|7|7|cell-rborder|1ln>|<cwith|2|-1|8|8|cell-lborder|1ln>|<cwith|3|3|1|-1|cell-tborder|1ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|4|4|1|-1|cell-tborder|1ln>|<cwith|3|3|1|1|cell-lborder|0ln>|<cwith|3|3|9|9|cell-rborder|0ln>|<cwith|3|3|2|2|cell-tborder|0ln>|<cwith|2|2|2|2|cell-bborder|0ln>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|3|6|2|2|cell-lborder|1ln>|<cwith|3|6|1|1|cell-rborder|1ln>|<cwith|3|6|2|2|cell-rborder|1ln>|<cwith|3|6|3|3|cell-lborder|1ln>|<cwith|3|3|4|4|cell-tborder|0ln>|<cwith|2|2|4|4|cell-bborder|0ln>|<cwith|6|6|4|4|cell-bborder|0ln>|<cwith|3|6|4|4|cell-lborder|1ln>|<cwith|3|6|3|3|cell-rborder|1ln>|<cwith|3|6|4|4|cell-rborder|1ln>|<cwith|3|6|5|5|cell-lborder|1ln>|<cwith|3|3|6|6|cell-tborder|0ln>|<cwith|2|2|6|6|cell-bborder|0ln>|<cwith|6|6|6|6|cell-bborder|0ln>|<cwith|3|6|6|6|cell-lborder|1ln>|<cwith|3|6|5|5|cell-rborder|1ln>|<cwith|3|6|6|6|cell-rborder|1ln>|<cwith|3|6|7|7|cell-lborder|1ln>|<cwith|3|3|8|8|cell-tborder|0ln>|<cwith|2|2|8|8|cell-bborder|0ln>|<cwith|6|6|8|8|cell-bborder|0ln>|<cwith|3|6|8|8|cell-lborder|1ln>|<cwith|3|6|7|7|cell-rborder|1ln>|<cwith|3|6|8|8|cell-rborder|1ln>|<cwith|3|6|9|9|cell-lborder|1ln>|<table|<row|<cell|>|<cell|<math|\<sigma\><rsub|noise><rsup|2>=50>>|<cell|>|<cell|>|<cell|>|<cell|<math|\<sigma\><rsub|noise><rsup|2>=100>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<math|\<theta\><rsub|N>=0.1>>|<cell|>|<cell|<math|\<theta\><rsub|N>=0.3>>|<cell|>|<cell|<math|\<theta\><rsub|N>=0.1>>|<cell|>|<cell|<math|\<theta\><rsub|N>=0.3>>|<cell|>>|<row|<cell|>|<cell|<math|\<gamma\>=\<pm\>1>>|<cell|<math|\<gamma\>=\<pm\>5>>|<cell|<math|\<gamma\>=\<pm\>1>>|<cell|<math|\<gamma\>=\<pm\>5>>|<cell|<math|\<gamma\>=\<pm\>1>>|<cell|<math|\<gamma\>=\<pm\>5>>|<cell|<math|\<gamma\>=\<pm\>1>>|<cell|<math|\<gamma\>=\<pm\>5>>>|<row|<cell|<math|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>>>>|<cell|0.000>|<cell|-0.004>|<cell|0.002>|<cell|0.003>|<cell|0.003>|<cell|0.010>|<cell|0.018>|<cell|-0.013>>|<row|<cell|<math|\<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>>>|<cell|0.092>|<cell|0.442>|<cell|0.260<samp|>>|<cell|1.319>|<cell|0.098>|<cell|0.444>|<cell|0.269>|<cell|1.320>>|<row|<cell|<math|\<sigma\><rsup|2><rsub|\<rho\>>>>|<cell|0.004>|<cell|0.004>|<cell|0.012>|<cell|0.011>|<cell|0.014>|<cell|0.016>|<cell|0.038>|<cell|0.046>>>>>|<math|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>><rsub|>,\<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>>
  and <math|\<sigma\><rsup|2><rsub|\<rho\>>> varying parameters of
  <with|font-shape|italic|blind> detector>

  <paragraph|Exercise 2.2><label|exercise-2.2>

  In this last exercise we will plot first the <em|ROC> of the <em|Blind>
  detector and evaluate the performance differences with the <em|Non-Blind>
  one.

  <big-figure|<with|par-mode|center|<image|output_17_0.png|250pt|||> >|ROC of
  <with|font-shape|italic|blind> detector>

  <big-figure|<with|par-mode|center|<image|output_17_1.png|250pt|||>
  >|<math|P<rsub|error>> for different configuration of the
  <with|font-shape|italic|blind> detector>

  As it's possible to see the <em|ROC> and the <math|P<rsub|e*r*r*o*r>> plots
  are both very similar to the <em|Non-Blind> ones. The <math|\<gamma\>>,
  <math|\<theta\><rsub|N>> and <math|\<sigma\><rsup|2><rsub|n*o*i*s*e>> has
  the same impact of before, however the fact that the original image is
  unknown has a small impact on the <math|\<mu\><rsub|\<rho\>\|H<rsub|1>>>,
  in average it is 10.1% smaller, and so close to
  <math|\<mu\><rsub|\<rho\>\|H<rsub|0>>>, increasing the probability of
  error.

  Overall this small loss in performance doesn't impact to much in the
  detection of the watermark and with smarter filtering it could be possible
  to decrease the difference in performance between the two systems.
</body>

<\initial>
  <\collection>
    <associate|item-vsep|<macro|0.25fn>>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|6|4>>
    <associate|auto-11|<tuple|7|4>>
    <associate|auto-12|<tuple|2|5>>
    <associate|auto-13|<tuple|3|5>>
    <associate|auto-14|<tuple|2|5>>
    <associate|auto-15|<tuple|4|5>>
    <associate|auto-16|<tuple|8|5>>
    <associate|auto-17|<tuple|9|6>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|1|1>>
    <associate|auto-4|<tuple|2|1>>
    <associate|auto-5|<tuple|2|2>>
    <associate|auto-6|<tuple|1|2>>
    <associate|auto-7|<tuple|3|2>>
    <associate|auto-8|<tuple|4|3>>
    <associate|auto-9|<tuple|5|3>>
    <associate|blind-watermark-detection|<tuple|2|5>>
    <associate|exercise-1.1|<tuple|1|1>>
    <associate|exercise-1.2|<tuple|2|2>>
    <associate|exercise-2.1|<tuple|3|5>>
    <associate|exercise-2.2|<tuple|4|5>>
    <associate|non-blind-watermark-detection|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|Distribution of <with|mode|<quote|math>|\<rho\>>
      depending from <with|mode|<quote|math>|H<rsub|0>> and
      <with|mode|<quote|math>|H<rsub|1>> |<pageref|auto-3>>

      <tuple|normal|plot of <with|mode|<quote|math>|P<rsub|f>,P<rsub|m>,P<rsub|d>
      and P<rsub|error>> depending on <with|mode|<quote|math>|\<tau\>> and
      the chosen threshold|<pageref|auto-4>>

      <tuple|normal|ROC for <with|font-shape|<quote|italic>|non-blind>
      detector|<pageref|auto-7>>

      <tuple|normal|<with|mode|<quote|math>|P<rsub|error>> for different
      configuration of the <with|font-shape|<quote|italic>|non-blind>
      detector|<pageref|auto-8>>

      <tuple|normal|effect of the variation of
      <with|mode|<quote|math>|\<sigma\><rsub|noise><rsup|2>> over
      <with|mode|<quote|math>|\<sigma\><rsub|\<rho\>>> and
      <with|mode|<quote|math>|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>>>,
      <with|mode|<quote|math>|\<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>>|<pageref|auto-9>>

      <tuple|normal|effect of the variation of
      <with|mode|<quote|math>|\<theta\><rsub|N>> over
      <with|mode|<quote|math>|\<sigma\><rsub|\<rho\>>> and
      <with|mode|<quote|math>|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>>>,
      <with|mode|<quote|math>|\<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>>|<pageref|auto-10>>

      <tuple|normal|effect of the variation of
      <with|mode|<quote|math>|\<gamma\>> over
      <with|mode|<quote|math>|\<sigma\><rsub|\<rho\>>> and
      <with|mode|<quote|math>|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>>>,
      <with|mode|<quote|math>|\<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>>|<pageref|auto-11>>

      <tuple|normal|ROC of <with|font-shape|<quote|italic>|blind>
      detector|<pageref|auto-16>>

      <tuple|normal|<with|mode|<quote|math>|P<rsub|error>> for different
      configuration of the <with|font-shape|<quote|italic>|blind>
      detector|<pageref|auto-17>>
    </associate>
    <\associate|table>
      <tuple|normal|<with|mode|<quote|math>|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>><rsub|>,\<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>>
      and <with|mode|<quote|math>|\<sigma\><rsup|2><rsub|\<rho\>>> varying
      parameters of <with|font-shape|<quote|italic>|non-blind>
      detector|<pageref|auto-6>>

      <tuple|normal|<with|mode|<quote|math>|\<mu\><rsub|\<rho\><around*|\||H<rsub|0>|\<nobracket\>>><rsub|>,\<mu\><rsub|\<rho\><around*|\||H<rsub|1>|\<nobracket\>>>>
      and <with|mode|<quote|math>|\<sigma\><rsup|2><rsub|\<rho\>>> varying
      parameters of <with|font-shape|<quote|italic>|blind>
      detector|<pageref|auto-14>>
    </associate>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1<space|2spc>Non-blind watermark detection
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|4tab>|Exercise 1.1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 1.2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.15fn>>

      <with|par-left|<quote|1tab>|2<space|2spc>Blind watermark detection
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|4tab>|Exercise 2.1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 2.2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.15fn>>
    </associate>
  </collection>
</auxiliary>