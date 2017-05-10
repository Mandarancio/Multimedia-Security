<TeXmacs|1.99.5>

<style|generic>

<\body>
  <doc-data|<doc-title|Watermark Detection>|<doc-author|<author-data|<author-name|Martino
  Ferrari>>>>

  <subsection|Watermark Embedding and Channel modeling>

  After loading a gray scale image <math|x> we were asked to embed a
  watermark <math|w> composed by <math|{-1,+1}> uniformly distributed with a
  density of <math|\<theta\><rsub|N>=0.5>, <math|y=x+w>. The image is then
  <em|attacked> by an AWGN <math|z=<with|math-font|cal|N><around|(|0,1|)>>,
  the resulting image <math|z=y+z>.

  <big-figure|<with|par-mode|center|<image|output_2_1.png|250pt|||> >|Signals
  in the spatial domain>

  The process is shown in the previous figure, to the human eyes is very
  difficult to see any difference between the 3 images <math|x>, <math|y> and
  <math|v> as both the watermark and the noise have low intensity. I tried so
  to see if in the frequency domain the difference is more evident.

  <big-figure|<with|par-mode|center|<image|output_4_0.png|300pt|||> >|Fourier
  transformation of the signals>

  The difference is small as well in the frequency domain, however is
  possible to see the effects of the gaussian noise in the last sub plot.

  <subsection|Non-blind watermark detection>

  In this simple detection case we suppose that the receiver has access to
  the original image <math|x> and of course the key to generate the watermark
  <math|w>. The first step is so to extract the <math|<wide|w|^>=v-x>, and
  then compute the correlation of it with the original watermark
  <math|\<rho\>=<frac|1|N>*<big|sum><rsub|i=0><rsup|N-1><wide|w|^><around|[|i|]>\<cdot\>w<around|[|i|]>>:

  <big-figure|<with|par-mode|center|<image|output_8_0.png|300pt|||>
  >|<math|w> and <math|<wide|w|^>>>

  The correlation between the two signals is:

  <\equation*>
    \<rho\><rsub|n*o*n-b*l*i*n*d>=1.01
  </equation*>

  <subsection|Blind watermark detection>

  However in general the receiver doesn't have access to the original image,
  in this case the extraction of the watermark <math|<wide|w|^>> is done
  using an estimation of the original image <math|<wide|v|\<bar\>>>,
  <math|<wide|w|^>=v-<wide|v|\<bar\>>>. As both <math|z> and <math|w> can be
  represented as noise the estimation <math|<wide|v|\<bar\>>> can be computed
  using a low pass filter <math|<wide|v|\<bar\>>=h<rsub|l*p>\<ast\>v> or in
  the frequency domain as <math|<wide|V|\<bar\>>=H<rsub|l*p>\<cdot\>V>.

  <big-figure|<with|par-mode|center|<image|output_10_0.png|300pt|||>
  >|Different steps of the blind watermark detection>

  Using a very weak low pass filter <math|H<rsub|l*p>=10<rsup|-<frac|u<rsup|2>|2\<cdot\>80<rsup|2>>>>
  is possible to obtain very good results. Using a stronger low pass filter
  will give worst results as the <math|<wide|w|^>> will be dominate by the
  high-frequency of the original image <math|x>, instead that on the
  watermark <math|w> (and noise <math|z>). Is possible now to compute again
  the correlation <math|\<rho\>> as before:

  <\equation*>
    \<rho\><rsub|b*l*i*n*d>=0.88
  </equation*>

  The difference between <math|\<rho\><rsub|n*o*n-b*l*i*n*d>=1.01> and
  <math|\<rho\><rsub|b*l*i*n*d>=0.88> is very small and that confirms the
  graphical evidence as well as the filter choice. However with stronger
  noise <math|z> or more sophisticate attack (e.g.: the attacker could use
  the same filter to compute <math|<wide|w|^>> and then subtracting it to the
  image <math|y>) could affect more the watermark detection.

  <subsection|Statistical analysis>

  To understand better how the simple blind detector implemented perform I
  chose to do some statistical analysis confronting 200 watermarked images
  with 200 not watermarked and looking at the value of the correlation
  between <math|w> and <math|<wide|w|^>>:

  <big-figure|<with|par-mode|center|<image|output_14_0.png|300pt|||>
  >|<math|\<rho\>> distribution of watermarked vs non-watermarked image,
  blind detector>

  With a watermark intensity of only 1 is very hard distinguish from the
  noisy images and the watermarked one, however increasing the intensity up
  to 5 will give already very good performance with close to no overlap
  between the two distribution:

  <big-figure|<with|par-mode|center|<image|output_15_0.png|300pt|||>
  >|<math|\<rho\>> distribution of watermarked (intensity 5) vs
  non-watermarked image, blind detector>

  For the <with|font-series|bold|non-blind watermark detector> I'm expecting
  much better performances:

  <big-figure|<with|par-mode|center|<image|output_17_0.png|300pt|||>
  >|<math|\<rho\>> distribution of watermarked vs non-watermarked image,
  non-blind detector>

  The difference of performance between the <with|font-series|bold|blind> and
  <with|font-series|bold|non-blind> detectors are remarkable, to stress the
  system I then tied to increase the noise:

  <big-figure|<with|par-mode|center|<image|output_19_0.png|300pt|||>
  >|<math|\<rho\>> distribution of watermarked (intensity 0.05) vs
  non-watermarked image, blind detector>

  It results that the <with|font-series|bold|blind> and
  <with|font-series|bold|non-blind> detector have similar performance with a
  difference of watermark intensity of a factor 100 (intensity 0.05 is
  equivalent to 5).

  As final test I wanted to see how the detectors performs with image
  watermarked with a different watermark that the one tested:

  <big-figure|<with|par-mode|center|<image|output_21_0.png|300pt|||>
  >|<math|\<rho\>> distribution of watermarked (intensity 5) vs
  wrong-watermarked (intensity 5) image, blind detector>

  As I was expecting there is no much difference between noise and a false
  watermark for the detector as the two watermarks are independent,
  <math|w<rsub|0>\<perp\>w<rsub|1>>.

  \;
