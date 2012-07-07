FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ? 9	Big Spike, a better Morning Star features-page generator     � 	 	 r 	 B i g   S p i k e ,   a   b e t t e r   M o r n i n g   S t a r   f e a t u r e s - p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��    " 	Created on			June 16th 2012     �   8 	 C r e a t e d   o n 	 	 	 J u n e   1 6 t h   2 0 1 2      l     ��  ��     	Last updated		     �    	 L a s t   u p d a t e d 	 	      l     ��������  ��  ��        l      ��   ��    � � Description: This generates the pages needed by the features and arts desks. It has a different name because it�s written in a very different way to previous scripts and isn�t finished.	      � ! !v   D e s c r i p t i o n :   T h i s   g e n e r a t e s   t h e   p a g e s   n e e d e d   b y   t h e   f e a t u r e s   a n d   a r t s   d e s k s .   I t   h a s   a   d i f f e r e n t   n a m e   b e c a u s e   i t  s   w r i t t e n   i n   a   v e r y   d i f f e r e n t   w a y   t o   p r e v i o u s   s c r i p t s   a n d   i s n  t   f i n i s h e d . 	   " # " l     ��������  ��  ��   #  $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( D > Global variables that are needed in handlers at some point --    ) � * * |   G l o b a l   v a r i a b l e s   t h a t   a r e   n e e d e d   i n   h a n d l e r s   a t   s o m e   p o i n t   - - '  + , + p       - - ������ 0 theday theDay��   ,  . / . p       0 0 ������ 0 themonth theMonth��   /  1 2 1 p       3 3 ������ 0 thedate theDate��   2  4 5 4 p       6 6 ������ 0 theyear theYear��   5  7 8 7 p       9 9 ������ 0 months_list  ��   8  : ; : l      < = > < p       ? ? ������ 0 fileslug fileSlug��   = > 8 The short code used at the start of the new file�s name    > � @ @ p   T h e   s h o r t   c o d e   u s e d   a t   t h e   s t a r t   o f   t h e   n e w   f i l e  s   n a m e ;  A B A l      C D E C p       F F ������ 0 filedate fileDate��   D 5 / The short date used to name the InDesign files    E � G G ^   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s B  H I H l      J K L J p       M M ������ 0 pagedate pageDate��   K 6 0 The full date used in the InDesign page�s folio    L � N N `   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o I  O P O l      Q R S Q p       T T ������ $0 freshpagesfolder freshPagesFolder��   R . ( Where the newly created files are saved    S � U U P   W h e r e   t h e   n e w l y   c r e a t e d   f i l e s   a r e   s a v e d P  V W V l      X Y Z X p       [ [ ������  0 masterdocument masterDocument��   Y * $ The actual InDesign master document    Z � \ \ H   T h e   a c t u a l   I n D e s i g n   m a s t e r   d o c u m e n t W  ] ^ ] l      _ ` a _ p       b b ������ 0 
mastername 
masterName��   ` C = The name of the master page/spread to be applied in InDesign    a � c c z   T h e   n a m e   o f   t h e   m a s t e r   p a g e / s p r e a d   t o   b e   a p p l i e d   i n   I n D e s i g n ^  d e d l     ��������  ��  ��   e  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j   Unchanging variables --    k � l l 0   U n c h a n g i n g   v a r i a b l e s   - - i  m n m l     o���� o r      p q p m      r r � s s j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : q o      ���� $0 freshpagesfolder freshPagesFolder��  ��   n  t u t l    v���� v r     w x w m     y y � z z p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d x o      ����  0 masterdocument masterDocument��  ��   u  { | { l     ��������  ��  ��   |  } ~ } l    ����  r     � � � J     � �  � � � m    	 � � � � �  S p r e a d �  � � � m   	 
 � � � � �  1 0 �  � � � m   
  � � � � � 
 1 2 - 1 3 �  � � � m     � � � � �  L e t t e r s �  � � � m     � � � � �  A r t s �  ��� � m     � � � � �  A r t s   s p l i t��   � o      ���� 0 weekday_pages  ��  ��   ~  � � � l   # ����� � r    # � � � J     � �  � � � m     � � � � �  S p r e a d �  � � � m     � � � � � ( N e w s   r e v i e w s      s p l i t �  � � � m     � � � � � , N e w s   r e v i e w s      s i n g l e s �  � � � m     � � � � �  1 5 �  � � � m     � � � � � 
 1 6 - 1 7 �  ��� � m     � � � � �  L e t t e r s��   � o      ���� 0 weekend_pages  ��  ��   �  � � � l  $ J ����� � r   $ J � � � J   $ F � �  � � � m   $ ' � � � � �  S p r e a d �  � � � m   ' * � � � � �  1 0 �  � � � m   * - � � � � � 
 1 2 - 1 3 �  � � � m   - 0 � � � � � ( N e w s   r e v i e w s      s p l i t �  � � � m   0 3 � � � � � , N e w s   r e v i e w s      s i n g l e s �  � � � m   3 6 � � � � �  1 5 �  � � � m   6 9 � � � � � 
 1 6 - 1 7 �  � � � m   9 < � � � � �  L e t t e r s �  � � � m   < ? � � � � �  A r t s �  ��� � m   ? B � � � � �  A r t s   s p l i t��   � o      ���� 0 ahead_pages  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  K h ����� � r   K h � � � J   K d � �  � � � m   K N � � � � �  M o n d a y �  � � � m   N Q � � � � �  T u e s d a y �  � � � m   Q T � � � � �  W e d n e s d a y �  � � � m   T W � � � � �  T h u r s d a y �  � � � m   W Z � � � � �  F r i d a y �    m   Z ] �  S a t u r d a y �� m   ] ` � , N o   d a y      w o r k i n g   a h e a d��   � o      ���� 0 	days_list  ��  ��   �  l  i �	����	 r   i �

 J   i �  m   i l �  J a n u a r y  m   l o �  F e b r u a r y  m   o r � 
 M a r c h  m   r u � 
 A p r i l  m   u x �    M a y !"! m   x {## �$$  J u n e" %&% m   { ~'' �((  J u l y& )*) m   ~ �++ �,,  A u g u s t* -.- m   � �// �00  S e p t e m b e r. 121 m   � �33 �44  O c t o b e r2 565 m   � �77 �88  N o v e m b e r6 9��9 m   � �:: �;;  D e c e m b e r��   o      ���� 0 months_list  ��  ��   <=< l     ��������  ��  ��  = >?> l     ��������  ��  ��  ? @A@ l     ��BC��  B   User prompts --   C �DD     U s e r   p r o m p t s   - -A EFE l     ��������  ��  ��  F GHG l      ��IJ��  I  Get the date    J �KK  G e t   t h e   d a t e  H LML l  � �N����N r   � �OPO c   � �QRQ l  � �S����S I  � ���TU
�� .gtqpchltns    @   @ ns  T o   � ����� 0 	days_list  U ��VW
�� 
prmpV m   � �XX �YY 8 P l e a s e   p i c k   t h e   e d i t i o n   d a y :W ��Z��
�� 
apprZ m   � �[[ �\\ 0 F e a t u r e s   p a g e s   g e n e r a t o r��  ��  ��  R m   � ���
�� 
TEXTP o      ���� 0 theday theDay��  ��  M ]^] l  � �_����_ Z  � �`a����` =  � �bcb 1   � ���
�� 
rsltc m   � �dd �ee 
 f a l s ea R   � �����f
�� .ascrerr ****      � ****��  f ��g��
�� 
errng m   � ���������  ��  ��  ��  ��  ^ hih l  ��j����j Z   ��kl����k >  � �mnm o   � ����� 0 theday theDayn m   � �oo �pp , N o   d a y      w o r k i n g   a h e a dl k   ��qq rsr r   � �tut c   � �vwv l  � �x����x I  � ���yz
�� .gtqpchltns    @   @ ns  y o   � ����� 0 months_list  z ��{|
�� 
prmp{ m   � �}} �~~ , P l e a s e   p i c k   t h e   m o n t h :| ����
�� 
appr m   � ��� ��� 0 F e a t u r e s   p a g e s   g e n e r a t o r��  ��  ��  w m   � ���
�� 
TEXTu o      ���� 0 themonth theMonths ��� Z  �������� =  � ���� 1   � ��
� 
rslt� m   � ��� ��� 
 f a l s e� R   �	�~�}�
