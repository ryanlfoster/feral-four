FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ; 5	High Brow, a better Morning Star arts-page generator     � 	 	 j 	 H i g h   B r o w ,   a   b e t t e r   M o r n i n g   S t a r   a r t s - p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��    " 	Created on			June 16th 2012     �   8 	 C r e a t e d   o n 	 	 	 J u n e   1 6 t h   2 0 1 2      l     ��  ��    " 	Last updated		July 7th 2012     �   8 	 L a s t   u p d a t e d 	 	 J u l y   7 t h   2 0 1 2      l     ��������  ��  ��        l      ��   ��    � � Description: This generates the pages needed by the arts desk. It has a different name because it�s written in a very different way to previous scripts and isn�t finished.	      � ! !Z   D e s c r i p t i o n :   T h i s   g e n e r a t e s   t h e   p a g e s   n e e d e d   b y   t h e   a r t s   d e s k .   I t   h a s   a   d i f f e r e n t   n a m e   b e c a u s e   i t  s   w r i t t e n   i n   a   v e r y   d i f f e r e n t   w a y   t o   p r e v i o u s   s c r i p t s   a n d   i s n  t   f i n i s h e d . 	   " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   & � � Status: Updated handlers, now stored in St Ann's.scpt, Finder activation at script end, InDesign to ignore dialogs while the script runs.	    ' � ( (   S t a t u s :   U p d a t e d   h a n d l e r s ,   n o w   s t o r e d   i n   S t   A n n ' s . s c p t ,   F i n d e r   a c t i v a t i o n   a t   s c r i p t   e n d ,   I n D e s i g n   t o   i g n o r e   d i a l o g s   w h i l e   t h e   s c r i p t   r u n s . 	 %  ) * ) l     ��������  ��  ��   *  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / D > Global variables that are needed in handlers at some point --    0 � 1 1 |   G l o b a l   v a r i a b l e s   t h a t   a r e   n e e d e d   i n   h a n d l e r s   a t   s o m e   p o i n t   - - .  2 3 2 p       4 4 ������ 0 theday theDay��   3  5 6 5 p       7 7 ������ 0 themonth theMonth��   6  8 9 8 p       : : ������ 0 thedate theDate��   9  ; < ; p       = = ������ 0 theyear theYear��   <  > ? > p       @ @ ������ 0 months_list  ��   ?  A B A l      C D E C p       F F ������ 0 fileslug fileSlug��   D > 8 The short code used at the start of the new file�s name    E � G G p   T h e   s h o r t   c o d e   u s e d   a t   t h e   s t a r t   o f   t h e   n e w   f i l e  s   n a m e B  H I H l      J K L J p       M M ������ 0 filedate fileDate��   K 5 / The short date used to name the InDesign files    L � N N ^   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s I  O P O l      Q R S Q p       T T ������ 0 pagedate pageDate��   R 6 0 The full date used in the InDesign page�s folio    S � U U `   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o P  V W V l      X Y Z X p       [ [ ������ $0 freshpagesfolder freshPagesFolder��   Y . ( Where the newly created files are saved    Z � \ \ P   W h e r e   t h e   n e w l y   c r e a t e d   f i l e s   a r e   s a v e d W  ] ^ ] l      _ ` a _ p       b b ������  0 masterdocument masterDocument��   ` * $ The actual InDesign master document    a � c c H   T h e   a c t u a l   I n D e s i g n   m a s t e r   d o c u m e n t ^  d e d l      f g h f p       i i ������ 0 
mastername 
masterName��   g C = The name of the master page/spread to be applied in InDesign    h � j j z   T h e   n a m e   o f   t h e   m a s t e r   p a g e / s p r e a d   t o   b e   a p p l i e d   i n   I n D e s i g n e  k l k l     ��������  ��  ��   l  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q   Unchanging variables --    r � s s 0   U n c h a n g i n g   v a r i a b l e s   - - p  t u t l     v���� v r      w x w m      y y � z z j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : x o      ���� $0 freshpagesfolder freshPagesFolder��  ��   u  { | { l    }���� } r     ~  ~ m     � � � � � p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d  o      ����  0 masterdocument masterDocument��  ��   |  � � � l     ��������  ��  ��   �  � � � l    ����� � r     � � � J     � �  � � � m    	 � � � � �  A r t s   ( p 1 1 ) �  ��� � m   	 
 � � � � �  A r t s   s p l i t��   � o      ���� 0 weekday_pages  ��  ��   �  � � � l    ����� � r     � � � J     � �  � � � m     � � � � �  A r t s   ( p 1 1 ) �  � � � m     � � � � �  A r t s   s p l i t �  ��� � m     � � � � �  1 6 - 1 7   ( w e e k e n d )��   � o      ���� 0 ahead_pages  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l   * ����� � r    * � � � J    & � �  � � � m     � � � � �  M o n d a y �  � � � m     � � � � �  T u e s d a y �  � � � m     � � � � �  W e d n e s d a y �  � � � m     � � � � �  T h u r s d a y �  � � � m     � � � � �  F r i d a y �  � � � m     � � � � �  S a t u r d a y �  ��� � m    " � � � � � , N o   d a y      w o r k i n g   a h e a d��   � o      ���� 0 	days_list  ��  ��   �  � � � l  + W ����� � r   + W � � � J   + S � �  � � � m   + . � � � � �  J a n u a r y �  � � � m   . 1 � � � � �  F e b r u a r y �  � � � m   1 4 � � � � � 
 M a r c h �  � � � m   4 7 � � � � � 
 A p r i l �  � � � m   7 : � � � � �  M a y �  � � � m   : = � � � � �  J u n e �  � � � m   = @ � � � � �  J u l y �  � � � m   @ C � � � � �  A u g u s t �  � � � m   C F � � � � �  S e p t e m b e r �  � � � m   F I � � � � �  O c t o b e r �  � � � m   I L � � � � �  N o v e m b e r �  ��� � m   L O � � � � �  D e c e m b e r��   � o      ���� 0 months_list  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� ��      User prompts --    �     U s e r   p r o m p t s   - - �  l     ��������  ��  ��    l      ����    Get the date     �		  G e t   t h e   d a t e   

 l  X u���� r   X u c   X q l  X m���� I  X m��
