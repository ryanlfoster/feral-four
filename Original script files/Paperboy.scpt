FasdUAS 1.101.10   ��   ��    k             l     ��  ��    : 4	Paperboy, a better Morning Star news-page generator     � 	 	 h 	 P a p e r b o y ,   a   b e t t e r   M o r n i n g   S t a r   n e w s - p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��    " 	Created on			June 15th 2012     �   8 	 C r e a t e d   o n 	 	 	 J u n e   1 5 t h   2 0 1 2      l     ��  ��    " 	Last updated		July 7th 2012     �   8 	 L a s t   u p d a t e d 	 	 J u l y   7 t h   2 0 1 2      l     ��������  ��  ��        l      ��   ��    � � Description: This generates the pages needed by the subs desk - news pages and a few others. It has a different name because it�s written in a very different way to previous scripts and isn�t finished.      � ! !�   D e s c r i p t i o n :   T h i s   g e n e r a t e s   t h e   p a g e s   n e e d e d   b y   t h e   s u b s   d e s k   -   n e w s   p a g e s   a n d   a   f e w   o t h e r s .   I t   h a s   a   d i f f e r e n t   n a m e   b e c a u s e   i t  s   w r i t t e n   i n   a   v e r y   d i f f e r e n t   w a y   t o   p r e v i o u s   s c r i p t s   a n d   i s n  t   f i n i s h e d .   " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   & � �	Status: Made changes to generation options, added an "embargo box" handler with calls in the generation blocks. Updated all handlers, now canonically stored in St Ann's.scpt	    ' � ( (^ 	 S t a t u s :   M a d e   c h a n g e s   t o   g e n e r a t i o n   o p t i o n s ,   a d d e d   a n   " e m b a r g o   b o x "   h a n d l e r   w i t h   c a l l s   i n   t h e   g e n e r a t i o n   b l o c k s .   U p d a t e d   a l l   h a n d l e r s ,   n o w   c a n o n i c a l l y   s t o r e d   i n   S t   A n n ' s . s c p t 	 %  ) * ) l     ��������  ��  ��   *  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / D > Global variables that are needed in handlers at some point --    0 � 1 1 |   G l o b a l   v a r i a b l e s   t h a t   a r e   n e e d e d   i n   h a n d l e r s   a t   s o m e   p o i n t   - - .  2 3 2 p       4 4 ������ 0 theday theDay��   3  5 6 5 p       7 7 ������ 0 themonth theMonth��   6  8 9 8 p       : : ������ 0 thedate theDate��   9  ; < ; p       = = ������ 0 theyear theYear��   <  > ? > p       @ @ ������ 0 months_list  ��   ?  A B A l      C D E C p       F F ������ 0 fileslug fileSlug��   D > 8 The short code used at the start of the new file�s name    E � G G p   T h e   s h o r t   c o d e   u s e d   a t   t h e   s t a r t   o f   t h e   n e w   f i l e  s   n a m e B  H I H l      J K L J p       M M ������ 0 filedate fileDate��   K 5 / The short date used to name the InDesign files    L � N N ^   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s I  O P O l      Q R S Q p       T T ������ 0 pagedate pageDate��   R 6 0 The full date used in the InDesign page�s folio    S � U U `   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o P  V W V l      X Y Z X p       [ [ ������ $0 freshpagesfolder freshPagesFolder��   Y . ( Where the newly created files are saved    Z � \ \ P   W h e r e   t h e   n e w l y   c r e a t e d   f i l e s   a r e   s a v e d W  ] ^ ] l      _ ` a _ p       b b ������  0 masterdocument masterDocument��   ` * $ The actual InDesign master document    a � c c H   T h e   a c t u a l   I n D e s i g n   m a s t e r   d o c u m e n t ^  d e d l      f g h f p       i i ������ 0 
mastername 
masterName��   g C = The name of the master page/spread to be applied in InDesign    h � j j z   T h e   n a m e   o f   t h e   m a s t e r   p a g e / s p r e a d   t o   b e   a p p l i e d   i n   I n D e s i g n e  k l k l     ��������  ��  ��   l  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q   Unchanging variables --    r � s s 0   U n c h a n g i n g   v a r i a b l e s   - - p  t u t l     v���� v r      w x w m      y y � z z j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : x o      ���� $0 freshpagesfolder freshPagesFolder��  ��   u  { | { l    }���� } r     ~  ~ m     � � � � � p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d  o      ����  0 masterdocument masterDocument��  ��   |  � � � l     ��������  ��  ��   �  � � � l    ����� � r     � � � J     � �  � � � m    	 � � � � �  N e w s      s p l i t s �  � � � m   	 
 � � � � � * N e w s      2 - 3   a s   s i n g l e s �  � � � m   
  � � � � � * N e w s      4 - 5   a s   s i n g l e s �  � � � m     � � � � � * N e w s      6 - 7   a s   s i n g l e s �  � � � m     � � � � �  T V �  ��� � m     � � � � �  L e t t e r s��   � o      ���� 0 weekday_pages  ��  ��   �  � � � l   . ����� � r    . � � � J    * � �  � � � m     � � � � �  N e w s      s p l i t s �  � � � m     � � � � � * N e w s      2 - 3   a s   s i n g l e s �  � � � m     � � � � � * N e w s      4 - 5   a s   s i n g l e s �  � � � m     � � � � � * N e w s      6 - 7   a s   s i n g l e s �  � � � m     � � � � �  T V �  � � � m     � � � � �  L e t t e r s �  � � � m      � � � � �  S t r u g g l e �  � � � m     # � � � � �  S i n g l e   s t r u g g l e �  ��� � m   # & � � � � �  R e d   L i s t��   � o      ���� 0 weekend_pages  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  / G ����� � r   / G � � � J   / C � �  � � � m   / 2 � � � � �  M o n d a y �  � � � m   2 5 � � � � �  T u e s d a y �  � � � m   5 8 � � � � �  W e d n e s d a y �  � � � m   8 ; � � � � �  T h u r s d a y �  � � � m   ; > � � � � �  F r i d a y �  ��� � m   > A � � � � �  S a t u r d a y��   � o      ���� 0 	days_list  ��  ��   �  � � � l  H t ����� � r   H t � � � J   H p � �  � � � m   H K � � � � �  J a n u a r y �  � � � m   K N � � � � �  F e b r u a r y �  � � � m   N Q � � � � � 
 M a r c h �  � � � m   Q T � � � � � 
 A p r i l �  �  � m   T W �  M a y   m   W Z �  J u n e  m   Z ]		 �

  J u l y  m   ] ` �  A u g u s t  m   ` c �  S e p t e m b e r  m   c f �  O c t o b e r  m   f i �  N o v e m b e r �� m   i l �  D e c e m b e r��   � o      ���� 0 months_list  ��  ��   �  l     ��������  ��  ��    !  l     ��������  ��  ��  ! "#" l     ��$%��  $   User prompts --   % �&&     U s e r   p r o m p t s   - -# '(' l     ��������  ��  ��  ( )*) l      ��+,��  +  Get the date    , �--  G e t   t h e   d a t e  * ./. l  u �0����0 r   u �121 c   u �343 l  u �5����5 I  u ���67