�~ .ascrerr ****      � ****�}  � �|��{
�| 
errn� m  �z�z���{  ��  ��  � ��� r  /��� c  +��� l '��y�x� n  '��� 1  #'�w
�w 
ttxt� l #��v�u� I #�t��
�t .sysodlogaskr        TEXT� m  �� ��� * P l e a s e   t y p e   t h e   d a t e :� �s��
�s 
dtxt� m  �� ���  � �r��q
�r 
appr� m  �� ��� 0 F e a t u r e s   p a g e s   g e n e r a t o r�q  �v  �u  �y  �x  � m  '*�p
�p 
TEXT� o      �o�o 0 thedate theDate� ��� Z 0H���n�m� = 07��� 1  03�l
�l 
rslt� m  36�� ��� 
 f a l s e� R  :D�k�j�
�k .ascrerr ****      � ****�j  � �i��h
�i 
errn� m  >A�g�g���h  �n  �m  � ��� r  Ij��� c  If��� l Ib��f�e� n  Ib��� 1  ^b�d
�d 
ttxt� l I^��c�b� I I^�a��
�a .sysodlogaskr        TEXT� m  IL�� ��� * P l e a s e   t y p e   t h e   y e a r :� �`��
�` 
dtxt� m  OR�� ���  � �_��^
�_ 
appr� m  UX�� ��� 0 F e a t u r e s   p a g e s   g e n e r a t o r�^  �c  �b  �f  �e  � m  be�]
�] 
TEXT� o      �\�\ 0 theyear theYear� ��[� Z k����Z�Y� = kr��� 1  kn�X
�X 
rslt� m  nq�� ��� 
 f a l s e� R  u�W�V�
�W .ascrerr ****      � ****�V  � �U��T
�U 
errn� m  y|�S�S���T  �Z  �Y  �[  ��  ��  ��  ��  i ��� l     �R�Q�P�R  �Q  �P  � ��� l      �O���O  �  Get the pages to create   � ��� . G e t   t h e   p a g e s   t o   c r e a t e� ��� l �h��N�M� Z  �h����L� = ����� o  ���K�K 0 theday theDay� m  ���� ��� , N o   d a y      w o r k i n g   a h e a d� k  ���� ��� r  ����� l ����J�I� I ���H��
�H .gtqpchltns    @   @ ns  � o  ���G�G 0 ahead_pages  � �F��
�F 
prmp� l ����E�D� b  ����� b  ����� b  ����� m  ���� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  ���C
�C 
ret � o  ���B
�B 
ret � m  ���� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�E  �D  � �A��
�A 
appr� m  ���� ��� 0 F e a t u r e s   p a g e s   g e n e r a t o r� �@��?
�@ 
mlsl� m  ���>
�> boovtrue�?  �J  �I  � o      �=�= &0 masterstogenerate mastersToGenerate� ��<� Z �����;�:� = ����� 1  ���9
�9 
rslt� m  ���8
�8 boovfals� R  ���7�6�
�7 .ascrerr ****      � ****�6  � �5��4
�5 
errn� m  ���3�3���4  �;  �:  �<  � ��� > ����� o  ���2�2 0 theday theDay� m  ���� �    S a t u r d a y�  k  �  r  � l ���1�0 I ���/	

�/ .gtqpchltns    @   @ ns  	 o  ���.�. 0 weekday_pages  
 �-
�- 
prmp l ���,�+ b  �� b  �� b  �� m  �� � D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ? o  ���*
�* 
ret  o  ���)
�) 
ret  m  �� � X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�,  �+   �(
�( 
appr m  �� � 0 F e a t u r e s   p a g e s   g e n e r a t o r �'�&
�' 
mlsl m  ���%
�% boovtrue�&  �1  �0   o      �$�$ &0 masterstogenerate mastersToGenerate �# Z �"�! =  !  1  � 
�  
rslt! m  �
� boovfals R  ��"
� .ascrerr ****      � ****�  " �#�
� 
errn# m  �����  �"  �!  �#   $%$ = #&'& o  �� 0 theday theDay' m  "(( �))  S a t u r d a y% *�* k  &d++ ,-, r  &M./. l &I0��0 I &I�12
� .gtqpchltns    @   @ ns  1 o  &)�� 0 weekend_pages  2 �34
� 
prmp3 l ,;5��5 b  ,;676 b  ,7898 b  ,3:;: m  ,/<< �== D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?; o  /2�
� 
ret 9 o  36�
� 
ret 7 m  7:>> �?? X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�  �  4 �@A
� 
appr@ m  >ABB �CC 0 F e a t u r e s   p a g e s   g e n e r a t o rA �D�
� 
mlslD m  DE�
� boovtrue�  �  �  / o      �
�
 &0 masterstogenerate mastersToGenerate- E�	E Z NdFG��F = NSHIH 1  NQ�
� 
rsltI m  QR�
� boovfalsG R  V`��J
� .ascrerr ****      � ****�  J �K�
� 
errnK m  Z]� � ���  �  �  �	  �  �L  �N  �M  � LML l     ��������  ��  ��  M NON l     ��������  ��  ��  O PQP l     ��RS��  R   Create the date --   S �TT &   C r e a t e   t h e   d a t e   - -Q UVU l     ��������  ��  ��  V WXW l i�Y����Y Z  i�Z[��\Z = ip]^] o  il���� 0 theday theDay^ m  lo__ �`` , N o   d a y      w o r k i n g   a h e a d[ k  s�aa bcb r  szded m  svff �gg * A   d a t e   n e e d s   e n t e r i n ge o      ���� 0 pagedate pageDatec h��h r  {�iji m  {~kk �ll 
 A h e a dj o      ���� 0 filedate fileDate��  ��  \ k  ��mm non I  ���������� "0 create_pagedate create_pageDate��  ��  o p��p I  ���������� "0 create_filedate create_fileDate��  ��  ��  ��  ��  X qrq l     ��������  ��  ��  r sts l     ��������  ��  ��  t uvu l     ��wx��  w   Generate the pages --   x �yy ,   G e n e r a t e   t h e   p a g e s   - -v z{z l     ��������  ��  ��  { |}| l �0~����~ Z  �0����� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  S p r e a d� k  �,�� ��� r  ����� m  ���� ���  F e a t - S p r e a d� o      ���� 0 
mastername 
masterName� ���� Z  �,������ = ����� o  ������ 0 theday theDay� m  ���� ���  S a t u r d a y� k  ���� ��� r  ����� m  ���� ���  1 2 - 1 3 _ F e a t u r e s� o      ���� 0 fileslug fileSlug� ���� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_spread changePageNumber_spread� ���� m  ���� ���  1 2��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  ��  � k  �,�� ��� r  ����� m  ���� ���  8 - 9 _ F e a t u r e s� o      ���� 0 fileslug fileSlug� ���� O  �,��� k  �+�� ��� I ������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ��� I  �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  � ��� n ��� I  	������� 20 changepagenumber_spread changePageNumber_spread� ���� m  	�� ���  8��  ��  �  f  	� ��� n ��� I  �������� 0 clean_save_l clean_save_L��  ��  �  f  � ���� O +��� I *�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  #&��
�� savoyes ��  � l ������ 1  ��
�� 
pacd��  ��  ��  � m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  ��  ��  ��  ��  ��  } ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l 1|������ Z  1|������� E 18��� o  14���� &0 masterstogenerate mastersToGenerate� m  47�� ���  1 0� k  ;x�� ��� r  ;B��� m  ;>�� ���  F e a t - 1 0� o      ���� 0 
mastername 
masterName� ��� r  CJ��� m  CF�� ���  1 0 _ F e a t u r e s� o      ���� 0 fileslug fileSlug� ���� O  Kx��� k  Qw�� ��� I QV�����
�� .aevtodocnull  �    alis� o  QR����  0 masterdocument masterDocument��  � � � n W\ I  X\�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��    f  WX   n ]b I  ^b�������� 0 clean_save_l clean_save_L��  ��    f  ]^ �� O cw	 I kv����

�� .CoReclosnull���     obj ��  
 ����
�� 
svop m  or��
�� savoyes ��  	 1  ch��
�� 
pacd��  � m  KN
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  ��  ��  ��  ��  �  l     ��������  ��  ��    l     ��������  ��  ��    l }����� Z  }���� E }� o  }��~�~ &0 masterstogenerate mastersToGenerate m  �� � 
 1 2 - 1 3 k  ��  l �� r  �� !  m  ��"" �##  F e a t - 1 2 - 1 3! o      �}�} 0 
mastername 
masterName * $ Create the weekday TV/features page    �$$ H   C r e a t e   t h e   w e e k d a y   T V / f e a t u r e s   p a g e %&% r  ��'(' m  ��)) �**  1 2 - 1 3 _ T V( o      �|�| 0 fileslug fileSlug& +�{+ O  ��,-, k  ��.. /0/ I ���z1�y
�z .aevtodocnull  �    alis1 o  ���x�x  0 masterdocument masterDocument�y  0 232 n ��454 I  ���w�v�u�w >0 applymaster_changedate_spread applyMaster_changeDate_spread�v  �u  5  f  ��3 676 n ��898 I  ���t�s�r�t (0 changelegaldate_12 changeLegalDate_12�s  �r  9  f  ��7 :;: n ��<=< I  ���q�p�o�q 0 clean_save_l clean_save_L�p  �o  =  f  ��; >�n> O ��?@? I ���m�lA
�m .CoReclosnull���     obj �l  A �kB�j
�k 
svopB m  ���i
�i savoyes �j  @ l ��C�h�gC 1  ���f
�f 
pacd�h  �g  �n  - m  ��DD
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �{  ��  �  ��  ��   EFE l     �e�d�c�e  �d  �c  F GHG l     �b�a�`�b  �a  �`  H IJI l �K�_�^K Z  �LM�]�\L E ��NON o  ���[�[ &0 masterstogenerate mastersToGenerateO m  ��PP �QQ ( N e w s   r e v i e w s      s p l i tM k  �RR STS r  ��UVU m  ��WW �XX " F e a t - N e w s   r e v i e w sV o      �Z�Z 0 
mastername 
masterNameT YZY r  ��[\[ m  ��]] �^^  8 - 9 _ N e w s R e v i e w\ o      �Y�Y 0 fileslug fileSlugZ _�X_ O  �`a` k  �bb cdc I ���We�V
�W .aevtodocnull  �    alise o  ���U�U  0 masterdocument masterDocument�V  d fgf n ��hih I  ���T�S�R�T >0 applymaster_changedate_spread applyMaster_changeDate_spread�S  �R  i  f  ��g jkj n � lml I  � �Q�P�O�Q 0 clean_save_l clean_save_L�P  �O  m  f  ��k n�Nn O opo I 	�M�Lq
�M .CoReclosnull���     obj �L  q �Kr�J
�K 
svopr m  �I
�I savoyes �J  p l s�H�Gs 1  �F
�F 
pacd�H  �G  �N  a m  ��tt
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �X  �]  �\  �_  �^  J uvu l     �E�D�C�E  �D  �C  v wxw l �y�B�Ay Z  �z{�@�?z E "|}| o  �>�> &0 masterstogenerate mastersToGenerate} m  !~~ � , N e w s   r e v i e w s      s i n g l e s{ k  %��� ��� r  %,��� m  %(�� ��� " F e a t - N e w s R e v   L e f t� o      �=�= 0 
mastername 
masterName� ��� r  -4��� m  -0�� ���  8 - N e w s R e v i e w� o      �<�< 0 fileslug fileSlug� ��� O  5b��� k  ;a�� ��� I ;@�;��:
�; .aevtodocnull  �    alis� o  ;<�9�9  0 masterdocument masterDocument�:  � ��� n AF��� I  BF�8�7�6�8 >0 applymaster_changedate_single applyMaster_changeDate_single�7  �6  �  f  AB� ��� n GL��� I  HL�5�4�3�5 0 clean_save_l clean_save_L�4  �3  �  f  GH� ��2� O Ma��� I U`�1�0�
�1 .CoReclosnull���     obj �0  � �/��.
�/ 
svop� m  Y\�-
�- savoyes �.  � l MR��,�+� 1  MR�*
�* 
pacd�,  �+  �2  � m  58��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � ��� l cc�)�(�'�)  �(  �'  � ��� r  cj��� m  cf�� ��� $ F e a t - N e w s R e v   R i g h t� o      �&�& 0 
mastername 
masterName� ��� r  kr��� m  kn�� ���  9 - N e w s R e v i e w� o      �%�% 0 fileslug fileSlug� ��$� O  s���� k  y��� ��� I y~�#��"
�# .aevtodocnull  �    alis� o  yz�!�!  0 masterdocument masterDocument�"  � ��� n ���� I  ��� ���  >0 applymaster_changedate_single applyMaster_changeDate_single�  �  �  f  �� ��� n ����� I  ������ 0 clean_save_r clean_save_R�  �  �  f  ��� ��� O ����� I �����
� .CoReclosnull���     obj �  � ���
� 
svop� m  ���
� savoyes �  � l ������ 1  ���
� 
pacd�  �  �  � m  sv��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �$  �@  �?  �B  �A  x ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l �����
� Z  �����	�� E ����� o  ���� &0 masterstogenerate mastersToGenerate� m  ���� ���  1 5� k  ���� ��� r  ����� m  ���� ���  F e a t - 1 5� o      �� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  1 5 _ F e a t u r e s� o      �� 0 fileslug fileSlug� ��� O  ����� k  ���� ��� I �����
� .aevtodocnull  �    alis� o  ����  0 masterdocument masterDocument�  � ��� n ����� I  ��� �����  >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_r clean_save_R��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � 1  ����
�� 
pacd��  � m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �  �	  �  �  �
  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l �<������ Z  �<������� E ��   o  ������ &0 masterstogenerate mastersToGenerate m  �� � 
 1 6 - 1 7� l �8 k  �8 	 r  �

 m  �� �  A r t s - 1 6 - 1 7 o      ���� 0 
mastername 
masterName	  r  
 m   �  1 6 - 1 7 _ E n t s - A r t s o      ���� 0 fileslug fileSlug �� O  8 k  7  I ����
�� .aevtodocnull  �    alis o  ����  0 masterdocument masterDocument��    n  I  �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��    f     n "!"! I  "�������� 0 clean_save_l clean_save_L��  ��  "  f    #��# O #7$%$ I +6����&
�� .CoReclosnull���     obj ��  & ��'��
�� 
svop' m  /2��
�� savoyes ��  % l #((����( 1  #(��
�� 
pacd��  ��  ��   m  ))
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��   ( " Create the weekend Ents/Arts page    �** D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  ��  ��  � +,+ l     ��������  ��  ��  , -.- l     ��������  ��  ��  . /0/ l =1����1 Z  =23����2 E =D454 o  =@���� &0 masterstogenerate mastersToGenerate5 m  @C66 �77  L e t t e r s3 k  G88 9:9 r  GN;<; m  GJ== �>>  F e a t - L e t t e r s< o      ���� 0 
mastername 
masterName: ?@? l O[ABCA r  O[DED J  OWFF GHG m  ORII �JJ  M o n d a yH K��K m  RULL �MM  W e d n e s d a y��  E o      ���� 0 p10_days  B = 7 These two lists determine what the page number will be   C �NN n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e@ OPO r  \sQRQ J  \oSS TUT m  \_VV �WW  T u e s d a yU XYX m  _bZZ �[[  T h u r s d a yY \]\ m  be^^ �__  F r i d a y] `a` m  ehbb �cc  S a t u r d a ya d��d m  hkee �ff , N o   d a y      w o r k i n g   a h e a d��  R o      ���� 0 p14_days  P ghg l tt��������  ��  ��  h i��i Z  tjkl��j E t{mnm o  tw���� 0 p10_days  n o  wz���� 0 theday theDayk k  ~�oo pqp r  ~�rsr m  ~�tt �uu  1 0 _ L e t t e r ss l     v����v o      ���� 0 fileslug fileSlug��  ��  q wxw O  ��yzy k  ��{{ |}| I ����~��
�� .aevtodocnull  �    alis~ o  ������  0 masterdocument masterDocument��  } � n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_single changePageNumber_single� ���� m  ���� ���  1 0��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � 1  ����
�� 
pacd��  z m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  x ���� l ����������  ��  ��  ��  l ��� E ����� o  ������ 0 p14_days  � o  ������ 0 theday theDay� ���� k  �	�� ��� r  ����� m  ���� ���  1 4 _ L e t t e r s� l     ������ o      ���� 0 fileslug fileSlug��  ��  � ���� O  �	��� k  ��� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_single changePageNumber_single� ���� m  ���� ���  1 4��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ���� I ������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m   ��
�� savoyes ��  � 1  ����
�� 
pacd��  � m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  ��  ��  ��  ��  ��  ��  ��  0 ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l ]���~� Z  ]���}�|� E ��� o  �{�{ &0 masterstogenerate mastersToGenerate� m  �� ���  A r t s� l Y���� k  Y�� ��� r  #��� m  �� ���  A r t s - 1 1� o      �z�z 0 
mastername 
masterName� ��� r  $+��� m  $'�� ���  1 1 - A r t s� o      �y�y 0 fileslug fileSlug� ��x� O  ,Y��� k  2X�� ��� I 27�w��v
�w .aevtodocnull  �    alis� o  23�u�u  0 masterdocument masterDocument�v  � ��� n 8=��� I  9=�t�s�r�t >0 applymaster_changedate_single applyMaster_changeDate_single�s  �r  �  f  89� ��� n >C��� I  ?C�q�p�o�q 0 clean_save_r clean_save_R�p  �o  �  f  >?� ��n� O DX��� I LW�m�l�
�m .CoReclosnull���     obj �l  � �k��j
�k 
svop� m  PS�i
�i savoyes �j  � 1  DI�h
�h 
pacd�n  � m  ,/��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �x  � ( " Create the weekday Arts page (11)   � ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )�}  �|  �  �~  � ��� l     �g�f�e�g  �f  �e  � ��� l     �d�c�b�d  �c  �b  � ��� l ^���a�`� Z  ^����_�^� E ^e��� o  ^a�]�] &0 masterstogenerate mastersToGenerate� m  ad   �  A r t s   s p l i t� k  h�  r  ho m  hk �  A r t s - S p l i t o      �\�\ 0 
mastername 
masterName 	
	 r  pw m  ps �  1 0 - 1 1 _ A r t s o      �[�[ 0 fileslug fileSlug
 �Z O  x� k  ~�  I ~��Y�X
�Y .aevtodocnull  �    alis o  ~�W�W  0 masterdocument masterDocument�X    n �� I  ���V�U�T�V >0 applymaster_changedate_spread applyMaster_changeDate_spread�U  �T    f  ��  n �� I  ���S�R�Q�S 0 clean_save_l clean_save_L�R  �Q    f  �� �P O ��  I ���O�N!
�O .CoReclosnull���     obj �N  ! �M"�L
�M 
svop" m  ���K
�K savoyes �L    l ��#�J�I# 1  ���H
�H 
pacd�J  �I  �P   m  x{$$
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �Z  �_  �^  �a  �`  � %&% l     �G�F�E�G  �F  �E  & '(' l ��)�D�C) O ��*+* I ���B,�A
�B .aevtodocnull  �    alis, o  ���@�@ $0 freshpagesfolder freshPagesFolder�A  + m  ��--�                                                                                  MACS   alis    r  Macintosh HD               ĬplH+     t
Finder.app                                                       u��=g�        ����  	                CoreServices    Ĭb\      �=Y�       t   0   /  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �D  �C  ( ./. l     �?�>�=�?  �>  �=  / 010 l     �<�;�:�<  �;  �:  1 232 l     �945�9  4   Handler definitions --   5 �66 .   H a n d l e r   d e f i n i t i o n s   - -3 787 l     �8�7�6�8  �7  �6  8 9:9 l     �5�4�3�5  �4  �3  : ;<; l      �2=>�2  = X R	Create the date used on the InDesign pages, and deal with some Saturday oddities	   > �?? � 	 C r e a t e   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l   w i t h   s o m e   S a t u r d a y   o d d i t i e s 	< @A@ i     BCB I      �1�0�/�1 "0 create_pagedate create_pageDate�0  �/  C k    �DD EFE r     
GHG J     II JKJ m     LL �MM  J a n u a r yK NON m    PP �QQ 
 M a r c hO RSR m    TT �UU  M a yS VWV m    XX �YY  J u l yW Z[Z m    \\ �]]  A u g u s t[ ^�.^ m    __ �``  O c t o b e r�.  H o      �-�- (0 thirtyonedaymonths ThirtyOneDayMonthsF aba r    cdc J    ee fgf m    hh �ii 
 A p r i lg jkj m    ll �mm  J u n ek non m    pp �qq  S e p t e m b e ro r�,r m    ss �tt  N o v e m b e r�,  d o      �+�+ "0 thirtydaymonths ThirtyDayMonthsb uvu l   �*�)�(�*  �)  �(  v w�'w Z   �xyz�&x >   {|{ o    �%�% 0 theday theDay| m    }} �~~  S a t u r d a yy l   5�� k    5�� ��� r    3��� l   /��$�#� b    /��� b    +��� b    '��� b    #��� b    ��� b    ��� o    �"�" 0 theday theDay� m    �� ���   � o    �!�! 0 themonth theMonth� m    "�� ���   � o   # &� �  0 thedate theDate� m   ' *�� ���   � o   + .�� 0 theyear theYear�$  �#  � o      �� 0 pagedate pageDate� ��� l  4 4����  �  �  �  � + % Does the page date for every weekday   � ��� J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a yz ��� F   8 U��� F   8 K��� =  8 =��� o   8 9�� 0 theday theDay� m   9 <�� ���  S a t u r d a y� =  @ G��� o   @ C�� 0 thedate theDate� m   C F�� ���  3 0� E  N Q��� o   N O�� "0 thirtydaymonths ThirtyDayMonths� o   O P�� 0 themonth theMonth� ��� l  X ����� k   X ��� ��� Y   X ������� l  h ����� Z  h ������ =  h r��� n   h p��� 4   k p��
� 
cobj� o   n o�� 0 i  � o   h k�� 0 months_list  � o   p q�� 0 themonth theMonth� r   u ���� l  u ���� n   u ��� 4   x ��
� 
cobj� l  { ~��
�	� [   { ~��� o   { |�� 0 i  � m   | }�� �
  �	  � o   u x�� 0 months_list  �  �  � o      �� 0 secondmonth secondMonth�  �  � V P This repeat block here grabs the name of the next month to use in the page date   � ��� �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e� 0 i  � m   [ \�� � I  \ c���
� .corecnte****       ****� o   \ _�� 0 months_list  �  �  � ��� l  � ����� r   � ���� l  � ��� ��� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���   S a t u r d a y / S u n d a y  � o   � ����� 0 themonth theMonth� m   � ��� ���    3 0 -� o   � ����� 0 secondmonth secondMonth� m   � ��� ���    1  � o   � ����� 0 theyear theYear�   ��  � o      ���� 0 pagedate pageDate� P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"   � ��� �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 "� ���� l  � ���������  ��  ��  ��  � I C Deals with Saturdays at the end of 30-day months (uses list above)   � ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )� ��� F   � ���� F   � ���� =  � ���� o   � ����� 0 theday theDay� m   � ��� ���  S a t u r d a y� =  � ���� o   � ����� 0 thedate theDate� m   � ��� ���  3 1� E  � ���� o   � ����� (0 thirtyonedaymonths ThirtyOneDayMonths� o   � ����� 0 themonth theMonth� ��� l  ����� k   ��� ��� Y   � ���� ��� Z  � ����� =  � � n   � � 4   � ���
�� 
cobj o   � ����� 0 i   o   � ����� 0 months_list   o   � ����� 0 themonth theMonth r   � �	
	 l  � ����� n   � � 4   � ���
�� 
cobj l  � ����� [   � � o   � ����� 0 i   m   � ����� ��  ��   o   � ����� 0 months_list  ��  ��  
 o      ���� 0 secondmonth secondMonth��  ��  �� 0 i    m   � �����  I  � �����
�� .corecnte****       **** o   � ����� 0 months_list  ��  ��  �  r   � l  ����� b   � b   �	 b   � b   � b   � � !  m   � �"" �##   S a t u r d a y / S u n d a y  ! o   � ����� 0 themonth theMonth m   �$$ �%%    3 1 - o  ���� 0 secondmonth secondMonth m  && �''    1   o  	���� 0 theyear theYear��  ��   o      ���� 0 pagedate pageDate (��( l ��������  ��  ��  ��  � I C Deals with Saturdays at the end of 31-day months (uses list above)   � �)) �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )� *+* F  5,-, F  )./. = 010 o  ���� 0 theday theDay1 m  22 �33  S a t u r d a y/ ? %454 o  !���� 0 thedate theDate5 m  !$66 �77  2 7- = ,1898 o  ,-���� 0 themonth theMonth9 m  -0:: �;;  F e b r u a r y+ <=< l 8M>?@> k  8MAA BCB r  8KDED l 8GF����F b  8GGHG b  8CIJI b  8?KLK m  8;MM �NN 2 S a t u r d a y / S u n d a y   F e b r u a r y  L o  ;>���� 0 thedate theDateJ m  ?BOO �PP  - M a r c h   1  H o  CF���� 0 theyear theYear��  ��  E o      ���� 0 pagedate pageDateC Q��Q l LL��������  ��  ��  ��  ? � | Deals with Saturdays at the end of February. Fun fact: it�s not that precise, but won�t turn out the wrong date until 2032.   @ �RR �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   F u n   f a c t :   i t  s   n o t   t h a t   p r e c i s e ,   b u t   w o n  t   t u r n   o u t   t h e   w r o n g   d a t e   u n t i l   2 0 3 2 .= STS F  PoUVU F  PcWXW = PUYZY o  PQ���� 0 theday theDayZ m  QT[[ �\\  S a t u r d a yX = X_]^] o  X[���� 0 thedate theDate^ m  [^__ �``  3 1V = fkaba o  fg���� 0 themonth theMonthb m  gjcc �dd  D e c e m b e rT efe l r�ghig k  r�jj klk r  r�mnm l r�o����o b  r�pqp b  r}rsr b  rytut m  ruvv �ww L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  u o  ux���� 0 theyear theYears m  y|xx �yy  -q l }�z����z [  }�{|{ o  }����� 0 theyear theYear| m  ������ ��  ��  ��  ��  n o      ���� 0 pagedate pageDatel }��} l ����������  ��  ��  ��  h 2 , Deals with Saturdays at the end of December   i �~~ X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e rf � = ����� o  ������ 0 theday theDay� m  ���� ���  S a t u r d a y� ���� l ������ k  ���� ��� r  ����� l �������� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���   S a t u r d a y / S u n d a y  � o  ������ 0 themonth theMonth� m  ���� ���   � o  ������ 0 thedate theDate� m  ���� ���  -� l �������� [  ����� o  ������ 0 thedate theDate� m  ������ ��  ��  � m  ���� ���   � o  ������ 0 theyear theYear��  ��  � o      ���� 0 pagedate pageDate� ���� l ����������  ��  ��  ��  � 3 - Does the page date for every normal Saturday   � ��� Z   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y��  �&  �'  A ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � @ :	Create the short date to name the created InDesign files	   � ��� t 	 C r e a t e   t h e   s h o r t   d a t e   t o   n a m e   t h e   c r e a t e d   I n D e s i g n   f i l e s 	� ��� i    ��� I      �������� "0 create_filedate create_fileDate��  ��  � k    ��� ��� r     ��� o     ���� 0 thedate theDate� o      ���� 0 numdate numDate� ��� l   ��������  ��  ��  � ��� Z   ������� =   ��� o    ���� 0 thedate theDate� m    �� ���  1� r   
 ��� m   
 �� ���  0 1� o      ���� 0 numdate numDate��  ��  � ��� Z   ������� =   ��� o    ���� 0 thedate theDate� m    �� ���  2� r    ��� m    �� ���  0 2� o      ���� 0 numdate numDate��  ��  � ��� Z    -������� =    #��� o     !���� 0 thedate theDate� m   ! "�� ���  3� r   & )��� m   & '�� ���  0 3� o      ���� 0 numdate numDate��  ��  � ��� Z  . ;������� =  . 1��� o   . /���� 0 thedate theDate� m   / 0�� ���  4� r   4 7��� m   4 5�� ���  0 4� o      ���� 0 numdate numDate��  ��  � ��� Z  < I������� =  < ?��� o   < =���� 0 thedate theDate� m   = >�� ���  5� r   B E��� m   B C�� ���  0 5� o      ���� 0 numdate numDate��  ��  � ��� Z  J W������� =  J M��� o   J K���� 0 thedate theDate� m   K L   �  6� r   P S m   P Q �  0 6 o      ���� 0 numdate numDate��  ��  �  Z  X e	���� =  X [

 o   X Y�� 0 thedate theDate m   Y Z �  7	 r   ^ a m   ^ _ �  0 7 o      �~�~ 0 numdate numDate��  ��    Z  f u�}�| =  f i o   f g�{�{ 0 thedate theDate m   g h �  8 r   l q m   l o �  0 8 o      �z�z 0 numdate numDate�}  �|    Z  v � !�y�x  =  v {"#" o   v w�w�w 0 thedate theDate# m   w z$$ �%%  9! r   ~ �&'& m   ~ �(( �))  0 9' o      �v�v 0 numdate numDate�y  �x   *+* l  � ��u�t�s�u  �t  �s  + ,-, Z  � �./�r�q. =  � �010 o   � ��p�p 0 themonth theMonth1 m   � �22 �33  J a n u a r y/ r   � �454 m   � �66 �77  0 15 o      �o�o 0 nummonth numMonth�r  �q  - 898 Z  � �:;�n�m: =  � �<=< o   � ��l�l 0 themonth theMonth= m   � �>> �??  F e b r u a r y; r   � �@A@ m   � �BB �CC  0 2A o      �k�k 0 nummonth numMonth�n  �m  9 DED Z  � �FG�j�iF =  � �HIH o   � ��h�h 0 themonth theMonthI m   � �JJ �KK 
 M a r c hG r   � �LML m   � �NN �OO  0 3M o      �g�g 0 nummonth numMonth�j  �i  E PQP Z  � �RS�f�eR =  � �TUT o   � ��d�d 0 themonth theMonthU m   � �VV �WW 
 A p r i lS r   � �XYX m   � �ZZ �[[  0 4Y o      �c�c 0 nummonth numMonth�f  �e  Q \]\ Z  � �^_�b�a^ =  � �`a` o   � ��`�` 0 themonth theMontha m   � �bb �cc  M a y_ r   � �ded m   � �ff �gg  0 5e o      �_�_ 0 nummonth numMonth�b  �a  ] hih Z  � �jk�^�]j =  � �lml o   � ��\�\ 0 themonth theMonthm m   � �nn �oo  J u n ek r   � �pqp m   � �rr �ss  0 6q o      �[�[ 0 nummonth numMonth�^  �]  i tut Z  vw�Z�Yv =  xyx o   �X�X 0 themonth theMonthy m  zz �{{  J u l yw r  
|}| m  
~~ �  0 7} o      �W�W 0 nummonth numMonth�Z  �Y  u ��� Z '���V�U� = ��� o  �T�T 0 themonth theMonth� m  �� ���  A u g u s t� r  #��� m  !�� ���  0 8� o      �S�S 0 nummonth numMonth�V  �U  � ��� Z (;���R�Q� = (/��� o  (+�P�P 0 themonth theMonth� m  +.�� ���  S e p t e m b e r� r  27��� m  25�� ���  0 9� o      �O�O 0 nummonth numMonth�R  �Q  � ��� Z <O���N�M� = <C��� o  <?�L�L 0 themonth theMonth� m  ?B�� ���  O c t o b e r� r  FK��� m  FI�� ���  1 0� o      �K�K 0 nummonth numMonth�N  �M  � ��� Z Pc���J�I� = PW��� o  PS�H�H 0 themonth theMonth� m  SV�� ���  N o v e m b e r� r  Z_��� m  Z]�� ���  1 1� o      �G�G 0 nummonth numMonth�J  �I  � ��� Z dw���F�E� = dk��� o  dg�D�D 0 themonth theMonth� m  gj�� ���  D e c e m b e r� r  ns��� m  nq�� ���  1 2� o      �C�C 0 nummonth numMonth�F  �E  � ��� l xx�B�A�@�B  �A  �@  � ��� r  x���� b  x���� b  x���� b  x��� b  x}��� o  xy�?�? 0 numdate numDate� m  y|�� ���  -� o  }~�>�> 0 nummonth numMonth� m  ��� ���  -� o  ���=�= 0 theyear theYear� o      �<�< 0 filedate fileDate� ��;� l ���:�9�8�:  �9  �8  �;  � ��� l     �7�6�5�7  �6  �5  � ��� l     �4�3�2�4  �3  �2  � ��� l      �1���1  � ` Z	Single page: Apply a master, change the date and override everything on the "Work" layer	   � ��� � 	 S i n g l e   p a g e :   A p p l y   a   m a s t e r ,   c h a n g e   t h e   d a t e   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	� ��� i    ��� I      �0�/�.�0 >0 applymaster_changedate_single applyMaster_changeDate_single�/  �.  � O     c��� O    b��� k   
 a�� ��� r   
 ��� 4   
 �-�
�- 
mspr� o    �,�, 0 
mastername 
masterName� n      ��� 1    �+
�+ 
pmas� 4    �*�
�* 
page� m    �)�) � ��� I   &�(��
�( .InESovrrobj         obj � n    ��� 4    �'�
�' 
txtf� m    �� ���  E d i t i o n   d a t e� 4    �&�
�& 
mspr� o    �%�% 0 
mastername 
masterName� �$��#
�$ 
dPge� 4    "�"�
�" 
page� m     !�!�! �#  � ��� r   ' 2��� o   ' (� �  0 pagedate pageDate� l     ���� n      ��� 1   / 1�
� 
pcnt� n   ( /��� 4   , /��
� 
txtf� m   - .�� �    E d i t i o n   d a t e� 4   ( ,�
� 
page m   * +�� �  �  � � Q   3 a� I  6 X�
� .InESovrrobj         obj  l  6 O�� 6  6 O	 n   6 >

 2   < >�
� 
cobj n   6 < 1   : <�
� 
mpgs 4   6 :�
� 
page m   8 9�� 	 =  ? N n  @ H 1   D H�
� 
pnam 1   @ D�
� 
pilr m   I M �  W o r k�  �   ��
� 
dPge 4   P T�
� 
page m   R S�� �   R      �
�	�
�
 .ascrerr ****      � ****�	  �  �  �  � l   �� 1    �
� 
pacd�  �  � m     
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �  l     ����  �  �    l     �� ���  �   ��    l      �� ��   } w	Spreads: Create a new spread from a master, change the date on both pages and override everything on the "Work" layer	     �!! � 	 S p r e a d s :   C r e a t e   a   n e w   s p r e a d   f r o m   a   m a s t e r ,   c h a n g e   t h e   d a t e   o n   b o t h   p a g e s   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	 "#" i    $%$ I      �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  % O     �&'& O    �()( k   
 �** +,+ I  
 ����-
�� .corecrel****      � null��  - ��./
�� 
kocl. m    ��
�� 
sprd/ ��0��
�� 
prdt0 K    11 ��2��
�� 
pmas2 4    ��3
�� 
mspr3 o    ���� 0 
mastername 
masterName��  ��  , 454 I   *��67
�� .InESovrrobj         obj 6 n    !898 4    !��:
�� 
txtf: m     ;; �<<  L - E d i t i o n   d a t e9 4    ��=
�� 
mspr= o    ���� 0 
mastername 
masterName7 ��>��
�� 
dPge> 4   " &��?
�� 
page? m   $ %���� ��  5 @A@ I  + ;��BC
�� .InESovrrobj         obj B n   + 2DED 4   / 2��F
�� 
txtfF m   0 1GG �HH  R - E d i t i o n   d a t eE 4   + /��I
�� 
msprI o   - .���� 0 
mastername 
masterNameC ��J��
�� 
dPgeJ 4   3 7��K
�� 
pageK m   5 6���� ��  A LML r   < MNON o   < ?���� 0 pagedate pageDateO l     P����P n      QRQ 1   H L��
�� 
pcntR n   ? HSTS 4   C H��U
�� 
txtfU m   D GVV �WW  L - E d i t i o n   d a t eT 4   ? C��X
�� 
pageX m   A B���� ��  ��  M YZY r   N _[\[ o   N Q���� 0 pagedate pageDate\ l     ]����] n      ^_^ 1   Z ^��
�� 
pcnt_ n   Q Z`a` 4   U Z��b
�� 
txtfb m   V Ycc �dd  R - E d i t i o n   d a t ea 4   Q U��e
�� 
pagee m   S T���� ��  ��  Z f��f Q   ` �gh��g k   c �ii jkj I  c ���lm
�� .InESovrrobj         obj l l  c �n����n 6  c �opo n   c oqrq 2   k o��
�� 
cobjr n   c ksts 1   g k��
�� 
mpgst 4   c g��u
�� 
pageu m   e f���� p =  r �vwv n  s {xyx 1   w {��
�� 
pnamy 1   s w��
�� 
pilrw m   | �zz �{{  W o r k��  ��  m ��|��
�� 
dPge| 4   � ���}
�� 
page} m   � ����� ��  k ~��~ I  � ����
�� .InESovrrobj         obj  l  � ������� 6  � ���� n   � ���� 2   � ���
�� 
cobj� n   � ���� 1   � ���
�� 
mpgs� 4   � ����
�� 
page� m   � ����� � =  � ���� n  � ���� 1   � ���
�� 
pnam� 1   � ���
�� 
pilr� m   � ��� ���  W o r k��  ��  � �����
�� 
dPge� 4   � ����
�� 
page� m   � ����� ��  ��  h R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ) l   ������ 1    ��
�� 
pacd��  ��  ' m     ��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  # ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � }	Single page: Change the page number to the one specified in the handler call - e.g. changePageNumber_single("3") for page 3	   � ��� � 	 S i n g l e   p a g e :   C h a n g e   t h e   p a g e   n u m b e r   t o   t h e   o n e   s p e c i f i e d   i n   t h e   h a n d l e r   c a l l   -   e . g .   c h a n g e P a g e N u m b e r _ s i n g l e ( " 3 " )   f o r   p a g e   3 	� ��� i    ��� I      ������� 20 changepagenumber_single changePageNumber_single� ���� o      ���� 0 
pagenumber 
pageNumber��  ��  � O     (��� O    '��� k   
 &�� ��� I  
 ����
�� .InESovrrobj         obj � n   
 ��� 4    ���
�� 
txtf� m    �� ���  P a g e   n u m b e r� 4   
 ���
�� 
mspr� o    ���� 0 
mastername 
masterName� �����
�� 
dPge� 4    ���
�� 
page� m    ���� ��  � ���� r    &��� o    ���� 0 
pagenumber 
pageNumber� l     ������ n      ��� 1   # %��
�� 
pcnt� n    #��� 4     #���
�� 
txtf� m   ! "�� ���  P a g e   n u m b e r� 4     ���
�� 
page� m    ���� ��  ��  ��  � l   ������ 1    ��
�� 
pacd��  ��  � m     ��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �	Spreads: Change the page number on both pages. The handler call asks for the left-hand page�s number - e.g. changePageNumber_spread("8") for pages 8 and 9	   � ���8 	 S p r e a d s :   C h a n g e   t h e   p a g e   n u m b e r   o n   b o t h   p a g e s .   T h e   h a n d l e r   c a l l   a s k s   f o r   t h e   l e f t - h a n d   p a g e  s   n u m b e r   -   e . g .   c h a n g e P a g e N u m b e r _ s p r e a d ( " 8 " )   f o r   p a g e s   8   a n d   9 	� ��� i    ��� I      ������� 20 changepagenumber_spread changePageNumber_spread� ���� o      ����  0 leftpagenumber leftPageNumber��  ��  � O     I��� O    H��� k   
 G�� ��� I  
 ����
�� .InESovrrobj         obj � n   
 ��� 4    ���
�� 
txtf� m    �� ���  L - P a g e   n u m b e r� 4   
 ���
�� 
mspr� o    ���� 0 
mastername 
masterName� �����
�� 
dPge� 4    ���
�� 
page� m    �� ��  � ��� I   +�~��
�~ .InESovrrobj         obj � n    "��� 4    "�}�
�} 
txtf� m     !�� ���  R - P a g e   n u m b e r� 4    �|�
�| 
mspr� o    �{�{ 0 
mastername 
masterName� �z��y
�z 
dPge� 4   # '�x�
�x 
page� m   % &�w�w �y  � ��� r   , 7��� o   , -�v�v  0 leftpagenumber leftPageNumber� l     ��u�t� n      ��� 1   4 6�s
�s 
pcnt� n   - 4��� 4   1 4�r�
�r 
txtf� m   2 3�� ���  L - P a g e   n u m b e r� 4   - 1�q�
�q 
page� m   / 0�p�p �u  �t  � ��o� r   8 G��� l  8 =��n�m� c   8 =��� l  8 ;	 �l�k	  [   8 ;			 o   8 9�j�j  0 leftpagenumber leftPageNumber	 m   9 :�i�i �l  �k  � m   ; <�h
�h 
TEXT�n  �m  � l     	�g�f	 n      			 1   D F�e
�e 
pcnt	 n   = D			 4   A D�d	
�d 
txtf	 m   B C				 �	
	
  R - P a g e   n u m b e r	 4   = A�c	
�c 
page	 m   ? @�b�b �g  �f  �o  � l   	�a�`	 1    �_
�_ 
pacd�a  �`  � m     		
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � 			 l     �^�]�\�^  �]  �\  	 			 l     �[�Z�Y�[  �Z  �Y  	 			 l      �X		�X  	 � �	Spreads and left-hand single pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   	 �		� 	 S p r e a d s   a n d   l e f t - h a n d   s i n g l e   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 		 			 i    			 I      �W�V�U�W 0 clean_save_l clean_save_L�V  �U  	 O     3			 O    2			 k   
 1		 	 	!	  r   
 	"	#	" m   
 �T
�T boovtrue	# n      	$	%	$ 1    �S
�S 
plck	% 4    �R	&
�R 
layr	& m    	'	' �	(	( ( D a t e   a n d   p a g e   n u m b e r	! 	)	*	) r    	+	,	+ m    	-	- �	.	.  W o r k	, 1    �Q
�Q 
pacl	* 	/	0	/ r    !	1	2	1 J    	3	3 	4	5	4 m    	6	6 @EB�
(F	5 	7�P	7 m    	8	8 @&      �P  	2 l     	9�O�N	9 1     �M
�M 
zero�O  �N  	0 	:�L	: I  " 1�K�J	;
�K .CoResavedocu        obj �J  	; �I	<�H
�I 
kfil	< b   $ -	=	>	= b   $ +	?	@	? b   $ )	A	B	A b   $ '	C	D	C o   $ %�G�G $0 freshpagesfolder freshPagesFolder	D o   % &�F�F 0 fileslug fileSlug	B m   ' (	E	E �	F	F  _	@ o   ) *�E�E 0 filedate fileDate	> m   + ,	G	G �	H	H 
 . i n d d�H  �L  	 l   	I�D�C	I 1    �B
�B 
pacd�D  �C  	 m     	J	J
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  	 	K	L	K l     �A�@�?�A  �@  �?  	L 	M	N	M l     �>�=�<�>  �=  �<  	N 	O	P	O l      �;	Q	R�;  	Q � �	Right-hand pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   	R �	S	Sz 	 R i g h t - h a n d   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 		P 	T	U	T i    	V	W	V I      �:�9�8�: 0 clean_save_r clean_save_R�9  �8  	W O     3	X	Y	X O    2	Z	[	Z k   
 1	\	\ 	]	^	] r   
 	_	`	_ m   
 �7
�7 boovtrue	` n      	a	b	a 1    �6
�6 
plck	b 4    �5	c
�5 
layr	c m    	d	d �	e	e ( D a t e   a n d   p a g e   n u m b e r	^ 	f	g	f r    	h	i	h m    	j	j �	k	k  W o r k	i 1    �4
�4 
pacl	g 	l	m	l r    !	n	o	n J    	p	p 	q	r	q m    	s	s @9�0S	r 	t�3	t m    	u	u @&      �3  	o l     	v�2�1	v 1     �0
�0 
zero�2  �1  	m 	w�/	w I  " 1�.�-	x
�. .CoResavedocu        obj �-  	x �,	y�+
�, 
kfil	y b   $ -	z	{	z b   $ +	|	}	| b   $ )	~		~ b   $ '	�	�	� o   $ %�*�* $0 freshpagesfolder freshPagesFolder	� o   % &�)�) 0 fileslug fileSlug	 m   ' (	�	� �	�	�  _	} o   ) *�(�( 0 filedate fileDate	{ m   + ,	�	� �	�	� 
 . i n d d�+  �/  	[ l   	��'�&	� 1    �%
�% 
pacd�'  �&  	Y m     	�	�
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  	U 	�	�	� l     �$�#�"�$  �#  �"  	� 	�	�	� l     �!� ��!  �   �  	� 	�	�	� l      �	�	��  	� � �	Changes the legal date on the left-hand page of a spread - it�s designed for pages 12-13, which have the legal date on weekdays. The news script has one for changing the weekend legal date, which is on the Red List page (20)    	� �	�	�� 	 C h a n g e s   t h e   l e g a l   d a t e   o n   t h e   l e f t - h a n d   p a g e   o f   a   s p r e a d   -   i t  s   d e s i g n e d   f o r   p a g e s   1 2 - 1 3 ,   w h i c h   h a v e   t h e   l e g a l   d a t e   o n   w e e k d a y s .   T h e   n e w s   s c r i p t   h a s   o n e   f o r   c h a n g i n g   t h e   w e e k e n d   l e g a l   d a t e ,   w h i c h   i s   o n   t h e   R e d   L i s t   p a g e   ( 2 0 )  	� 	��	� i     #	�	�	� I      ���� (0 changelegaldate_12 changeLegalDate_12�  �  	� O     (	�	�	� O    '	�	�	� k   
 &	�	� 	�	�	� I  
 �	�	�
� .InESovrrobj         obj 	� n   
 	�	�	� 4    �	�
� 
txtf	� m    	�	� �	�	�  L e g a l   d a t e	� 4   
 �	�
� 
mspr	� o    �� 0 
mastername 
masterName	� �	��
� 
dPge	� 4    �	�
� 
page	� m    �� �  	� 	��	� r    &	�	�	� o    �� 0 pagedate pageDate	� l     	���	� n      	�	�	� 1   # %�
� 
pcnt	� n    #	�	�	� 4     #�	�
� 
txtf	� m   ! "	�	� �	�	�  L e g a l   d a t e	� 4     �	�
� 
page	� m    �
�
 �  �  �  	� l   	��	�	� 1    �
� 
pacd�	  �  	� m     	�	�
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �       �	�	�	�	�	�	�	�	�	�	�	��  	� 
������ ��������� "0 create_pagedate create_pageDate� "0 create_filedate create_fileDate� >0 applymaster_changedate_single applyMaster_changeDate_single� >0 applymaster_changedate_spread applyMaster_changeDate_spread� 20 changepagenumber_single changePageNumber_single�  20 changepagenumber_spread changePageNumber_spread�� 0 clean_save_l clean_save_L�� 0 clean_save_r clean_save_R�� (0 changelegaldate_12 changeLegalDate_12
�� .aevtoappnull  �   � ****	� ��C����	�	����� "0 create_pagedate create_pageDate��  ��  	� ���������� (0 thirtyonedaymonths ThirtyOneDayMonths�� "0 thirtydaymonths ThirtyDayMonths�� 0 i  �� 0 secondmonth secondMonth	� 2LPTX\_��hlps����}��������������������������"$&26:MO[_cvx������� �� �� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 pagedate pageDate
�� 
bool�� 0 months_list  
�� .corecnte****       ****
�� 
cobj����������vE�O�����vE�O��  ��%�%a %_ %a %_ %E` OPY��a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa �%a %�%a %_ %E` OPY�a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa  �%a !%�%a "%_ %E` OPY ��a # 	 _ a $a &	 �a % a & a &_ %a '%_ %E` OPY o�a ( 	 _ a ) a &	 �a * a & a +_ %a ,%_ k%E` OPY 3�a -  *a .�%a /%_ %a 0%_ k%a 1%_ %E` OPY h	� �������	�	����� "0 create_filedate create_fileDate��  ��  	� ������ 0 numdate numDate�� 0 nummonth numMonth	� 0������������ $(��26>BJNVZbfnrz~������������������ 0 thedate theDate�� 0 themonth theMonth�� 0 theyear theYear�� 0 filedate fileDate����E�O��  �E�Y hO��  �E�Y hO��  �E�Y hO��  �E�Y hO��  �E�Y hO��  �E�Y hO��  �E�Y hO��  
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
a +E�Y hO�a ,%�%a -%_ .%E` /OP	� �������	�	����� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  	�  	� ��������������������������	���������
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
pnam��  ��  �� d� `*�, Y*��/*�k/�,FO*��/��/�*�k/l 	O�*�k/��/�,FO '*�k/�,�-�[a ,a ,\Za 81�*�k/l 	W X  hUU	� ��%����	�	����� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  	�  	� ���������������������;������G��V��c����	�����z�����
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
pnam��  ��  �� �� �*�, �*����*��/l� 	O*��/��/�*�l/l O*��/��/�*�m/l O_ *�l/�a /a ,FO_ *�m/�a /a ,FO V*�l/a ,a -a [a ,a ,\Za 81�*�l/l O*�m/a ,a -a [a ,a ,\Za 81�*�m/l W X  hUU	� �������	�	����� 20 changepagenumber_single changePageNumber_single�� ��	��� 	�  ���� 0 
pagenumber 
pageNumber��  	� ���� 0 
pagenumber 
pageNumber	� �������������������
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
pcnt�� )� %*�, *��/��/�*�k/l O�*�k/��/�,FUU	� �������	�	����� 20 changepagenumber_spread changePageNumber_spread�� ��	��� 	�  ����  0 leftpagenumber leftPageNumber��  	� ����  0 leftpagenumber leftPageNumber	� 	���������������������		
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
TEXT�� J� F*�, ?*��/��/�*�l/l O*��/��/�*�m/l O�*�l/��/�,FO�k�&*�m/��/�,FUU	� ��	����	�	����� 0 clean_save_l clean_save_L��  ��  	�  	� 	J����	'��	-��	6	8��������	E��	G��
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
�� .CoResavedocu        obj �� 4� 0*�, )e*��/�,FO�*�,FO��lv*�,FO*���%�%�%�%l UU	� ��	W����	�	����� 0 clean_save_r clean_save_R��  ��  	�  	� 	����	d�~	j�}	s	u�|�{�z�y	��x	��w
�� 
pacd
� 
layr
�~ 
plck
�} 
pacl
�| 
zero
�{ 
kfil�z $0 freshpagesfolder freshPagesFolder�y 0 fileslug fileSlug�x 0 filedate fileDate
�w .CoResavedocu        obj �� 4� 0*�, )e*��/�,FO�*�,FO��lv*�,FO*���%�%�%�%l UU	� �v	��u�t	�	��s�v (0 changelegaldate_12 changeLegalDate_12�u  �t  	�  	� 	��r�q�p�o	��n�m�l�k	��j
�r 
pacd
�q 
mspr�p 0 
mastername 
masterName
�o 
txtf
�n 
dPge
�m 
page
�l .InESovrrobj         obj �k 0 pagedate pageDate
�j 
pcnt�s )� %*�, *��/��/�*�l/l O�*�l/��/�,FUU	� �i	��h�g	�	��f
�i .aevtoappnull  �   � ****	� k    �	�	�  m	�	�  t	�	�  }	�	�  �	�	�  �	�	�  �	�	� 	�	� L	�	� ]	�	� h	�	� �	�	� W	�	� |	�	� �	�	� 	�	� I	�	� w	�	� �	�	� �	�	� /	�	� �	�	� �	�	� '�e�e  �h  �g  	�  	� � r�d y�c � � � � � ��b�a � � � � � ��` � � � � � � � � � ��_�^ � � � � ��]�\#'+/37:�[�Z�YX�X[�W�V�U�T�Sd�R�Qo}��P���O���N�M�L�����K����J���I�H�(<>B_f�Gk�F�E�D���C���B��A�@��?�>�=�<�;�:������9")�8PW]~�����7���6=IL�6VZ^be�5�4t��3����� -�d $0 freshpagesfolder freshPagesFolder�c  0 masterdocument masterDocument�b �a 0 weekday_pages  �` 0 weekend_pages  �_ 
�^ 0 ahead_pages  �] �\ 0 	days_list  �[ �Z 0 months_list  
�Y 
prmp
�X 
appr�W 
�V .gtqpchltns    @   @ ns  
�U 
TEXT�T 0 theday theDay
�S 
rslt
�R 
errn�Q���P 0 themonth theMonth
�O 
dtxt
�N .sysodlogaskr        TEXT
�M 
ttxt�L 0 thedate theDate�K 0 theyear theYear
�J 
ret 
�I 
mlsl�H &0 masterstogenerate mastersToGenerate�G 0 pagedate pageDate�F 0 filedate fileDate�E "0 create_pagedate create_pageDate�D "0 create_filedate create_fileDate�C 0 
mastername 
masterName�B 0 fileslug fileSlug
�A .aevtodocnull  �    alis�@ >0 applymaster_changedate_spread applyMaster_changeDate_spread�? 20 changepagenumber_spread changePageNumber_spread�> 0 clean_save_l clean_save_L
�= 
pacd
�< 
svop
�; savoyes 
�: .CoReclosnull���     obj �9 >0 applymaster_changedate_single applyMaster_changeDate_single�8 (0 changelegaldate_12 changeLegalDate_12�7 0 clean_save_r clean_save_R�6 0 p10_days  �5 �4 0 p14_days  �3 20 changepagenumber_single changePageNumber_single�f��E�O�E�O�������vE�O����a a �vE` Oa a a a a a a a a a a vE` Oa a  a !a "a #a $a %a &vE` 'Oa (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4vE` 5O_ 'a 6a 7a 8a 9a : ;a <&E` =O_ >a ?  )a @a AlhY hO_ =a B �_ 5a 6a Ca 8a Da : ;a <&E` EO_ >a F  )a @a AlhY hOa Ga Ha Ia 8a Ja : Ka L,a <&E` MO_ >a N  )a @a AlhY hOa Oa Ha Pa 8a Qa : Ka L,a <&E` RO_ >a S  )a @a AlhY hY hO_ =a T  C_ a 6a U_ V%_ V%a W%a 8a Xa Ye� ;E` ZO_ >f  )a @a AlhY hY �_ =a [ A�a 6a \_ V%_ V%a ]%a 8a ^a Ye� ;E` ZO_ >f  )a @a AlhY hY N_ =a _  C_ a 6a `_ V%_ V%a a%a 8a ba Ye� ;E` ZO_ >f  )a @a AlhY hY hO_ =a c  a dE` eOa fE` gY *j+ hO*j+ iO_ Za j �a kE` lO_ =a m  Ca nE` oOa p 1�j qO)j+ rO)a sk+ tO)j+ uO*a v, *a wa xl yUUY @a zE` oOa p 1�j qO)j+ rO)a {k+ tO)j+ uO*a v, *a wa xl yUUY hO_ Za | Ba }E` lOa ~E` oOa p (�j qO)j+ O)j+ uO*a v, *a wa xl yUUY hO_ Za � Ha �E` lOa �E` oOa p .�j qO)j+ rO)j+ �O)j+ uO*a v, *a wa xl yUUY hO_ Za � Ba �E` lOa �E` oOa p (�j qO)j+ rO)j+ uO*a v, *a wa xl yUUY hO_ Za � �a �E` lOa �E` oOa p (�j qO)j+ O)j+ uO*a v, *a wa xl yUUOa �E` lOa �E` oOa p (�j qO)j+ O)j+ �O*a v, *a wa xl yUUY hO_ Za � Ba �E` lOa �E` oOa p (�j qO)j+ O)j+ �O*a v, *a wa xl yUUY hO_ Za � Ba �E` lOa �E` oOa p (�j qO)j+ rO)j+ uO*a v, *a wa xl yUUY hO_ Za � �a �E` lOa �a �lvE` �Oa �a �a �a �a �a �vE` �O_ �_ = Ea �E` oOa p 1�j qO)j+ O)a �k+ �O)j+ uO*a v, *a wa xl yUUOPY N_ �_ = Ca �E` oOa p 1�j qO)j+ O)a �k+ �O)j+ uO*a v, *a wa xl yUUY hY hO_ Za � Ba �E` lOa �E` oOa p (�j qO)j+ O)j+ �O*a v, *a wa xl yUUY hO_ Za � Ba �E` lOa �E` oOa p (�j qO)j+ rO)j+ uO*a v, *a wa xl yUUY hOa � �j qUascr  ��ޭ