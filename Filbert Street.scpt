FasdUAS 1.101.10   ��   ��    k             l     ��  ��    A ;	Filbert Street, a better Morning Star sport-page generator     � 	 	 v 	 F i l b e r t   S t r e e t ,   a   b e t t e r   M o r n i n g   S t a r   s p o r t - p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��    " 	Created on			June 16th 2012     �   8 	 C r e a t e d   o n 	 	 	 J u n e   1 6 t h   2 0 1 2      l     ��  ��     	Last updated		     �    	 L a s t   u p d a t e d 	 	      l     ��������  ��  ��        l      ��   ��    � � Description: This generates the pages needed by the sports desk. It has a different name because it�s written in a very different way to previous scripts and isn�t finished.      � ! !\   D e s c r i p t i o n :   T h i s   g e n e r a t e s   t h e   p a g e s   n e e d e d   b y   t h e   s p o r t s   d e s k .   I t   h a s   a   d i f f e r e n t   n a m e   b e c a u s e   i t  s   w r i t t e n   i n   a   v e r y   d i f f e r e n t   w a y   t o   p r e v i o u s   s c r i p t s   a n d   i s n  t   f i n i s h e d .   " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   & c ]	Status: Feature complete (as far as I can tell) but could do with a bit more documentation.	    ' � ( ( � 	 S t a t u s :   F e a t u r e   c o m p l e t e   ( a s   f a r   a s   I   c a n   t e l l )   b u t   c o u l d   d o   w i t h   a   b i t   m o r e   d o c u m e n t a t i o n . 	 %  ) * ) l     ��������  ��  ��   *  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / D > Global variables that are needed in handlers at some point --    0 � 1 1 |   G l o b a l   v a r i a b l e s   t h a t   a r e   n e e d e d   i n   h a n d l e r s   a t   s o m e   p o i n t   - - .  2 3 2 p       4 4 ������ 0 theday theDay��   3  5 6 5 p       7 7 ������ 0 themonth theMonth��   6  8 9 8 p       : : ������ 0 thedate theDate��   9  ; < ; p       = = ������ 0 theyear theYear��   <  > ? > p       @ @ ������ 0 months_list  ��   ?  A B A l      C D E C p       F F ������ 0 fileslug fileSlug��   D > 8 The short code used at the start of the new file�s name    E � G G p   T h e   s h o r t   c o d e   u s e d   a t   t h e   s t a r t   o f   t h e   n e w   f i l e  s   n a m e B  H I H l      J K L J p       M M ������ 0 filedate fileDate��   K 5 / The short date used to name the InDesign files    L � N N ^   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s I  O P O l      Q R S Q p       T T ������ 0 pagedate pageDate��   R 6 0 The full date used in the InDesign page�s folio    S � U U `   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o P  V W V l      X Y Z X p       [ [ ������ $0 freshpagesfolder freshPagesFolder��   Y . ( Where the newly created files are saved    Z � \ \ P   W h e r e   t h e   n e w l y   c r e a t e d   f i l e s   a r e   s a v e d W  ] ^ ] l      _ ` a _ p       b b ������  0 masterdocument masterDocument��   ` * $ The actual InDesign master document    a � c c H   T h e   a c t u a l   I n D e s i g n   m a s t e r   d o c u m e n t ^  d e d l      f g h f p       i i ������ 0 
mastername 
masterName��   g C = The name of the master page/spread to be applied in InDesign    h � j j z   T h e   n a m e   o f   t h e   m a s t e r   p a g e / s p r e a d   t o   b e   a p p l i e d   i n   I n D e s i g n e  k l k l     ��������  ��  ��   l  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q   Unchanging variables --    r � s s 0   U n c h a n g i n g   v a r i a b l e s   - - p  t u t l     v���� v r      w x w m      y y � z z j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : x o      ���� $0 freshpagesfolder freshPagesFolder��  ��   u  { | { l    }���� } r     ~  ~ m     � � � � � p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d  o      ����  0 masterdocument masterDocument��  ��   |  � � � l     ��������  ��  ��   �  � � � l    ����� � r     � � � J     � �  � � � m    	 � � � � �  T w o   p a g e s �  � � � m   	 
 � � � � �  T h r e e   p a g e s �  � � � m   
  � � � � � , T h r e e   p a g e s   w i t h   s p l i t �  � � � m     � � � � �  E x t r a   l e f t   p a g e �  � � � m     � � � � �   E x t r a   r i g h t   p a g e �  ��� � m     � � � � �  E x t r a   s p l i t��   � o      ���� 0 weekday_pages  ��  ��   �  � � � l   # ����� � r    # � � � J     � �  � � � m     � � � � �  F o u r   p a g e s �  � � � m     � � � � � * F o u r   p a g e s   w i t h   s p l i t �  � � � m     � � � � �  R a c i n g   o n l y �  � � � m     � � � � �  E x t r a   l e f t   p a g e �  � � � m     � � � � �   E x t r a   r i g h t   p a g e �  ��� � m     � � � � �  E x t r a   s p l i t��   � o      ���� 0 weekend_pages  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  $ < ����� � r   $ < � � � J   $ 8 � �  � � � m   $ ' � � � � �  M o n d a y �  � � � m   ' * � � � � �  T u e s d a y �  � � � m   * - � � � � �  W e d n e s d a y �  � � � m   - 0 � � � � �  T h u r s d a y �  � � � m   0 3 � � � � �  F r i d a y �  ��� � m   3 6 � � � � �  S a t u r d a y��   � o      ���� 0 	days_list  ��  ��   �  � � � l  = i ����� � r   = i � � � J   = e � �  � � � m   = @ � � � � �  J a n u a r y �  � � � m   @ C � � � � �  F e b r u a r y �  � � � m   C F � � � � � 
 M a r c h �  � � � m   F I � � � � � 
 A p r i l �  � � � m   I L � � � � �  M a y �  � � � m   L O � � � � �  J u n e �  � � � m   O R � � � � �  J u l y �  �  � m   R U �  A u g u s t   m   U X �  S e p t e m b e r  m   X [		 �

  O c t o b e r  m   [ ^ �  N o v e m b e r �� m   ^ a �  D e c e m b e r��   � o      ���� 0 months_list  ��  ��   �  l     ��������  ��  ��    l     ��������  ��  ��    l     ����     User prompts --    �     U s e r   p r o m p t s   - -  l     ��������  ��  ��    l      �� ��    Get the date      �!!  G e t   t h e   d a t e   "#" l  j �$����$ r   j �%&% c   j �'(' l  j )����) I  j ��*+