</body>

<\initial>
  <\collection>
    <associate|font|pagella>
    <associate|font-base-size|10>
    <associate|math-font|math-pagella>
    <associate|page-medium|paper>
    <associate|page-type|a4>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|6|3>>
    <associate|auto-11|<tuple|7|4>>
    <associate|auto-12|<tuple|8|4>>
    <associate|auto-13|<tuple|9|5>>
    <associate|auto-14|<tuple|5|?>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|2|1>>
    <associate|auto-4|<tuple|2|2>>
    <associate|auto-5|<tuple|3|2>>
    <associate|auto-6|<tuple|3|2>>
    <associate|auto-7|<tuple|4|2>>
    <associate|auto-8|<tuple|4|3>>
    <associate|auto-9|<tuple|5|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|Signals in the spatial domain|<pageref|auto-2>>

      <tuple|normal|Fourier transformation of the signals|<pageref|auto-3>>

      <tuple|normal|<with|mode|<quote|math>|w> and
      <with|mode|<quote|math>|<wide|w|^>>|<pageref|auto-5>>

      <tuple|normal|Different steps of the blind watermark
      detection|<pageref|auto-7>>

      <tuple|normal|<with|mode|<quote|math>|\<rho\>> distribution of
      watermarked vs non-watermarked image, blind detector|<pageref|auto-9>>

      <tuple|normal|<with|mode|<quote|math>|\<rho\>> distribution of
      watermarked (intenisty 5) vs non-watermarked image, blind
      detector|<pageref|auto-10>>

      <tuple|normal|<with|mode|<quote|math>|\<rho\>> distribution of
      watermarked vs non-watermarked image, non-blind
      detector|<pageref|auto-11>>

      <tuple|normal|<with|mode|<quote|math>|\<rho\>> distribution of
      watermarked (intenisty 0.05) vs non-watermarked image, blind
      detector|<pageref|auto-12>>

      <tuple|normal|<with|mode|<quote|math>|\<rho\>> distribution of
      watermarked (intensity 5) vs wrong-watermarked (intensity 5) image,
      blind detector|<pageref|auto-13>>
    </associate>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1<space|2spc>Watermark Embedding and
      Channel modelling <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|1tab>|2<space|2spc>Non-blind watermark detection
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|3<space|2spc>Blind watermark detection
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4<space|2spc>Statistical analysis
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>
    </associate>
  </collection>
</auxiliary>