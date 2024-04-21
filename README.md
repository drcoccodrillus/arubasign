<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![Twitter][twitter-shield]][twitter-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/drcoccodrillus/arubasign">
    <img src="static/images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Aruba Sign</h3>

  <p align="center">
    Software per la firma digitale
    <br />
    <a href="https://github.com/drcoccodrillus/arubasign/issues">Report Bug</a>
  </p>
</div>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Tabella dei contenuti</summary>
  <ol>
    <li>
      <a href="#informazioni-sul-progetto">Informazioni sul progetto</a>
    </li>
    <li>
      <a href="#installazione">Installazione</a>
      <ul>
        <li><a href="#download-del-progetto">Download del progetto</a></li>
        <li><a href="#build-dello-snap">Build dello snap</a></li>
        <li><a href="#installazione-dello-snap">Installazione dello snap</a></li>
      </ul>
    </li>
    <li><a href="#licenza">Licenza</a></li>
    <li><a href="#contatti">Contatti</a></li>
    <li><a href="#riconoscimenti">Riconoscimenti</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## Informazioni sul progetto

[![Product Name Screen Shot][product-screenshot]](https://snapcraft.io/arubasign)

Aruba Sign è un software prodotto da [Aruba S.p.A.](https://www.aruba.it) che consente di apporre, gestire e verificare firme digitali e marche temporali.

Questo repository contiene il software Aruba Sign sotto forma di snap. L'attuale versione 23.0.3 ed è stata presa dal sito ufficiale di [Aruba](https://www.pec.it/gestione-supporto-firma-digitale.aspx).

[Aruba S.p.A.](https://www.aruba.it) è una società italiana che offre servizi di data center, web hosting, email e registrazione di nomi di dominio. A ciò, si aggiungono servizi di connettività, housing, server dedicati, virtual private server, e di conservazione sostitutiva, posta elettronica certificata (PEC), firma digitale, oltre ad autenticazione SPID.


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- INSTALLATION -->
## Installazione

Questo versione dello snap Aruba Sign è distribuito con [classic confinement](https://snapcraft.io/docs/classic-confinement). Al momento sto lavorando per realizzare una versione che funzioni in [strict confinement](https://microk8s.io/docs/strict-confinement) per rilasciarla sullo [Snap Store](https://snapcraft.io). Allo stato attuale quindi, l'unico modo per installare questo snap è partendo dal file squashFS preventivamente costruito sul proprio computer.

I passaggi per una corretta installazione sono i seguenti:

### Download del progetto

Clonare il repository git

`git clone git@github.com:drcoccodrillus/arubasign.git`

### Build dello snap

Posizionarsi nella cartella del progetto

`cd arubasign`

Costruire il file squashFS `.snap`

`snapcraft`

### Installazione dello snap

Quando il file `arubasign_23.0.3_amd64.snap` è stato costruito, eseguire il seguente comando per installare la app:

`snap install arubasign_23.0.3_amd64.snap --dangerous --classic`


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->
## Licenza

Distributed under the MIT License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Contatti

drcoccodrillus - [@DrCoccodrillus](https://twitter.com/DrCoccodrillus)

Project Link: [https://github.com/drcoccodrillus/arubasign](https://github.com/drcoccodrillus/arubasign)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- ACKNOWLEDGMENTS -->
## Riconoscimenti

* [Aruba](https://aruba.it)
* [Choose an Open Source License](https://choosealicense.com)
* [Img Shields](https://shields.io)
* [GitHub Pages](https://pages.github.com)


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/drcoccodrillus/arubasign.svg?style=for-the-badge
[contributors-url]: https://github.com/drcoccodrillus/arubasign/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/drcoccodrillus/arubasign.svg?style=for-the-badge
[forks-url]: https://github.com/drcoccodrillus/arubasign/network/members
[stars-shield]: https://img.shields.io/github/stars/drcoccodrillus/arubasign.svg?style=for-the-badge
[stars-url]: https://github.com/drcoccodrillus/arubasign/stargazers
[issues-shield]: https://img.shields.io/github/issues/drcoccodrillus/arubasign.svg?style=for-the-badge
[issues-url]: https://github.com/drcoccodrillus/arubasign/issues
[license-shield]: https://img.shields.io/github/license/drcoccodrillus/arubasign.svg?style=for-the-badge
[license-url]: https://github.com/drcoccodrillus/arubasign/blob/main/LICENSE
[twitter-shield]: https://img.shields.io/twitter/url?url=https%3A%2F%2Ftwitter.com%2FDrCoccodrillus&style=for-the-badge&logo=x
[twitter-url]: https://twitter.com/DrCoccodrillus
[product-screenshot]: static/images/screenshot.png