�� .gtqpchltns    @   @ ns  * o   j m���� 0 	days_list  + ��,-
�� 
prmp, m   p s.. �// 8 P l e a s e   p i c k   t h e   e d i t i o n   d a y :- ��0��
�� 
appr0 m   v y11 �22 * S p o r t   p a g e s   g e n e r a t o r��  ��  ��  ( m    ���
�� 
TEXT& o      ���� 0 theday theDay��  ��  # 343 l  � �5����5 Z  � �67����6 =  � �898 1   � ���
�� 
rslt9 m   � �:: �;; 
 f a l s e7 R   � �����<
�� .ascrerr ****      � ****��  < ��=��
�� 
errn= m   � ���������  ��  ��  ��  ��  4 >?> l  � �@����@ r   � �ABA c   � �CDC l  � �E����E I  � ���FG
�� .gtqpchltns    @   @ ns  F o   � ����� 0 months_list  G ��HI
�� 
prmpH m   � �JJ �KK , P l e a s e   p i c k   t h e   m o n t h :I ��L��
�� 
apprL m   � �MM �NN * S p o r t   p a g e s   g e n e r a t o r��  ��  ��  D m   � ���
�� 
TEXTB o      ���� 0 themonth theMonth��  ��  ? OPO l  � �Q����Q Z  � �RS����R =  � �TUT 1   � ���
�� 
rsltU m   � �VV �WW 
 f a l s eS R   � ���~X
� .ascrerr ****      � ****�~  X �}Y�|
�} 
errnY m   � ��{�{���|  ��  ��  ��  ��  P Z[Z l  � �\�z�y\ r   � �]^] c   � �_`_ l  � �a�x�wa n   � �bcb 1   � ��v
�v 
ttxtc l  � �d�u�td I  � ��sef
�s .sysodlogaskr        TEXTe m   � �gg �hh * P l e a s e   t y p e   t h e   d a t e :f �rij
�r 
dtxti m   � �kk �ll  j �qm�p
�q 
apprm m   � �nn �oo * S p o r t   p a g e s   g e n e r a t o r�p  �u  �t  �x  �w  ` m   � ��o
�o 
TEXT^ o      �n�n 0 thedate theDate�z  �y  [ pqp l  �r�m�lr Z  �st�k�js =  �uvu 1   � ��i
�i 
rsltv m   � ww �xx 
 f a l s et R  �h�gy
�h .ascrerr ****      � ****�g  y �fz�e
�f 
errnz m  �d�d���e  �k  �j  �m  �l  q {|{ l 4}�c�b} r  4~~ c  0��� l ,��a�`� n  ,��� 1  (,�_
�_ 
ttxt� l (��^�]� I (�\��
�\ .sysodlogaskr        TEXT� m  �� ��� * P l e a s e   t y p e   t h e   y e a r :� �[��
�[ 
dtxt� m  �� ���  � �Z��Y
�Z 
appr� m  "�� ��� * S p o r t   p a g e s   g e n e r a t o r�Y  �^  �]  �a  �`  � m  ,/�X
�X 
TEXT o      �W�W 0 theyear theYear�c  �b  | ��� l 5M��V�U� Z 5M���T�S� = 5<��� 1  58�R
�R 
rslt� m  8;�� ��� 
 f a l s e� R  ?I�Q�P�
�Q .ascrerr ****      � ****�P  � �O��N
�O 
errn� m  CF�M�M���N  �T  �S  �V  �U  � ��� l     �L�K�J�L  �K  �J  � ��� l      �I���I  �  Get the pages to create   � ��� . G e t   t h e   p a g e s   t o   c r e a t e� ��� l N���H�G� Z  N�����F� > NU��� o  NQ�E�E 0 theday theDay� m  QT�� ���  S a t u r d a y� k  X��� ��� r  X}��� l Xy��D�C� I Xy�B��
�B .gtqpchltns    @   @ ns  � o  XY�A�A 0 weekday_pages  � �@��
�@ 
prmp� l \k��?�>� b  \k��� b  \g��� b  \c��� m  \_�� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  _b�=
�= 
ret � o  cf�<
�< 
ret � m  gj�� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�?  �>  � �;��
�; 
appr� m  nq�� ��� * S p o r t   p a g e s   g e n e r a t o r� �:��9
�: 
mlsl� m  tu�8
�8 boovtrue�9  �D  �C  � o      �7�7 &0 masterstogenerate mastersToGenerate� ��6� Z ~����5�4� = ~���� 1  ~��3
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
appr� m  ���� ��� * S p o r t   p a g e s   g e n e r a t o r� � ��
�  
mlsl� m  ���
� boovtrue�  �*  �)  � o      �� &0 masterstogenerate mastersToGenerate� ��� Z ������� = ����� 1  ���
� 
rslt� m  ���
� boovfals� R  �����
� .ascrerr ****      � ****�  � ���
� 
errn� m  �������  �  �  �  �+  �F  �H  �G  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �   Create the date --   � ��� &   C r e a t e   t h e   d a t e   - -� � � l     ��
�	�  �
  �	     l ���� I  ������ "0 create_pagedate create_pageDate�  �  �  �    l     ����  �  �    l ��� �� I  ���������� "0 create_filedate create_fileDate��  ��  �   ��   	
	 l     ��������  ��  ��  
  l     ��������  ��  ��    l     ����     Generate the pages --    � ,   G e n e r a t e   t h e   p a g e s   - -  l     ��������  ��  ��    l ������ Z  ������ E �� o  ������ &0 masterstogenerate mastersToGenerate m  �� �  T w o   p a g e s k  ��  r  � !  m  ��"" �##  S p r t - B a c k! o      ���� 0 
mastername 
masterName $%$ r  	&'& m  (( �))  1 6 _ B a c k' o      ���� 0 fileslug fileSlug% *+* O  
@,-, k  ?.. /0/ I ��1��
�� .aevtodocnull  �    alis1 o  ����  0 masterdocument masterDocument��  0 232 n 454 I  �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  5  f  3 676 n $898 I  $��:���� 20 changepagenumber_single changePageNumber_single: ;��; m   << �==  1 6��  ��  9  f  7 >?> n %*@A@ I  &*�������� 0 clean_save_l clean_save_L��  ��  A  f  %&? B��B O +?CDC I 3>����E
�� .CoReclosnull���     obj ��  E ��F��
�� 
svopF m  7:��
�� savoyes ��  D l +0G����G 1  +0��
�� 
pacd��  ��  ��  - m  
HH
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  + IJI l AA��������  ��  ��  J KLK r  AHMNM m  ADOO �PP  S p r t - R SN o      ���� 0 
mastername 
masterNameL QRQ r  IPSTS m  ILUU �VV  1 5 _ S p o r tT o      ���� 0 fileslug fileSlugR W��W O  Q�XYX k  W�ZZ [\[ I W\��]��
�� .aevtodocnull  �    alis] o  WX����  0 masterdocument masterDocument��  \ ^_^ n ]b`a` I  ^b�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  a  f  ]^_ bcb n ckded I  dk��f���� 20 changepagenumber_single changePageNumber_singlef g��g m  dghh �ii  1 5��  ��  e  f  cdc jkj n lqlml I  mq�������� 0 clean_save_r clean_save_R��  ��  m  f  lmk n��n O r�opo I z�����q
�� .CoReclosnull���     obj ��  q ��r��
�� 
svopr m  ~���
�� savoyes ��  p l rws����s 1  rw��
�� 
pacd��  ��  ��  Y m  QTtt
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  ��  ��  ��  ��   uvu l     ��������  ��  ��  v wxw l     ��������  ��  ��  x yzy l �n{����{ Z  �n|}����| E ��~~ o  ������ &0 masterstogenerate mastersToGenerate m  ���� ���  T h r e e   p a g e s} k  �j�� ��� r  ����� m  ���� ���  S p r t - B a c k� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  1 6 _ B a c k� o      ���� 0 fileslug fileSlug� ��� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_single changePageNumber_single� ���� m  ���� ���  1 6��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  S p r t - R S� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  1 5 _ S p o r t� o      ���� 0 fileslug fileSlug� ��� O  �#��� k  �"�� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ���� I   ������� 20 changepagenumber_single changePageNumber_single� ���� m   �� ���  1 5��  ��  �  f  � � ��� n ��� I  	�������� 0 clean_save_r clean_save_R��  ��  �  f  	� ���� O "��� I !�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ��
�� savoyes ��  � l ������ 1  �
� 
pacd��  ��  ��  � m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � ��� l $$�~�}�|�~  �}  �|  � ��� r  $+��� m  $'�� ���  S p r t - L S� o      �{�{ 0 
mastername 
masterName� ��� r  ,3��� m  ,/�� ���  1 4 _ S p o r t� o      �z�z 0 fileslug fileSlug� ��y� O  4j��� k  :i�� ��� I :?�x��w
�x .aevtodocnull  �    alis� o  :;�v�v  0 masterdocument masterDocument�w  � ��� n @E��� I  AE�u�t�s�u >0 applymaster_changedate_single applyMaster_changeDate_single�t  �s  �  f  @A� ��� n FN��� I  GN�r��q�r 20 changepagenumber_single changePageNumber_single� ��p� m  GJ�� ���  1 4�p  �q  �  f  FG� ��� n OT��� I  PT�o�n�m�o 0 clean_save_l clean_save_L�n  �m  �  f  OP�  �l  O Ui I ]h�k�j
�k .CoReclosnull���     obj �j   �i�h
�i 
svop m  ad�g
�g savoyes �h   l UZ�f�e 1  UZ�d
�d 
pacd�f  �e  �l  � m  47
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �y  ��  ��  ��  ��  z  l     �c�b�a�c  �b  �a   	
	 l     �`�_�^�`  �_  �^  
  l o