�� .gtqpchltns    @   @ ns   o   X [���� 0 	days_list   ��
�� 
prmp m   ^ a � 8 P l e a s e   p i c k   t h e   e d i t i o n   d a y : ����
�� 
appr m   d g � & A r t s   p a g e   g e n e r a t o r��  ��  ��   m   m p��
�� 
TEXT o      ���� 0 theday theDay��  ��    l  v ����� Z  v ����� =  v } !  1   v y��
�� 
rslt! m   y |"" �## 
 f a l s e R   � �����$
�� .ascrerr ****      � ****��  $ ��%��
�� 
errn% m   � ���������  ��  ��  ��  ��   &'& l  �I(����( Z   �I)*����) >  � �+,+ o   � ����� 0 theday theDay, m   � �-- �.. , N o   d a y      w o r k i n g   a h e a d* k   �E// 010 r   � �232 c   � �454 l  � �6����6 I  � ���78
�� .gtqpchltns    @   @ ns  7 o   � ����� 0 months_list  8 ��9:
�� 
prmp9 m   � �;; �<< , P l e a s e   p i c k   t h e   m o n t h :: ��=��
�� 
appr= m   � �>> �?? & A r t s   p a g e   g e n e r a t o r��  ��  ��  5 m   � ���
�� 
TEXT3 o      ���� 0 themonth theMonth1 @A@ Z  � �BC����B =  � �DED 1   � ��
� 
rsltE m   � �FF �GG 
 f a l s eC R   � ��~�}H
