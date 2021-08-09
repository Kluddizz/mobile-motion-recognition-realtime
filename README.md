# Master-Thesis: Bewegungserkennung auf mobilen Geräten mit Verwendung von GANs für eine automatische Datensatzgenerierung

## Literatur
* K. Liu, Y. Ye, X. Li and Y. Li: **A Real-Time Method to Estimate Speed of Object Based on Object Detection and Optical Flow Calculation** ([PDF](https://iopscience.iop.org/article/10.1088/1742-6596/1004/1/012003/pdf), [BibTeX](https://iopscience.iop.org/export?articleId=1742-6596/1004/1/012003&doi=10.1088/1742-6596/1004/1/012003&exportFormat=iopexport_bib&exportType=abs&navsubmit=Export+abstract))
* M. Mandal, L. K. Kumar, M. S. Saran and S. K. Vipparthi: **MotionRec: A Unified Deep Framework for Moving Object Recognition** ([PDF](https://openaccess.thecvf.com/content_WACV_2020/papers/Mandal_MotionRec_A_Unified_Deep_Framework_for_Moving_Object_Recognition_WACV_2020_paper.pdf), [BibTeX](https://openaccess.thecvf.com/content_WACV_2020/html/Mandal_MotionRec_A_Unified_Deep_Framework_for_Moving_Object_Recognition_WACV_2020_paper.html))
* Y. Yang, A. Loquercio, D. Scaramuzza, S. Soatto: **Unsupervised Moving Object Detection via Contextual Information Separation** ([PDF](https://arxiv.org/pdf/1901.03360), [BibTeX](https://arxiv.org/abs/1901.03360))
* X. Mao, Q. Li, H. Xie, R. Y.K. Lau, Z. Wang, S. P. Smolley: **Least Squares Generative Adversarial Networks** ([PDF](https://arxiv.org/pdf/1611.04076.pdf), [BibTeX](https://arxiv.org/abs/1611.04076))
* M. Arjovsky, S. Chintala, L. Bottou: **Wasserstein GAN** ([PDF](https://arxiv.org/pdf/1701.07875) [BibTeX](https://arxiv.org/abs/1701.07875))
* I. Gulrajani, F. Ahmed, M. Arjovsky, V. Dumoulin, A. Courville: **Improved Training of Wasserstein GANs**, ([PDF](https://arxiv.org/pdf/1704.00028), [BibTeX](https://arxiv.org/abs/1704.00028))

## Videos
* [Creating Videos with Neural Networks using GAN](https://www.youtube.com/watch?v=CIua95jUD_I)

## Blogs
* [Meow Generator](https://ajolicoeur.wordpress.com/cats/): Vergleich zwischen GAN-Modellen zum Generieren von Katzenbildern

## Experimente und Messungen

| #   | Datensatz | Epochen | Image | Motion |
| --- | --------- | ------- | ------------ | ---------- |
| 1 | 2021-08-09-123241 <br/> Activation: **sigmoid** | 3000 | ![](evaluation/2021-08-09-123241/keypoints.png) | ![](evaluation/2021-08-09-123241/motion.gif) |
| 2 | 2021-08-09-124721 <br/> Activation: **sigmoid** | 3000 | ![](evaluation/2021-08-09-124721/keypoints.png) | ![](evaluation/2021-08-09-124721/motion.gif) |
| 3 | 2021-08-09-125332 <br/> Activation: **sigmoid** | 3000 | ![](evaluation/2021-08-09-125332/keypoints.png) | ![](evaluation/2021-08-09-125332/motion.gif) |
| 4 | 2021-08-09-125723 <br/> Activation: **sigmoid** | 3000 | ![](evaluation/2021-08-09-125723/keypoints.png) | ![](evaluation/2021-08-09-125723/motion.gif) |
| 5 | 2021-08-09-131039 <br/> Activation: **tanh** | 3000 | ![](evaluation/2021-08-09-131039/keypoints.png) | ![](evaluation/2021-08-09-131039/motion.gif) |
| 6 | 2021-08-09-131550 <br/> Activation: **tanh** | 3000 | ![](evaluation/2021-08-09-131550/keypoints.png) | ![](evaluation/2021-08-09-131550/motion.gif) |
| 7 | 2021-08-09-131930 <br/> Activation: **tanh** | 3000 | ![](evaluation/2021-08-09-131930/keypoints.png) | ![](evaluation/2021-08-09-131930/motion.gif) |
| 8 | 2021-08-09-132311 <br/> Activation: **tanh** | 3000 | ![](evaluation/2021-08-09-132311/keypoints.png) | ![](evaluation/2021-08-09-132311/motion.gif) |
| 9 | 2021-08-09-150217 <br/> Activation: **sigmoid** | 6000 | ![](evaluation/2021-08-09-150217/keypoints.png) | ![](evaluation/2021-08-09-150217/motion.gif) |
| 10 | 2021-08-09-151550 <br/> Activation: **tanh** | 6000 | ![](evaluation/2021-08-09-151550/keypoints.png) | ![](evaluation/2021-08-09-151550/motion.gif) |


## Inhalt der Thesis

* Einführung in GANs
    - Theorie
    - Mode-Collapse
    - Deep Convolution GAN
    - Wasserstein GAN
    - Wasserstein GAN-GP
    - Unrolled GAN
    - Least Squares GAN
* Erstellen eines Datensatzes
    - Rahmenbedingungen
    - Verwendung von GANs
    - Messung unterschiedlicher GANs
    - Analyse der Ergebnisse
