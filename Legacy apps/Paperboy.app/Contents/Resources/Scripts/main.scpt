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
 &   C r e a t e   t h e   d a t e   - -  l ����
 I  ���	���	 "0 create_pagedate create_pageDate�  �  �  �
    l ���� I  ������ "0 create_filedate create_fileDate�  �  �  �    l     �� ���  �   ��    l     ����     Generate the pages --    � ,   G e n e r a t e   t h e   p a g e s   - -  l ����� O � r   m  ��
�� elnteNvr n        1  	��
�� 
UIAc  1  	��
�� 
pScr m  ��!!�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��   "#" l     ��������  ��  ��  # $%$ l �&����& Z  �'(����' E )*) o  ���� &0 masterstogenerate mastersToGenerate* m  ++ �,,  N e w s      s p l i t s( k  �-- ./. l ��������  ��  ��  / 010 Z  �234��2 > !565 o  ���� 0 theday theDay6 m   77 �88  S a t u r d a y3 l $g9:;9 k  $g<< =>= r  $+?@? m  $'AA �BB  N e w s - F r o n t@ o      ���� 0 
mastername 
masterName> CDC r  ,3EFE m  ,/GG �HH  1 _ F r o n tF o      ���� 0 fileslug fileSlugD I��I O  4gJKJ k  :fLL MNM I :?��O��
�� .aevtodocnull  �    alisO o  :;����  0 masterdocument masterDocument��  N PQP n @ERSR I  AE�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  S  f  @AQ TUT n FKVWV I  GK��������  0 drawembargobox drawEmbargoBox��  ��  W  f  FGU XYX n LQZ[Z I  MQ�������� 0 clean_save_r clean_save_R��  ��  [  f  LMY \��\ O Rf]^] I Ze����_
�� .CoReclosnull���     obj ��  _ ��`��
�� 
svop` m  ^a��
�� savoyes ��  ^ l RWa����a 1  RW��
�� 
pacd��  ��  ��  K m  47bb�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  : ; 5 If block to create the weekday or weekend front page   ; �cc j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e4 ded = jqfgf o  jm���� 0 theday theDayg m  mphh �ii  S a t u r d a ye j��j k  t�kk lml r  t{non m  twpp �qq $ N e w s - W e e k e n d   f r o n to o      ���� 0 
mastername 
masterNamem rsr r  |�tut m  |vv �ww  1 _ F r o n tu o      ���� 0 fileslug fileSlugs x��x O  ��yzy k  ��{{ |}| I ����~��
�� .aevtodocnull  �    alis~ o  ������  0 masterdocument masterDocument��  } � n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ����������  0 drawembargobox drawEmbargoBox��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_r clean_save_R��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  z m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  1 ��� l ����������  ��  ��  � ��� Z  �������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ��� * N e w s      2 - 3   a s   s i n g l e s� l �_���� k  �_�� ��� r  ����� m  ���� ���  N e w s - H o m e - L S� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  2 _ H o m e� o      ���� 0 fileslug fileSlug� ��� O  ���� k  ��� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_single changePageNumber_single� ���� m  ���� ���  2��  ��  �  f  ��� ��� n ����� I  ����������  0 drawembargobox drawEmbargoBox��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ���� I �����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  	��
�� savoyes ��  � l ������� 1  ���
�� 
pacd��  ��  ��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l ��������  ��  ��  � ��� r  ��� m  �� ���  N e w s - H o m e - R S� o      ���� 0 
mastername 
masterName� ��� r  "��� m  �� ���  3 _ H o m e� o      ���� 0 fileslug fileSlug� ���� O  #_��� k  )^�� ��� I ).�����
�� .aevtodocnull  �    alis� o  )*����  0 masterdocument masterDocument��  � ��� n /4��� I  04�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  /0� ��� n 5=��� I  6=������� 20 changepagenumber_single changePageNumber_single� ���� m  69�� ���  3��  ��  �  f  56� ��� n >C��� I  ?C��������  0 drawembargobox drawEmbargoBox��  ��  �  f  >?� ��� n DI��� I  EI�������� 0 clean_save_r clean_save_R��  ��  �  f  DE� ���� O J^��� I R]�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  VY��
�� savoyes ��  � l JO���~� 1  JO�}
�} 
pacd�  �~  ��  � m  #&���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  � 3 - If block to create 2-3 as singles or a split   � �   Z   I f   b l o c k   t o   c r e a t e   2 - 3   a s   s i n g l e s   o r   a   s p l i t��  � k  b�  r  bi m  be �  N e w s - H o m e - S p l i t o      �|�| 0 
mastername 
masterName 	 r  jq

 m  jm �  2 - 3 _ H o m e o      �{�{ 0 fileslug fileSlug	 �z O  r� k  x�  I x}�y�x
�y .aevtodocnull  �    alis o  xy�w�w  0 masterdocument masterDocument�x    n ~� I  ��v�u�t�v >0 applymaster_changedate_spread applyMaster_changeDate_spread�u  �t    f  ~  n �� I  ���s�r�s 20 changepagenumber_spread changePageNumber_spread �q m  �� �    2�q  �r    f  �� !"! n ��#$# I  ���p�o�n�p  0 drawembargobox drawEmbargoBox�o  �n  $  f  ��" %&% n ��'(' I  ���m�l�k�m 0 clean_save_l clean_save_L�l  �k  (  f  ��& )�j) O ��*+* I ���i�h,
�i .CoReclosnull���     obj �h  , �g-�f
�g 
svop- m  ���e
�e savoyes �f  + l ��.�d�c. 1  ���b
�b 
pacd�d  �c  �j   m  ru//�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �z  � 010 l ���a�`�_�a  �`  �_  1 232 Z  ��45�^64 E ��787 o  ���]�] &0 masterstogenerate mastersToGenerate8 m  ��99 �:: * N e w s      4 - 5   a s   s i n g l e s5 l �R;<=; k  �R>> ?@? r  ��ABA m  ��CC �DD  N e w s - H o m e - L SB o      �\�\ 0 
mastername 
masterName@ EFE r  ��GHG m  ��II �JJ  4 _ H o m eH o      �[�[ 0 fileslug fileSlugF KLK O  �MNM k  �OO PQP I ���ZR�Y
�Z .aevtodocnull  �    alisR o  ���X�X  0 masterdocument masterDocument�Y  Q STS n ��UVU I  ���W�V�U�W >0 applymaster_changedate_single applyMaster_changeDate_single�V  �U  V  f  ��T WXW n ��YZY I  ���T[�S�T 20 changepagenumber_single changePageNumber_single[ \�R\ m  ��]] �^^  4�R  �S  Z  f  ��X _`_ n ��aba I  ���Q�P�O�Q  0 drawembargobox drawEmbargoBox�P  �O  b  f  ��` cdc n ��efe I  ���N�M�L�N 0 clean_save_l clean_save_L�M  �L  f  f  ��d g�Kg O �hih I ��J�Ij
�J .CoReclosnull���     obj �I  j �Hk�G
�H 
svopk m  ���F
�F savoyes �G  i l ��l�E�Dl 1  ���C
�C 
pacd�E  �D  �K  N m  ��mm�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  L non l �B�A�@�B  �A  �@  o pqp r  rsr m  	tt �uu  N e w s - H o m e - R Ss o      �?�? 0 
mastername 
masterNameq vwv r  xyx m  zz �{{  5 _ H o m ey o      �>�> 0 fileslug fileSlugw |�=| O  R}~} k  Q ��� I !�<��;
�< .aevtodocnull  �    alis� o  �:�:  0 masterdocument masterDocument�;  � ��� n "'��� I  #'�9�8�7�9 >0 applymaster_changedate_single applyMaster_changeDate_single�8  �7  �  f  "#� ��� n (0��� I  )0�6��5�6 20 changepagenumber_single changePageNumber_single� ��4� m  ),�� ���  5�4  �5  �  f  ()� ��� n 16��� I  26�3�2�1�3  0 drawembargobox drawEmbargoBox�2  �1  �  f  12� ��� n 7<��� I  8<�0�/�.�0 0 clean_save_r clean_save_R�/  �.  �  f  78� ��-� O =Q��� I EP�,�+�
�, .CoReclosnull���     obj �+  � �*��)
�* 
svop� m  IL�(
�( savoyes �)  � l =B��'�&� 1  =B�%
�% 
pacd�'  �&  �-  ~ m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �=  < 3 - If block to create 4-5 as singles or a split   = ��� Z   I f   b l o c k   t o   c r e a t e   4 - 5   a s   s i n g l e s   o r   a   s p l i t�^  6 k  U��� ��� r  U\��� m  UX�� ���  N e w s - H o m e - S p l i t� o      �$�$ 0 
mastername 
masterName� ��� r  ]d��� m  ]`�� ���  4 - 5 _ H o m e� o      �#�# 0 fileslug fileSlug� ��"� O  e���� k  k��� ��� I kp�!�� 
�! .aevtodocnull  �    alis� o  kl��  0 masterdocument masterDocument�   � ��� n qv��� I  rv���� >0 applymaster_changedate_spread applyMaster_changeDate_spread�  �  �  f  qr� ��� n w��� I  x���� 20 changepagenumber_spread changePageNumber_spread� ��� m  x{�� ���  4�  �  �  f  wx� ��� n ����� I  ������  0 drawembargobox drawEmbargoBox�  �  �  f  ��� ��� n ����� I  ������ 0 clean_save_l clean_save_L�  �  �  f  ��� ��� O ����� I �����
� .CoReclosnull���     obj �  � ���
� 
svop� m  ���
� savoyes �  � l ������ 1  ���

�
 
pacd�  �  �  � m  eh���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �"  3 ��� l ���	���	  �  �  � ��� Z  ������� E ����� o  ���� &0 masterstogenerate mastersToGenerate� m  ���� ��� & N e w s      6 - 7   a s   s p l i t� l �E���� k  �E�� ��� r  ����� m  ���� ���  N e w s - F o r e i g n - L S� o      �� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  6 _ F o r e i g n� o      �� 0 fileslug fileSlug� ��� O  ����� k  ���� ��� I �����
� .aevtodocnull  �    alis� o  ��� �   0 masterdocument masterDocument�  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_single changePageNumber_single� ���� m  ���� ���  6��  ��  �  f  ��� ��� n ��� � I  ����������  0 drawembargobox drawEmbargoBox��  ��     f  ���  n �� I  ���������� 0 clean_save_l clean_save_L��  ��    f  �� �� O �� I ������
�� .CoReclosnull���     obj ��   ��	��
�� 
svop	 m  ����
�� savoyes ��   l ��
����
 1  ����
�� 
pacd��  ��  ��  � m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  l ����������  ��  ��    r  �  m  �� �  N e w s - F o r e i g n - R S o      ���� 0 
mastername 
masterName  r   m   �  7 _ F o r e i g n o      ���� 0 fileslug fileSlug �� O  	E k  D  I �� ��
�� .aevtodocnull  �    alis  o  ����  0 masterdocument masterDocument��   !"! n #$# I  �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  $  f  " %&% n #'(' I  #��)���� 20 changepagenumber_single changePageNumber_single) *��* m  ++ �,,  7��  ��  (  f  & -.- n $)/0/ I  %)��������  0 drawembargobox drawEmbargoBox��  ��  0  f  $%. 121 n */343 I  +/�������� 0 clean_save_r clean_save_R��  ��  4  f  *+2 5��5 O 0D676 I 8C����8
�� .CoReclosnull���     obj ��  8 ��9��
�� 
svop9 m  <?��
�� savoyes ��  7 l 05:����: 1  05��
�� 
pacd��  ��  ��   m  	;;�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  � 3 - If block to create 6-7 as singles or a split   � �<< Z   I f   b l o c k   t o   c r e a t e   6 - 7   a s   s i n g l e s   o r   a   s p l i t�  � k  H�== >?> r  HO@A@ m  HKBB �CC $ N e w s - F o r e i g n - S p l i tA o      ���� 0 
mastername 
masterName? DED r  PWFGF m  PSHH �II  6 - 7 _ F o r e i g nG o      ���� 0 fileslug fileSlugE J��J O  X�KLK k  ^�MM NON I ^c��P��
�� .aevtodocnull  �    alisP o  ^_����  0 masterdocument masterDocument��  O QRQ n diSTS I  ei�������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  T  f  deR UVU n jrWXW I  kr��Y���� 20 changepagenumber_spread changePageNumber_spreadY Z��Z m  kn[[ �\\  6��  ��  X  f  jkV ]^] n sx_`_ I  tx��������  0 drawembargobox drawEmbargoBox��  ��  `  f  st^ aba n y~cdc I  z~�������� 0 clean_save_l clean_save_L��  ��  d  f  yzb e��e O �fgf I ������h
�� .CoReclosnull���     obj ��  h ��i��
�� 
svopi m  ����
�� savoyes ��  g l �j����j 1  ���
�� 
pacd��  ��  ��  L m  X[kk�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  � l��l l ����������  ��  ��  ��  ��  ��  ��  ��  % mnm l     ��������  ��  ��  n opo l     ��������  ��  ��  p qrq l �Ds����s Z  �Dtu����t E ��vwv o  ������ &0 masterstogenerate mastersToGeneratew m  ��xx �yy  T Vu Z  �@z{|��z > ��}~} o  ������ 0 theday theDay~ m  �� ���  S a t u r d a y{ k  ���� ��� l ������ r  ����� m  ���� ���  F e a t - 1 2 - 1 3� o      ���� 0 
mastername 
masterName� * $ Create the weekday TV/features page   � ��� H   C r e a t e   t h e   w e e k d a y   T V / f e a t u r e s   p a g e� ��� r  ����� m  ���� ���  1 2 - 1 3 _ T V� o      ���� 0 fileslug fileSlug� ���� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  ��� ��� n ����� I  ���������� (0 changelegaldate_12 changeLegalDate_12��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  | ��� = ����� o  ������ 0 theday theDay� m  ���� ���  S a t u r d a y� ���� k  �<�� ��� l ����� r  ���� m  ��� ���  T V - W e e k e n d� o      ���� 0 
mastername 
masterName� !  Create the weekend TV page   � ��� 6   C r e a t e   t h e   w e e k e n d   T V   p a g e� ��� r  ��� m  
�� ���  1 8 - 1 9 _ T V� o      ���� 0 fileslug fileSlug� ���� O  <��� k  ;�� ��� I �����
�� .aevtodocnull  �    alis� o  ����  0 masterdocument masterDocument��  � ��� n  ��� I   ����~�� >0 applymaster_changedate_spread applyMaster_changeDate_spread�  �~  �  f  � ��� n !&��� I  "&�}�|�{�} 0 clean_save_l clean_save_L�|  �{  �  f  !"� ��z� O ';��� I /:�y�x�
�y .CoReclosnull���     obj �x  � �w��v
�w 
svop� m  36�u
�u savoyes �v  � l ',��t�s� 1  ',�r
�r 
pacd�t  �s  �z  � m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  ��  ��  ��  ��  r ��� l     �q�p�o�q  �p  �o  � ��� l     �n�m�l�n  �m  �l  � ��� l E��k�j� Z  E���i�h� E EL��� o  EH�g�g &0 masterstogenerate mastersToGenerate� m  HK�� ���  L e t t e r s� k  O�� ��� r  OV��� m  OR�� ���  F e a t - L e t t e r s� o      �f�f 0 
mastername 
masterName� ��� l Wc���� r  Wc��� J  W_�� ��� m  WZ�� ���  M o n d a y� ��e� m  Z]�� ���  W e d n e s d a y�e  � o      �d�d 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r  dx   J  dt  m  dg �  T u e s d a y  m  gj		 �

  T h u r s d a y  m  jm �  F r i d a y �c m  mp �  S a t u r d a y�c   o      �b�b 0 p14_days  �  l yy�a�`�_�a  �`  �_   �^ Z  y�] E y� o  y|�\�\ 0 p10_days   o  |�[�[ 0 theday theDay k  ��  r  �� m  �� �    1 0 _ L e t t e r s l     !�Z�Y! o      �X�X 0 fileslug fileSlug�Z  �Y   "#" O  ��$%$ k  ��&& '(' I ���W)�V
�W .aevtodocnull  �    alis) o  ���U�U  0 masterdocument masterDocument�V  ( *+* n ��,-, I  ���T�S�R�T >0 applymaster_changedate_single applyMaster_changeDate_single�S  �R  -  f  ��+ ./. n ��010 I  ���Q2�P�Q 20 changepagenumber_single changePageNumber_single2 3�O3 m  ��44 �55  1 0�O  �P  1  f  ��/ 676 n ��898 I  ���N�M�L�N 0 clean_save_l clean_save_L�M  �L  9  f  ��7 :�K: O ��;<; I ���J�I=
�J .CoReclosnull���     obj �I  = �H>�G
�H 
svop> m  ���F
�F savoyes �G  < 1  ���E
�E 
pacd�K  % m  ��??�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  # @�D@ l ���C�B�A�C  �B  �A  �D   ABA E ��CDC o  ���@�@ 0 p14_days  D o  ���?�? 0 theday theDayB E�>E k  �FF GHG r  ��IJI m  ��KK �LL  1 4 _ L e t t e r sJ l     M�=�<M o      �;�; 0 fileslug fileSlug�=  �<  H N�:N O  �OPO k  �QQ RSR I ���9T�8
�9 .aevtodocnull  �    alisT o  ���7�7  0 masterdocument masterDocument�8  S UVU n ��WXW I  ���6�5�4�6 >0 applymaster_changedate_single applyMaster_changeDate_single�5  �4  X  f  ��V YZY n ��[\[ I  ���3]�2�3 20 changepagenumber_single changePageNumber_single] ^�1^ m  ��__ �``  1 4�1  �2  \  f  ��Z aba n ��cdc I  ���0�/�.�0 0 clean_save_l clean_save_L�/  �.  d  f  ��b e�-e O �fgf I �,�+h
�, .CoReclosnull���     obj �+  h �*i�)
�* 
svopi m  �(
�( savoyes �)  g 1  ���'
�' 
pacd�-  P m  ��jj�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �:  �>  �]  �^  �i  �h  �k  �j  � klk l     �&�%�$�&  �%  �$  l mnm l     �#�"�!�#  �"  �!  n opo l bq� �q Z  brs��r E tut o  �� &0 masterstogenerate mastersToGenerateu m  vv �ww  S t r u g g l es k  !^xx yzy r  !({|{ m  !$}} �~~  N e w s - S t r u g g l e| o      �� 0 
mastername 
masterNamez � r  )0��� m  ),�� ���  1 0 - 1 1 _ S t r u g g l e� l     ���� o      �� 0 fileslug fileSlug�  �  � ��� O  1^��� k  7]�� ��� I 7<���
� .aevtodocnull  �    alis� o  78��  0 masterdocument masterDocument�  � ��� n =B��� I  >B���� >0 applymaster_changedate_spread applyMaster_changeDate_spread�  �  �  f  =>� ��� n CH��� I  DH���� 0 clean_save_l clean_save_L�  �  �  f  CD� ��� O I]��� I Q\���
� .CoReclosnull���     obj �  � �
��	
�
 
svop� m  UX�
� savoyes �	  � 1  IN�
� 
pacd�  � m  14���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  �  �  �   �  p ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l c��� ��� Z  c�������� E cj��� o  cf���� &0 masterstogenerate mastersToGenerate� m  fi�� ���  S i n g l e   s t r u g g l e� k  m��� ��� r  mt��� m  mp�� ��� ( N e w s - S t r u g g l e   s i n g l e� o      ���� 0 
mastername 
masterName� ��� r  u|��� m  ux�� ���  1 1 _ S t r u g g l e� l     ������ o      ���� 0 fileslug fileSlug��  ��  � ���� O  }���� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_r clean_save_R��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � 1  ����
�� 
pacd��  � m  }����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  �   ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l � ������ Z  � ������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  R e d   L i s t� k  ���� ��� r  ����� m  ���� ���  F e a t - R e d   L i s t� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  2 0 _ R e d L i s t� l     ������ o      ���� 0 fileslug fileSlug��  ��  � ���� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ���������� (0 changelegaldate_20 changeLegalDate_20��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � 1  ����
�� 
pacd��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  ��  ��  � � � l     ��������  ��  ��     l ���� O  r   m  
��
�� elnteInA n      	 1  ��
�� 
UIAc	 1  
��
�� 
pScr m  

�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��    l     ��������  ��  ��    l (���� O  ( k  '  I !������
�� .miscactvnull��� ��� obj ��  ��   �� I "'����
�� .aevtodocnull  �    alis o  "#���� $0 freshpagesfolder freshPagesFolder��  ��   m  �                                                                                  MACS  alis    Z  SSD                        �@��H+  ƹ
Finder.app                                                     ���ۢ        ����  	                CoreServices    �@��      �͒    ƹƳƲ  -SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  ��    l     ��������  ��  ��    l     ��������  ��  ��    l     ����     Handler definitions --    �   .   H a n d l e r   d e f i n i t i o n s   - - !"! l     ��������  ��  ��  " #$# l     ��������  ��  ��  $ %&% l      ��'(��  ' X R	Create the date used on the InDesign pages, and deal with some Saturday oddities	   ( �)) � 	 C r e a t e   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l   w i t h   s o m e   S a t u r d a y   o d d i t i e s 	& *+* i     ,-, I      �������� "0 create_pagedate create_pageDate��  ��  - k    �.. /0/ r     
121 J     33 454 m     66 �77  J a n u a r y5 898 m    :: �;; 
 M a r c h9 <=< m    >> �??  M a y= @A@ m    BB �CC  J u l yA DED m    FF �GG  A u g u s tE H��H m    II �JJ  O c t o b e r��  2 o      ���� (0 thirtyonedaymonths ThirtyOneDayMonths0 KLK r    MNM J    OO PQP m    RR �SS 
 A p r i lQ TUT m    VV �WW  J u n eU XYX m    ZZ �[[  S e p t e m b e rY \��\ m    ]] �^^  N o v e m b e r��  N o      ���� "0 thirtydaymonths ThirtyDayMonthsL _`_ l   ��������  ��  ��  ` a��a Z   �bcd��b >   efe o    ���� 0 theday theDayf m    gg �hh  S a t u r d a yc l   5ijki k    5ll mnm r    3opo l   /q����q b    /rsr b    +tut b    'vwv b    #xyx b    z{z b    |}| o    ���� 0 theday theDay} m    ~~ �   { o    ���� 0 themonth theMonthy m    "�� ���   w o   # &���� 0 thedate theDateu m   ' *�� ���   s o   + .���� 0 theyear theYear��  ��  p o      ���� 0 pagedate pageDaten ���� l  4 4��������  ��  ��  ��  j + % Does the page date for every weekday   k ��� J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a yd ��� F   8 U��� F   8 K��� =  8 =��� o   8 9���� 0 theday theDay� m   9 <�� ���  S a t u r d a y� =  @ G��� o   @ C���� 0 thedate theDate� m   C F�� ���  3 0� E  N Q��� o   N O���� "0 thirtydaymonths ThirtyDayMonths� o   O P���� 0 themonth theMonth� ��� l  X ����� k   X ��� ��� Y   X ��������� l  h ����� Z  h �������� =  h r��� n   h p��� 4   k p���
�� 
cobj� o   n o���� 0 i  � o   h k�� 0 months_list  � o   p q�~�~ 0 themonth theMonth� r   u ���� l  u ��}�|� n   u ��� 4   x �{�
�{ 
cobj� l  { ~��z�y� [   { ~��� o   { |�x�x 0 i  � m   | }�w�w �z  �y  � o   u x�v�v 0 months_list  �}  �|  � o      �u�u 0 secondmonth secondMonth��  ��  � V P This repeat block here grabs the name of the next month to use in the page date   � ��� �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e�� 0 i  � m   [ \�t�t � I  \ c�s��r
�s .corecnte****       ****� o   \ _�q�q 0 months_list  �r  ��  � ��� l  � ����� r   � ���� l  � ���p�o� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���   S a t u r d a y / S u n d a y  � o   � ��n�n 0 themonth theMonth� m   � ��� ���    3 0 -� o   � ��m�m 0 secondmonth secondMonth� m   � ��� ���    1  � o   � ��l�l 0 theyear theYear�p  �o  � o      �k�k 0 pagedate pageDate� P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"   � ��� �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 "� ��j� l  � ��i�h�g�i  �h  �g  �j  � I C Deals with Saturdays at the end of 30-day months (uses list above)   � ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )� ��� F   � ���� F   � ���� =  � ���� o   � ��f�f 0 theday theDay� m   � ��� ���  S a t u r d a y� =  � ���� o   � ��e�e 0 thedate theDate� m   � ��� ���  3 1� E  � ���� o   � ��d�d (0 thirtyonedaymonths ThirtyOneDayMonths� o   � ��c�c 0 themonth theMonth� ��� l  ����� k   ��� ��� Y   � ���b���a� Z  � ����`�_� =  � ���� n   � ���� 4   � ��^�
�^ 
cobj� o   � ��]�] 0 i  � o   � ��\�\ 0 months_list  � o   � ��[�[ 0 themonth theMonth� r   � ���� l  � ���Z�Y� n   � ���� 4   � ��X�
�X 
cobj� l  � ���W�V� [   � ���� o   � ��U�U 0 i  � m   � ��T�T �W  �V  � o   � ��S�S 0 months_list  �Z  �Y  � o      �R�R 0 secondmonth secondMonth�`  �_  �b 0 i  � m   � ��Q�Q � I  � ��P��O
�P .corecnte****       ****� o   � ��N�N 0 months_list  �O  �a  � ��� r   �� � l  ��M�L b   � b   �	 b   � b   �	 b   � �

 m   � � �   S a t u r d a y / S u n d a y   o   � ��K�K 0 themonth theMonth	 m   � �    3 1 - o  �J�J 0 secondmonth secondMonth m   �    1   o  	�I�I 0 theyear theYear�M  �L    o      �H�H 0 pagedate pageDate� �G l �F�E�D�F  �E  �D  �G  � I C Deals with Saturdays at the end of 31-day months (uses list above)   � � �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )�  F  5 F  ) =  o  �C�C 0 theday theDay m   �  S a t u r d a y ? % o  !�B�B 0 thedate theDate m  !$   �!!  2 7 = ,1"#" o  ,-�A�A 0 themonth theMonth# m  -0$$ �%%  F e b r u a r y &'& l 8M()*( k  8M++ ,-, r  8K./. l 8G0�@�?0 b  8G121 b  8C343 b  8?565 m  8;77 �88 2 S a t u r d a y / S u n d a y   F e b r u a r y  6 o  ;>�>�> 0 thedate theDate4 m  ?B99 �::  - M a r c h   1  2 o  CF�=�= 0 theyear theYear�@  �?  / o      �<�< 0 pagedate pageDate- ;�;; l LL�:�9�8�:  �9  �8  �;  ) { u Deals with Saturdays at the end of February. Fun fact: it�s quite blunt but won�t produce the wrong date until 2032.   * �<< �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   F u n   f a c t :   i t  s   q u i t e   b l u n t   b u t   w o n  t   p r o d u c e   t h e   w r o n g   d a t e   u n t i l   2 0 3 2 .' =>= F  Po?@? F  PcABA = PUCDC o  PQ�7�7 0 theday theDayD m  QTEE �FF  S a t u r d a yB = X_GHG o  X[�6�6 0 thedate theDateH m  [^II �JJ  3 1@ = fkKLK o  fg�5�5 0 themonth theMonthL m  gjMM �NN  D e c e m b e r> OPO l r�QRSQ k  r�TT UVU r  r�WXW l r�Y�4�3Y b  r�Z[Z b  r}\]\ b  ry^_^ m  ru`` �aa L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  _ o  ux�2�2 0 theyear theYear] m  y|bb �cc  -[ l }�d�1�0d [  }�efe o  }��/�/ 0 theyear theYearf m  ���.�. �1  �0  �4  �3  X o      �-�- 0 pagedate pageDateV g�,g l ���+�*�)�+  �*  �)  �,  R 2 , Deals with Saturdays at the end of December   S �hh X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e rP iji = ��klk o  ���(�( 0 theday theDayl m  ��mm �nn  S a t u r d a yj o�'o l ��pqrp k  ��ss tut r  ��vwv l ��x�&�%x b  ��yzy b  ��{|{ b  ��}~} b  ��� b  ����� b  ����� b  ����� m  ���� ���   S a t u r d a y / S u n d a y  � o  ���$�$ 0 themonth theMonth� m  ���� ���   � o  ���#�# 0 thedate theDate� m  ���� ���  -~ l ����"�!� [  ����� o  ��� �  0 thedate theDate� m  ���� �"  �!  | m  ���� ���   z o  ���� 0 theyear theYear�&  �%  w o      �� 0 pagedate pageDateu ��� l ������  �  �  �  q 3 - Does the page date for every normal Saturday   r ��� Z   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y�'  ��  ��  + ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l      ����  � @ :	Create the short date to name the created InDesign files	   � ��� t 	 C r e a t e   t h e   s h o r t   d a t e   t o   n a m e   t h e   c r e a t e d   I n D e s i g n   f i l e s 	� ��� i    ��� I      ���� "0 create_filedate create_fileDate�  �  � k     [�� ��� Z     ����� A    ��� c     ��� o     �� 0 thedate theDate� m    �
� 
long� m    �� ���  1 0� l   ���� r    ��� l   ���
� b    ��� m    	�� ���  0� o   	 
�	�	 0 thedate theDate�  �
  � o      �� 0 numdate numDate� L F If the date is 1-10 this adds an initial zero to use in the file name   � ��� �   I f   t h e   d a t e   i s   1 - 1 0   t h i s   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e�  � r    ��� o    �� 0 thedate theDate� o      �� 0 numdate numDate� ��� l   ����  �  �  � ��� Y    7������ l  " 2���� Z  " 2��� ��� =  " (��� n   " &��� 4   # &���
�� 
cobj� o   $ %���� 0 i  � o   " #���� 0 months_list  � o   & '���� 0 themonth theMonth� r   + .��� o   + ,���� 0 i  � o      ���� 0 raw_nummonth raw_numMonth�   ��  � d ^ This gets the month number and, if less than 10, adds an initial zero to use in the file name   � ��� �   T h i s   g e t s   t h e   m o n t h   n u m b e r   a n d ,   i f   l e s s   t h a n   1 0 ,   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e� 0 i  � m    ���� � I   �����
�� .corecnte****       ****� o    ���� 0 months_list  ��  �  � ��� Z   8 I������ A  8 ;��� o   8 9���� 0 raw_nummonth raw_numMonth� m   9 :���� 
� r   > C��� l  > A������ b   > A��� m   > ?�� ���  0� o   ? @���� 0 raw_nummonth raw_numMonth��  ��  � o      ���� 0 nummonth numMonth��  � r   F I��� o   F G���� 0 raw_nummonth raw_numMonth� o      ���� 0 nummonth numMonth� ��� l  J J��������  ��  ��  � ���� l  J [���� r   J [��� l  J Y������ b   J Y��� b   J M��� o   J K���� 0 numdate numDate� o   K L���� 0 nummonth numMonth� l  M X������ n   M X��� 7 N X����
�� 
ctxt� m   R T���� � m   U W���� � o   M N���� 0 theyear theYear��  ��  ��  ��  � o      ���� 0 filedate fileDate� Z T This combines the date, month and last two digits of the year to create a file name   � ��� �   T h i s   c o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r   t o   c r e a t e   a   f i l e   n a m e��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � ` Z	Single page: Apply a master, change the date and override everything on the "Work" layer	   � ��� � 	 S i n g l e   p a g e :   A p p l y   a   m a s t e r ,   c h a n g e   t h e   d a t e   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	� ��� i    ��� I      �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  � O     c� � O    b k   
 a  r   
  4   
 ��
�� 
mspr o    ���� 0 
mastername 
masterName n      	
	 1    ��
�� 
pmas
 4    ��
�� 
page m    ����   I   &��
�� .InESovrrobj         obj  n     4    ��
�� 
txtf m     �  E d i t i o n   d a t e 4    ��
�� 
mspr o    ���� 0 
mastername 
masterName ����
�� 
dPge 4    "��
�� 
page m     !���� ��    r   ' 2 o   ' (���� 0 pagedate pageDate l     ���� n       1   / 1��
�� 
pcnt n   ( /  4   , /��!
�� 
txtf! m   - ."" �##  E d i t i o n   d a t e  4   ( ,��$
�� 
page$ m   * +���� ��  ��   %��% Q   3 a&'��& I  6 X��()
�� .InESovrrobj         obj ( l  6 O*����* 6  6 O+,+ n   6 >-.- 2   < >��
�� 
cobj. n   6 </0/ 1   : <��
�� 
mpgs0 4   6 :��1
�� 
page1 m   8 9���� , =  ? N232 n  @ H454 1   D H��
�� 
pnam5 1   @ D��
�� 
pilr3 m   I M66 �77  W o r k��  ��  ) ��8��
�� 
dPge8 4   P T��9
�� 
page9 m   R S���� ��  ' R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   l   :����: 1    ��
�� 
pacd��  ��    m     ;;�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � <=< l     ��������  ��  ��  = >?> l     ��������  ��  ��  ? @A@ l      ��BC��  B } w	Spreads: Create a new spread from a master, change the date on both pages and override everything on the "Work" layer	   C �DD � 	 S p r e a d s :   C r e a t e   a   n e w   s p r e a d   f r o m   a   m a s t e r ,   c h a n g e   t h e   d a t e   o n   b o t h   p a g e s   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	A EFE i    GHG I      �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  H O     �IJI O    �KLK k   
 �MM NON I  
 ����P
�� .corecrel****      � null��  P ��QR
�� 
koclQ m    ��
�� 
sprdR ��S��
�� 
prdtS K    TT ��U��
�� 
pmasU 4    ��V
�� 
msprV o    ���� 0 
mastername 
masterName��  ��  O WXW I   *��YZ
�� .InESovrrobj         obj Y n    ![\[ 4    !��]
�� 
txtf] m     ^^ �__  L - E d i t i o n   d a t e\ 4    ��`
�� 
mspr` o    ���� 0 
mastername 
masterNameZ ��a��
�� 
dPgea 4   " &��b
�� 
pageb m   $ %���� ��  X cdc I  + ;��ef
�� .InESovrrobj         obj e n   + 2ghg 4   / 2��i
�� 
txtfi m   0 1jj �kk  R - E d i t i o n   d a t eh 4   + /��l
�� 
msprl o   - .���� 0 
mastername 
masterNamef ��m��
�� 
dPgem 4   3 7��n
�� 
pagen m   5 6���� ��  d opo r   < Mqrq o   < ?���� 0 pagedate pageDater l     s����s n      tut 1   H L��
�� 
pcntu n   ? Hvwv 4   C H��x
�� 
txtfx m   D Gyy �zz  L - E d i t i o n   d a t ew 4   ? C��{
�� 
page{ m   A B�� ��  ��  p |}| r   N _~~ o   N Q�~�~ 0 pagedate pageDate l     ��}�|� n      ��� 1   Z ^�{
�{ 
pcnt� n   Q Z��� 4   U Z�z�
�z 
txtf� m   V Y�� ���  R - E d i t i o n   d a t e� 4   Q U�y�
�y 
page� m   S T�x�x �}  �|  } ��w� Q   ` ����v� k   c ��� ��� I  c ��u��
�u .InESovrrobj         obj � l  c ���t�s� 6  c ���� n   c o��� 2   k o�r
�r 
cobj� n   c k��� 1   g k�q
�q 
mpgs� 4   c g�p�
�p 
page� m   e f�o�o � =  r ���� n  s {��� 1   w {�n
�n 
pnam� 1   s w�m
�m 
pilr� m   | ��� ���  W o r k�t  �s  � �l��k
�l 
dPge� 4   � ��j�
�j 
page� m   � ��i�i �k  � ��h� I  � ��g��
�g .InESovrrobj         obj � l  � ���f�e� 6  � ���� n   � ���� 2   � ��d
�d 
cobj� n   � ���� 1   � ��c
�c 
mpgs� 4   � ��b�
�b 
page� m   � ��a�a � =  � ���� n  � ���� 1   � ��`
�` 
pnam� 1   � ��_
�_ 
pilr� m   � ��� ���  W o r k�f  �e  � �^��]
�^ 
dPge� 4   � ��\�
�\ 
page� m   � ��[�[ �]  �h  � R      �Z�Y�X
�Z .ascrerr ****      � ****�Y  �X  �v  �w  L l   ��W�V� 1    �U
�U 
pacd�W  �V  J m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  F ��� l     �T�S�R�T  �S  �R  � ��� l     �Q�P�O�Q  �P  �O  � ��� l      �N���N  � � }	Single page: Change the page number to the one specified in the handler call - e.g. changePageNumber_single("3") for page 3	   � ��� � 	 S i n g l e   p a g e :   C h a n g e   t h e   p a g e   n u m b e r   t o   t h e   o n e   s p e c i f i e d   i n   t h e   h a n d l e r   c a l l   -   e . g .   c h a n g e P a g e N u m b e r _ s i n g l e ( " 3 " )   f o r   p a g e   3 	� ��� i    ��� I      �M��L�M 20 changepagenumber_single changePageNumber_single� ��K� o      �J�J 0 
pagenumber 
pageNumber�K  �L  � O     (��� O    '��� k   
 &�� ��� I  
 �I��
�I .InESovrrobj         obj � n   
 ��� 4    �H�
�H 
txtf� m    �� ���  P a g e   n u m b e r� 4   
 �G�
�G 
mspr� o    �F�F 0 
mastername 
masterName� �E��D
�E 
dPge� 4    �C�
�C 
page� m    �B�B �D  � ��A� r    &��� o    �@�@ 0 
pagenumber 
pageNumber� l     ��?�>� n      ��� 1   # %�=
�= 
pcnt� n    #��� 4     #�<�
�< 
txtf� m   ! "�� ���  P a g e   n u m b e r� 4     �;�
�; 
page� m    �:�: �?  �>  �A  � l   ��9�8� 1    �7
�7 
pacd�9  �8  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     �6�5�4�6  �5  �4  � ��� l     �3�2�1�3  �2  �1  � ��� l      �0���0  � � �	Spreads: Change the page number on both pages. The handler call asks for the left-hand page�s number - e.g. changePageNumber_spread("8") for pages 8 and 9	   � ���8 	 S p r e a d s :   C h a n g e   t h e   p a g e   n u m b e r   o n   b o t h   p a g e s .   T h e   h a n d l e r   c a l l   a s k s   f o r   t h e   l e f t - h a n d   p a g e  s   n u m b e r   -   e . g .   c h a n g e P a g e N u m b e r _ s p r e a d ( " 8 " )   f o r   p a g e s   8   a n d   9 	� ��� i    ��� I      �/��.�/ 20 changepagenumber_spread changePageNumber_spread� ��-� o      �,�,  0 leftpagenumber leftPageNumber�-  �.  � O     I��� O    H��� k   
 G�� ��� I  
 �+��
�+ .InESovrrobj         obj � n   
 ��� 4    �*�
�* 
txtf� m    �� �	 	   L - P a g e   n u m b e r� 4   
 �)	
�) 
mspr	 o    �(�( 0 
mastername 
masterName� �'	�&
�' 
dPge	 4    �%	
�% 
page	 m    �$�$ �&  � 			 I   +�#		
�# .InESovrrobj         obj 	 n    "				 4    "�"	

�" 
txtf	
 m     !		 �		  R - P a g e   n u m b e r		 4    �!	
�! 
mspr	 o    � �  0 
mastername 
masterName	 �	�
� 
dPge	 4   # '�	
� 
page	 m   % &�� �  	 			 r   , 7			 o   , -��  0 leftpagenumber leftPageNumber	 l     	��	 n      			 1   4 6�
� 
pcnt	 n   - 4			 4   1 4�	
� 
txtf	 m   2 3		 �		  L - P a g e   n u m b e r	 4   - 1�	
� 
page	 m   / 0�� �  �  	 	�	 r   8 G			 l  8 =	 ��	  c   8 =	!	"	! l  8 ;	#��	# [   8 ;	$	%	$ o   8 9��  0 leftpagenumber leftPageNumber	% m   9 :�� �  �  	" m   ; <�
� 
TEXT�  �  	 l     	&��	& n      	'	(	' 1   D F�

�
 
pcnt	( n   = D	)	*	) 4   A D�		+
�	 
txtf	+ m   B C	,	, �	-	-  R - P a g e   n u m b e r	* 4   = A�	.
� 
page	. m   ? @�� �  �  �  � l   	/��	/ 1    �
� 
pacd�  �  � m     	0	0�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 	1	2	1 l     ����  �  �  	2 	3	4	3 l      � 	5	6�   	5 � �	Spreads and left-hand single pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   	6 �	7	7� 	 S p r e a d s   a n d   l e f t - h a n d   s i n g l e   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 		4 	8	9	8 i    	:	;	: I      �������� 0 clean_save_l clean_save_L��  ��  	; O     >	<	=	< O    =	>	?	> k   
 <	@	@ 	A	B	A r   
 	C	D	C m   
 ��
�� boovtrue	D n      	E	F	E 1    ��
�� 
plck	F 4    ��	G
�� 
layr	G m    	H	H �	I	I ( D a t e   a n d   p a g e   n u m b e r	B 	J	K	J r    	L	M	L m    ��
�� boovtrue	M n      	N	O	N 1    ��
�� 
plck	O 4    ��	P
�� 
layr	P m    	Q	Q �	R	R  F u r n i t u r e	K 	S	T	S r    !	U	V	U m    	W	W �	X	X  W o r k	V 1     ��
�� 
pacl	T 	Y	Z	Y r   " *	[	\	[ J   " &	]	] 	^	_	^ m   " #	`	` @.      	_ 	a��	a m   # $	b	b @&      ��  	\ l     	c����	c 1   & )��
�� 
zero��  ��  	Z 	d��	d I  + <����	e
�� .CoResavedocu        obj ��  	e ��	f��
�� 
kfil	f b   - 8	g	h	g b   - 4	i	j	i b   - 2	k	l	k b   - 0	m	n	m o   - .���� $0 freshpagesfolder freshPagesFolder	n o   . /���� 0 fileslug fileSlug	l m   0 1	o	o �	p	p  _	j o   2 3���� 0 filedate fileDate	h m   4 7	q	q �	r	r 
 . i n d d��  ��  	? l   	s����	s 1    ��
�� 
pacd��  ��  	= m     	t	t�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  	9 	u	v	u l     ��������  ��  ��  	v 	w	x	w l     ��������  ��  ��  	x 	y	z	y l      ��	{	|��  	{ � �	Right-hand pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   	| �	}	}z 	 R i g h t - h a n d   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 		z 	~		~ i    	�	�	� I      �������� 0 clean_save_r clean_save_R��  ��  	� O     >	�	�	� O    =	�	�	� k   
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
pacd��  ��  	� m     	�	��                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  	 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l      ��	�	���  	� � �	Changes the legal date on the left-hand page of a spread - it�s designed for pages 12-13 (TV), which have the legal date on weekdays.	   	� �	�	� 	 C h a n g e s   t h e   l e g a l   d a t e   o n   t h e   l e f t - h a n d   p a g e   o f   a   s p r e a d   -   i t  s   d e s i g n e d   f o r   p a g e s   1 2 - 1 3   ( T V ) ,   w h i c h   h a v e   t h e   l e g a l   d a t e   o n   w e e k d a y s . 		� 	�	�	� i     #	�	�	� I      �������� (0 changelegaldate_12 changeLegalDate_12��  ��  	� O     (	�	�	� O    '	�	�	� k   
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
pacd��  ��  	� m     	�	��                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l      ��	�	���  	� � �	Changes the legal date on a left-hand single page - it�s designed for the Red List page (20), which has the legal date at weekends.	   	� �	�	�
 	 C h a n g e s   t h e   l e g a l   d a t e   o n   a   l e f t - h a n d   s i n g l e   p a g e   -   i t  s   d e s i g n e d   f o r   t h e   R e d   L i s t   p a g e   ( 2 0 ) ,   w h i c h   h a s   t h e   l e g a l   d a t e   a t   w e e k e n d s . 		� 	�	�	� i   $ '	�	�	� I      �������� (0 changelegaldate_20 changeLegalDate_20��  ��  	� O     (	�	�	� O    '	�	�	� k   
 &	�	� 	�	�	� I  
 ��	�	�
�� .InESovrrobj         obj 	� n   
 	�	�	� 4    ��	�
�� 
txtf	� m    	�	� �	�	�  L e g a l   d a t e	� 4   
 ��
 
�� 
mspr
  o    ���� 0 
mastername 
masterName	� ��
��
�� 
dPge
 4    ��

�� 
page
 m    ���� ��  	� 
��
 r    &


 o    ���� 0 pagedate pageDate
 l     
����
 n      


 1   # %��
�� 
pcnt
 n    #
	


	 4     #��

�� 
txtf
 m   ! "

 �

  L e g a l   d a t e

 4     ��

�� 
page
 m    ���� ��  ��  ��  	� l   
����
 1    ��
�� 
pacd��  ��  	� m     

�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  	� 


 l     ��������  ��  ��  
 


 l     ��������  ��  ��  
 


 l      ��

��  
 t n	Creates an embargoed stories text frame to the left-hand side of the working page (1 if single, 2 if spread)	   
 �

 � 	 C r e a t e s   a n   e m b a r g o e d   s t o r i e s   t e x t   f r a m e   t o   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g e   ( 1   i f   s i n g l e ,   2   i f   s p r e a d ) 	
 
��
 i   ( +


 I      ��������  0 drawembargobox drawEmbargoBox��  ��  
 O     �


 O    �

 
 Z    �
!
"
#��
! =   
$
%
$ l   
&����
& I   ��
'��
�� .corecnte****       ****
' 2   �
� 
page��  ��  ��  
% m    �~�~ 
" k    K
(
( 
)
*
) O    4
+
,
+ r    3
-
.
- I   1�}�|
/
�} .corecrel****      � null�|  
/ �{
0
1
�{ 
kocl
0 m     !�z
�z 
txtf
1 �y
2�x
�y 
prdt
2 K   " -
3
3 �w
4
5
�w 
gbnd
4 J   # )
6
6 
7
8
7 m   # $
9
9 @,      
8 
:
;
: m   $ %
<
< �b�     
; 
=
>
= m   % &
?
? @\�     
> 
@�v
@ m   & '
A
A �I      �v  
5 �u
B�t
�u 
pcnt
B m   * +
C
C �
D
D " E m b a r g o e d   s t o r i e s�t  �x  
. o      �s�s 0 ebox eBox
, 4    �r
E
�r 
page
E m    �q�q 
* 
F
G
F l  5 C
H
I
J
H r   5 C
K
L
K 4   5 =�p
M
�p 
ObSt
M m   9 <
N
N �
O
O " N e w s   N I B   b o x   t i n t
L l     
P�o�n
P n      
Q
R
Q 1   > B�m
�m 
aobs
R o   = >�l�l 0 ebox eBox�o  �n  
I K E This causes an error if you try to set it when the frame is created.   
J �
S
S �   T h i s   c a u s e s   a n   e r r o r   i f   y o u   t r y   t o   s e t   i t   w h e n   t h e   f r a m e   i s   c r e a t e d .
G 
T�k
T r   D K
U
V
U m   D E�j
�j boovtrue
V n      
W
X
W 1   F J�i
�i 
plck
X o   E F�h�h 0 ebox eBox�k  
# 
Y
Z
Y =  N W
[
\
[ l  N U
]�g�f
] I  N U�e
^�d
�e .corecnte****       ****
^ 2  N Q�c
�c 
page�d  �g  �f  
\ m   U V�b�b 
Z 
_�a
_ k   Z �
`
` 
a
b
a O   Z y
c
d
c r   a x
e
f
e I  a v�`�_
g
�` .corecrel****      � null�_  
g �^
h
i
�^ 
kocl
h m   c d�]
�] 
txtf
i �\
j�[
�\ 
prdt
j K   e r
k
k �Z
l
m
�Z 
gbnd
l J   f l
n
n 
o
p
o m   f g
q
q @,      
p 
r
s
r m   g h
t
t �b�     
s 
u
v
u m   h i
w
w @\�     
v 
x�Y
x m   i j
y
y �I      �Y  
m �X
z�W
�X 
pcnt
z m   m p
{
{ �
|
| " E m b a r g o e d   s t o r i e s�W  �[  
f o      �V�V 0 ebox eBox
d 4   Z ^�U
}
�U 
page
} m   \ ]�T�T 
b 
~

~ r   z �
�
�
� 4   z ��S
�
�S 
ObSt
� m   ~ �
�
� �
�
� " N e w s   N I B   b o x   t i n t
� l     
��R�Q
� n      
�
�
� 1   � ��P
�P 
aobs
� o   � ��O�O 0 ebox eBox�R  �Q  
 
��N
� r   � �
�
�
� m   � ��M
�M boovtrue
� n      
�
�
� 1   � ��L
�L 
plck
� o   � ��K�K 0 ebox eBox�N  �a  ��  
  l   
��J�I
� 4   �H
�
�H 
docu
� m    �G�G �J  �I  
 m     
�
��                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��       �F
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
��F  
� �E�D�C�B�A�@�?�>�=�<�;�:�E "0 create_pagedate create_pageDate�D "0 create_filedate create_fileDate�C >0 applymaster_changedate_single applyMaster_changeDate_single�B >0 applymaster_changedate_spread applyMaster_changeDate_spread�A 20 changepagenumber_single changePageNumber_single�@ 20 changepagenumber_spread changePageNumber_spread�? 0 clean_save_l clean_save_L�> 0 clean_save_r clean_save_R�= (0 changelegaldate_12 changeLegalDate_12�< (0 changelegaldate_20 changeLegalDate_20�;  0 drawembargobox drawEmbargoBox
�: .aevtoappnull  �   � ****
� �9-�8�7
�
��6�9 "0 create_pagedate create_pageDate�8  �7  
� �5�4�3�2�5 (0 thirtyonedaymonths ThirtyOneDayMonths�4 "0 thirtydaymonths ThirtyDayMonths�3 0 i  �2 0 secondmonth secondMonth
� 26:>BFI�1RVZ]�0�/g~�.��-��,�+���*�)�(�'����� $79EIM`bm�����1 �0 �/ 0 theday theDay�. 0 themonth theMonth�- 0 thedate theDate�, 0 theyear theYear�+ 0 pagedate pageDate
�* 
bool�) 0 months_list  
�( .corecnte****       ****
�' 
cobj�6��������vE�O�����vE�O��  ��%�%a %_ %a %_ %E` OPY��a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa �%a %�%a %_ %E` OPY�a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa  �%a !%�%a "%_ %E` OPY ��a # 	 _ a $a &	 �a % a & a &_ %a '%_ %E` OPY o�a ( 	 _ a ) a &	 �a * a & a +_ %a ,%_ k%E` OPY 3�a -  *a .�%a /%_ %a 0%_ k%a 1%_ %E` OPY h
� �&��%�$
�
��#�& "0 create_filedate create_fileDate�%  �$  
� �"�!� ��" 0 numdate numDate�! 0 i  �  0 raw_nummonth raw_numMonth� 0 nummonth numMonth
� ��������������� 0 thedate theDate
� 
long� 0 months_list  
� .corecnte****       ****
� 
cobj� 0 themonth theMonth� 
� 0 theyear theYear
� 
ctxt� � 0 filedate fileDate�# \��&� 
��%E�Y �E�O "k�j kh ��/�  �E�Y h[OY��O�� 
�%E�Y �E�O��%�[�\[Zm\Z�2%E�
� ����
�
��� >0 applymaster_changedate_single applyMaster_changeDate_single�  �  
�  
� ;������
�	��"���
���6�� 
� 
pacd
� 
mspr� 0 
mastername 
masterName
� 
page
� 
pmas
�
 
txtf
�	 
dPge
� .InESovrrobj         obj � 0 pagedate pageDate
� 
pcnt
� 
mpgs
� 
cobj
�  
� 
pilr
� 
pnam�  �   � d� `*�, Y*��/*�k/�,FO*��/��/�*�k/l 	O�*�k/��/�,FO '*�k/�,�-�[a ,a ,\Za 81�*�k/l 	W X  hUU
� ��H����
�
����� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  
�  
� ���������������������^������j��y�������
�����������
�� 
pacd
�� 
kocl
�� 
sprd
�� 
prdt
�� 
pmas
�� 
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
pnam��  ��  �� �� �*�, �*����*��/l� 	O*��/��/�*�l/l O*��/��/�*�m/l O_ *�l/�a /a ,FO_ *�m/�a /a ,FO V*�l/a ,a -a [a ,a ,\Za 81�*�l/l O*�m/a ,a -a [a ,a ,\Za 81�*�m/l W X  hUU
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
� 	0���������������		����	,
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
� ��	;����
�
����� 0 clean_save_l clean_save_L��  ��  
�  
� 	t����	H��	Q	W��	`	b��������	o��	q��
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
��������	���������
��
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
����
�
�����  0 drawembargobox drawEmbargoBox��  ��  
� ���� 0 ebox eBox
� 
���������������
9
<
?
A����
C����
N����
{
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
� �
��~�}
�
��|
� .aevtoappnull  �   � ****
� k    (
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
� 
�
� 
�
� $
�
� q
�
� �
�
� o
�
� �
�
� �
�
� 
�
� �{�{  �~  �}  
�  
� � y�z ��y � � � � � ��x�w � � � � � � � � ��v�u � � � � � ��t � � � �	�s�r�q:�p=�o�n�m�l�kF�j�iVY�hbs�gwz�f�e�d�����c����b���a�`�����_�^!�]�\�[+7A�ZG�Y�X�W�V�U�T�S�R�Qhpv�����P�O����N�M9CI]tz��������+BH[x���L��������K	�J4K_v}��������I�H�G�z $0 freshpagesfolder freshPagesFolder�y  0 masterdocument masterDocument�x �w 0 weekday_pages  �v 	�u 0 weekend_pages  �t 0 	days_list  �s �r 0 months_list  
�q 
prmp
�p 
appr�o 
�n .gtqpchltns    @   @ ns  
�m 
TEXT�l 0 theday theDay
�k 
rslt
�j 
errn�i���h 0 themonth theMonth
�g 
dtxt
�f .sysodlogaskr        TEXT
�e 
ttxt�d 0 thedate theDate�c 0 theyear theYear
�b 
ret 
�a 
mlsl�` &0 masterstogenerate mastersToGenerate�_ "0 create_pagedate create_pageDate�^ "0 create_filedate create_fileDate
�] elnteNvr
�\ 
pScr
�[ 
UIAc�Z 0 
mastername 
masterName�Y 0 fileslug fileSlug
�X .aevtodocnull  �    alis�W >0 applymaster_changedate_single applyMaster_changeDate_single�V  0 drawembargobox drawEmbargoBox�U 0 clean_save_r clean_save_R
�T 
pacd
�S 
svop
�R savoyes 
�Q .CoReclosnull���     obj �P 20 changepagenumber_single changePageNumber_single�O 0 clean_save_l clean_save_L�N >0 applymaster_changedate_spread applyMaster_changeDate_spread�M 20 changepagenumber_spread changePageNumber_spread�L (0 changelegaldate_12 changeLegalDate_12�K 0 p10_days  �J 0 p14_days  �I (0 changelegaldate_20 changeLegalDate_20
�H elnteInA
�G .miscactvnull��� ��� obj �|)�E�O�E�O�������vE�O����a a a a a a vE` Oa a a a a a �vE` Oa a a  a !a "a #a $a %a &a 'a (a )a *vE` +O_ a ,a -a .a /a 0 1a 2&E` 3O_ 4a 5  )a 6a 7lhY hO_ +a ,a 8a .a 9a 0 1a 2&E` :O_ 4a ;  )a 6a 7lhY hOa <a =a >a .a ?a 0 @a A,a 2&E` BO_ 4a C  )a 6a 7lhY hOa Da =a Ea .a Fa 0 @a A,a 2&E` GO_ 4a H  )a 6a 7lhY hO_ 3a I A�a ,a J_ K%_ K%a L%a .a Ma Ne� 1E` OO_ 4f  )a 6a 7lhY hY N_ 3a P  C_ a ,a Q_ K%_ K%a R%a .a Sa Ne� 1E` OO_ 4f  )a 6a 7lhY hY hO*j+ TO*j+ UOa V a W*a X,a Y,FUO_ Oa Z�_ 3a [ Ha \E` ]Oa ^E` _Oa V .�j `O)j+ aO)j+ bO)j+ cO*a d, *a ea fl gUUY S_ 3a h  Ha iE` ]Oa jE` _Oa V .�j `O)j+ aO)j+ bO)j+ cO*a d, *a ea fl gUUY hO_ Oa k �a lE` ]Oa mE` _Oa V 7�j `O)j+ aO)a nk+ oO)j+ bO)j+ pO*a d, *a ea fl gUUOa qE` ]Oa rE` _Oa V 7�j `O)j+ aO)a sk+ oO)j+ bO)j+ cO*a d, *a ea fl gUUY Na tE` ]Oa uE` _Oa V 7�j `O)j+ vO)a wk+ xO)j+ bO)j+ pO*a d, *a ea fl gUUO_ Oa y �a zE` ]Oa {E` _Oa V 7�j `O)j+ aO)a |k+ oO)j+ bO)j+ pO*a d, *a ea fl gUUOa }E` ]Oa ~E` _Oa V 7�j `O)j+ aO)a k+ oO)j+ bO)j+ cO*a d, *a ea fl gUUY Na �E` ]Oa �E` _Oa V 7�j `O)j+ vO)a �k+ xO)j+ bO)j+ pO*a d, *a ea fl gUUO_ Oa � �a �E` ]Oa �E` _Oa V 7�j `O)j+ aO)a �k+ oO)j+ bO)j+ pO*a d, *a ea fl gUUOa �E` ]Oa �E` _Oa V 7�j `O)j+ aO)a �k+ oO)j+ bO)j+ cO*a d, *a ea fl gUUY Na �E` ]Oa �E` _Oa V 7�j `O)j+ vO)a �k+ xO)j+ bO)j+ pO*a d, *a ea fl gUUOPY hO_ Oa � �_ 3a � Ha �E` ]Oa �E` _Oa V .�j `O)j+ vO)j+ �O)j+ pO*a d, *a ea fl gUUY M_ 3a �  Ba �E` ]Oa �E` _Oa V (�j `O)j+ vO)j+ pO*a d, *a ea fl gUUY hY hO_ Oa � �a �E` ]Oa �a �lvE` �Oa �a �a �a �a 0vE` �O_ �_ 3 Ea �E` _Oa V 1�j `O)j+ aO)a �k+ oO)j+ pO*a d, *a ea fl gUUOPY N_ �_ 3 Ca �E` _Oa V 1�j `O)j+ aO)a �k+ oO)j+ pO*a d, *a ea fl gUUY hY hO_ Oa � Ba �E` ]Oa �E` _Oa V (�j `O)j+ vO)j+ pO*a d, *a ea fl gUUY hO_ Oa � Ba �E` ]Oa �E` _Oa V (�j `O)j+ aO)j+ cO*a d, *a ea fl gUUY hO_ Oa � Ha �E` ]Oa �E` _Oa V .�j `O)j+ aO)j+ �O)j+ pO*a d, *a ea fl gUUY hOa V a �*a X,a Y,FUOa � *j �O�j `Uascr  ��ޭ