�� .gtqpchltns    @   @ ns  6 o   u x���� 0 	days_list  7 ��89
�� 
prmp8 m   { ~:: �;; 8 P l e a s e   p i c k   t h e   e d i t i o n   d a y :9 ��<��
�� 
appr< m   � �== �>> ( N e w s   p a g e s   g e n e r a t o r��  ��  ��  4 m   � ���
�� 
TEXT2 o      ���� 0 theday theDay��  ��  / ?@? l  � �A����A Z  � �BC����B =  � �DED 1   � ���
�� 
rsltE m   � �FF �GG 
 f a l s eC R   � �����H
�� .ascrerr ****      � ****��  H ��I��
�� 
errnI m   � ���������  ��  ��  ��  ��  @ JKJ l  � �L����L r   � �MNM c   � �OPO l  � �Q����Q I  � ���RS
�� .gtqpchltns    @   @ ns  R o   � ����� 0 months_list  S ��TU
�� 
prmpT m   � �VV �WW , P l e a s e   p i c k   t h e   m o n t h :U ��X��
�� 
apprX m   � �YY �ZZ ( N e w s   p a g e s   g e n e r a t o r��  ��  ��  P m   � ���
�� 
TEXTN o      ���� 0 themonth theMonth��  ��  K [\[ l  � �]����] Z  � �^_����^ =  � �`a` 1   � ���
�� 
rslta m   � �bb �cc 
 f a l s e_ R   � ���~d
� .ascrerr ****      � ****�~  d �}e�|
�} 
errne m   � ��{�{���|  ��  ��  ��  ��  \ fgf l  �h�z�yh r   �iji c   � klk l  � �m�x�wm n   � �non 1   � ��v
�v 
ttxto l  � �p�u�tp I  � ��sqr
�s .sysodlogaskr        TEXTq m   � �ss �tt * P l e a s e   t y p e   t h e   d a t e :r �ruv
�r 
dtxtu m   � �ww �xx  v �qy�p
�q 
appry m   � �zz �{{ ( N e w s   p a g e s   g e n e r a t o r�p  �u  �t  �x  �w  l m   � ��o
�o 
TEXTj o      �n�n 0 thedate theDate�z  �y  g |}| l ~�m�l~ Z ��k�j = ��� 1  �i
�i 
rslt� m  �� ��� 
 f a l s e� R  �h�g�
�h .ascrerr ****      � ****�g  � �f��e
�f 
errn� m  �d�d���e  �k  �j  �m  �l  } ��� l ?��c�b� r  ?��� c  ;��� l 7��a�`� n  7��� 1  37�_
�_ 
ttxt� l 3��^�]� I 3�\��
�\ .sysodlogaskr        TEXT� m  !�� ��� * P l e a s e   t y p e   t h e   y e a r :� �[��
�[ 
dtxt� m  $'�� ���  � �Z��Y
�Z 
appr� m  *-�� ��� ( N e w s   p a g e s   g e n e r a t o r�Y  �^  �]  �a  �`  � m  7:�X
�X 
TEXT� o      �W�W 0 theyear theYear�c  �b  � ��� l @X��V�U� Z @X���T�S� = @G��� 1  @C�R
�R 
rslt� m  CF�� ��� 
 f a l s e� R  JT�Q�P�
�Q .ascrerr ****      � ****�P  � �O��N
�O 
errn� m  NQ�M�M���N  �T  �S  �V  �U  � ��� l     �L�K�J�L  �K  �J  � ��� l      �I���I  �  Get the pages to create   � ��� . G e t   t h e   p a g e s   t o   c r e a t e� ��� l Y���H�G� Z  Y�����F� > Y`��� o  Y\�E�E 0 theday theDay� m  \_�� ���  S a t u r d a y� k  c��� ��� r  c���� l c���D�C� I c��B��
�B .gtqpchltns    @   @ ns  � o  cd�A�A 0 weekday_pages  � �@��
�@ 
prmp� l gv��?�>� b  gv��� b  gr��� b  gn��� m  gj�� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  jm�=
�= 
ret � o  nq�<
�< 
ret � m  ru�� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�?  �>  � �;��
�; 
appr� m  y|�� ��� ( N e w s   p a g e s   g e n e r a t o r� �:��9
�: 
mlsl� m  ��8
�8 boovtrue�9  �D  �C  � o      �7�7 &0 masterstogenerate mastersToGenerate� ��6� Z �����5�4� = ����� 1  ���3
�3 
rslt� m  ���2
�2 boovfals� R  ���1�0�
�1 .ascrerr ****      � ****�0  � �/��.
�/ 
errn� m  ���-�-���.  �5  �4  �6  � ��� = ����� o  ���,�, 0 theday theDay� m  ���� ���  S a t u r d a y� ��+� k  ���� ��� r  ����� l ����*�)� I ���(��
�( .gtqpchltns    @   @ ns  � o  ���'�' 0 weekend_pages  � �&��
�& 
prmp� l ����%�$� b  ����� b  ����� b  ����� m  ���� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  ���#
�# 
ret � o  ���"
�" 
ret � m  ���� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�%  �$  � �!��
�! 
appr� m  ���� ��� ( N e w s   p a g e s   g e n e r a t o r� � ��
�  
mlsl� m  ���
� boovtrue�  �*  �)  � o      �� &0 masterstogenerate mastersToGenerate� ��� Z ������� = ����� 1  ���
� 
rslt� m  ���
� boovfals� R  ���� 
� .ascrerr ****      � ****�    ��
� 
errn m  �������  �  �  �  �+  �F  �H  �G  �  l     ����  �  �    l     ����  �  �    l     �	�     Create the date --   	 �

 &   C r e a t e   t h e   d a t e   - -  l     ��
�	�  �
  �	    l ���� I  ������ "0 create_pagedate create_pageDate�  �  �  �    l     ����  �  �    l ��� �� I  ���������� "0 create_filedate create_fileDate��  ��  �   ��    l     ��������  ��  ��    l     ��������  ��  ��    l     ����     Generate the pages --    � ,   G e n e r a t e   t h e   p a g e s   - -  l     ��������  ��  ��    !  l �"����" O �#$# r  %&% m  ��
�� elnteNvr& n      '(' 1  	��
�� 
UIAc( 1  	��
�� 
pScr$ m  ��))�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ! *+* l     ��������  ��  ��  + ,-, l �.����. Z  �/0����/ E 121 o  ���� &0 masterstogenerate mastersToGenerate2 m  33 �44  N e w s      s p l i t s0 k  �55 676 l ��������  ��  ��  7 898 Z  �:;<��: > !=>= o  ���� 0 theday theDay> m   ?? �@@  S a t u r d a y; l $hABCA k  $hDD EFE r  $+GHG m  $'II �JJ  N e w s - F r o n tH o      ���� 0 
mastername 
masterNameF KLK r  ,3MNM m  ,/OO �PP  1 _ F r o n tN o      ���� 0 fileslug fileSlugL Q��Q O  4hRSR k  :gTT UVU I :?��W��
�� .aevtodocnull  �    alisW o  :;����  0 masterdocument masterDocument��  V XYX n @EZ[Z I  AE�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  [  f  @AY \]\ n FL^_^ o  GK����  0 drawembargobox drawEmbargoBox_  f  FG] `a` n MRbcb I  NR�������� 0 clean_save_r clean_save_R��  ��  c  f  MNa d��d O Sgefe I [f����g
�� .CoReclosnull���     obj ��  g ��h��
�� 
svoph m  _b��
�� savoyes ��  f l SXi����i 1  SX��
�� 
pacd��  ��  ��  S m  47jj�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  B ; 5 If block to create the weekday or weekend front page   C �kk j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e< lml = krnon o  kn���� 0 theday theDayo m  nqpp �qq  S a t u r d a ym r��r k  u�ss tut r  u|vwv m  uxxx �yy $ N e w s - W e e k e n d   f r o n tw o      ���� 0 
mastername 
masterNameu z{z r  }�|}| m  }�~~ �  1 _ F r o n t} o      ���� 0 fileslug fileSlug{ ���� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� o  ������  0 drawembargobox drawEmbargoBox�  f  ��� ��� n ����� I  ���������� 0 clean_save_r clean_save_R��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  9 ��� l ����������  ��  ��  � ��� Z  �������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ��� * N e w s      2 - 3   a s   s i n g l e s� l �c���� k  �c�� ��� r  ����� m  ���� ���  N e w s - H o m e - L S� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  2 _ H o m e� o      ���� 0 fileslug fileSlug� ��� O  ���� k  ��� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_single changePageNumber_single� ���� m  ���� ���  2��  ��  �  f  ��� ��� n ����� o  ������  0 drawembargobox drawEmbargoBox�  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O  ��� I �����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ��
�� savoyes ��  � l  ������ 1   ��
�� 
pacd��  ��  ��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l ��������  ��  ��  � ��� r  ��� m  �� ���  N e w s - H o m e - R S� o      ���� 0 
mastername 
masterName� ��� r  %��� m  !�� ���  3 _ H o m e� o      ���� 0 fileslug fileSlug� ���� O  &c��� k  ,b�� ��� I ,1�����
�� .aevtodocnull  �    alis� o  ,-����  0 masterdocument masterDocument��  � ��� n 27��� I  37�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  23� ��� n 8@��� I  9@������� 20 changepagenumber_single changePageNumber_single� ���� m  9<�� ���  3��  ��  �  f  89� ��� n AG��� o  BF����  0 drawembargobox drawEmbargoBox�  f  AB� ��� n HM� � I  IM�������� 0 clean_save_r clean_save_R��  ��     f  HI� �� O Nb I Va���
�� .CoReclosnull���     obj �   �~�}
�~ 
svop m  Z]�|
�| savoyes �}   l NS�{�z 1  NS�y
�y 
pacd�{  �z  ��  � m  &)�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  � 3 - If block to create 2-3 as singles or a split   � � Z   I f   b l o c k   t o   c r e a t e   2 - 3   a s   s i n g l e s   o r   a   s p l i t��  � k  f�		 

 r  fm m  fi �  N e w s - H o m e - S p l i t o      �x�x 0 
mastername 
masterName  r  nu m  nq �  2 - 3 _ H o m e o      �w�w 0 fileslug fileSlug �v O  v� k  |�  I |��u�t
�u .aevtodocnull  �    alis o  |}�s�s  0 masterdocument masterDocument�t    n ��  I  ���r�q�p�r >0 applymaster_changedate_spread applyMaster_changeDate_spread�q  �p     f  �� !"! n ��#$# I  ���o%�n�o 20 changepagenumber_spread changePageNumber_spread% &�m& m  ��'' �((  2�m  �n  $  f  ��" )*) n ��+,+ o  ���l�l  0 drawembargobox drawEmbargoBox,  f  ��* -.- n ��/0/ I  ���k�j�i�k 0 clean_save_l clean_save_L�j  �i  0  f  ��. 1�h1 O ��232 I ���g�f4
�g .CoReclosnull���     obj �f  4 �e5�d
�e 
svop5 m  ���c
�c savoyes �d  3 l ��6�b�a6 1  ���`
�` 
pacd�b  �a  �h   m  vy77�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �v  � 898 l ���_�^�]�_  �^  �]  9 :;: Z  ��<=�\>< E ��?@? o  ���[�[ &0 masterstogenerate mastersToGenerate@ m  ��AA �BB * N e w s      4 - 5   a s   s i n g l e s= l �YCDEC k  �YFF GHG r  ��IJI m  ��KK �LL  N e w s - H o m e - L SJ o      �Z�Z 0 
mastername 
masterNameH MNM r  ��OPO m  ��QQ �RR  4 _ H o m eP o      �Y�Y 0 fileslug fileSlugN STS O  �UVU k  �
WW XYX I ���XZ�W
�X .aevtodocnull  �    alisZ o  ���V�V  0 masterdocument masterDocument�W  Y [\[ n ��]^] I  ���U�T�S�U >0 applymaster_changedate_single applyMaster_changeDate_single�T  �S  ^  f  ��\ _`_ n ��aba I  ���Rc�Q�R 20 changepagenumber_single changePageNumber_singlec d�Pd m  ��ee �ff  4�P  �Q  b  f  ��` ghg n ��iji o  ���O�O  0 drawembargobox drawEmbargoBoxj  f  ��h klk n ��mnm I  ���N�M�L�N 0 clean_save_l clean_save_L�M  �L  n  f  ��l o�Ko O �
pqp I �	�J�Ir
�J .CoReclosnull���     obj �I  r �Hs�G
�H 
svops m  �F
�F savoyes �G  q l ��t�E�Dt 1  ���C
�C 
pacd�E  �D  �K  V m  ��uu�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  T vwv l �B�A�@�B  �A  �@  w xyx r  z{z m  || �}}  N e w s - H o m e - R S{ o      �?�? 0 
mastername 
masterNamey ~~ r  ��� m  �� ���  5 _ H o m e� o      �>�> 0 fileslug fileSlug ��=� O  Y��� k  "X�� ��� I "'�<��;
�< .aevtodocnull  �    alis� o  "#�:�:  0 masterdocument masterDocument�;  � ��� n (-��� I  )-�9�8�7�9 >0 applymaster_changedate_single applyMaster_changeDate_single�8  �7  �  f  ()� ��� n .6��� I  /6�6��5�6 20 changepagenumber_single changePageNumber_single� ��4� m  /2�� ���  5�4  �5  �  f  ./� ��� n 7=��� o  8<�3�3  0 drawembargobox drawEmbargoBox�  f  78� ��� n >C��� I  ?C�2�1�0�2 0 clean_save_r clean_save_R�1  �0  �  f  >?� ��/� O DX��� I LW�.�-�
�. .CoReclosnull���     obj �-  � �,��+
�, 
svop� m  PS�*
�* savoyes �+  � l DI��)�(� 1  DI�'
�' 
pacd�)  �(  �/  � m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �=  D 3 - If block to create 4-5 as singles or a split   E ��� Z   I f   b l o c k   t o   c r e a t e   4 - 5   a s   s i n g l e s   o r   a   s p l i t�\  > k  \��� ��� r  \c��� m  \_�� ���  N e w s - H o m e - S p l i t� o      �&�& 0 
mastername 
masterName� ��� r  dk��� m  dg�� ���  4 - 5 _ H o m e� o      �%�% 0 fileslug fileSlug� ��$� O  l���� k  r��� ��� I rw�#��"
�# .aevtodocnull  �    alis� o  rs�!�!  0 masterdocument masterDocument�"  � ��� n x}��� I  y}� ���  >0 applymaster_changedate_spread applyMaster_changeDate_spread�  �  �  f  xy� ��� n ~���� I  ����� 20 changepagenumber_spread changePageNumber_spread� ��� m  ��� ���  4�  �  �  f  ~� ��� n ����� o  ����  0 drawembargobox drawEmbargoBox�  f  ��� ��� n ����� I  ������ 0 clean_save_l clean_save_L�  �  �  f  ��� ��� O ����� I �����
� .CoReclosnull���     obj �  � ���
� 
svop� m  ���
� savoyes �  � l ������ 1  ���
� 
pacd�  �  �  � m  lo���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �$  ; ��� l ������  �  �  � ��� Z  �����
�� E ����� o  ���	�	 &0 masterstogenerate mastersToGenerate� m  ���� ��� & N e w s      6 - 7   a s   s p l i t� l �O���� k  �O�� ��� r  ����� m  ���� ���  N e w s - F o r e i g n - L S� o      �� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  6 _ F o r e i g n� o      �� 0 fileslug fileSlug� ��� O  ���� k  � �� ��� I �����
� .aevtodocnull  �    alis� o  ����  0 masterdocument masterDocument�  � ��� n ����� I  ������ >0 applymaster_changedate_single applyMaster_changeDate_single�  �  �  f  ��� ��� n ��� � I  ��� ���  20 changepagenumber_single changePageNumber_single �� m  �� �  6��  ��     f  ���  n �� o  ������  0 drawembargobox drawEmbargoBox  f  �� 	
	 n �� I  ���������� 0 clean_save_l clean_save_L��  ��    f  ��
 �� O �  I ������
�� .CoReclosnull���     obj ��   ����
�� 
svop m  ����
�� savoyes ��   l ������ 1  ����
�� 
pacd��  ��  ��  � m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  l ��������  ��  ��    r  	 m   �  N e w s - F o r e i g n - R S o      ���� 0 
mastername 
masterName  r  
 m  
   �!!  7 _ F o r e i g n o      ���� 0 fileslug fileSlug "��" O  O#$# k  N%% &'& I ��(��
�� .aevtodocnull  �    alis( o  ����  0 masterdocument masterDocument��  ' )*) n #+,+ I  #�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  ,  f  * -.- n $,/0/ I  %,��1���� 20 changepagenumber_single changePageNumber_single1 2��2 m  %(33 �44  7��  ��  0  f  $%. 565 n -3787 o  .2����  0 drawembargobox drawEmbargoBox8  f  -.6 9:9 n 49;<; I  59�������� 0 clean_save_r clean_save_R��  ��  <  f  45: =��= O :N>?> I BM����@
�� .CoReclosnull���     obj ��  @ ��A��
�� 
svopA m  FI��
�� savoyes ��  ? l :?B����B 1  :?��
�� 
pacd��  ��  ��  $ m  CC�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  � 3 - If block to create 6-7 as singles or a split   � �DD Z   I f   b l o c k   t o   c r e a t e   6 - 7   a s   s i n g l e s   o r   a   s p l i t�
  � k  R�EE FGF r  RYHIH m  RUJJ �KK $ N e w s - F o r e i g n - S p l i tI o      ���� 0 
mastername 
masterNameG LML r  ZaNON m  Z]PP �QQ  6 - 7 _ F o r e i g nO o      ���� 0 fileslug fileSlugM R��R O  b�STS k  h�UU VWV I hm��X��
�� .aevtodocnull  �    alisX o  hi����  0 masterdocument masterDocument��  W YZY n ns[\[ I  os�������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  \  f  noZ ]^] n t|_`_ I  u|��a���� 20 changepagenumber_spread changePageNumber_spreada b��b m  uxcc �dd  6��  ��  `  f  tu^ efe n }�ghg o  ~�����  0 drawembargobox drawEmbargoBoxh  f  }~f iji n ��klk I  ���������� 0 clean_save_l clean_save_L��  ��  l  f  ��j m��m O ��non I ������p
�� .CoReclosnull���     obj ��  p ��q��
�� 
svopq m  ����
�� savoyes ��  o l ��r����r 1  ����
�� 
pacd��  ��  ��  T m  bess�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  � t��t l ����������  ��  ��  ��  ��  ��  ��  ��  - uvu l     ��������  ��  ��  v wxw l     ��������  ��  ��  x yzy l �O{����{ Z  �O|}����| E ��~~ o  ������ &0 masterstogenerate mastersToGenerate m  ���� ���  T V} Z  �K������ > ����� o  ������ 0 theday theDay� m  ���� ���  S a t u r d a y� k  ���� ��� l ������ r  ����� m  ���� ���  F e a t - 1 2 - 1 3� o      ���� 0 
mastername 
masterName� * $ Create the weekday TV/features page   � ��� H   C r e a t e   t h e   w e e k d a y   T V / f e a t u r e s   p a g e� ��� r  ����� m  ���� ���  1 2 - 1 3 _ T V� o      ���� 0 fileslug fileSlug� ���� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  ��� ��� n ����� I  ���������� (0 changelegaldate_12 changeLegalDate_12��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  � ��� =  ��� o   ���� 0 theday theDay� m  �� ���  S a t u r d a y� ���� k  
G�� ��� l 
���� r  
��� m  
�� ���  T V - W e e k e n d� o      ���� 0 
mastername 
masterName� !  Create the weekend TV page   � ��� 6   C r e a t e   t h e   w e e k e n d   T V   p a g e� ��� r  ��� m  �� ���  1 8 - 1 9 _ T V� o      ���� 0 fileslug fileSlug� ���� O  G��� k   F�� ��� I  %�����
�� .aevtodocnull  �    alis� o   !����  0 masterdocument masterDocument��  � ��� n &+��� I  '+�������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  &'� ��� n ,1��� I  -1�������� 0 clean_save_l clean_save_L��  ��  �  f  ,-� ���� O 2F��� I :E�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  >A�
� savoyes ��  � l 27��~�}� 1  27�|
�| 
pacd�~  �}  ��  � m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  ��  ��  ��  ��  z ��� l     �{�z�y�{  �z  �y  � ��� l     �x�w�v�x  �w  �v  � ��� l P!��u�t� Z  P!���s�r� E PW��� o  PS�q�q &0 masterstogenerate mastersToGenerate� m  SV�� ���  L e t t e r s� k  Z�� ��� r  Za��� m  Z]�� ���  F e a t - L e t t e r s� o      �p�p 0 
mastername 
masterName� ��� l bn���� r  bn��� J  bj�� ��� m  be   �  M o n d a y� �o m  eh �  W e d n e s d a y�o  � o      �n�n 0 p10_days  � = 7 These two lists determine what the page number will be   � � n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e�  r  o�	 J  o

  m  or �  T u e s d a y  m  ru �  T h u r s d a y  m  ux �  F r i d a y �m m  x{ �  S a t u r d a y�m  	 o      �l�l 0 p14_days    l ���k�j�i�k  �j  �i   �h Z  ��g E �� !  o  ���f�f 0 p10_days  ! o  ���e�e 0 theday theDay k  ��"" #$# r  ��%&% m  ��'' �((  1 0 _ L e t t e r s& l     )�d�c) o      �b�b 0 fileslug fileSlug�d  �c  $ *+* O  ��,-, k  ��.. /0/ I ���a1�`
�a .aevtodocnull  �    alis1 o  ���_�_  0 masterdocument masterDocument�`  0 232 n ��454 I  ���^�]�\�^ >0 applymaster_changedate_single applyMaster_changeDate_single�]  �\  5  f  ��3 676 n ��898 I  ���[:�Z�[ 20 changepagenumber_single changePageNumber_single: ;�Y; m  ��<< �==  1 0�Y  �Z  9  f  ��7 >?> n ��@A@ I  ���X�W�V�X 0 clean_save_l clean_save_L�W  �V  A  f  ��? B�UB O ��CDC I ���T�SE
�T .CoReclosnull���     obj �S  E �RF�Q
�R 
svopF m  ���P
�P savoyes �Q  D 1  ���O
�O 
pacd�U  - m  ��GG�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  + H�NH l ���M�L�K�M  �L  �K  �N   IJI E ��KLK o  ���J�J 0 p14_days  L o  ���I�I 0 theday theDayJ M�HM k  �NN OPO r  ��QRQ m  ��SS �TT  1 4 _ L e t t e r sR l     U�G�FU o      �E�E 0 fileslug fileSlug�G  �F  P V�DV O  �WXW k  �YY Z[Z I ���C\�B
�C .aevtodocnull  �    alis\ o  ���A�A  0 masterdocument masterDocument�B  [ ]^] n ��_`_ I  ���@�?�>�@ >0 applymaster_changedate_single applyMaster_changeDate_single�?  �>  `  f  ��^ aba n ��cdc I  ���=e�<�= 20 changepagenumber_single changePageNumber_singlee f�;f m  ��gg �hh  1 4�;  �<  d  f  ��b iji n �klk I  ��:�9�8�: 0 clean_save_l clean_save_L�9  �8  l  f  ��j m�7m O non I �6�5p
�6 .CoReclosnull���     obj �5  p �4q�3
�4 
svopq m  �2
�2 savoyes �3  o 1  	�1
�1 
pacd�7  X m  ��rr�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �D  �H  �g  �h  �s  �r  �u  �t  � sts l     �0�/�.�0  �/  �.  t uvu l     �-�,�+�-  �,  �+  v wxw l "my�*�)y Z  "mz{�(�'z E ")|}| o  "%�&�& &0 masterstogenerate mastersToGenerate} m  %(~~ �  S t r u g g l e{ k  ,i�� ��� r  ,3��� m  ,/�� ���  N e w s - S t r u g g l e� o      �%�% 0 
mastername 
masterName� ��� r  4;��� m  47�� ���  1 0 - 1 1 _ S t r u g g l e� l     ��$�#� o      �"�" 0 fileslug fileSlug�$  �#  � ��!� O  <i��� k  Bh�� ��� I BG� ��
�  .aevtodocnull  �    alis� o  BC��  0 masterdocument masterDocument�  � ��� n HM��� I  IM���� >0 applymaster_changedate_spread applyMaster_changeDate_spread�  �  �  f  HI� ��� n NS��� I  OS���� 0 clean_save_l clean_save_L�  �  �  f  NO� ��� O Th��� I \g���
� .CoReclosnull���     obj �  � ���
� 
svop� m  `c�
� savoyes �  � 1  TY�
� 
pacd�  � m  <?���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �!  �(  �'  �*  �)  x ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l n���
�	� Z  n������ E nu��� o  nq�� &0 masterstogenerate mastersToGenerate� m  qt�� ���  S i n g l e   s t r u g g l e� k  x��� ��� r  x��� m  x{�� ��� ( N e w s - S t r u g g l e   s i n g l e� o      �� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  1 1 _ S t r u g g l e� l     ���� o      �� 0 fileslug fileSlug�  �  � ��� O  ����� k  ���� ��� I ��� ���
�  .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_r clean_save_R��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � 1  ����
�� 
pacd��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  �  �  �
  �	  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l ������� Z  �������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  R e d   L i s t� k  ��� ��� r  ����� m  ���� ���  F e a t - R e d   L i s t� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  2 0 _ R e d L i s t� l     ������ o      ���� 0 fileslug fileSlug��  ��  � ���� O  ���� k  ��� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ���������� (0 changelegaldate_20 changeLegalDate_20��  ��  �  f  ��� ��� n ��� � I  ���������� 0 clean_save_l clean_save_L��  ��     f  ��� �� O � I �����
�� .CoReclosnull���     obj ��   ����
�� 
svop m  ���
�� savoyes ��   1  ����
�� 
pacd��  � m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  ��  ��  �  l     ��������  ��  ��   	
	 l  ���� O   r   m  ��
�� elnteInA n       1  ��
�� 
UIAc 1  ��
�� 
pScr m  �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  
  l     ��������  ��  ��    l !3���� O  !3 k  '2  I ',������
�� .miscactvnull��� ��� obj ��  ��   �� I -2����
�� .aevtodocnull  �    alis o  -.���� $0 freshpagesfolder freshPagesFolder��  ��   m  !$�                                                                                  MACS  alis    Z  SSD                        �@��H+     <
Finder.app                                                       ���(��        ����  	                CoreServices    �@��      �(��       <   /   .  -SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  ��    !  l     ��������  ��  ��  ! "#" l     ��������  ��  ��  # $%$ l     ��&'��  &   Handler definitions --   ' �(( .   H a n d l e r   d e f i n i t i o n s   - -% )*) l     ��������  ��  ��  * +,+ l     ��������  ��  ��  , -.- l      ��/0��  / X R	Create the date used on the InDesign pages, and deal with some Saturday oddities	   0 �11 � 	 C r e a t e   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l   w i t h   s o m e   S a t u r d a y   o d d i t i e s 	. 232 i     454 I      �������� "0 create_pagedate create_pageDate��  ��  5 k    �66 787 r     
9:9 J     ;; <=< m     >> �??  J a n u a r y= @A@ m    BB �CC 
 M a r c hA DED m    FF �GG  M a yE HIH m    JJ �KK  J u l yI LML m    NN �OO  A u g u s tM P��P m    QQ �RR  O c t o b e r��  : o      ���� (0 thirtyonedaymonths ThirtyOneDayMonths8 STS r    UVU J    WW XYX m    ZZ �[[ 
 A p r i lY \]\ m    ^^ �__  J u n e] `a` m    bb �cc  S e p t e m b e ra d��d m    ee �ff  N o v e m b e r��  V o      ���� "0 thirtydaymonths ThirtyDayMonthsT ghg l   ��������  ��  ��  h i��i Z   �jkl��j >   mnm o    ���� 0 theday theDayn m    oo �pp  S a t u r d a yk l   5qrsq k    5tt uvu r    3wxw l   /y����y b    /z{z b    +|}| b    '~~ b    #��� b    ��� b    ��� o    ���� 0 theday theDay� m    �� ���   � o    ���� 0 themonth theMonth� m    "�� ���    o   # &���� 0 thedate theDate} m   ' *�� ���   { o   + .���� 0 theyear theYear��  ��  x o      ���� 0 pagedate pageDatev ���� l  4 4��������  ��  ��  ��  r + % Does the page date for every weekday   s ��� J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a yl ��� F   8 U��� F   8 K��� =  8 =��� o   8 9���� 0 theday theDay� m   9 <�� ���  S a t u r d a y� =  @ G��� o   @ C���� 0 thedate theDate� m   C F�� ���  3 0� E  N Q��� o   N O���� "0 thirtydaymonths ThirtyDayMonths� o   O P���� 0 themonth theMonth� ��� l  X ����� k   X ��� ��� Y   X ��������� l  h ����� Z  h �������� =  h r��� n   h p��� 4   k p���
�� 
cobj� o   n o���� 0 i  � o   h k���� 0 months_list  � o   p q���� 0 themonth theMonth� r   u ���� l  u ������ n   u ��� 4   x ���
�� 
cobj� l  { ~������ [   { ~��� o   { |���� 0 i  � m   | }���� ��  ��  � o   u x���� 0 months_list  ��  ��  � o      �� 0 secondmonth secondMonth��  ��  � V P This repeat block here grabs the name of the next month to use in the page date   � ��� �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e�� 0 i  � m   [ \�~�~ � I  \ c�}��|
�} .corecnte****       ****� o   \ _�{�{ 0 months_list  �|  ��  � ��� l  � ����� r   � ���� l  � ���z�y� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���   S a t u r d a y / S u n d a y  � o   � ��x�x 0 themonth theMonth� m   � ��� ���    3 0 -� o   � ��w�w 0 secondmonth secondMonth� m   � ��� ���    1  � o   � ��v�v 0 theyear theYear�z  �y  � o      �u�u 0 pagedate pageDate� P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"   � ��� �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 "� ��t� l  � ��s�r�q�s  �r  �q  �t  � I C Deals with Saturdays at the end of 30-day months (uses list above)   � ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )� ��� F   � ���� F   � ���� =  � ���� o   � ��p�p 0 theday theDay� m   � ��� ���  S a t u r d a y� =  � ���� o   � ��o�o 0 thedate theDate� m   � ��� ���  3 1� E  � ���� o   � ��n�n (0 thirtyonedaymonths ThirtyOneDayMonths� o   � ��m�m 0 themonth theMonth� ��� l  ����� k   ��� ��� Y   � ���l���k� Z  � ����j�i� =  � ���� n   � ���� 4   � ��h�
�h 
cobj� o   � ��g�g 0 i  � o   � ��f�f 0 months_list  � o   � ��e�e 0 themonth theMonth� r   � ���� l  � ���d�c� n   � ���� 4   � ��b 
�b 
cobj  l  � ��a�` [   � � o   � ��_�_ 0 i   m   � ��^�^ �a  �`  � o   � ��]�] 0 months_list  �d  �c  � o      �\�\ 0 secondmonth secondMonth�j  �i  �l 0 i  � m   � ��[�[ � I  � ��Z�Y
�Z .corecnte****       **** o   � ��X�X 0 months_list  �Y  �k  �  r   � l  �	�W�V	 b   �

 b   �	 b   � b   � b   � � m   � � �   S a t u r d a y / S u n d a y   o   � ��U�U 0 themonth theMonth m   � �    3 1 - o  �T�T 0 secondmonth secondMonth m   �    1   o  	�S�S 0 theyear theYear�W  �V   o      �R�R 0 pagedate pageDate �Q l �P�O�N�P  �O  �N  �Q  � I C Deals with Saturdays at the end of 31-day months (uses list above)   � � �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )�  F  5 F  ) !  = "#" o  �M�M 0 theday theDay# m  $$ �%%  S a t u r d a y! ? %&'& o  !�L�L 0 thedate theDate' m  !$(( �))  2 7 = ,1*+* o  ,-�K�K 0 themonth theMonth+ m  -0,, �--  F e b r u a r y ./. l 8M0120 k  8M33 454 r  8K676 l 8G8�J�I8 b  8G9:9 b  8C;<; b  8?=>= m  8;?? �@@ 2 S a t u r d a y / S u n d a y   F e b r u a r y  > o  ;>�H�H 0 thedate theDate< m  ?BAA �BB  - M a r c h   1  : o  CF�G�G 0 theyear theYear�J  �I  7 o      �F�F 0 pagedate pageDate5 C�EC l LL�D�C�B�D  �C  �B  �E  1 { u Deals with Saturdays at the end of February. Fun fact: it�s quite blunt but won�t produce the wrong date until 2032.   2 �DD �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   F u n   f a c t :   i t  s   q u i t e   b l u n t   b u t   w o n  t   p r o d u c e   t h e   w r o n g   d a t e   u n t i l   2 0 3 2 ./ EFE F  PoGHG F  PcIJI = PUKLK o  PQ�A�A 0 theday theDayL m  QTMM �NN  S a t u r d a yJ = X_OPO o  X[�@�@ 0 thedate theDateP m  [^QQ �RR  3 1H = fkSTS o  fg�?�? 0 themonth theMonthT m  gjUU �VV  D e c e m b e rF WXW l r�YZ[Y k  r�\\ ]^] r  r�_`_ l r�a�>�=a b  r�bcb b  r}ded b  ryfgf m  ruhh �ii L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  g o  ux�<�< 0 theyear theYeare m  y|jj �kk  -c l }�l�;�:l [  }�mnm o  }��9�9 0 theyear theYearn m  ���8�8 �;  �:  �>  �=  ` o      �7�7 0 pagedate pageDate^ o�6o l ���5�4�3�5  �4  �3  �6  Z 2 , Deals with Saturdays at the end of December   [ �pp X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e rX qrq = ��sts o  ���2�2 0 theday theDayt m  ��uu �vv  S a t u r d a yr w�1w l ��xyzx k  ��{{ |}| r  ��~~ l ����0�/� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���   S a t u r d a y / S u n d a y  � o  ���.�. 0 themonth theMonth� m  ���� ���   � o  ���-�- 0 thedate theDate� m  ���� ���  -� l ����,�+� [  ����� o  ���*�* 0 thedate theDate� m  ���)�) �,  �+  � m  ���� ���   � o  ���(�( 0 theyear theYear�0  �/   o      �'�' 0 pagedate pageDate} ��&� l ���%�$�#�%  �$  �#  �&  y 3 - Does the page date for every normal Saturday   z ��� Z   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y�1  ��  ��  3 ��� l     �"�!� �"  �!  �   � ��� l     ����  �  �  � ��� l      ����  � @ :	Create the short date to name the created InDesign files	   � ��� t 	 C r e a t e   t h e   s h o r t   d a t e   t o   n a m e   t h e   c r e a t e d   I n D e s i g n   f i l e s 	� ��� i    ��� I      ���� "0 create_filedate create_fileDate�  �  � k     [�� ��� Z     ����� A    ��� c     ��� o     �� 0 thedate theDate� m    �
� 
long� m    �� ���  1 0� l   ���� r    ��� l   ���� b    ��� m    	�� ���  0� o   	 
�� 0 thedate theDate�  �  � o      �� 0 numdate numDate� L F If the date is 1-10 this adds an initial zero to use in the file name   � ��� �   I f   t h e   d a t e   i s   1 - 1 0   t h i s   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e�  � r    ��� o    �� 0 thedate theDate� o      �� 0 numdate numDate� ��� l   ����  �  �  � ��� Y    7������ l  " 2���� Z  " 2���
�	� =  " (��� n   " &��� 4   # &��
� 
cobj� o   $ %�� 0 i  � o   " #�� 0 months_list  � o   & '�� 0 themonth theMonth� r   + .��� o   + ,�� 0 i  � o      �� 0 raw_nummonth raw_numMonth�
  �	  � d ^ This gets the month number and, if less than 10, adds an initial zero to use in the file name   � ��� �   T h i s   g e t s   t h e   m o n t h   n u m b e r   a n d ,   i f   l e s s   t h a n   1 0 ,   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e� 0 i  � m    �� � I   ��� 
� .corecnte****       ****� o    ���� 0 months_list  �   �  � ��� Z   8 I������ A  8 ;��� o   8 9���� 0 raw_nummonth raw_numMonth� m   9 :���� 
� r   > C��� l  > A������ b   > A��� m   > ?�� ���  0� o   ? @���� 0 raw_nummonth raw_numMonth��  ��  � o      ���� 0 nummonth numMonth��  � r   F I��� o   F G���� 0 raw_nummonth raw_numMonth� o      ���� 0 nummonth numMonth� ��� l  J J��������  ��  ��  � ���� l  J [���� r   J [��� l  J Y������ b   J Y��� b   J M��� o   J K���� 0 numdate numDate� o   K L���� 0 nummonth numMonth� l  M X������ n   M X��� 7 N X����
�� 
ctxt� m   R T���� � m   U W���� � o   M N���� 0 theyear theYear��  ��  ��  ��  � o      ���� 0 filedate fileDate� Z T This combines the date, month and last two digits of the year to create a file name   � ��� �   T h i s   c o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r   t o   c r e a t e   a   f i l e   n a m e��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      �� ��    ` Z	Single page: Apply a master, change the date and override everything on the "Work" layer	    � � 	 S i n g l e   p a g e :   A p p l y   a   m a s t e r ,   c h a n g e   t h e   d a t e   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	�  i     I      �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��   O     c O    b	
	 k   
 a  r   
  4   
 ��
�� 
mspr o    ���� 0 
mastername 
masterName n       1    ��
�� 
pmas 4    ��
�� 
page m    ����   I   &��
�� .InESovrrobj         obj  n     4    ��
�� 
txtf m     �  E d i t i o n   d a t e 4    ��
�� 
mspr o    ���� 0 
mastername 
masterName ����
�� 
dPge 4    "��
�� 
page m     !���� ��    !  r   ' 2"#" o   ' (���� 0 pagedate pageDate# l     $����$ n      %&% 1   / 1��
�� 
pcnt& n   ( /'(' 4   , /��)
�� 
txtf) m   - .** �++  E d i t i o n   d a t e( 4   ( ,��,
�� 
page, m   * +���� ��  ��  ! -��- Q   3 a./��. I  6 X��01
�� .InESovrrobj         obj 0 l  6 O2����2 6  6 O343 n   6 >565 2   < >��
�� 
cobj6 n   6 <787 1   : <��
�� 
mpgs8 4   6 :��9
�� 
page9 m   8 9���� 4 =  ? N:;: n  @ H<=< 1   D H��
�� 
pnam= 1   @ D��
�� 
pilr; m   I M>> �??  W o r k��  ��  1 ��@��
�� 
dPge@ 4   P T��A
�� 
pageA m   R S���� ��  / R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  
 l   B����B 1    ��
�� 
pacd��  ��   m     CC�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   DED l     ��������  ��  ��  E FGF l     ��������  ��  ��  G HIH l      ��JK��  J } w	Spreads: Create a new spread from a master, change the date on both pages and override everything on the "Work" layer	   K �LL � 	 S p r e a d s :   C r e a t e   a   n e w   s p r e a d   f r o m   a   m a s t e r ,   c h a n g e   t h e   d a t e   o n   b o t h   p a g e s   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	I MNM i    OPO I      �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  P O     �QRQ O    �STS k   
 �UU VWV I  
 ����X
�� .corecrel****      � null��  X ��YZ
�� 
koclY m    ��
�� 
sprdZ ��[��
�� 
prdt[ K    \\ ��]��
�� 
pmas] 4    ��^
�� 
mspr^ o    ���� 0 
mastername 
masterName��  ��  W _`_ I   *��ab
�� .InESovrrobj         obj a n    !cdc 4    !��e
�� 
txtfe m     ff �gg  L - E d i t i o n   d a t ed 4    ��h
�� 
msprh o    ���� 0 
mastername 
masterNameb ��i��
�� 
dPgei 4   " &��j
�� 
pagej m   $ %���� ��  ` klk I  + ;��mn
�� .InESovrrobj         obj m n   + 2opo 4   / 2��q
�� 
txtfq m   0 1rr �ss  R - E d i t i o n   d a t ep 4   + /��t
�� 
msprt o   - .���� 0 
mastername 
masterNamen ��u��
�� 
dPgeu 4   3 7��v
�� 
pagev m   5 6���� ��  l wxw r   < Myzy o   < ?���� 0 pagedate pageDatez l     {����{ n      |}| 1   H L��
�� 
pcnt} n   ? H~~ 4   C H���
�� 
txtf� m   D G�� ���  L - E d i t i o n   d a t e 4   ? C���
�� 
page� m   A B���� ��  ��  x ��� r   N _��� o   N Q���� 0 pagedate pageDate� l     ������ n      ��� 1   Z ^��
�� 
pcnt� n   Q Z��� 4   U Z���
�� 
txtf� m   V Y�� ���  R - E d i t i o n   d a t e� 4   Q U���
�� 
page� m   S T���� ��  ��  � ���� Q   ` ������ k   c ��� ��� I  c ����
� .InESovrrobj         obj � l  c ���~�}� 6  c ���� n   c o��� 2   k o�|
�| 
cobj� n   c k��� 1   g k�{
�{ 
mpgs� 4   c g�z�
�z 
page� m   e f�y�y � =  r ���� n  s {��� 1   w {�x
�x 
pnam� 1   s w�w
�w 
pilr� m   | ��� ���  W o r k�~  �}  � �v��u
�v 
dPge� 4   � ��t�
�t 
page� m   � ��s�s �u  � ��r� I  � ��q��
�q .InESovrrobj         obj � l  � ���p�o� 6  � ���� n   � ���� 2   � ��n
�n 
cobj� n   � ���� 1   � ��m
�m 
mpgs� 4   � ��l�
�l 
page� m   � ��k�k � =  � ���� n  � ���� 1   � ��j
�j 
pnam� 1   � ��i
�i 
pilr� m   � ��� ���  W o r k�p  �o  � �h��g
�h 
dPge� 4   � ��f�
�f 
page� m   � ��e�e �g  �r  � R      �d�c�b
�d .ascrerr ****      � ****�c  �b  ��  ��  T l   ��a�`� 1    �_
�_ 
pacd�a  �`  R m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  N ��� l     �^�]�\�^  �]  �\  � ��� l     �[�Z�Y�[  �Z  �Y  � ��� l      �X���X  � � }	Single page: Change the page number to the one specified in the handler call - e.g. changePageNumber_single("3") for page 3	   � ��� � 	 S i n g l e   p a g e :   C h a n g e   t h e   p a g e   n u m b e r   t o   t h e   o n e   s p e c i f i e d   i n   t h e   h a n d l e r   c a l l   -   e . g .   c h a n g e P a g e N u m b e r _ s i n g l e ( " 3 " )   f o r   p a g e   3 	� ��� i    ��� I      �W��V�W 20 changepagenumber_single changePageNumber_single� ��U� o      �T�T 0 
pagenumber 
pageNumber�U  �V  � O     (��� O    '��� k   
 &�� ��� I  
 �S��
�S .InESovrrobj         obj � n   
 ��� 4    �R�
�R 
txtf� m    �� ���  P a g e   n u m b e r� 4   
 �Q�
�Q 
mspr� o    �P�P 0 
mastername 
masterName� �O��N
�O 
dPge� 4    �M�
�M 
page� m    �L�L �N  � ��K� r    &��� o    �J�J 0 
pagenumber 
pageNumber� l     ��I�H� n      ��� 1   # %�G
�G 
pcnt� n    #��� 4     #�F�
�F 
txtf� m   ! "�� ���  P a g e   n u m b e r� 4     �E�
�E 
page� m    �D�D �I  �H  �K  � l   ��C�B� 1    �A
�A 
pacd�C  �B  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     �@�?�>�@  �?  �>  � ��� l     �=�<�;�=  �<  �;  � ��� l      �:���:  � � �	Spreads: Change the page number on both pages. The handler call asks for the left-hand page�s number - e.g. changePageNumber_spread("8") for pages 8 and 9	   � ���8 	 S p r e a d s :   C h a n g e   t h e   p a g e   n u m b e r   o n   b o t h   p a g e s .   T h e   h a n d l e r   c a l l   a s k s   f o r   t h e   l e f t - h a n d   p a g e  s   n u m b e r   -   e . g .   c h a n g e P a g e N u m b e r _ s p r e a d ( " 8 " )   f o r   p a g e s   8   a n d   9 	� ��� i    ��� I      �9��8�9 20 changepagenumber_spread changePageNumber_spread� ��7� o      �6�6  0 leftpagenumber leftPageNumber�7  �8  � O     I��� O    H��� k   
 G�� 	 		  I  
 �5		
�5 .InESovrrobj         obj 	 n   
 			 4    �4	
�4 
txtf	 m    		 �		  L - P a g e   n u m b e r	 4   
 �3		
�3 
mspr		 o    �2�2 0 
mastername 
masterName	 �1	
�0
�1 
dPge	
 4    �/	
�/ 
page	 m    �.�. �0  	 			 I   +�-		
�- .InESovrrobj         obj 	 n    "			 4    "�,	
�, 
txtf	 m     !		 �		  R - P a g e   n u m b e r	 4    �+	
�+ 
mspr	 o    �*�* 0 
mastername 
masterName	 �)	�(
�) 
dPge	 4   # '�'	
�' 
page	 m   % &�&�& �(  	 			 r   , 7			 o   , -�%�%  0 leftpagenumber leftPageNumber	 l     	�$�#	 n      			 1   4 6�"
�" 
pcnt	 n   - 4		 	 4   1 4�!	!
�! 
txtf	! m   2 3	"	" �	#	#  L - P a g e   n u m b e r	  4   - 1� 	$
�  
page	$ m   / 0�� �$  �#  	 	%�	% r   8 G	&	'	& l  8 =	(��	( c   8 =	)	*	) l  8 ;	+��	+ [   8 ;	,	-	, o   8 9��  0 leftpagenumber leftPageNumber	- m   9 :�� �  �  	* m   ; <�
� 
TEXT�  �  	' l     	.��	. n      	/	0	/ 1   D F�
� 
pcnt	0 n   = D	1	2	1 4   A D�	3
� 
txtf	3 m   B C	4	4 �	5	5  R - P a g e   n u m b e r	2 4   = A�	6
� 
page	6 m   ? @�� �  �  �  � l   	7��	7 1    �
� 
pacd�  �  � m     	8	8�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 	9	:	9 l     ����  �  �  	: 	;	<	; l      �
	=	>�
  	= � �	Spreads and left-hand single pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   	> �	?	?� 	 S p r e a d s   a n d   l e f t - h a n d   s i n g l e   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 		< 	@	A	@ i    	B	C	B I      �	���	 0 clean_save_l clean_save_L�  �  	C O     >	D	E	D O    =	F	G	F k   
 <	H	H 	I	J	I r   
 	K	L	K m   
 �
� boovtrue	L n      	M	N	M 1    �
� 
plck	N 4    �	O
� 
layr	O m    	P	P �	Q	Q ( D a t e   a n d   p a g e   n u m b e r	J 	R	S	R r    	T	U	T m    �
� boovtrue	U n      	V	W	V 1    �
� 
plck	W 4    �	X
� 
layr	X m    	Y	Y �	Z	Z  F u r n i t u r e	S 	[	\	[ r    !	]	^	] m    	_	_ �	`	`  W o r k	^ 1     � 
�  
pacl	\ 	a	b	a r   " *	c	d	c J   " &	e	e 	f	g	f m   " #	h	h @.      	g 	i��	i m   # $	j	j @&      ��  	d l     	k����	k 1   & )��
�� 
zero��  ��  	b 	l��	l I  + <����	m
�� .CoResavedocu        obj ��  	m ��	n��
�� 
kfil	n b   - 8	o	p	o b   - 4	q	r	q b   - 2	s	t	s b   - 0	u	v	u o   - .���� $0 freshpagesfolder freshPagesFolder	v o   . /���� 0 fileslug fileSlug	t m   0 1	w	w �	x	x  _	r o   2 3���� 0 filedate fileDate	p m   4 7	y	y �	z	z 
 . i n d d��  ��  	G l   	{����	{ 1    ��
�� 
pacd��  ��  	E m     	|	|�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  	A 	}	~	} l     ��������  ��  ��  	~ 		�	 l     ��������  ��  ��  	� 	�	�	� l      ��	�	���  	� � �	Right-hand pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   	� �	�	�z 	 R i g h t - h a n d   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 		� 	�	�	� i    	�	�	� I      �������� 0 clean_save_r clean_save_R��  ��  	� O     >	�	�	� O    =	�	�	� k   
 <	�	� 	�	�	� r   
 	�	�	� m   
 ��
�� boovtrue	� n      	�	�	� 1    ��
�� 
plck	� 4    ��	�
�� 
layr	� m    	�	� �	�	� ( D a t e   a n d   p a g e   n u m b e r	� 	�	�	� r    	�	�	� m    ��
�� boovtrue	� n      	�	�	� 1    ��
�� 
plck	� 4    ��	�
�� 
layr	� m    	�	� �	�	�  F u r n i t u r e	� 	�	�	� r    !	�	�	� m    	�	� �	�	�  W o r k	� 1     ��
�� 
pacl	� 	�	�	� r   " *	�	�	� J   " &	�	� 	�	�	� m   " #	�	� @"      	� 	���	� m   # $	�	� @&      ��  	� l     	�����	� 1   & )��
�� 
zero��  ��  	� 	���	� I  + <����	�
�� .CoResavedocu        obj ��  	� ��	���
�� 
kfil	� b   - 8	�	�	� b   - 4	�	�	� b   - 2	�	�	� b   - 0	�	�	� o   - .���� $0 freshpagesfolder freshPagesFolder	� o   . /���� 0 fileslug fileSlug	� m   0 1	�	� �	�	�  _	� o   2 3���� 0 filedate fileDate	� m   4 7	�	� �	�	� 
 . i n d d��  ��  	� l   	�����	� 1    ��
�� 
pacd��  ��  	� m     	�	��                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l      ��	�	���  	� � �	Changes the legal date on the left-hand page of a spread - it�s designed for pages 12-13 (TV), which have the legal date on weekdays.	   	� �	�	� 	 C h a n g e s   t h e   l e g a l   d a t e   o n   t h e   l e f t - h a n d   p a g e   o f   a   s p r e a d   -   i t  s   d e s i g n e d   f o r   p a g e s   1 2 - 1 3   ( T V ) ,   w h i c h   h a v e   t h e   l e g a l   d a t e   o n   w e e k d a y s . 		� 	�	�	� i     #	�	�	� I      �������� (0 changelegaldate_12 changeLegalDate_12��  ��  	� O     (	�	�	� O    '	�	�	� k   
 &	�	� 	�	�	� I  
 ��	�	�
�� .InESovrrobj         obj 	� n   
 	�	�	� 4    ��	�
�� 
txtf	� m    	�	� �	�	�  L e g a l   d a t e	� 4   
 ��	�
�� 
mspr	� o    ���� 0 
mastername 
masterName	� ��	���
�� 
dPge	� 4    ��	�
�� 
page	� m    ���� ��  	� 	���	� r    &	�	�	� o    ���� 0 pagedate pageDate	� l     	�����	� n      	�	�	� 1   # %��
�� 
pcnt	� n    #	�	�	� 4     #��	�
�� 
txtf	� m   ! "	�	� �	�	�  L e g a l   d a t e	� 4     ��	�
�� 
page	� m    ���� ��  ��  ��  	� l   	�����	� 1    ��
�� 
pacd��  ��  	� m     	�	��                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l      ��	�	���  	� � �	Changes the legal date on a left-hand single page - it�s designed for the Red List page (20), which has the legal date at weekends.	   	� �	�	�
 	 C h a n g e s   t h e   l e g a l   d a t e   o n   a   l e f t - h a n d   s i n g l e   p a g e   -   i t  s   d e s i g n e d   f o r   t h e   R e d   L i s t   p a g e   ( 2 0 ) ,   w h i c h   h a s   t h e   l e g a l   d a t e   a t   w e e k e n d s . 		� 	�	�	� i   $ '	�	�	� I      �������� (0 changelegaldate_20 changeLegalDate_20��  ��  	� O     (	�	�	� O    '	�	�	� k   
 &	�	� 	�
 	� I  
 ��


�� .InESovrrobj         obj 
 n   
 


 4    ��

�� 
txtf
 m    

 �

  L e g a l   d a t e
 4   
 ��

�� 
mspr
 o    ���� 0 
mastername 
masterName
 ��
	��
�� 
dPge
	 4    ��


�� 
page

 m    ���� ��  
  
��
 r    &


 o    ���� 0 pagedate pageDate
 l     
����
 n      


 1   # %��
�� 
pcnt
 n    #


 4     #��

�� 
txtf
 m   ! "

 �

  L e g a l   d a t e
 4     ��

�� 
page
 m    ���� ��  ��  ��  	� l   
����
 1    ��
�� 
pacd��  ��  	� m     

�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  	� 


 l     ��������  ��  ��  
 


 l     ��������  ��  ��  
 


 l      ��

 ��  
 t n	Creates an embargoed stories text frame to the left-hand side of the working page (1 if single, 2 if spread)	   
  �
!
! � 	 C r e a t e s   a n   e m b a r g o e d   s t o r i e s   t e x t   f r a m e   t o   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g e   ( 1   i f   s i n g l e ,   2   i f   s p r e a d ) 	
 
"��
" i   ( +
#
$
# I      ��������  0 drawembargobox drawEmbargoBox��  ��  
$ O     �
%
&
% O    �
'
(
' Z    �
)
*
+��
) =   
,
-
, l   
.����
. I   ��
/��
�� .corecnte****       ****
/ 2   ��
�� 
page��  ��  ��  
- m    ���� 
* k    K
0
0 
1
2
1 O    4
3
4
3 r    3
5
6
5 I   1����
7
�� .corecrel****      � null��  
7 ��
8
9
�� 
kocl
8 m     !��
�� 
txtf
9 ��
:��
�� 
prdt
: K   " -
;
; ��
<
=
�� 
gbnd
< J   # )
>
> 
?
@
? m   # $
A
A @,      
@ 
B
C
B m   $ %
D
D �b�     
C 
E
F
E m   % &
G
G @\�     
F 
H��
H m   & '
I
I �I      ��  
= �
J�~
� 
pcnt
J m   * +
K
K �
L
L " E m b a r g o e d   s t o r i e s�~  ��  
6 o      �}�} 0 ebox eBox
4 4    �|
M
�| 
page
M m    �{�{ 
2 
N
O
N l  5 C
P
Q
R
P r   5 C
S
T
S 4   5 =�z
U
�z 
ObSt
U m   9 <
V
V �
W
W " N e w s   N I B   b o x   t i n t
T l     
X�y�x
X n      
Y
Z
Y 1   > B�w
�w 
aobs
Z o   = >�v�v 0 ebox eBox�y  �x  
Q K E This causes an error if you try to set it when the frame is created.   
R �
[
[ �   T h i s   c a u s e s   a n   e r r o r   i f   y o u   t r y   t o   s e t   i t   w h e n   t h e   f r a m e   i s   c r e a t e d .
O 
\�u
\ r   D K
]
^
] m   D E�t
�t boovtrue
^ n      
_
`
_ 1   F J�s
�s 
plck
` o   E F�r�r 0 ebox eBox�u  
+ 
a
b
a =  N W
c
d
c l  N U
e�q�p
e I  N U�o
f�n
�o .corecnte****       ****
f 2  N Q�m
�m 
page�n  �q  �p  
d m   U V�l�l 
b 
g�k
g k   Z �
h
h 
i
j
i O   Z y
k
l
k r   a x
m
n
m I  a v�j�i
o
�j .corecrel****      � null�i  
o �h
p
q
�h 
kocl
p m   c d�g
�g 
txtf
q �f
r�e
�f 
prdt
r K   e r
s
s �d
t
u
�d 
gbnd
t J   f l
v
v 
w
x
w m   f g
y
y @,      
x 
z
{
z m   g h
|
| �b�     
{ 
}
~
} m   h i

 @\�     
~ 
��c
� m   i j
�
� �I      �c  
u �b
��a
�b 
pcnt
� m   m p
�
� �
�
� " E m b a r g o e d   s t o r i e s�a  �e  
n o      �`�` 0 ebox eBox
l 4   Z ^�_
�
�_ 
page
� m   \ ]�^�^ 
j 
�
�
� r   z �
�
�
� 4   z ��]
�
�] 
ObSt
� m   ~ �
�
� �
�
� " N e w s   N I B   b o x   t i n t
� l     
��\�[
� n      
�
�
� 1   � ��Z
�Z 
aobs
� o   � ��Y�Y 0 ebox eBox�\  �[  
� 
��X
� r   � �
�
�
� m   � ��W
�W boovtrue
� n      
�
�
� 1   � ��V
�V 
plck
� o   � ��U�U 0 ebox eBox�X  �k  ��  
( l   
��T�S
� 4   �R
�
�R 
docu
� m    �Q�Q �T  �S  
& m     
�
��                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��       �P
�
�
�
�
�
�
�
�
�
�
�
�
��P  
� �O�N�M�L�K�J�I�H�G�F�E�D�O "0 create_pagedate create_pageDate�N "0 create_filedate create_fileDate�M >0 applymaster_changedate_single applyMaster_changeDate_single�L >0 applymaster_changedate_spread applyMaster_changeDate_spread�K 20 changepagenumber_single changePageNumber_single�J 20 changepagenumber_spread changePageNumber_spread�I 0 clean_save_l clean_save_L�H 0 clean_save_r clean_save_R�G (0 changelegaldate_12 changeLegalDate_12�F (0 changelegaldate_20 changeLegalDate_20�E  0 drawembargobox drawEmbargoBox
�D .aevtoappnull  �   � ****
� �C5�B�A
�
��@�C "0 create_pagedate create_pageDate�B  �A  
� �?�>�=�<�? (0 thirtyonedaymonths ThirtyOneDayMonths�> "0 thirtydaymonths ThirtyDayMonths�= 0 i  �< 0 secondmonth secondMonth
� 2>BFJNQ�;Z^be�:�9o��8��7��6�5���4�3�2�1�����$(,?AMQUhju�����; �: �9 0 theday theDay�8 0 themonth theMonth�7 0 thedate theDate�6 0 theyear theYear�5 0 pagedate pageDate
�4 
bool�3 0 months_list  
�2 .corecnte****       ****
�1 
cobj�@��������vE�O�����vE�O��  ��%�%a %_ %a %_ %E` OPY��a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa �%a %�%a %_ %E` OPY�a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa  �%a !%�%a "%_ %E` OPY ��a # 	 _ a $a &	 �a % a & a &_ %a '%_ %E` OPY o�a ( 	 _ a ) a &	 �a * a & a +_ %a ,%_ k%E` OPY 3�a -  *a .�%a /%_ %a 0%_ k%a 1%_ %E` OPY h
� �0��/�.
�
��-�0 "0 create_filedate create_fileDate�/  �.  
� �,�+�*�)�, 0 numdate numDate�+ 0 i  �* 0 raw_nummonth raw_numMonth�) 0 nummonth numMonth
� �(�'���&�%�$�#�"��!� ���( 0 thedate theDate
�' 
long�& 0 months_list  
�% .corecnte****       ****
�$ 
cobj�# 0 themonth theMonth�" 
�! 0 theyear theYear
�  
ctxt� � 0 filedate fileDate�- \��&� 
��%E�Y �E�O "k�j kh ��/�  �E�Y h[OY��O�� 
�%E�Y �E�O��%�[�\[Zm\Z�2%E�
� ���
�
��� >0 applymaster_changedate_single applyMaster_changeDate_single�  �  
�  
� C���������*���
���>��

� 
pacd
� 
mspr� 0 
mastername 
masterName
� 
page
� 
pmas
� 
txtf
� 
dPge
� .InESovrrobj         obj � 0 pagedate pageDate
� 
pcnt
� 
mpgs
� 
cobj
�  
� 
pilr
� 
pnam�  �
  � d� `*�, Y*��/*�k/�,FO*��/��/�*�k/l 	O�*�k/��/�,FO '*�k/�,�-�[a ,a ,\Za 81�*�k/l 	W X  hUU
� �	P��
�
���	 >0 applymaster_changedate_spread applyMaster_changeDate_spread�  �  
�  
� ������� ��������f������r����������
�����������
� 
pacd
� 
kocl
� 
sprd
� 
prdt
� 
pmas
�  
mspr�� 0 
mastername 
masterName�� 
�� .corecrel****      � null
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt
�� 
mpgs
�� 
cobj
�� 
pilr
�� 
pnam��  ��  � �� �*�, �*����*��/l� 	O*��/��/�*�l/l O*��/��/�*�m/l O_ *�l/�a /a ,FO_ *�m/�a /a ,FO V*�l/a ,a -a [a ,a ,\Za 81�*�l/l O*�m/a ,a -a [a ,a ,\Za 81�*�m/l W X  hUU
� �������
�
����� 20 changepagenumber_single changePageNumber_single�� ��
��� 
�  ���� 0 
pagenumber 
pageNumber��  
� ���� 0 
pagenumber 
pageNumber
� �������������������
�� 
pacd
�� 
mspr�� 0 
mastername 
masterName
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj 
�� 
pcnt�� )� %*�, *��/��/�*�k/l O�*�k/��/�,FUU
� �������
�
����� 20 changepagenumber_spread changePageNumber_spread�� ��
��� 
�  ����  0 leftpagenumber leftPageNumber��  
� ����  0 leftpagenumber leftPageNumber
� 	8��������	������		"����	4
�� 
pacd
�� 
mspr�� 0 
mastername 
masterName
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj 
�� 
pcnt
�� 
TEXT�� J� F*�, ?*��/��/�*�l/l O*��/��/�*�m/l O�*�l/��/�,FO�k�&*�m/��/�,FUU
� ��	C����
�
����� 0 clean_save_l clean_save_L��  ��  
�  
� 	|����	P��	Y	_��	h	j��������	w��	y��
�� 
pacd
�� 
layr
�� 
plck
�� 
pacl
�� 
zero
�� 
kfil�� $0 freshpagesfolder freshPagesFolder�� 0 fileslug fileSlug�� 0 filedate fileDate
�� .CoResavedocu        obj �� ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU
� ��	�����
�
����� 0 clean_save_r clean_save_R��  ��  
�  
� 	�����	���	�	���	�	���������	���	���
�� 
pacd
�� 
layr
�� 
plck
�� 
pacl
�� 
zero
�� 
kfil�� $0 freshpagesfolder freshPagesFolder�� 0 fileslug fileSlug�� 0 filedate fileDate
�� .CoResavedocu        obj �� ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU
� ��	�����
�
����� (0 changelegaldate_12 changeLegalDate_12��  ��  
�  
� 	���������	���������	���
�� 
pacd
�� 
mspr�� 0 
mastername 
masterName
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt�� )� %*�, *��/��/�*�l/l O�*�l/��/�,FUU
� ��	�����
�
����� (0 changelegaldate_20 changeLegalDate_20��  ��  
�  
� 
��������
��������
��
�� 
pacd
�� 
mspr�� 0 
mastername 
masterName
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt�� )� %*�, *��/��/�*�k/l O�*�k/��/�,FUU
� ��
$����
�
�����  0 drawembargobox drawEmbargoBox��  ��  
� ���� 0 ebox eBox
� 
���������������
A
D
G
I����
K����
V����
�
�
�� 
docu
�� 
page
�� .corecnte****       ****
�� 
kocl
�� 
txtf
�� 
prdt
�� 
gbnd�� 
�� 
pcnt
�� .corecrel****      � null
�� 
ObSt
�� 
aobs
�� 
plck�� �� �*�k/ �*�-j k  9*�k/ *���������v���� E�UO*a a /�a ,FOe�a ,FY H*�-j m  ;*�l/ *���������v�a �� E�UO*a a /�a ,FOe�a ,FY hUU
� ��
�����
�
���
�� .aevtoappnull  �   � ****
� k    3
�
�  t
�
�  {
�
�  �
�
�  �
�
�  �
�
�  �
�
� .
�
� ?
�
� J
�
� [
�
� f
�
� |
�
� �
�
� �
�
� �
�
� 
�
� 
�
�  
�
� ,
�
� y
�
� �
�
� w
�
� �
�
� �
�
� 	
�
� ����  ��  ��  
�  
� � y�� ��� � � � � � ����� � � � � � � � � ���� � � � � � ��~ � � � �	�}�|�{:�z=�y�x�w�v�uF�t�sVY�rbs�qwz�p�o�n�����m����l���k�j�����i�h)�g�f�e3?I�dO�c�b�a�`�_�^�]�\�[px~�����Z�Y����X'�WAKQe|�������� 3JPc�����V����� �U�T'<Sg~���������S�R�Q�� $0 freshpagesfolder freshPagesFolder��  0 masterdocument masterDocument�� �� 0 weekday_pages  �� 	� 0 weekend_pages  �~ 0 	days_list  �} �| 0 months_list  
�{ 
prmp
�z 
appr�y 
�x .gtqpchltns    @   @ ns  
�w 
TEXT�v 0 theday theDay
�u 
rslt
�t 
errn�s���r 0 themonth theMonth
�q 
dtxt
�p .sysodlogaskr        TEXT
�o 
ttxt�n 0 thedate theDate�m 0 theyear theYear
�l 
ret 
�k 
mlsl�j &0 masterstogenerate mastersToGenerate�i "0 create_pagedate create_pageDate�h "0 create_filedate create_fileDate
�g elnteNvr
�f 
pScr
�e 
UIAc�d 0 
mastername 
masterName�c 0 fileslug fileSlug
�b .aevtodocnull  �    alis�a >0 applymaster_changedate_single applyMaster_changeDate_single�`  0 drawembargobox drawEmbargoBox�_ 0 clean_save_r clean_save_R
�^ 
pacd
�] 
svop
�\ savoyes 
�[ .CoReclosnull���     obj �Z 20 changepagenumber_single changePageNumber_single�Y 0 clean_save_l clean_save_L�X >0 applymaster_changedate_spread applyMaster_changeDate_spread�W 20 changepagenumber_spread changePageNumber_spread�V (0 changelegaldate_12 changeLegalDate_12�U 0 p10_days  �T 0 p14_days  �S (0 changelegaldate_20 changeLegalDate_20
�R elnteInA
�Q .miscactvnull��� ��� obj ��4�E�O�E�O�������vE�O����a a a a a a vE` Oa a a a a a �vE` Oa a a  a !a "a #a $a %a &a 'a (a )a *vE` +O_ a ,a -a .a /a 0 1a 2&E` 3O_ 4a 5  )a 6a 7lhY hO_ +a ,a 8a .a 9a 0 1a 2&E` :O_ 4a ;  )a 6a 7lhY hOa <a =a >a .a ?a 0 @a A,a 2&E` BO_ 4a C  )a 6a 7lhY hOa Da =a Ea .a Fa 0 @a A,a 2&E` GO_ 4a H  )a 6a 7lhY hO_ 3a I A�a ,a J_ K%_ K%a L%a .a Ma Ne� 1E` OO_ 4f  )a 6a 7lhY hY N_ 3a P  C_ a ,a Q_ K%_ K%a R%a .a Sa Ne� 1E` OO_ 4f  )a 6a 7lhY hY hO*j+ TO*j+ UOa V a W*a X,a Y,FUO_ Oa Z�_ 3a [ Ia \E` ]Oa ^E` _Oa V /�j `O)j+ aO)a b,EO)j+ cO*a d, *a ea fl gUUY T_ 3a h  Ia iE` ]Oa jE` _Oa V /�j `O)j+ aO)a b,EO)j+ cO*a d, *a ea fl gUUY hO_ Oa k �a lE` ]Oa mE` _Oa V 8�j `O)j+ aO)a nk+ oO)a b,EO)j+ pO*a d, *a ea fl gUUOa qE` ]Oa rE` _Oa V 8�j `O)j+ aO)a sk+ oO)a b,EO)j+ cO*a d, *a ea fl gUUY Oa tE` ]Oa uE` _Oa V 8�j `O)j+ vO)a wk+ xO)a b,EO)j+ pO*a d, *a ea fl gUUO_ Oa y �a zE` ]Oa {E` _Oa V 8�j `O)j+ aO)a |k+ oO)a b,EO)j+ pO*a d, *a ea fl gUUOa }E` ]Oa ~E` _Oa V 8�j `O)j+ aO)a k+ oO)a b,EO)j+ cO*a d, *a ea fl gUUY Oa �E` ]Oa �E` _Oa V 8�j `O)j+ vO)a �k+ xO)a b,EO)j+ pO*a d, *a ea fl gUUO_ Oa � �a �E` ]Oa �E` _Oa V 8�j `O)j+ aO)a �k+ oO)a b,EO)j+ pO*a d, *a ea fl gUUOa �E` ]Oa �E` _Oa V 8�j `O)j+ aO)a �k+ oO)a b,EO)j+ cO*a d, *a ea fl gUUY Oa �E` ]Oa �E` _Oa V 8�j `O)j+ vO)a �k+ xO)a b,EO)j+ pO*a d, *a ea fl gUUOPY hO_ Oa � �_ 3a � Ha �E` ]Oa �E` _Oa V .�j `O)j+ vO)j+ �O)j+ pO*a d, *a ea fl gUUY M_ 3a �  Ba �E` ]Oa �E` _Oa V (�j `O)j+ vO)j+ pO*a d, *a ea fl gUUY hY hO_ Oa � �a �E` ]Oa �a �lvE` �Oa �a �a �a �a 0vE` �O_ �_ 3 Ea �E` _Oa V 1�j `O)j+ aO)a �k+ oO)j+ pO*a d, *a ea fl gUUOPY N_ �_ 3 Ca �E` _Oa V 1�j `O)j+ aO)a �k+ oO)j+ pO*a d, *a ea fl gUUY hY hO_ Oa � Ba �E` ]Oa �E` _Oa V (�j `O)j+ vO)j+ pO*a d, *a ea fl gUUY hO_ Oa � Ba �E` ]Oa �E` _Oa V (�j `O)j+ aO)j+ cO*a d, *a ea fl gUUY hO_ Oa � Ha �E` ]Oa �E` _Oa V .�j `O)j+ aO)j+ �O)j+ pO*a d, *a ea fl gUUY hOa V a �*a X,a Y,FUOa � *j �O�j `U ascr  ��ޭ