�]�\ Z  o
�[�Z E ov o  or�Y�Y &0 masterstogenerate mastersToGenerate m  ru � , T h r e e   p a g e s   w i t h   s p l i t k  y  r  y� m  y| �  S p r t - B a c k o      �X�X 0 
mastername 
masterName  r  �� m  �� �    1 6 _ B a c k o      �W�W 0 fileslug fileSlug !"! O  ��#$# k  ��%% &'& I ���V(�U
�V .aevtodocnull  �    alis( o  ���T�T  0 masterdocument masterDocument�U  ' )*) n ��+,+ I  ���S�R�Q�S >0 applymaster_changedate_single applyMaster_changeDate_single�R  �Q  ,  f  ��* -.- n ��/0/ I  ���P1�O�P 20 changepagenumber_single changePageNumber_single1 2�N2 m  ��33 �44  1 6�N  �O  0  f  ��. 565 n ��787 I  ���M�L�K�M 0 clean_save_l clean_save_L�L  �K  8  f  ��6 9�J9 O ��:;: I ���I�H<
�I .CoReclosnull���     obj �H  < �G=�F
�G 
svop= m  ���E
�E savoyes �F  ; l ��>�D�C> 1  ���B
�B 
pacd�D  �C  �J  $ m  ��??
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  " @A@ l ���A�@�?�A  �@  �?  A BCB r  ��DED m  ��FF �GG  S p r t - S p l i tE o      �>�> 0 
mastername 
masterNameC HIH r  ��JKJ m  ��LL �MM  1 4 - 1 5 _ S p o r tK o      �=�= 0 fileslug fileSlugI N�<N O  �OPO k  �QQ RSR I ���;T�:
�; .aevtodocnull  �    alisT o  ���9�9  0 masterdocument masterDocument�:  S UVU n ��WXW I  ���8�7�6�8 >0 applymaster_changedate_spread applyMaster_changeDate_spread�7  �6  X  f  ��V YZY n ��[\[ I  ���5]�4�5 20 changepagenumber_spread changePageNumber_spread] ^�3^ m  ��__ �``  1 4�3  �4  \  f  ��Z aba n ��cdc I  ���2�1�0�2 0 clean_save_l clean_save_L�1  �0  d  f  ��b e�/e O �fgf I ��.�-h
�. .CoReclosnull���     obj �-  h �,i�+
�, 
svopi m  � �*
�* savoyes �+  g l ��j�)�(j 1  ���'
�' 
pacd�)  �(  �/  P m  ��kk
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �<  �[  �Z  �]  �\   lml l     �&�%�$�&  �%  �$  m non l     �#�"�!�#  �"  �!  o pqp l +r� �r Z  +st��s E uvu o  �� &0 masterstogenerate mastersToGeneratev m  ww �xx  F o u r   p a g e st k  'yy z{z r  |}| m  ~~ �  S p r t - B a c k} o      �� 0 
mastername 
masterName{ ��� r  $��� m   �� ���  2 4 _ B a c k� o      �� 0 fileslug fileSlug� ��� O  %[��� k  +Z�� ��� I +0���
� .aevtodocnull  �    alis� o  +,��  0 masterdocument masterDocument�  � ��� n 16��� I  26���� >0 applymaster_changedate_single applyMaster_changeDate_single�  �  �  f  12� ��� n 7?��� I  8?���� 20 changepagenumber_single changePageNumber_single� ��� m  8;�� ���  2 4�  �  �  f  78� ��� n @E��� I  AE���� 0 clean_save_l clean_save_L�  �  �  f  @A� ��� O FZ��� I NY���
� .CoReclosnull���     obj �  � �
��	
�
 
svop� m  RU�
� savoyes �	  � l FK���� 1  FK�
� 
pacd�  �  �  � m  %(��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � ��� l \\����  �  �  � ��� r  \c��� m  \_�� ���  S p r t - R S� o      �� 0 
mastername 
masterName� ��� r  dk��� m  dg�� ���  2 3 _ S p o r t� o      � �  0 fileslug fileSlug� ��� O  l���� k  r��� ��� I rw�����
�� .aevtodocnull  �    alis� o  rs����  0 masterdocument masterDocument��  � ��� n x}��� I  y}�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  xy� ��� n ~���� I  �������� 20 changepagenumber_single changePageNumber_single� ���� m  ��� ���  2 3��  ��  �  f  ~� ��� n ����� I  ���������� 0 clean_save_r clean_save_R��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  lo��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  S p r t - L S� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  2 2 _ S p o r t� o      ���� 0 fileslug fileSlug� ��� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_single changePageNumber_single� ���� m  ���� ���  2 2��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � � � l ����������  ��  ��     r  �� m  �� �  S p r t - R a c i n g o      ���� 0 
mastername 
masterName  r  ��	
	 m  �� �  2 1 - R a c i n g
 o      ���� 0 fileslug fileSlug �� O  �' k   &  I  ����
�� .aevtodocnull  �    alis o   ����  0 masterdocument masterDocument��    n  I  �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��    f    n  I  �������� 0 clean_save_r clean_save_R��  ��    f   �� O & I %����
�� .CoReclosnull���     obj ��   �� ��
�� 
svop  m  !��
�� savoyes ��   l !����! 1  ��
�� 
pacd��  ��  ��   m  ��""
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  �  �  �   �  q #$# l     ��������  ��  ��  $ %&% l     ��������  ��  ��  & '(' l ,)����) Z  ,*+����* E ,3,-, o  ,/���� &0 masterstogenerate mastersToGenerate- m  /2.. �// * F o u r   p a g e s   w i t h   s p l i t+ k  600 121 r  6=343 m  6955 �66  S p r t - B a c k4 o      ���� 0 
mastername 
masterName2 787 r  >E9:9 m  >A;; �<<  2 4 _ B a c k: o      ���� 0 fileslug fileSlug8 =>= O  F|?@? k  L{AA BCB I LQ��D��
�� .aevtodocnull  �    alisD o  LM����  0 masterdocument masterDocument��  C EFE n RWGHG I  SW�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  H  f  RSF IJI n X`KLK I  Y`��M���� 20 changepagenumber_single changePageNumber_singleM N��N m  Y\OO �PP  2 4��  ��  L  f  XYJ QRQ n afSTS I  bf�������� 0 clean_save_l clean_save_L��  ��  T  f  abR U��U O g{VWV I oz����X
�� .CoReclosnull���     obj ��  X ��Y��
�� 
svopY m  sv��
�� savoyes ��  W l glZ����Z 1  gl��
�� 
pacd��  ��  ��  @ m  FI[[
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  > \]\ l }}��������  ��  ��  ] ^_^ r  }�`a` m  }�bb �cc  S p r t - S p l i ta o      ���� 0 
mastername 
masterName_ ded r  ��fgf m  ��hh �ii  2 2 - 2 3 _ S p o r tg o      ���� 0 fileslug fileSluge jkj O  ��lml k  ��nn opo I ����q��
�� .aevtodocnull  �    alisq o  ������  0 masterdocument masterDocument��  p rsr n ��tut I  ���������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  u  f  ��s vwv n ��xyx I  ����z���� 20 changepagenumber_spread changePageNumber_spreadz {��{ m  ��|| �}}  2 2��  ��  y  f  ��w ~~ n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  �� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �����~� 1  ���}
�} 
pacd�  �~  ��  m m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  k ��� l ���|�{�z�|  �{  �z  � ��� r  ����� m  ���� ���  S p r t - R a c i n g� o      �y�y 0 
mastername 
masterName� ��� r  ����� m  ���� ���  2 1 - R a c i n g� o      �x�x 0 fileslug fileSlug� ��w� O  ���� k  � �� ��� I ���v��u
�v .aevtodocnull  �    alis� o  ���t�t  0 masterdocument masterDocument�u  � ��� n ����� I  ���s�r�q�s >0 applymaster_changedate_single applyMaster_changeDate_single�r  �q  �  f  ��� ��� n ����� I  ���p�o�n�p 0 clean_save_r clean_save_R�o  �n  �  f  ��� ��m� O � ��� I ���l�k�
�l .CoReclosnull���     obj �k  � �j��i
�j 
svop� m  ���h
�h savoyes �i  � l ����g�f� 1  ���e
�e 
pacd�g  �f  �m  � m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �w  ��  ��  ��  ��  ( ��� l     �d�c�b�d  �c  �b  � ��� l     �a�`�_�a  �`  �_  � ��� l Q��^�]� Z  Q���\�[� E ��� o  	�Z�Z &0 masterstogenerate mastersToGenerate� m  	�� ���  R a c i n g   o n l y� k  M�� ��� r  ��� m  �� ���  S p r t - R a c i n g� o      �Y�Y 0 
mastername 
masterName� ��� r  ��� m  �� ���  2 1 - R a c i n g� o      �X�X 0 fileslug fileSlug� ��W� O   M��� k  &L�� ��� I &+�V��U
�V .aevtodocnull  �    alis� o  &'�T�T  0 masterdocument masterDocument�U  � ��� n ,1��� I  -1�S�R�Q�S >0 applymaster_changedate_single applyMaster_changeDate_single�R  �Q  �  f  ,-� ��� n 27��� I  37�P�O�N�P 0 clean_save_r clean_save_R�O  �N  �  f  23� ��M� O 8L��� I @K�L�K�
�L .CoReclosnull���     obj �K  � �J��I
�J 
svop� m  DG�H
�H savoyes �I  � l 8=��G�F� 1  8=�E
�E 
pacd�G  �F  �M  � m   #��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �W  �\  �[  �^  �]  � ��� l     �D�C�B�D  �C  �B  � ��� l     �A�@�?�A  �@  �?  � ��� l R���>�=� Z  R����<�;� E RY��� o  RU�:�: &0 masterstogenerate mastersToGenerate� m  UX�� ���  E x t r a   l e f t   p a g e� k  \��� ��� r  \c��� m  \_�� ���  S p r t - L S� o      �9�9 0 
mastername 
masterName� ��� r  dk��� m  dg�� ���  L _ X X _ S p o r t� o      �8�8 0 fileslug fileSlug� ��7� O  l���� k  r��� ��� I rw�6��5
�6 .aevtodocnull  �    alis� o  rs�4�4  0 masterdocument masterDocument�5  � ��� n x}   I  y}�3�2�1�3 >0 applymaster_changedate_single applyMaster_changeDate_single�2  �1    f  xy�  n ~� I  ��0�/�0 20 changepagenumber_single changePageNumber_single �. m  � �		  X X�.  �/    f  ~ 

 n �� I  ���-�,�+�- 0 clean_save_l clean_save_L�,  �+    f  �� �* O �� I ���)�(
�) .CoReclosnull���     obj �(   �'�&
�' 
svop m  ���%
�% savoyes �&   l ���$�# 1  ���"
�" 
pacd�$  �#  �*  � m  lo
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �7  �<  �;  �>  �=  �  l     �!� ��!  �   �    l     ����  �  �    l ���� Z  ���� E �� o  ���� &0 masterstogenerate mastersToGenerate m  ��   �!!   E x t r a   r i g h t   p a g e k  ��"" #$# r  ��%&% m  ��'' �((  S p r t - R S& o      �� 0 
mastername 
masterName$ )*) r  ��+,+ m  ��-- �..  R _ X X _ S p o r t, o      �� 0 fileslug fileSlug* /�/ O  ��010 k  ��22 343 I ���5�
� .aevtodocnull  �    alis5 o  ����  0 masterdocument masterDocument�  4 676 n ��898 I  ������ >0 applymaster_changedate_single applyMaster_changeDate_single�  �  9  f  ��7 :;: n ��<=< I  ���>�� 20 changepagenumber_single changePageNumber_single> ?�? m  ��@@ �AA  X X�  �  =  f  ��; BCB n ��DED I  ���
�	��
 0 clean_save_r clean_save_R�	  �  E  f  ��C F�F O ��GHG I ����I