�~ .ascrerr ****      � ****�}  H �|I�{
�| 
errnI m   � ��z�z���{  ��  ��  A JKJ r   � �LML c   � �NON l  � �P�y�xP n   � �QRQ 1   � ��w
�w 
ttxtR l  � �S�v�uS I  � ��tTU
�t .sysodlogaskr        TEXTT m   � �VV �WW * P l e a s e   t y p e   t h e   d a t e :U �sXY
�s 
dtxtX m   � �ZZ �[[  Y �r\�q
�r 
appr\ m   � �]] �^^ & A r t s   p a g e   g e n e r a t o r�q  �v  �u  �y  �x  O m   � ��p
�p 
TEXTM o      �o�o 0 thedate theDateK _`_ Z  �
ab�n�ma =  � �cdc 1   � ��l
�l 
rsltd m   � �ee �ff 
 f a l s eb R   ��k�jg
�k .ascrerr ****      � ****�j  g �ih�h
�i 
errnh m   �g�g���h  �n  �m  ` iji r  ,klk c  (mnm l $o�f�eo n  $pqp 1   $�d
�d 
ttxtq l  r�c�br I  �ast
�a .sysodlogaskr        TEXTs m  uu �vv * P l e a s e   t y p e   t h e   y e a r :t �`wx
�` 
dtxtw m  yy �zz  x �_{�^
�_ 
appr{ m  || �}} & A r t s   p a g e   g e n e r a t o r�^  �c  �b  �f  �e  n m  $'�]
�] 
TEXTl o      �\�\ 0 theyear theYearj ~�[~ Z -E��Z�Y = -4��� 1  -0�X
�X 
rslt� m  03�� ��� 
 f a l s e� R  7A�W�V�
�W .ascrerr ****      � ****�V  � �U��T
�U 
errn� m  ;>�S�S���T  �Z  �Y  �[  ��  ��  ��  ��  ' ��� l     �R�Q�P�R  �Q  �P  � ��� l      �O���O  �  Get the pages to create   � ��� . G e t   t h e   p a g e s   t o   c r e a t e� ��� l J���N�M� Z  J�����L� = JQ��� o  JM�K�K 0 theday theDay� m  MP�� ��� , N o   d a y      w o r k i n g   a h e a d� k  T��� ��� r  T{��� l Tw��J�I� I Tw�H��
�H .gtqpchltns    @   @ ns  � o  TU�G�G 0 ahead_pages  � �F��
�F 
prmp� l Xg��E�D� b  Xg��� b  Xc��� b  X_��� m  X[�� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  [^�C
�C 
ret � o  _b�B
�B 
ret � m  cf�� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�E  �D  � �A��
�A 
appr� m  jm�� ��� & A r t s   p a g e   g e n e r a t o r� �@��?
�@ 
mlsl� m  pq�>
�> boovtrue�?  �J  �I  � o      �=�= &0 masterstogenerate mastersToGenerate� ��<� Z |����;�:� = |���� 1  |�9
�9 
rslt� m  ��8
�8 boovfals� R  ���7�6�
�7 .ascrerr ****      � ****�6  � �5��4
�5 
errn� m  ���3�3���4  �;  �:  �<  � ��� > ����� o  ���2�2 0 theday theDay� m  ���� ���  S a t u r d a y� ��� k  ���� ��� r  ����� l ����1�0� I ���/��
�/ .gtqpchltns    @   @ ns  � o  ���.�. 0 weekday_pages  � �-��
�- 
prmp� l ����,�+� b  ����� b  ����� b  ����� m  ���� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  ���*
�* 
ret � o  ���)
�) 
ret � m  ���� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�,  �+  � �(��
�( 
appr� m  ���� ��� & A r t s   p a g e   g e n e r a t o r� �'��&
�' 
mlsl� m  ���%
�% boovtrue�&  �1  �0  � o      �$�$ &0 masterstogenerate mastersToGenerate� ��#� Z �����"�!� = ����� 1  ��� 
�  
rslt� m  ���
� boovfals� R  �����
� .ascrerr ****      � ****�  � ���
� 
errn� m  �������  �"  �!  �#  � ��� = ����� o  ���� 0 theday theDay� m  ���� ���  S a t u r d a y� ��� r  ����� J  ���� ��� m  ���� ���  1 6 - 1 7   ( w e e k e n d )�  � o      �� &0 masterstogenerate mastersToGenerate�  �L  �N  �M  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �   Create the date --   � ��� &   C r e a t e   t h e   d a t e   - -� ��� l     ����  �  �  � ��� l ����
� Z  ����	�� = ��   o  ���� 0 theday theDay m  �� � , N o   d a y      w o r k i n g   a h e a d� k    r  	 m  		 �

 * A   d a t e   n e e d s   e n t e r i n g o      �� 0 pagedate pageDate � r  
 m  
 � 
 A h e a d o      �� 0 filedate fileDate�  �	  � k    I  ���� "0 create_pagedate create_pageDate�  �   � I  � �����  "0 create_filedate create_fileDate��  ��  �  �  �
  �  l     ��������  ��  ��    l     ��������  ��  ��    l     ����     Generate the pages --    � ,   G e n e r a t e   t h e   p a g e s   - -  l     ��������  ��  ��     l  4!����! O  4"#" r  &3$%$ m  &)��
�� elnteNvr% n      &'& 1  .2��
�� 
UIAc' 1  ).��
�� 
pScr# m   #((�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��    )*) l     ��������  ��  ��  * +,+ l 5�-����- Z  5�./����. E 5<010 o  58���� &0 masterstogenerate mastersToGenerate1 m  8;22 �33  1 6 - 1 7   ( w e e k e n d )/ l ?|4564 k  ?|77 898 r  ?F:;: m  ?B<< �==  A r t s - 1 6 - 1 7; o      ���� 0 
mastername 
masterName9 >?> r  GN@A@ m  GJBB �CC  1 6 - 1 7 _ E n t s - A r t sA o      ���� 0 fileslug fileSlug? D��D O  O|EFE k  U{GG HIH I UZ��J��
�� .aevtodocnull  �    alisJ o  UV����  0 masterdocument masterDocument��  I KLK n [`MNM I  \`�������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  N  f  [\L OPO n afQRQ I  bf�������� 0 clean_save_l clean_save_L��  ��  R  f  abP S��S O g{TUT I oz����V
�� .CoReclosnull���     obj ��  V ��W��
�� 
svopW m  sv��
�� savoyes ��  U l glX����X 1  gl��
�� 
pacd��  ��  ��  F m  ORYY�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  5 ( " Create the weekend Ents/Arts page   6 �ZZ D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  ��  ��  , [\[ l     ��������  ��  ��  \ ]^] l     ��������  ��  ��  ^ _`_ l     ��������  ��  ��  ` aba l ��c����c Z  ��de����d E ��fgf o  ������ &0 masterstogenerate mastersToGenerateg m  ��hh �ii  A r t s   ( p 1 1 )e l ��jklj k  ��mm non r  ��pqp m  ��rr �ss  A r t s - 1 1q o      ���� 0 
mastername 
masterNameo tut r  ��vwv m  ��xx �yy  1 1 _ A r t sw o      ���� 0 fileslug fileSlugu z��z O  ��{|{ k  ��}} ~~ I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��   ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_r clean_save_R��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � 1  ����
�� 
pacd��  | m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  k ( " Create the weekday Arts page (11)   l ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  ��  ��  b ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l ������� Z  �������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  A r t s   s p l i t� l ����� k  ��� ��� r  ����� m  ���� ���  A r t s - S p l i t� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  1 0 - 1 1 _ A r t s� o      ���� 0 fileslug fileSlug� ���� O  ���� k  ��� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ���� I �����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ��
�� savoyes ��  � l ������� 1  ���
�� 
pacd��  ��  ��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  � + % Creates an Arts split-spread (10-11)   � ��� J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l -������ O -��� r  ,��� m  "��
�� elnteInA� n      ��� 1  '+��
�� 
UIAc� 1  "'��
�� 
pScr� m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l .@������ O  .@��� k  4?�� ��� I 49������
�� .miscactvnull��� ��� obj ��  ��  � ���� I :?���~
� .aevtodocnull  �    alis� o  :;�}�} $0 freshpagesfolder freshPagesFolder�~  ��  � m  .1���                                                                                  MACS  alis    Z  SSD                        �@��H+     <
Finder.app                                                       ���(��        ����  	                CoreServices    �@��      �(��       <   /   .  -SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  � ��� l     �|�{�z�|  �{  �z  � ��� l     �y�x�w�y  �x  �w  � ��� l     �v���v  �   Handler definitions --   � ��� .   H a n d l e r   d e f i n i t i o n s   - -� ��� l     �u�t�s�u  �t  �s  � ��� l     �r�q�p�r  �q  �p  � ��� l      �o���o  � X R	Create the date used on the InDesign pages, and deal with some Saturday oddities	   � ��� � 	 C r e a t e   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l   w i t h   s o m e   S a t u r d a y   o d d i t i e s 	� ��� i     ��� I      �n�m�l�n "0 create_pagedate create_pageDate�m  �l  � k    ��� ��� r     
��� J     �� ��� m     �� ���  J a n u a r y� ��� m    �� �   
 M a r c h�  m     �  M a y  m     �  J u l y 	
	 m     �  A u g u s t
 �k m     �  O c t o b e r�k  � o      �j�j (0 thirtyonedaymonths ThirtyOneDayMonths�  r     J      m     � 
 A p r i l  m     �  J u n e  m     �    S e p t e m b e r !�i! m    "" �##  N o v e m b e r�i   o      �h�h "0 thirtydaymonths ThirtyDayMonths $%$ l   �g�f�e�g  �f  �e  % &�d& Z   �'()�c' >   *+* o    �b�b 0 theday theDay+ m    ,, �--  S a t u r d a y( l   5./0. k    511 232 r    3454 l   /6�a�`6 b    /787 b    +9:9 b    ';<; b    #=>= b    ?@? b    ABA o    �_�_ 0 theday theDayB m    CC �DD   @ o    �^�^ 0 themonth theMonth> m    "EE �FF   < o   # &�]�] 0 thedate theDate: m   ' *GG �HH   8 o   + .�\�\ 0 theyear theYear�a  �`  5 o      �[�[ 0 pagedate pageDate3 I�ZI l  4 4�Y�X�W�Y  �X  �W  �Z  / + % Does the page date for every weekday   0 �JJ J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a y) KLK F   8 UMNM F   8 KOPO =  8 =QRQ o   8 9�V�V 0 theday theDayR m   9 <SS �TT  S a t u r d a yP =  @ GUVU o   @ C�U�U 0 thedate theDateV m   C FWW �XX  3 0N E  N QYZY o   N O�T�T "0 thirtydaymonths ThirtyDayMonthsZ o   O P�S�S 0 themonth theMonthL [\[ l  X �]^_] k   X �`` aba Y   X �c�Rde�Qc l  h �fghf Z  h �ij�P�Oi =  h rklk n   h pmnm 4   k p�No
�N 
cobjo o   n o�M�M 0 i  n o   h k�L�L 0 months_list  l o   p q�K�K 0 themonth theMonthj r   u �pqp l  u r�J�Ir n   u sts 4   x �Hu
�H 
cobju l  { ~v�G�Fv [   { ~wxw o   { |�E�E 0 i  x m   | }�D�D �G  �F  t o   u x�C�C 0 months_list  �J  �I  q o      �B�B 0 secondmonth secondMonth�P  �O  g V P This repeat block here grabs the name of the next month to use in the page date   h �yy �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e�R 0 i  d m   [ \�A�A e I  \ c�@z�?
�@ .corecnte****       ****z o   \ _�>�> 0 months_list  �?  �Q  b {|{ l  � �}~} r   � ���� l  � ���=�<� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���   S a t u r d a y / S u n d a y  � o   � ��;�; 0 themonth theMonth� m   � ��� ���    3 0 -� o   � ��:�: 0 secondmonth secondMonth� m   � ��� ���    1  � o   � ��9�9 0 theyear theYear�=  �<  � o      �8�8 0 pagedate pageDate~ P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"    ��� �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 "| ��7� l  � ��6�5�4�6  �5  �4  �7  ^ I C Deals with Saturdays at the end of 30-day months (uses list above)   _ ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )\ ��� F   � ���� F   � ���� =  � ���� o   � ��3�3 0 theday theDay� m   � ��� ���  S a t u r d a y� =  � ���� o   � ��2�2 0 thedate theDate� m   � ��� ���  3 1� E  � ���� o   � ��1�1 (0 thirtyonedaymonths ThirtyOneDayMonths� o   � ��0�0 0 themonth theMonth� ��� l  ����� k   ��� ��� Y   � ���/���.� Z  � ����-�,� =  � ���� n   � ���� 4   � ��+�
�+ 
cobj� o   � ��*�* 0 i  � o   � ��)�) 0 months_list  � o   � ��(�( 0 themonth theMonth� r   � ���� l  � ���'�&� n   � ���� 4   � ��%�
�% 
cobj� l  � ���$�#� [   � ���� o   � ��"�" 0 i  � m   � ��!�! �$  �#  � o   � �� �  0 months_list  �'  �&  � o      �� 0 secondmonth secondMonth�-  �,  �/ 0 i  � m   � ��� � I  � ����
� .corecnte****       ****� o   � ��� 0 months_list  �  �.  � ��� r   ���� l  ����� b   ���� b   �	��� b   ���� b   ���� b   � ���� m   � ��� ���   S a t u r d a y / S u n d a y  � o   � ��� 0 themonth theMonth� m   ��� ���    3 1 -� o  �� 0 secondmonth secondMonth� m  �� ���    1  � o  	�� 0 theyear theYear�  �  � o      �� 0 pagedate pageDate� ��� l ����  �  �  �  � I C Deals with Saturdays at the end of 31-day months (uses list above)   � ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )� ��� F  5��� F  )��� = ��� o  �� 0 theday theDay� m  �� ���  S a t u r d a y� ? %��� o  !�� 0 thedate theDate� m  !$�� ���  2 7� = ,1��� o  ,-�� 0 themonth theMonth� m  -0�� ���  F e b r u a r y� ��� l 8M���� k  8M�� ��� r  8K��� l 8G���� b  8G��� b  8C��� b  8?��� m  8;�� ��� 2 S a t u r d a y / S u n d a y   F e b r u a r y  � o  ;>�� 0 thedate theDate� m  ?B�� ���  - M a r c h   1  � o  CF�
�
 0 theyear theYear�  �  � o      �	�	 0 pagedate pageDate�  �  l LL����  �  �  �  � { u Deals with Saturdays at the end of February. Fun fact: it�s quite blunt but won�t produce the wrong date until 2032.   � � �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   F u n   f a c t :   i t  s   q u i t e   b l u n t   b u t   w o n  t   p r o d u c e   t h e   w r o n g   d a t e   u n t i l   2 0 3 2 .�  F  Po F  Pc = PU	 o  PQ�� 0 theday theDay	 m  QT

 �  S a t u r d a y = X_ o  X[�� 0 thedate theDate m  [^ �  3 1 = fk o  fg�� 0 themonth theMonth m  gj �  D e c e m b e r  l r� k  r�  r  r� l r���  b  r�  b  r}!"! b  ry#$# m  ru%% �&& L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  $ o  ux���� 0 theyear theYear" m  y|'' �((  -  l }�)����) [  }�*+* o  }����� 0 theyear theYear+ m  ������ ��  ��  �  �    o      ���� 0 pagedate pageDate ,��, l ����������  ��  ��  ��   2 , Deals with Saturdays at the end of December    �-- X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e r ./. = ��010 o  ������ 0 theday theDay1 m  ��22 �33  S a t u r d a y/ 4��4 l ��5675 k  ��88 9:9 r  ��;<; l ��=����= b  ��>?> b  ��@A@ b  ��BCB b  ��DED b  ��FGF b  ��HIH b  ��JKJ m  ��LL �MM   S a t u r d a y / S u n d a y  K o  ������ 0 themonth theMonthI m  ��NN �OO   G o  ������ 0 thedate theDateE m  ��PP �QQ  -C l ��R����R [  ��STS o  ������ 0 thedate theDateT m  ������ ��  ��  A m  ��UU �VV   ? o  ������ 0 theyear theYear��  ��  < o      ���� 0 pagedate pageDate: W��W l ����������  ��  ��  ��  6 3 - Does the page date for every normal Saturday   7 �XX Z   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y��  �c  �d  � YZY l     ��������  ��  ��  Z [\[ l     ��������  ��  ��  \ ]^] l      ��_`��  _ @ :	Create the short date to name the created InDesign files	   ` �aa t 	 C r e a t e   t h e   s h o r t   d a t e   t o   n a m e   t h e   c r e a t e d   I n D e s i g n   f i l e s 	^ bcb i    ded I      �������� "0 create_filedate create_fileDate��  ��  e k     [ff ghg Z     ij��ki A    lml c     non o     ���� 0 thedate theDateo m    ��
�� 
longm m    pp �qq  1 0j l   rstr r    uvu l   w����w b    xyx m    	zz �{{  0y o   	 
���� 0 thedate theDate��  ��  v o      ���� 0 numdate numDates L F If the date is 1-10 this adds an initial zero to use in the file name   t �|| �   I f   t h e   d a t e   i s   1 - 1 0   t h i s   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e��  k r    }~} o    ���� 0 thedate theDate~ o      ���� 0 numdate numDateh � l   ��������  ��  ��  � ��� Y    7�������� l  " 2���� Z  " 2������� =  " (��� n   " &��� 4   # &���
�� 
cobj� o   $ %���� 0 i  � o   " #���� 0 months_list  � o   & '���� 0 themonth theMonth� r   + .��� o   + ,���� 0 i  � o      ���� 0 raw_nummonth raw_numMonth��  ��  � d ^ This gets the month number and, if less than 10, adds an initial zero to use in the file name   � ��� �   T h i s   g e t s   t h e   m o n t h   n u m b e r   a n d ,   i f   l e s s   t h a n   1 0 ,   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e�� 0 i  � m    ���� � I   �����
�� .corecnte****       ****� o    ���� 0 months_list  ��  ��  � ��� Z   8 I������ A  8 ;��� o   8 9���� 0 raw_nummonth raw_numMonth� m   9 :���� 
� r   > C��� l  > A������ b   > A��� m   > ?�� ���  0� o   ? @���� 0 raw_nummonth raw_numMonth��  ��  � o      ���� 0 nummonth numMonth��  � r   F I��� o   F G���� 0 raw_nummonth raw_numMonth� o      ���� 0 nummonth numMonth� ��� l  J J��������  ��  ��  � ���� l  J [���� r   J [��� l  J Y������ b   J Y��� b   J M��� o   J K���� 0 numdate numDate� o   K L���� 0 nummonth numMonth� l  M X������ n   M X��� 7 N X����
�� 
ctxt� m   R T���� � m   U W���� � o   M N���� 0 theyear theYear��  ��  ��  ��  � o      ���� 0 filedate fileDate� Z T This combines the date, month and last two digits of the year to create a file name   � ��� �   T h i s   c o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r   t o   c r e a t e   a   f i l e   n a m e��  c ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � ` Z	Single page: Apply a master, change the date and override everything on the "Work" layer	   � ��� � 	 S i n g l e   p a g e :   A p p l y   a   m a s t e r ,   c h a n g e   t h e   d a t e   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	� ��� i    ��� I      �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  � O     c��� O    b��� k   
 a�� ��� r   
 ��� 4   
 ���
�� 
mspr� o    ���� 0 
mastername 
masterName� n      ��� 1    ��
�� 
pmas� 4    ���
�� 
page� m    ���� � ��� I   &����
�� .InESovrrobj         obj � n    ��� 4    ���
�� 
txtf� m    �� ���  E d i t i o n   d a t e� 4    ���
�� 
mspr� o    ���� 0 
mastername 
masterName� �����
�� 
dPge� 4    "���
�� 
page� m     !���� ��  � ��� r   ' 2��� o   ' (���� 0 pagedate pageDate� l     ������ n      ��� 1   / 1��
�� 
pcnt� n   ( /��� 4   , /���
�� 
txtf� m   - .�� ���  E d i t i o n   d a t e� 4   ( ,���
�� 
page� m   * +���� ��  ��  � ���� Q   3 a����� I  6 X����
�� .InESovrrobj         obj � l  6 O������ 6  6 O��� n   6 >��� 2   < >��
�� 
cobj� n   6 <��� 1   : <��
�� 
mpgs� 4   6 :���
�� 
page� m   8 9���� � =  ? N��� n  @ H��� 1   D H��
�� 
pnam� 1   @ D��
�� 
pilr� m   I M�� ���  W o r k��  ��  � ����
�� 
dPge� 4   P T�~�
�~ 
page� m   R S�}�} �  � R      �|�{�z
�| .ascrerr ****      � ****�{  �z  ��  ��  � l   ��y�x� 1    �w
�w 
pacd�y  �x  � m       �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  l     �v�u�t�v  �u  �t    l     �s�r�q�s  �r  �q    l      �p�p   } w	Spreads: Create a new spread from a master, change the date on both pages and override everything on the "Work" layer	    �		 � 	 S p r e a d s :   C r e a t e   a   n e w   s p r e a d   f r o m   a   m a s t e r ,   c h a n g e   t h e   d a t e   o n   b o t h   p a g e s   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	 

 i     I      �o�n�m�o >0 applymaster_changedate_spread applyMaster_changeDate_spread�n  �m   O     � O    � k   
 �  I  
 �l�k
�l .corecrel****      � null�k   �j
�j 
kocl m    �i
�i 
sprd �h�g
�h 
prdt K     �f�e
�f 
pmas 4    �d
�d 
mspr o    �c�c 0 
mastername 
masterName�e  �g    I   *�b
�b .InESovrrobj         obj  n    ! !  4    !�a"
�a 
txtf" m     ## �$$  L - E d i t i o n   d a t e! 4    �`%
�` 
mspr% o    �_�_ 0 
mastername 
masterName �^&�]
�^ 
dPge& 4   " &�\'
�\ 
page' m   $ %�[�[ �]   ()( I  + ;�Z*+
�Z .InESovrrobj         obj * n   + 2,-, 4   / 2�Y.
�Y 
txtf. m   0 1// �00  R - E d i t i o n   d a t e- 4   + /�X1
�X 
mspr1 o   - .�W�W 0 
mastername 
masterName+ �V2�U
�V 
dPge2 4   3 7�T3
�T 
page3 m   5 6�S�S �U  ) 454 r   < M676 o   < ?�R�R 0 pagedate pageDate7 l     8�Q�P8 n      9:9 1   H L�O
�O 
pcnt: n   ? H;<; 4   C H�N=
�N 
txtf= m   D G>> �??  L - E d i t i o n   d a t e< 4   ? C�M@
�M 
page@ m   A B�L�L �Q  �P  5 ABA r   N _CDC o   N Q�K�K 0 pagedate pageDateD l     E�J�IE n      FGF 1   Z ^�H
�H 
pcntG n   Q ZHIH 4   U Z�GJ
�G 
txtfJ m   V YKK �LL  R - E d i t i o n   d a t eI 4   Q U�FM
�F 
pageM m   S T�E�E �J  �I  B N�DN Q   ` �OP�CO k   c �QQ RSR I  c ��BTU
�B .InESovrrobj         obj T l  c �V�A�@V 6  c �WXW n   c oYZY 2   k o�?
�? 
cobjZ n   c k[\[ 1   g k�>
�> 
mpgs\ 4   c g�=]
�= 
page] m   e f�<�< X =  r �^_^ n  s {`a` 1   w {�;
�; 
pnama 1   s w�:
�: 
pilr_ m   | �bb �cc  W o r k�A  �@  U �9d�8
�9 
dPged 4   � ��7e
�7 
pagee m   � ��6�6 �8  S f�5f I  � ��4gh
�4 .InESovrrobj         obj g l  � �i�3�2i 6  � �jkj n   � �lml 2   � ��1
�1 
cobjm n   � �non 1   � ��0
�0 
mpgso 4   � ��/p
�/ 
pagep m   � ��.�. k =  � �qrq n  � �sts 1   � ��-
�- 
pnamt 1   � ��,
�, 
pilrr m   � �uu �vv  W o r k�3  �2  h �+w�*
�+ 
dPgew 4   � ��)x
�) 
pagex m   � ��(�( �*  �5  P R      �'�&�%
�' .ascrerr ****      � ****�&  �%  �C  �D   l   y�$�#y 1    �"
�" 
pacd�$  �#   m     zz�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   {|{ l     �!� ��!  �   �  | }~} l     ����  �  �  ~ � l      ����  � � }	Single page: Change the page number to the one specified in the handler call - e.g. changePageNumber_single("3") for page 3	   � ��� � 	 S i n g l e   p a g e :   C h a n g e   t h e   p a g e   n u m b e r   t o   t h e   o n e   s p e c i f i e d   i n   t h e   h a n d l e r   c a l l   -   e . g .   c h a n g e P a g e N u m b e r _ s i n g l e ( " 3 " )   f o r   p a g e   3 	� ��� i    ��� I      ���� 20 changepagenumber_single changePageNumber_single� ��� o      �� 0 
pagenumber 
pageNumber�  �  � O     (��� O    '��� k   
 &�� ��� I  
 ���
� .InESovrrobj         obj � n   
 ��� 4    ��
� 
txtf� m    �� ���  P a g e   n u m b e r� 4   
 ��
� 
mspr� o    �� 0 
mastername 
masterName� ���
� 
dPge� 4    ��
� 
page� m    �� �  � ��� r    &��� o    �� 0 
pagenumber 
pageNumber� l     ���� n      ��� 1   # %�

�
 
pcnt� n    #��� 4     #�	�
�	 
txtf� m   ! "�� ���  P a g e   n u m b e r� 4     ��
� 
page� m    �� �  �  �  � l   ���� 1    �
� 
pacd�  �  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     ����  �  �  � ��� l     � �����   ��  ��  � ��� l      ������  � � �	Spreads: Change the page number on both pages. The handler call asks for the left-hand page�s number - e.g. changePageNumber_spread("8") for pages 8 and 9	   � ���8 	 S p r e a d s :   C h a n g e   t h e   p a g e   n u m b e r   o n   b o t h   p a g e s .   T h e   h a n d l e r   c a l l   a s k s   f o r   t h e   l e f t - h a n d   p a g e  s   n u m b e r   -   e . g .   c h a n g e P a g e N u m b e r _ s p r e a d ( " 8 " )   f o r   p a g e s   8   a n d   9 	� ��� i    ��� I      ������� 20 changepagenumber_spread changePageNumber_spread� ���� o      ����  0 leftpagenumber leftPageNumber��  ��  � O     I��� O    H��� k   
 G�� ��� I  
 ����
�� .InESovrrobj         obj � n   
 ��� 4    ���
�� 
txtf� m    �� ���  L - P a g e   n u m b e r� 4   
 ���
�� 
mspr� o    ���� 0 
mastername 
masterName� �����
�� 
dPge� 4    ���
�� 
page� m    ���� ��  � ��� I   +����
�� .InESovrrobj         obj � n    "��� 4    "���
�� 
txtf� m     !�� ���  R - P a g e   n u m b e r� 4    ���
�� 
mspr� o    ���� 0 
mastername 
masterName� �����
�� 
dPge� 4   # '���
�� 
page� m   % &���� ��  � ��� r   , 7��� o   , -����  0 leftpagenumber leftPageNumber� l     ������ n      ��� 1   4 6��
�� 
pcnt� n   - 4��� 4   1 4���
�� 
txtf� m   2 3�� ���  L - P a g e   n u m b e r� 4   - 1���
�� 
page� m   / 0���� ��  ��  � ���� r   8 G��� l  8 =������ c   8 =��� l  8 ;������ [   8 ;��� o   8 9����  0 leftpagenumber leftPageNumber� m   9 :���� ��  ��  � m   ; <��
�� 
TEXT��  ��  � l     ������ n      ��� 1   D F��
�� 
pcnt� n   = D��� 4   A D���
�� 
txtf� m   B C�� ���  R - P a g e   n u m b e r� 4   = A���
�� 
page� m   ? @���� ��  ��  ��  � l   ������ 1    ��
�� 
pacd��  ��  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �	Spreads and left-hand single pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   � ���� 	 S p r e a d s   a n d   l e f t - h a n d   s i n g l e   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 	� ��� i    � � I      �������� 0 clean_save_l clean_save_L��  ��    O     > O    = k   
 <  r   
 	 m   
 ��
�� boovtrue	 n      

 1    ��
�� 
plck 4    ��
�� 
layr m     � ( D a t e   a n d   p a g e   n u m b e r  r     m    ��
�� boovtrue n       1    ��
�� 
plck 4    ��
�� 
layr m     �  F u r n i t u r e  r    ! m     �  W o r k 1     ��
�� 
pacl  r   " * !  J   " &"" #$# m   " #%% @.      $ &��& m   # $'' @&      ��  ! l     (����( 1   & )��
�� 
zero��  ��   )��) I  + <����*
�� .CoResavedocu        obj ��  * ��+��
�� 
kfil+ b   - 8,-, b   - 4./. b   - 2010 b   - 0232 o   - .���� $0 freshpagesfolder freshPagesFolder3 o   . /���� 0 fileslug fileSlug1 m   0 144 �55  _/ o   2 3���� 0 filedate fileDate- m   4 766 �77 
 . i n d d��  ��   l   8����8 1    ��
�� 
pacd��  ��   m     99�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � :;: l     ��������  ��  ��  ; <=< l     ��������  ��  ��  = >?> l      ��@A��  @ � �	Right-hand pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   A �BBz 	 R i g h t - h a n d   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 	? C��C i    DED I      �������� 0 clean_save_r clean_save_R��  ��  E O     >FGF O    =HIH k   
 <JJ KLK r   
 MNM m   
 ��
�� boovtrueN n      OPO 1    ��
�� 
plckP 4    ��Q
�� 
layrQ m    RR �SS ( D a t e   a n d   p a g e   n u m b e rL TUT r    VWV m    ��
�� boovtrueW n      XYX 1    ��
�� 
plckY 4    ��Z
�� 
layrZ m    [[ �\\  F u r n i t u r eU ]^] r    !_`_ m    aa �bb  W o r k` 1     ��
�� 
pacl^ cdc r   " *efe J   " &gg hih m   " #jj @"      i k��k m   # $ll @&      ��  f l     m����m 1   & )��
�� 
zero��  ��  d n��n I  + <����o
�� .CoResavedocu        obj ��  o ��p��
�� 
kfilp b   - 8qrq b   - 4sts b   - 2uvu b   - 0wxw o   - .���� $0 freshpagesfolder freshPagesFolderx o   . /���� 0 fileslug fileSlugv m   0 1yy �zz  _t o   2 3���� 0 filedate fileDater m   4 7{{ �|| 
 . i n d d��  ��  I l   }����} 1    ��
�� 
pacd��  ��  G m     ~~�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��       ����������� y ������������   ����������������������������������~�� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate�� >0 applymaster_changedate_single applyMaster_changeDate_single�� >0 applymaster_changedate_spread applyMaster_changeDate_spread�� 20 changepagenumber_single changePageNumber_single�� 20 changepagenumber_spread changePageNumber_spread�� 0 clean_save_l clean_save_L�� 0 clean_save_r clean_save_R
�� .aevtoappnull  �   � ****�� $0 freshpagesfolder freshPagesFolder��  0 masterdocument masterDocument�� 0 weekday_pages  �� 0 ahead_pages  �� 0 	days_list  �� 0 months_list  �� 0 theday theDay�  �~  � �}��|�{���z�} "0 create_pagedate create_pageDate�|  �{  � �y�x�w�v�y (0 thirtyonedaymonths ThirtyOneDayMonths�x "0 thirtydaymonths ThirtyDayMonths�w 0 i  �v 0 secondmonth secondMonth� 2���u"�t�s,C�rE�qG�p�oSW�n�m�l�k�������������
%'2LNPU�u �t �s 0 theday theDay�r 0 themonth theMonth�q 0 thedate theDate�p 0 theyear theYear�o 0 pagedate pageDate
�n 
bool�m 0 months_list  
�l .corecnte****       ****
�k 
cobj�z��������vE�O�����vE�O��  ��%�%a %_ %a %_ %E` OPY��a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa �%a %�%a %_ %E` OPY�a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa  �%a !%�%a "%_ %E` OPY ��a # 	 _ a $a &	 �a % a & a &_ %a '%_ %E` OPY o�a ( 	 _ a ) a &	 �a * a & a +_ %a ,%_ k%E` OPY 3�a -  *a .�%a /%_ %a 0%_ k%a 1%_ %E` OPY h� �je�i�h���g�j "0 create_filedate create_fileDate�i  �h  � �f�e�d�c�f 0 numdate numDate�e 0 i  �d 0 raw_nummonth raw_numMonth�c 0 nummonth numMonth� �b�apz�`�_�^�]�\��[�Z�Y�X�b 0 thedate theDate
�a 
long�` 0 months_list  
�_ .corecnte****       ****
�^ 
cobj�] 0 themonth theMonth�\ 
�[ 0 theyear theYear
�Z 
ctxt�Y �X 0 filedate fileDate�g \��&� 
��%E�Y �E�O "k�j kh ��/�  �E�Y h[OY��O�� 
�%E�Y �E�O��%�[�\[Zm\Z�2%E�� �W��V�U���T�W >0 applymaster_changedate_single applyMaster_changeDate_single�V  �U  �  �  �S�R�Q�P�O�N��M�L�K��J�I�H��G�F��E�D
�S 
pacd
�R 
mspr�Q 0 
mastername 
masterName
�P 
page
�O 
pmas
�N 
txtf
�M 
dPge
�L .InESovrrobj         obj �K 0 pagedate pageDate
�J 
pcnt
�I 
mpgs
�H 
cobj�  
�G 
pilr
�F 
pnam�E  �D  �T d� `*�, Y*��/*�k/�,FO*��/��/�*�k/l 	O�*�k/��/�,FO '*�k/�,�-�[a ,a ,\Za 81�*�k/l 	W X  hUU� �C�B�A���@�C >0 applymaster_changedate_spread applyMaster_changeDate_spread�B  �A  �  � z�?�>�=�<�;�:�9�8�7�6#�5�4�3/�2>�1K�0�/��.�-bu�,�+
�? 
pacd
�> 
kocl
�= 
sprd
�< 
prdt
�; 
pmas
�: 
mspr�9 0 
mastername 
masterName�8 
�7 .corecrel****      � null
�6 
txtf
�5 
dPge
�4 
page
�3 .InESovrrobj         obj �2 0 pagedate pageDate
�1 
pcnt
�0 
mpgs
�/ 
cobj
�. 
pilr
�- 
pnam�,  �+  �@ �� �*�, �*����*��/l� 	O*��/��/�*�l/l O*��/��/�*�m/l O_ *�l/�a /a ,FO_ *�m/�a /a ,FO V*�l/a ,a -a [a ,a ,\Za 81�*�l/l O*�m/a ,a -a [a ,a ,\Za 81�*�m/l W X  hUU� �*��)�(���'�* 20 changepagenumber_single changePageNumber_single�) �&��& �  �%�% 0 
pagenumber 
pageNumber�(  � �$�$ 0 
pagenumber 
pageNumber� ��#�"�!� ������
�# 
pacd
�" 
mspr�! 0 
mastername 
masterName
�  
txtf
� 
dPge
� 
page
� .InESovrrobj         obj 
� 
pcnt�' )� %*�, *��/��/�*�k/l O�*�k/��/�,FUU� �������� 20 changepagenumber_spread changePageNumber_spread� ��� �  ��  0 leftpagenumber leftPageNumber�  � ��  0 leftpagenumber leftPageNumber� ��������������
� 
pacd
� 
mspr� 0 
mastername 
masterName
� 
txtf
� 
dPge
� 
page
� .InESovrrobj         obj 
� 
pcnt
� 
TEXT� J� F*�, ?*��/��/�*�l/l O*��/��/�*�m/l O�*�l/��/�,FO�k�&*�m/��/�,FUU� � �
�	���� 0 clean_save_l clean_save_L�
  �	  �  � 9����%'���� 4��6��
� 
pacd
� 
layr
� 
plck
� 
pacl
� 
zero
� 
kfil� $0 freshpagesfolder freshPagesFolder�  0 fileslug fileSlug�� 0 filedate fileDate
�� .CoResavedocu        obj � ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU� ��E���������� 0 clean_save_r clean_save_R��  ��  �  � ~����R��[a��jl��������y��{��
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
�� .CoResavedocu        obj �� ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU� �����������
�� .aevtoappnull  �   � ****� k    @��  t��  {��  ���  ���  ���  ��� 
�� �� &�� ��� ��� �� +�� a�� ��� ��� �����  ��  ��  �  � p y�� ��� � ��� � � ��� � � � � � � ����� � � � � � � � � � � � �������������������"����-;>��FV��Z]������euy|���������������������	��������(������2<��B����������������hrx�������������� $0 freshpagesfolder freshPagesFolder��  0 masterdocument masterDocument�� 0 weekday_pages  �� 0 ahead_pages  �� �� 0 	days_list  �� �� 0 months_list  
�� 
prmp
�� 
appr�� 
�� .gtqpchltns    @   @ ns  
�� 
TEXT�� 0 theday theDay
�� 
rslt
�� 
errn������ 0 themonth theMonth
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
ttxt�� 0 thedate theDate�� 0 theyear theYear
�� 
ret 
�� 
mlsl�� �� &0 masterstogenerate mastersToGenerate�� 0 pagedate pageDate�� 0 filedate fileDate�� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate
�� elnteNvr
�� 
pScr
�� 
UIAc�� 0 
mastername 
masterName�� 0 fileslug fileSlug
�� .aevtodocnull  �    alis�� >0 applymaster_changedate_spread applyMaster_changeDate_spread�� 0 clean_save_l clean_save_L
�� 
pacd
�� 
svop
�� savoyes 
�� .CoReclosnull���     obj �� >0 applymaster_changedate_single applyMaster_changeDate_single�� 0 clean_save_r clean_save_R
�� elnteInA
�� .miscactvnull��� ��� obj ��A�E�O�E�O��lvE�O���mvE�O�����a a a vE` Oa a a a a a a a a a a a a  vE` !O_ a "a #a $a %a & 'a (&E` )O_ *a +  )a ,a -lhY hO_ )a . �_ !a "a /a $a 0a & 'a (&E` 1O_ *a 2  )a ,a -lhY hOa 3a 4a 5a $a 6a & 7a 8,a (&E` 9O_ *a :  )a ,a -lhY hOa ;a 4a <a $a =a & 7a 8,a (&E` >O_ *a ?  )a ,a -lhY hY hO_ )a @  C�a "a A_ B%_ B%a C%a $a Da Eea F 'E` GO_ *f  )a ,a -lhY hY d_ )a H C�a "a I_ B%_ B%a J%a $a Ka Eea F 'E` GO_ *f  )a ,a -lhY hY _ )a L  a MkvE` GY hO_ )a N  a OE` POa QE` RY *j+ SO*j+ TOa U a V*a W,a X,FUO_ Ga Y Ba ZE` [Oa \E` ]Oa U (�j ^O)j+ _O)j+ `O*a a, *a ba cl dUUY hO_ Ga e Ba fE` [Oa gE` ]Oa U (�j ^O)j+ hO)j+ iO*a a, *a ba cl dUUY hO_ Ga j Ba kE` [Oa lE` ]Oa U (�j ^O)j+ _O)j+ `O*a a, *a ba cl dUUY hOa U a m*a W,a X,FUOa n *j oO�j ^U� ����� �   � �� ����� �   � � �� ����� �   � � � � � � �� ����� �   � � � � � � � � � � � �� ��� 
 f a l s e��  ��  ascr  ��ޭ