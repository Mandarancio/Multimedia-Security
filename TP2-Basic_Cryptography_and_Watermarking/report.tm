<TeXmacs|1.99.5>

<style|generic>

<\body>
  <doc-data|<doc-title|TP2: Basic Cryptography and
  Watermarking>|<doc-author|<\author-data|<author-name|Martino Ferrari>>
    \;
  </author-data>>>

  <section|Encryption>

  \;

  <paragraph|Exercise 1>

  After implementing a function to permutate an grey-scale image we were
  asked to display both the image and the histogram of it.

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|imgs/cameraman_fig.png|300px|299px||>>|<cell|<image|imgs/shuffle_cameraman.png|300px|299px||>>>>>>|<verbatim|cameraman.bmp>
  and a random permutation of it>

  How previsible even if the two pictures are totally different their
  histograms are exactly the same, as the values of the pixels is preserved
  (not theirs position however).\ 

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|imgs/cameraman_histo.png|288px|214px||>>|<cell|<image|imgs/suffled_histo.png|288px|214px||>>>>>>|Histogram
  of <verbatim|cameraman.bmp> and his permutation>

  \;

  \;

  <paragraph|Exercise 2 and 3>

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|imgs/shuffle_loss.png|400px|300px||>>|<cell|<image|imgs/recons_loss.png|400px|300px||>>>>>>|Block
  loss in the shuffle image and its reconstruction>

  After implementing a simple function simulating the loss of one block of
  the image I applied this function to the permutated
  <verbatim|cameraman.bmp> image (with a loss of a block of size
  <math|50\<times\>100 px>).\ 

  After reconstructing the original image using the permutation vector it
  possible to see how the black pixels are now distribuited randomly in the
  picture (as the pixel where shuffled by the original permutation). In this
  way the result of the loss is less desctructive than if the same loss were
  heppen to the original image. \ 

  \;

  <paragraph|Exercise 4>

  In this exercise we will add some uniform distributed noise to the image
  <verbatim|cameraman.bmp> with different intensities
  (<math|\<pm\>1,\<pm\>5,\<pm\>10,\<pm\>15>) and we will see how this impact
  both the image and its histogram.

  <big-figure|<tabular|<tformat|<twith|table-hyphen|y>|<table|<row|<cell|<image|imgs/noise_1.png|266px|200px||>>|<cell|<image|imgs/noise_1_histo.png|266px|200px||>>>|<row|<cell|<image|imgs/noise_5.png|266px|200px||>>|<cell|<image|imgs/noise_5_histo.png|266px|200px||>>>|<row|<cell|<image|imgs/noise_10.png|266px|200px||>>|<cell|<image|imgs/noise_10_histo.png|266px|200px||>>>|<row|<cell|<image|imgs/noise_15.png|266px|200px||>>|<cell|<image|imgs/noise_15_histo.png|266px|200px||>>>>>>|Noisy
  <verbatim|cameraman.bmp> and its histogram>

  In figure 4 it's possible to see that the image change a little (even if
  with noise between <math|\<pm\>15> the degradation is visible) while the
  histogram change visibily.

  In particular more the noise is strong more the instogram become flat,
  that's beacouse the histogram of a uniform distribution is flat and more
  the noise is intense more the the histogram will resamble to the noise one.\ 

  This shows how the histogram is not so semantically relevant as in the
  exercise 1 we had totally different images (semantically) with the same
  histogram while here we have the same images but with different histograms.\ 

  As previsible the PSNR decrease with the intensity of the noise as shown in
  figure 5.

  <big-figure|<image|imgs/psnr_plot.png|400px|300px||>|PSNR vs noise
  intensity>

  <section|Classical Cryptography>

  After modifing the given script I obtained the following results:

  <big-figure|<tabular|<tformat|<cwith|2|2|1|1|cell-halign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|3|3|cell-halign|c>|<table|<row|<cell|<image|imgs/decripted.png|260px|260px||>>|<cell|<image|imgs/decripted_1pxdiff.png|260px|260px||>>|<cell|<image|imgs/decripted_gauss.png|260px|260px||>>>|<row|<cell|original>|<cell|1px
  difference>|<cell|gaussian noise>>>>>|different decripted images>

  The script takes the <verbatim|cameraman.bmp> picture, then encrypts it
  using the AES algorithm and then decript it.

  The original results is shown in the left picture of figure 6.\ 

  The central picture is the decription after modifing a single pixel of the
  cripted image.

  Finally the rigth one is the result after adding a gaussian noise
  <math|\<cal-N\><around*|(|0,2|)>> to the cripted image.

  As the AES algorithm is a classical cryptography algorithm when a single
  bit of the crypted message change the decripted result is totally
  different.\ 

  However the given script crypt every windows
  <math|<around*|[|4\<times\>4|]>> indipendently, that's why when forcing a
  single pixel to 0 only 16 pixels change.

  However adding a (weaker) gaussian noise to all the crypted message results
  in a totally random image.

  <section|Basic Data Hiding>

  In this last exercise we will hide one image in another with the same
  resolution, to do so we will exploit the less significant bits of the
  <em|cover> image to carry the more significant bits of the <em|secret>
  image. Moreover we will use the fact that the human eye is less sensible to
  the blue to hide more data in this components.

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|imgs/clena.png|300px|300px||>>|<cell|<image|imgs/cbaboon.png|300px|300px||>>>>>>|<em|cover>
  image and <em|secret> image>

  In particular we will hide the data in this way:

  <big-table|<tabular|<tformat|<cwith|4|4|9|9|cell-width|0>|<cwith|4|4|9|9|cell-hmode|max>|<cwith|4|4|1|-1|cell-height|2pt>|<cwith|4|4|1|-1|cell-vmode|exact>|<cwith|2|2|1|-1|cell-height|2pt>|<cwith|2|2|1|-1|cell-vmode|exact>|<cwith|1|1|2|-1|cell-tborder|1ln>|<cwith|1|1|2|-1|cell-bborder|1ln>|<cwith|2|2|2|-1|cell-tborder|1ln>|<cwith|1|1|2|2|cell-lborder|1ln>|<cwith|1|1|1|1|cell-rborder|1ln>|<cwith|1|1|9|9|cell-rborder|1ln>|<cwith|3|3|2|-1|cell-tborder|1ln>|<cwith|2|2|2|-1|cell-bborder|1ln>|<cwith|3|3|2|-1|cell-bborder|1ln>|<cwith|4|4|2|-1|cell-tborder|1ln>|<cwith|3|3|2|2|cell-lborder|1ln>|<cwith|3|3|1|1|cell-rborder|1ln>|<cwith|3|3|9|9|cell-rborder|1ln>|<cwith|5|5|2|-1|cell-tborder|1ln>|<cwith|4|4|2|-1|cell-bborder|1ln>|<cwith|5|5|2|-1|cell-bborder|1ln>|<cwith|5|5|2|2|cell-lborder|1ln>|<cwith|5|5|1|1|cell-rborder|1ln>|<cwith|5|5|9|9|cell-rborder|1ln>|<cwith|1|1|7|9|cell-background|pastel
  red>|<cwith|3|3|8|9|cell-background|pastel
  blue>|<cwith|5|5|8|9|cell-background|pastel
  blue>|<cwith|5|5|5|7|cell-background|pastel
  green>|<cwith|1|1|1|1|cell-halign|r>|<cwith|3|3|1|1|cell-halign|r>|<cwith|5|5|1|1|cell-halign|r>|<table|<row|<cell|red>|<cell|<math|c<rsub|r,7>>>|<cell|<math|c<rsub|r,6>>>|<cell|<math|c<rsub|r,5>>>|<cell|<math|c<rsub|r,4>>>|<cell|<math|c<rsub|r,3>>>|<cell|<math|s<rsub|r,7>>>|<cell|<math|s<rsub|r,6>>>|<cell|<math|s<rsub|r,5>>>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|green>|<cell|<math|c<rsub|g,7>>>|<cell|<math|c<rsub|g,6>>>|<cell|<math|c<rsub|g,5>>>|<cell|<math|c<rsub|g,4>>>|<cell|<math|c<rsub|g,3>>>|<cell|<math|c<rsub|g,2>>>|<cell|<math|s<rsub|b,7>>>|<cell|<math|s<rsub|b,6>>>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|blue>|<cell|<math|c<rsub|b,7>>>|<cell|<math|c<rsub|b,6>>>|<cell|<math|c<rsub|b,5>>>|<cell|<math|s<rsub|g,7>>>|<cell|<math|s<rsub|g,6>>>|<cell|<math|s<rsub|g,5>>>|<cell|<math|s<rsub|b,5>>>|<cell|<math|s<rsub|b,4>><math|>>>>>>|color
  structure in the stego image>

  The stego image and the extracted hidden image is shown in figure 8:

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|imgs/stego.png|300px|300px||>>|<cell|<image|imgs/secret.png|300px|300px||>>>>>>|Stego
  image and extracted hidden image>

  How it possible to see both the stego image and the extracted secret image
  are well conserved. Some degradations are visibile in both as visible in
  figure 9:

  <big-figure|<tabular|<tformat|<cwith|4|4|3|3|cell-halign|c>|<cwith|4|4|3|3|cell-hyphen|n>|<cwith|2|2|3|3|cell-halign|c>|<cwith|4|4|1|1|cell-halign|c>|<cwith|2|2|1|1|cell-halign|c>|<table|<row|<cell|<image|imgs/clena_det.png|140px|140px||>>|<cell|>|<cell|<image|imgs/cbaboon_det.png|140px|140px||>>>|<row|<cell|original>|<cell|>|<cell|original>>|<row|<cell|<image|imgs/stego_det.png|140px|140px||>>|<cell|>|<cell|<image|imgs/secret_det.png|140px|140px||>>>|<row|<cell|stego>|<cell|>|<cell|extracted>>>>>|Difference
  between the original images and the stego and extracted images>

  However this differences are minors and the result can be improved using
  some image adaptative algorithm to adapt the color structure to the
  <em|cover> image and by hiding more green components of the <em|secret>
  image.

  \;
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2|4>>
    <associate|auto-11|<tuple|6|4>>
    <associate|auto-12|<tuple|3|5>>
    <associate|auto-13|<tuple|7|5>>
    <associate|auto-14|<tuple|1|5>>
    <associate|auto-15|<tuple|8|5>>
    <associate|auto-16|<tuple|9|6>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|1|1>>
    <associate|auto-4|<tuple|2|1>>
    <associate|auto-5|<tuple|2|1>>
    <associate|auto-6|<tuple|3|2>>
    <associate|auto-7|<tuple|3|2>>
    <associate|auto-8|<tuple|4|3>>
    <associate|auto-9|<tuple|5|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<with|font-family|<quote|tt>|language|<quote|verbatim>|cameraman.bmp>
      and a random permutation of it|<pageref|auto-3>>

      <tuple|normal|Histogram of <with|font-family|<quote|tt>|language|<quote|verbatim>|cameraman.bmp>
      and his permutation|<pageref|auto-4>>

      <tuple|normal|Block loss in the shuffle image and its
      reconstruction|<pageref|auto-6>>

      <tuple|normal|Noisy <with|font-family|<quote|tt>|language|<quote|verbatim>|cameraman.bmp>
      and its histogram|<pageref|auto-8>>

      <tuple|normal|PSNR vs noise intensity|<pageref|auto-9>>

      <tuple|normal|different decripted images|<pageref|auto-11>>

      <tuple|normal|<with|font-shape|<quote|italic>|cover> image and
      <with|font-shape|<quote|italic>|secret> image|<pageref|auto-13>>

      <tuple|normal|Stego image and extracted hidden image|<pageref|auto-15>>

      <tuple|normal|Difference between the original images and the stego and
      extracted images|<pageref|auto-16>>
    </associate>
    <\associate|table>
      <tuple|normal|color structure in the stego image|<pageref|auto-14>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Encryption>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|4tab>|Exercise 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 2 and 3
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Classical
      Cryptography> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Basic
      Data Hiding> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>