� .CoReclosnull���     obj �  I �J�
� 
svopJ m  ���
� savoyes �  H l ��K�� K 1  ����
�� 
pacd�  �   �  1 m  ��LL
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �  �  �  �  �   MNM l     ��������  ��  ��  N OPO l     ��������  ��  ��  P QRQ l �PS����S Z  �PTU����T E �VWV o  ������ &0 masterstogenerate mastersToGenerateW m  �XX �YY  E x t r a   s p l i tU k  LZZ [\[ r  ]^] m  	__ �``  S p r t - S p l i t^ o      ���� 0 
mastername 
masterName\ aba r  cdc m  ee �ff " S p l i t _ X X - X X _ S p o r td o      ���� 0 fileslug fileSlugb g��g O  Lhih k  Kjj klk I !��m��
�� .aevtodocnull  �    alism o  ����  0 masterdocument masterDocument��  l non n "'pqp I  #'�������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  q  f  "#o rsr n (0tut I  )0��v���� 20 changepagenumber_spread changePageNumber_spreadv w��w m  ),xx �yy  X X��  ��  u  f  ()s z{z n 16|}| I  26�������� 0 clean_save_l clean_save_L��  ��  }  f  12{ ~��~ O 7K� I ?J�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  CF��
�� savoyes ��  � l 7<������ 1  7<��
�� 
pacd��  ��  ��  i m  ��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  ��  ��  ��  ��  R ��� l     ��������  ��  ��  � ��� l Q]������ O Q]��� I W\�����
�� .aevtodocnull  �    alis� o  WX���� $0 freshpagesfolder freshPagesFolder��  � m  QT���                                                                                  MACS   alis    r  Macintosh HD               ĬplH+     t
Finder.app                                                       u��=g�        ����  	                CoreServices    Ĭb\      �=Y�       t   0   /  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   Handler definitions --   � ��� .   H a n d l e r   d e f i n i t i o n s   - -� ��� l     ��������  ��  ��  � ��� l      ������  � X R	Create the date used on the InDesign pages, and deal with some Saturday oddities	   � ��� � 	 C r e a t e   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l   w i t h   s o m e   S a t u r d a y   o d d i t i e s 	� ��� i     ��� I      �������� "0 create_pagedate create_pageDate��  ��  � k    ��� ��� r     
��� J     �� ��� m     �� ���  J a n u a r y� ��� m    �� ��� 
 M a r c h� ��� m    �� ���  M a y� ��� m    �� ���  J u l y� ��� m    �� ���  A u g u s t� ���� m    �� ���  O c t o b e r��  � o      ���� (0 thirtyonedaymonths ThirtyOneDayMonths� ��� r    ��� J    �� ��� m    �� ��� 
 A p r i l� ��� m    �� ���  J u n e� ��� m    �� ���  S e p t e m b e r� ���� m    �� ���  N o v e m b e r��  � o      ���� "0 thirtydaymonths ThirtyDayMonths� ��� l   ��������  ��  ��  � ���� Z   ������� >   ��� o    ���� 0 theday theDay� m    �� ���  S a t u r d a y� l   5���� k    5�� ��� r    3��� l   /������ b    /��� b    +��� b    '��� b    #��� b    ��� b    ��� o    ���� 0 theday theDay� m    �� ���   � o    ���� 0 themonth theMonth� m    "�� ���   � o   # &���� 0 thedate theDate� m   ' *�� ���   � o   + .���� 0 theyear theYear��  ��  � o      ���� 0 pagedate pageDate� ���� l  4 4��������  ��  ��  ��  � + % Does the page date for every weekday   � ��� J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a y� ��� F   8 U��� F   8 K��� =  8 =��� o   8 9���� 0 theday theDay� m   9 <   �  S a t u r d a y� =  @ G o   @ C���� 0 thedate theDate m   C F �  3 0� E  N Q o   N O���� "0 thirtydaymonths ThirtyDayMonths o   O P���� 0 themonth theMonth� 	 l  X �

 k   X �  Y   X ����� l  h � Z  h ����� =  h r n   h p 4   k p��
�� 
cobj o   n o���� 0 i   o   h k���� 0 months_list   o   p q���� 0 themonth theMonth r   u � l  u ���� n   u  !  4   x ��"
�� 
cobj" l  { ~#����# [   { ~$%$ o   { |���� 0 i  % m   | }���� ��  ��  ! o   u x���� 0 months_list  ��  ��   o      ���� 0 secondmonth secondMonth��  ��   V P This repeat block here grabs the name of the next month to use in the page date    �&& �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e�� 0 i   m   [ \����  I  \ c��'��
�� .corecnte****       ****' o   \ _���� 0 months_list  ��  ��   ()( l  � �*+,* r   � �-.- l  � �/����/ b   � �010 b   � �232 b   � �454 b   � �676 b   � �898 m   � �:: �;;   S a t u r d a y / S u n d a y  9 o   � ����� 0 themonth theMonth7 m   � �<< �==    3 0 -5 o   � ����� 0 secondmonth secondMonth3 m   � �>> �??    1  1 o   � ����� 0 theyear theYear��  ��  . o      ���� 0 pagedate pageDate+ P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"   , �@@ �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 ") A��A l  � ���������  ��  ��  ��   I C Deals with Saturdays at the end of 30-day months (uses list above)    �BB �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )	 CDC F   � �EFE F   � �GHG =  � �IJI o   � ����� 0 theday theDayJ m   � �KK �LL  S a t u r d a yH =  � �MNM o   � ����� 0 thedate theDateN m   � �OO �PP  3 1F E  � �QRQ o   � ����� (0 thirtyonedaymonths ThirtyOneDayMonthsR o   � ����� 0 themonth theMonthD STS l  �UVWU k   �XX YZY Y   � �[��\]��[ Z  � �^_����^ =  � �`a` n   � �bcb 4   � ���d
�� 
cobjd o   � ����� 0 i  c o   � ����� 0 months_list  a o   � ����� 0 themonth theMonth_ r   � �efe l  � �g����g n   � �hih 4   � ���j
�� 
cobjj l  � �k����k [   � �lml o   � ��� 0 i  m m   � ��~�~ ��  ��  i o   � ��}�} 0 months_list  ��  ��  f o      �|�| 0 secondmonth secondMonth��  ��  �� 0 i  \ m   � ��{�{ ] I  � ��zn�y
�z .corecnte****       ****n o   � ��x�x 0 months_list  �y  ��  Z opo r   �qrq l  �s�w�vs b   �tut b   �	vwv b   �xyx b   �z{z b   � �|}| m   � �~~ �   S a t u r d a y / S u n d a y  } o   � ��u�u 0 themonth theMonth{ m   ��� ���    3 1 -y o  �t�t 0 secondmonth secondMonthw m  �� ���    1  u o  	�s�s 0 theyear theYear�w  �v  r o      �r�r 0 pagedate pageDatep ��q� l �p�o�n�p  �o  �n  �q  V I C Deals with Saturdays at the end of 31-day months (uses list above)   W ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )T ��� F  5��� F  )��� = ��� o  �m�m 0 theday theDay� m  �� ���  S a t u r d a y� ? %��� o  !�l�l 0 thedate theDate� m  !$�� ���  2 7� = ,1��� o  ,-�k�k 0 themonth theMonth� m  -0�� ���  F e b r u a r y� ��� l 8M���� k  8M�� ��� r  8K��� l 8G��j�i� b  8G��� b  8C��� b  8?��� m  8;�� ��� 2 S a t u r d a y / S u n d a y   F e b r u a r y  � o  ;>�h�h 0 thedate theDate� m  ?B�� ���  - M a r c h   1  � o  CF�g�g 0 theyear theYear�j  �i  � o      �f�f 0 pagedate pageDate� ��e� l LL�d�c�b�d  �c  �b  �e  � � | Deals with Saturdays at the end of February. Fun fact: it�s not that precise, but won�t turn out the wrong date until 2032.   � ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   F u n   f a c t :   i t  s   n o t   t h a t   p r e c i s e ,   b u t   w o n  t   t u r n   o u t   t h e   w r o n g   d a t e   u n t i l   2 0 3 2 .� ��� F  Po��� F  Pc��� = PU��� o  PQ�a�a 0 theday theDay� m  QT�� ���  S a t u r d a y� = X_��� o  X[�`�` 0 thedate theDate� m  [^�� ���  3 1� = fk��� o  fg�_�_ 0 themonth theMonth� m  gj�� ���  D e c e m b e r� ��� l r����� k  r��� ��� r  r���� l r���^�]� b  r���� b  r}��� b  ry��� m  ru�� ��� L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  � o  ux�\�\ 0 theyear theYear� m  y|�� ���  -� l }���[�Z� [  }���� o  }��Y�Y 0 theyear theYear� m  ���X�X �[  �Z  �^  �]  � o      �W�W 0 pagedate pageDate� ��V� l ���U�T�S�U  �T  �S  �V  � 2 , Deals with Saturdays at the end of December   � ��� X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e r� ��� = ����� o  ���R�R 0 theday theDay� m  ���� ���  S a t u r d a y� ��Q� l ������ k  ���� ��� r  ����� l ����P�O� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���   S a t u r d a y / S u n d a y  � o  ���N�N 0 themonth theMonth� m  ���� ���   � o  ���M�M 0 thedate theDate� m  ���� ���  -� l ����L�K� [  ��   o  ���J�J 0 thedate theDate m  ���I�I �L  �K  � m  �� �   � o  ���H�H 0 theyear theYear�P  �O  � o      �G�G 0 pagedate pageDate� �F l ���E�D�C�E  �D  �C  �F  � 3 - Does the page date for every normal Saturday   � � Z   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y�Q  ��  ��  �  l     �B�A�@�B  �A  �@   	 l     �?�>�=�?  �>  �=  	 

 l      �<�<   @ :	Create the short date to name the created InDesign files	    � t 	 C r e a t e   t h e   s h o r t   d a t e   t o   n a m e   t h e   c r e a t e d   I n D e s i g n   f i l e s 	  i     I      �;�:�9�; "0 create_filedate create_fileDate�:  �9   k    �  r      o     �8�8 0 thedate theDate o      �7�7 0 numdate numDate  l   �6�5�4�6  �5  �4    Z   �3�2 =    o    �1�1 0 thedate theDate m       �!!  1 r   
 "#" m   
 $$ �%%  0 1# o      �0�0 0 numdate numDate�3  �2   &'& Z   ()�/�.( =   *+* o    �-�- 0 thedate theDate+ m    ,, �--  2) r    ./. m    00 �11  0 2/ o      �,�, 0 numdate numDate�/  �.  ' 232 Z    -45�+�*4 =    #676 o     !�)�) 0 thedate theDate7 m   ! "88 �99  35 r   & ):;: m   & '<< �==  0 3; o      �(�( 0 numdate numDate�+  �*  3 >?> Z  . ;@A�'�&@ =  . 1BCB o   . /�%�% 0 thedate theDateC m   / 0DD �EE  4A r   4 7FGF m   4 5HH �II  0 4G o      �$�$ 0 numdate numDate�'  �&  ? JKJ Z  < ILM�#�"L =  < ?NON o   < =�!�! 0 thedate theDateO m   = >PP �QQ  5M r   B ERSR m   B CTT �UU  0 5S o      � �  0 numdate numDate�#  �"  K VWV Z  J WXY��X =  J MZ[Z o   J K�� 0 thedate theDate[ m   K L\\ �]]  6Y r   P S^_^ m   P Q`` �aa  0 6_ o      �� 0 numdate numDate�  �  W bcb Z  X ede��d =  X [fgf o   X Y�� 0 thedate theDateg m   Y Zhh �ii  7e r   ^ ajkj m   ^ _ll �mm  0 7k o      �� 0 numdate numDate�  �  c non Z  f upq��p =  f irsr o   f g�� 0 thedate theDates m   g htt �uu  8q r   l qvwv m   l oxx �yy  0 8w o      �� 0 numdate numDate�  �  o z{z Z  v �|}��| =  v {~~ o   v w�� 0 thedate theDate m   w z�� ���  9} r   ~ ���� m   ~ ��� ���  0 9� o      �� 0 numdate numDate�  �  { ��� l  � �����  �  �  � ��� Z  � ������ =  � ���� o   � ��
�
 0 themonth theMonth� m   � ��� ���  J a n u a r y� r   � ���� m   � ��� ���  0 1� o      �	�	 0 nummonth numMonth�  �  � ��� Z  � ������ =  � ���� o   � ��� 0 themonth theMonth� m   � ��� ���  F e b r u a r y� r   � ���� m   � ��� ���  0 2� o      �� 0 nummonth numMonth�  �  � ��� Z  � ������ =  � ���� o   � ��� 0 themonth theMonth� m   � ��� ��� 
 M a r c h� r   � ���� m   � ��� ���  0 3� o      �� 0 nummonth numMonth�  �  � ��� Z  � ���� ��� =  � ���� o   � ����� 0 themonth theMonth� m   � ��� ��� 
 A p r i l� r   � ���� m   � ��� ���  0 4� o      ���� 0 nummonth numMonth�   ��  � ��� Z  � �������� =  � ���� o   � ����� 0 themonth theMonth� m   � ��� ���  M a y� r   � ���� m   � ��� ���  0 5� o      ���� 0 nummonth numMonth��  ��  � ��� Z  � �������� =  � ���� o   � ����� 0 themonth theMonth� m   � ��� ���  J u n e� r   � ���� m   � ��� ���  0 6� o      ���� 0 nummonth numMonth��  ��  � ��� Z  ������� =  ��� o   ���� 0 themonth theMonth� m  �� ���  J u l y� r  
��� m  
�� ���  0 7� o      ���� 0 nummonth numMonth��  ��  � ��� Z '������� = ��� o  ���� 0 themonth theMonth� m  �� ���  A u g u s t� r  #��� m  !�� ���  0 8� o      ���� 0 nummonth numMonth��  ��  � ��� Z (;������� = (/��� o  (+���� 0 themonth theMonth� m  +.�� ���  S e p t e m b e r� r  27��� m  25�� ���  0 9� o      ���� 0 nummonth numMonth��  ��  � ��� Z <O������� = <C��� o  <?���� 0 themonth theMonth� m  ?B�� ���  O c t o b e r� r  FK��� m  FI�� ���  1 0� o      ���� 0 nummonth numMonth��  ��  �    Z Pc���� = PW o  PS���� 0 themonth theMonth m  SV �  N o v e m b e r r  Z_	 m  Z]

 �  1 1	 o      ���� 0 nummonth numMonth��  ��    Z dw���� = dk o  dg���� 0 themonth theMonth m  gj �  D e c e m b e r r  ns m  nq �  1 2 o      ���� 0 nummonth numMonth��  ��    l xx��������  ��  ��    r  x� b  x� b  x� !  b  x"#" b  x}$%$ o  xy���� 0 numdate numDate% m  y|&& �''  -# o  }~���� 0 nummonth numMonth! m  �(( �))  - o  ������ 0 theyear theYear o      ���� 0 filedate fileDate *��* l ����������  ��  ��  ��   +,+ l     ��������  ��  ��  , -.- l     ��������  ��  ��  . /0/ l      ��12��  1 ` Z	Single page: Apply a master, change the date and override everything on the "Work" layer	   2 �33 � 	 S i n g l e   p a g e :   A p p l y   a   m a s t e r ,   c h a n g e   t h e   d a t e   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	0 454 i    676 I      �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  7 O     c898 O    b:;: k   
 a<< =>= r   
 ?@? 4   
 ��A
�� 
msprA o    ���� 0 
mastername 
masterName@ n      BCB 1    ��
�� 
pmasC 4    ��D
�� 
pageD m    ���� > EFE I   &��GH
�� .InESovrrobj         obj G n    IJI 4    ��K
�� 
txtfK m    LL �MM  E d i t i o n   d a t eJ 4    ��N
�� 
msprN o    ���� 0 
mastername 
masterNameH ��O��
�� 
dPgeO 4    "��P
�� 
pageP m     !���� ��  F QRQ r   ' 2STS o   ' (���� 0 pagedate pageDateT l     U����U n      VWV 1   / 1��
�� 
pcntW n   ( /XYX 4   , /��Z
�� 
txtfZ m   - .[[ �\\  E d i t i o n   d a t eY 4   ( ,��]
�� 
page] m   * +���� ��  ��  R ^��^ Q   3 a_`��_ I  6 X��ab
�� .InESovrrobj         obj a l  6 Oc����c 6  6 Oded n   6 >fgf 2   < >��
�� 
cobjg n   6 <hih 1   : <��
�� 
mpgsi 4   6 :��j
�� 
pagej m   8 9���� e =  ? Nklk n  @ Hmnm 1   D H��
�� 
pnamn 1   @ D��
�� 
pilrl m   I Moo �pp  W o r k��  ��  b ��q��
�� 
dPgeq 4   P T��r
�� 
pager m   R S���� ��  ` R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ; l   s����s 1    ��
�� 
pacd��  ��  9 m     tt
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  5 uvu l     ��������  ��  ��  v wxw l     ��������  ��  ��  x yzy l      ��{|��  { } w	Spreads: Create a new spread from a master, change the date on both pages and override everything on the "Work" layer	   | �}} � 	 S p r e a d s :   C r e a t e   a   n e w   s p r e a d   f r o m   a   m a s t e r ,   c h a n g e   t h e   d a t e   o n   b o t h   p a g e s   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	z ~~ i    ��� I      �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  � O     ���� O    ���� k   
 ��� ��� I  
 �����
�� .corecrel****      � null��  � ����
�� 
kocl� m    ��
�� 
sprd� �����
�� 
prdt� K    �� �����
�� 
pmas� 4    ���
�� 
mspr� o    ���� 0 
mastername 
masterName��  ��  � ��� I   *����
�� .InESovrrobj         obj � n    !��� 4    !���
�� 
txtf� m     �� ���  L - E d i t i o n   d a t e� 4    ���
�� 
mspr� o    ���� 0 
mastername 
masterName� �����
�� 
dPge� 4   " &���
�� 
page� m   $ %���� ��  � ��� I  + ;����
�� .InESovrrobj         obj � n   + 2��� 4   / 2���
�� 
txtf� m   0 1�� ���  R - E d i t i o n   d a t e� 4   + /���
�� 
mspr� o   - .�� 0 
mastername 
masterName� �~��}
�~ 
dPge� 4   3 7�|�
�| 
page� m   5 6�{�{ �}  � ��� r   < M��� o   < ?�z�z 0 pagedate pageDate� l     ��y�x� n      ��� 1   H L�w
�w 
pcnt� n   ? H��� 4   C H�v�
�v 
txtf� m   D G�� ���  L - E d i t i o n   d a t e� 4   ? C�u�
�u 
page� m   A B�t�t �y  �x  � ��� r   N _��� o   N Q�s�s 0 pagedate pageDate� l     ��r�q� n      ��� 1   Z ^�p
�p 
pcnt� n   Q Z��� 4   U Z�o�
�o 
txtf� m   V Y�� ���  R - E d i t i o n   d a t e� 4   Q U�n�
�n 
page� m   S T�m�m �r  �q  � ��l� Q   ` ����k� k   c ��� ��� I  c ��j��
�j .InESovrrobj         obj � l  c ���i�h� 6  c ���� n   c o��� 2   k o�g
�g 
cobj� n   c k��� 1   g k�f
�f 
mpgs� 4   c g�e�
�e 
page� m   e f�d�d � =  r ���� n  s {��� 1   w {�c
�c 
pnam� 1   s w�b
�b 
pilr� m   | ��� ���  W o r k�i  �h  � �a��`
�a 
dPge� 4   � ��_�
�_ 
page� m   � ��^�^ �`  � ��]� I  � ��\��
�\ .InESovrrobj         obj � l  � ���[�Z� 6  � ���� n   � ���� 2   � ��Y
�Y 
cobj� n   � ���� 1   � ��X
�X 
mpgs� 4   � ��W�
�W 
page� m   � ��V�V � =  � ���� n  � ���� 1   � ��U
�U 
pnam� 1   � ��T
�T 
pilr� m   � ��� ���  W o r k�[  �Z  � �S��R
�S 
dPge� 4   � ��Q�
�Q 
page� m   � ��P�P �R  �]  � R      �O�N�M
�O .ascrerr ****      � ****�N  �M  �k  �l  � l   ��L�K� 1    �J
�J 
pacd�L  �K  � m     ��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��   ��� l     �I�H�G�I  �H  �G  � ��� l     �F�E�D�F  �E  �D  � ��� l      �C���C  � � }	Single page: Change the page number to the one specified in the handler call - e.g. changePageNumber_single("3") for page 3	   � ��� � 	 S i n g l e   p a g e :   C h a n g e   t h e   p a g e   n u m b e r   t o   t h e   o n e   s p e c i f i e d   i n   t h e   h a n d l e r   c a l l   -   e . g .   c h a n g e P a g e N u m b e r _ s i n g l e ( " 3 " )   f o r   p a g e   3 	� ��� i    ��� I      �B��A�B 20 changepagenumber_single changePageNumber_single� ��@� o      �?�? 0 
pagenumber 
pageNumber�@  �A  � O     (��� O    '	 		  k   
 &		 			 I  
 �>		
�> .InESovrrobj         obj 	 n   
 			 4    �=		
�= 
txtf		 m    	
	
 �		  P a g e   n u m b e r	 4   
 �<	
�< 
mspr	 o    �;�; 0 
mastername 
masterName	 �:	�9
�: 
dPge	 4    �8	
�8 
page	 m    �7�7 �9  	 	�6	 r    &			 o    �5�5 0 
pagenumber 
pageNumber	 l     	�4�3	 n      			 1   # %�2
�2 
pcnt	 n    #			 4     #�1	
�1 
txtf	 m   ! "		 �		  P a g e   n u m b e r	 4     �0	
�0 
page	 m    �/�/ �4  �3  �6  	 l   	�.�-	 1    �,
�, 
pacd�.  �-  � m     		
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � 			 l     �+�*�)�+  �*  �)  	 		 	 l     �(�'�&�(  �'  �&  	  	!	"	! l      �%	#	$�%  	# � �	Spreads: Change the page number on both pages. The handler call asks for the left-hand page�s number - e.g. changePageNumber_spread("8") for pages 8 and 9	   	$ �	%	%8 	 S p r e a d s :   C h a n g e   t h e   p a g e   n u m b e r   o n   b o t h   p a g e s .   T h e   h a n d l e r   c a l l   a s k s   f o r   t h e   l e f t - h a n d   p a g e  s   n u m b e r   -   e . g .   c h a n g e P a g e N u m b e r _ s p r e a d ( " 8 " )   f o r   p a g e s   8   a n d   9 		" 	&	'	& i    	(	)	( I      �$	*�#�$ 20 changepagenumber_spread changePageNumber_spread	* 	+�"	+ o      �!�!  0 leftpagenumber leftPageNumber�"  �#  	) O     I	,	-	, O    H	.	/	. k   
 G	0	0 	1	2	1 I  
 � 	3	4
�  .InESovrrobj         obj 	3 n   
 	5	6	5 4    �	7
� 
txtf	7 m    	8	8 �	9	9  L - P a g e   n u m b e r	6 4   
 �	:
� 
mspr	: o    �� 0 
mastername 
masterName	4 �	;�
� 
dPge	; 4    �	<
� 
page	< m    �� �  	2 	=	>	= I   +�	?	@
� .InESovrrobj         obj 	? n    "	A	B	A 4    "�	C
� 
txtf	C m     !	D	D �	E	E  R - P a g e   n u m b e r	B 4    �	F
� 
mspr	F o    �� 0 
mastername 
masterName	@ �	G�
� 
dPge	G 4   # '�	H
� 
page	H m   % &�� �  	> 	I	J	I r   , 7	K	L	K o   , -��  0 leftpagenumber leftPageNumber	L l     	M��	M n      	N	O	N 1   4 6�
� 
pcnt	O n   - 4	P	Q	P 4   1 4�	R
� 
txtf	R m   2 3	S	S �	T	T  L - P a g e   n u m b e r	Q 4   - 1�	U
� 
page	U m   / 0�
�
 �  �  	J 	V�		V r   8 G	W	X	W l  8 =	Y��	Y c   8 =	Z	[	Z l  8 ;	\��	\ [   8 ;	]	^	] o   8 9��  0 leftpagenumber leftPageNumber	^ m   9 :�� �  �  	[ m   ; <�
� 
TEXT�  �  	X l     	_�� 	_ n      	`	a	` 1   D F��
�� 
pcnt	a n   = D	b	c	b 4   A D��	d
�� 
txtf	d m   B C	e	e �	f	f  R - P a g e   n u m b e r	c 4   = A��	g
�� 
page	g m   ? @���� �  �   �	  	/ l   	h����	h 1    ��
�� 
pacd��  ��  	- m     	i	i
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  	' 	j	k	j l     ��������  ��  ��  	k 	l	m	l l     ��������  ��  ��  	m 	n	o	n l      ��	p	q��  	p � �	Spreads and left-hand single pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   	q �	r	r� 	 S p r e a d s   a n d   l e f t - h a n d   s i n g l e   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 		o 	s	t	s i    	u	v	u I      �������� 0 clean_save_l clean_save_L��  ��  	v O     3	w	x	w O    2	y	z	y k   
 1	{	{ 	|	}	| r   
 	~		~ m   
 ��
�� boovtrue	 n      	�	�	� 1    ��
�� 
plck	� 4    ��	�
�� 
layr	� m    	�	� �	�	� ( D a t e   a n d   p a g e   n u m b e r	} 	�	�	� r    	�	�	� m    	�	� �	�	�  W o r k	� 1    ��
�� 
pacl	� 	�	�	� r    !	�	�	� J    	�	� 	�	�	� m    	�	� @EB�
(F	� 	���	� m    	�	� @&      ��  	� l     	�����	� 1     ��
�� 
zero��  ��  	� 	���	� I  " 1����	�
�� .CoResavedocu        obj ��  	� ��	���
�� 
kfil	� b   $ -	�	�	� b   $ +	�	�	� b   $ )	�	�	� b   $ '	�	�	� o   $ %���� $0 freshpagesfolder freshPagesFolder	� o   % &���� 0 fileslug fileSlug	� m   ' (	�	� �	�	�  _	� o   ) *���� 0 filedate fileDate	� m   + ,	�	� �	�	� 
 . i n d d��  ��  	z l   	�����	� 1    ��
�� 
pacd��  ��  	x m     	�	�
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  	t 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l      ��	�	���  	� � �	Right-hand pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   	� �	�	�z 	 R i g h t - h a n d   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 		� 	���	� i    	�	�	� I      �������� 0 clean_save_r clean_save_R��  ��  	� O     3	�	�	� O    2	�	�	� k   
 1	�	� 	�	�	� r   
 	�	�	� m   
 ��
�� boovtrue	� n      	�	�	� 1    ��
�� 
plck	� 4    ��	�
�� 
layr	� m    	�	� �	�	� ( D a t e   a n d   p a g e   n u m b e r	� 	�	�	� r    	�	�	� m    	�	� �	�	�  W o r k	� 1    ��
�� 
pacl	� 	�	�	� r    !	�	�	� J    	�	� 	�	�	� m    	�	� @9�0S	� 	���	� m    	�	� @&      ��  	� l     	�����	� 1     ��
�� 
zero��  ��  	� 	���	� I  " 1����	�
�� .CoResavedocu        obj ��  	� ��	���
�� 
kfil	� b   $ -	�	�	� b   $ +	�	�	� b   $ )	�	�	� b   $ '	�	�	� o   $ %���� $0 freshpagesfolder freshPagesFolder	� o   % &���� 0 fileslug fileSlug	� m   ' (	�	� �	�	�  _	� o   ) *���� 0 filedate fileDate	� m   + ,	�	� �	�	� 
 . i n d d��  ��  	� l   	�����	� 1    ��
�� 
pacd��  ��  	� m     	�	�
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��       ��	�	�	�	�	�	�	�	�	�	���  	� 	�������������������� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate�� >0 applymaster_changedate_single applyMaster_changeDate_single�� >0 applymaster_changedate_spread applyMaster_changeDate_spread�� 20 changepagenumber_single changePageNumber_single�� 20 changepagenumber_spread changePageNumber_spread�� 0 clean_save_l clean_save_L�� 0 clean_save_r clean_save_R
�� .aevtoappnull  �   � ****	� �������	�	����� "0 create_pagedate create_pageDate��  ��  	� ���������� (0 thirtyonedaymonths ThirtyOneDayMonths�� "0 thirtydaymonths ThirtyDayMonths�� 0 i  �� 0 secondmonth secondMonth	� 2���������������������������� ��������:<>KO~������������������ �� �� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 pagedate pageDate
�� 
bool�� 0 months_list  
�� .corecnte****       ****
�� 
cobj����������vE�O�����vE�O��  ��%�%a %_ %a %_ %E` OPY��a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa �%a %�%a %_ %E` OPY�a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa  �%a !%�%a "%_ %E` OPY ��a # 	 _ a $a &	 �a % a & a &_ %a '%_ %E` OPY o�a ( 	 _ a ) a &	 �a * a & a +_ %a ,%_ k%E` OPY 3�a -  *a .�%a /%_ %a 0%_ k%a 1%_ %E` OPY h	� ������	�	����� "0 create_filedate create_fileDate��  ��  	� ������ 0 numdate numDate�� 0 nummonth numMonth	� 0�� $,08<DHPT\`hltx������������������������
&(������ 0 thedate theDate�� 0 themonth theMonth�� 0 theyear theYear�� 0 filedate fileDate����E�O��  �E�Y hO��  �E�Y hO��  �E�Y hO��  �E�Y hO��  �E�Y hO��  �E�Y hO��  �E�Y hO��  
a E�Y hO�a   
a E�Y hO_ a   
a E�Y hO_ a   
a E�Y hO_ a   
a E�Y hO_ a   
a E�Y hO_ a   
a E�Y hO_ a   
a E�Y hO_ a    
a !E�Y hO_ a "  
a #E�Y hO_ a $  
a %E�Y hO_ a &  
a 'E�Y hO_ a (  
a )E�Y hO_ a *  
a +E�Y hO�a ,%�%a -%_ .%E` /OP	� ��7����	�	����� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  	�  	� t������������L������[������	�����o����
�� 
pacd
�� 
mspr�� 0 
mastername 
masterName
�� 
page
�� 
pmas
�� 
txtf
�� 
dPge
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt
�� 
mpgs
�� 
cobj	�  
�� 
pilr
�� 
pnam��  ��  �� d� `*�, Y*��/*�k/�,FO*��/��/�*�k/l 	O�*�k/��/�,FO '*�k/�,�-�[a ,a ,\Za 81�*�k/l 	W X  hUU	� �������	�	���� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  	�  	� ��~�}�|�{�z�y�x�w�v�u��t�s�r��q��p��o�n	��m�l���k�j
�~ 
pacd
�} 
kocl
�| 
sprd
�{ 
prdt
�z 
pmas
�y 
mspr�x 0 
mastername 
masterName�w 
�v .corecrel****      � null
�u 
txtf
�t 
dPge
�s 
page
�r .InESovrrobj         obj �q 0 pagedate pageDate
�p 
pcnt
�o 
mpgs
�n 
cobj
�m 
pilr
�l 
pnam�k  �j  � �� �*�, �*����*��/l� 	O*��/��/�*�l/l O*��/��/�*�m/l O_ *�l/�a /a ,FO_ *�m/�a /a ,FO V*�l/a ,a -a [a ,a ,\Za 81�*�l/l O*�m/a ,a -a [a ,a ,\Za 81�*�m/l W X  hUU	� �i��h�g	�	��f�i 20 changepagenumber_single changePageNumber_single�h �e	��e 	�  �d�d 0 
pagenumber 
pageNumber�g  	� �c�c 0 
pagenumber 
pageNumber	� 	�b�a�`�_	
�^�]�\	�[
�b 
pacd
�a 
mspr�` 0 
mastername 
masterName
�_ 
txtf
�^ 
dPge
�] 
page
�\ .InESovrrobj         obj 
�[ 
pcnt�f )� %*�, *��/��/�*�k/l O�*�k/��/�,FUU	� �Z	)�Y�X	�	��W�Z 20 changepagenumber_spread changePageNumber_spread�Y �V	��V 	�  �U�U  0 leftpagenumber leftPageNumber�X  	� �T�T  0 leftpagenumber leftPageNumber	� 	i�S�R�Q�P	8�O�N�M	D	S�L�K	e
�S 
pacd
�R 
mspr�Q 0 
mastername 
masterName
�P 
txtf
�O 
dPge
�N 
page
�M .InESovrrobj         obj 
�L 
pcnt
�K 
TEXT�W J� F*�, ?*��/��/�*�l/l O*��/��/�*�m/l O�*�l/��/�,FO�k�&*�m/��/�,FUU	� �J	v�I�H	�	��G�J 0 clean_save_l clean_save_L�I  �H  	�  	� 	��F�E	��D	��C	�	��B�A�@�?	��>	��=
�F 
pacd
�E 
layr
�D 
plck
�C 
pacl
�B 
zero
�A 
kfil�@ $0 freshpagesfolder freshPagesFolder�? 0 fileslug fileSlug�> 0 filedate fileDate
�= .CoResavedocu        obj �G 4� 0*�, )e*��/�,FO�*�,FO��lv*�,FO*���%�%�%�%l UU	� �<	��;�:	�	��9�< 0 clean_save_r clean_save_R�;  �:  	�  	� 	��8�7	��6	��5	�	��4�3�2�1	��0	��/
�8 
pacd
�7 
layr
�6 
plck
�5 
pacl
�4 
zero
�3 
kfil�2 $0 freshpagesfolder freshPagesFolder�1 0 fileslug fileSlug�0 0 filedate fileDate
�/ .CoResavedocu        obj �9 4� 0*�, )e*��/�,FO�*�,FO��lv*�,FO*���%�%�%�%l UU	� �.
 �-�,

�+
�. .aevtoappnull  �   � ****
  k    ]

  t

  {

  �

  �

  �

  �
	
	 "



 3

 >

 O

 Z

 p

 {

 �

 �

 

 

 

 y

 

 p

 '

 �

 �

 

 Q

 ��*�*  �-  �,  
  
 � y�) ��( � � � � � ��'�& � � � � � ��% � � � � � ��$ � � � � � � �	�#�"�!.� 1�����:��JM�Vg�kn���w������������������"�(�H��
<�	�����OUh�����������3FL�_�w~��������.5;Obh|�������� '-@X_ex��) $0 freshpagesfolder freshPagesFolder�(  0 masterdocument masterDocument�' �& 0 weekday_pages  �% 0 weekend_pages  �$ 0 	days_list  �# �" 0 months_list  
�! 
prmp
�  
appr� 
� .gtqpchltns    @   @ ns  
� 
TEXT� 0 theday theDay
� 
rslt
� 
errn���� 0 themonth theMonth
� 
dtxt
� .sysodlogaskr        TEXT
� 
ttxt� 0 thedate theDate� 0 theyear theYear
� 
ret 
� 
mlsl� &0 masterstogenerate mastersToGenerate� "0 create_pagedate create_pageDate� "0 create_filedate create_fileDate� 0 
mastername 
masterName� 0 fileslug fileSlug
� .aevtodocnull  �    alis�
 >0 applymaster_changedate_single applyMaster_changeDate_single�	 20 changepagenumber_single changePageNumber_single� 0 clean_save_l clean_save_L
� 
pacd
� 
svop
� savoyes 
� .CoReclosnull���     obj � 0 clean_save_r clean_save_R� >0 applymaster_changedate_spread applyMaster_changeDate_spread� 20 changepagenumber_spread changePageNumber_spread�+^�E�O�E�O�������vE�O����a a �vE` Oa a a a a a �vE` Oa a a a a a a  a !a "a #a $a %a &vE` 'O_ a (a )a *a +a , -a .&E` /O_ 0a 1  )a 2a 3lhY hO_ 'a (a 4a *a 5a , -a .&E` 6O_ 0a 7  )a 2a 3lhY hOa 8a 9a :a *a ;a , <a =,a .&E` >O_ 0a ?  )a 2a 3lhY hOa @a 9a Aa *a Ba , <a =,a .&E` CO_ 0a D  )a 2a 3lhY hO_ /a E A�a (a F_ G%_ G%a H%a *a Ia Je� -E` KO_ 0f  )a 2a 3lhY hY N_ /a L  C_ a (a M_ G%_ G%a N%a *a Oa Je� -E` KO_ 0f  )a 2a 3lhY hY hO*j+ PO*j+ QO_ Ka R �a SE` TOa UE` VOa W 1�j XO)j+ YO)a Zk+ [O)j+ \O*a ], *a ^a _l `UUOa aE` TOa bE` VOa W 1�j XO)j+ YO)a ck+ [O)j+ dO*a ], *a ^a _l `UUY hO_ Ka e �a fE` TOa gE` VOa W 1�j XO)j+ YO)a hk+ [O)j+ \O*a ], *a ^a _l `UUOa iE` TOa jE` VOa W 1�j XO)j+ YO)a kk+ [O)j+ dO*a ], *a ^a _l `UUOa lE` TOa mE` VOa W 1�j XO)j+ YO)a nk+ [O)j+ \O*a ], *a ^a _l `UUY hO_ Ka o �a pE` TOa qE` VOa W 1�j XO)j+ YO)a rk+ [O)j+ \O*a ], *a ^a _l `UUOa sE` TOa tE` VOa W 1�j XO)j+ uO)a vk+ wO)j+ \O*a ], *a ^a _l `UUY hO_ Ka xa yE` TOa zE` VOa W 1�j XO)j+ YO)a {k+ [O)j+ \O*a ], *a ^a _l `UUOa |E` TOa }E` VOa W 1�j XO)j+ YO)a ~k+ [O)j+ dO*a ], *a ^a _l `UUOa E` TOa �E` VOa W 1�j XO)j+ YO)a �k+ [O)j+ \O*a ], *a ^a _l `UUOa �E` TOa �E` VOa W (�j XO)j+ YO)j+ dO*a ], *a ^a _l `UUY hO_ Ka � �a �E` TOa �E` VOa W 1�j XO)j+ YO)a �k+ [O)j+ \O*a ], *a ^a _l `UUOa �E` TOa �E` VOa W 1�j XO)j+ uO)a �k+ wO)j+ \O*a ], *a ^a _l `UUOa �E` TOa �E` VOa W (�j XO)j+ YO)j+ dO*a ], *a ^a _l `UUY hO_ Ka � Ba �E` TOa �E` VOa W (�j XO)j+ YO)j+ dO*a ], *a ^a _l `UUY hO_ Ka � Ka �E` TOa �E` VOa W 1�j XO)j+ YO)a �k+ [O)j+ \O*a ], *a ^a _l `UUY hO_ Ka � Ka �E` TOa �E` VOa W 1�j XO)j+ YO)a �k+ [O)j+ dO*a ], *a ^a _l `UUY hO_ Ka � Ka �E` TOa �E` VOa W 1�j XO)j+ uO)a �k+ wO)j+ \O*a ], *a ^a _l `UUY hOa � �j XUascr  ��ޭ