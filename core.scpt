FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "	Morning Star combo page generator     � 	 	 D 	 M o r n i n g   S t a r   c o m b o   p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��     	Created on			15/12/2012     �   0 	 C r e a t e d   o n 	 	 	 1 5 / 1 2 / 2 0 1 2      l     ��  ��      	Last updated			09/02/2013     �   4 	 L a s t   u p d a t e d 	 	 	 0 9 / 0 2 / 2 0 1 3      l     ��  ��     	Version:			1.821     �   " 	 V e r s i o n : 	 	 	 1 . 8 2 1     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.    % � & & 	 T h i s   i s   t h e   c o r e   p a g e   g e n e r a t o r .   I t   c o n t a i n s   a l l   o f   t h e   c o d e   n e e d e d   b y   a n y   o f   t h e   f o u r   d e s k s   b u t   t h i s   s c r i p t   s h o u l d   n o t   b e   u s e d   b y   i t s e l f . #  ' ( ' l     �� ) *��   ) � �	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.    * � + + 	 I n s t e a d   a   d e s k   n a m e   s h o u l d   b e   e n t e r e d   i n   t h e   g e n P r o m p t ( )   c a l l   o n   l i n e   2 4 ,   a n d   t h e n   s a v e d   a s   d e s k - s p e c i f i c   a p p l i c a t i o n   w i t h   t h e   p r o p e r   i c o n . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   Global variables --    1 � 2 2 (   G l o b a l   v a r i a b l e s   - - /  3 4 3 l      5 6 7 5 p       8 8 ������ 0 pagedate pageDate��   6 P J The full date used in the InDesign page�s folio, set in create_pageDate()    7 � 9 9 �   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o ,   s e t   i n   c r e a t e _ p a g e D a t e ( ) 4  : ; : l      < = > < p       ? ? ������ 0 filedate fileDate��   = O I The short date used to name the InDesign files, set in create_fileDate()    > � @ @ �   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s ,   s e t   i n   c r e a t e _ f i l e D a t e ( ) ;  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E   Path to new pages folder    F � G G 2   P a t h   t o   n e w   p a g e s   f o l d e r D  H I H j     �� J�� $0 freshpagesfolder freshPagesFolder J m      K K � L L j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : I  M N M l     �� O P��   O + % Path to the InDesign master document    P � Q Q J   P a t h   t o   t h e   I n D e s i g n   m a s t e r   d o c u m e n t N  R S R j    �� T��  0 masterdocument masterDocument T m     U U � V V p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d S  W X W l     ��������  ��  ��   X  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ]   Running code --    ^ � _ _     R u n n i n g   c o d e   - - \  ` a ` l     b c d b O     e f e r     g h g m    ��
�� elnteNvr h n       i j i 1    
��
�� 
UIAc j 1    ��
�� 
pScr f m      k k�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   c $  Suppresses dialogs and alerts    d � l l <   S u p p r e s s e s   d i a l o g s   a n d   a l e r t s a  m n m l    o p q o I    �� r���� 0 	genprompt 	genPrompt r  s�� s m     t t � u u  ��  ��   p h b Desk name (News, Features, Sport, Arts or Custom edition) goes in the quotes in this handler call    q � v v �   D e s k   n a m e   ( N e w s ,   F e a t u r e s ,   S p o r t ,   A r t s   o r   C u s t o m   e d i t i o n )   g o e s   i n   t h e   q u o t e s   i n   t h i s   h a n d l e r   c a l l n  w x w l     y���� y O     z { z r     | } | m    ��
�� elnteInA } n       ~  ~ 1    ��
�� 
UIAc  1    ��
�� 
pScr { m     � ��                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��   x  � � � l  ! 5 ����� � O   ! 5 � � � k   % 4 � �  � � � I  % *������
�� .miscactvnull��� ��� obj ��  ��   �  ��� � I  + 4�� ���
�� .aevtodocnull  �    alis � o   + 0���� $0 freshpagesfolder freshPagesFolder��  ��   � m   ! " � ��                                                                                  MACS  alis    Z  SSD                        �@��H+  ƹ
Finder.app                                                     ���ۢ        ����  	                CoreServices    �@��      �͒    ƹƳƲ  -SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Handler definitions    � � � � (   H a n d l e r   d e f i n i t i o n s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � e _ genPrompt: Gets for the date and the pages to create, then calls functions to create the files    � � � � �   g e n P r o m p t :   G e t s   f o r   t h e   d a t e   a n d   t h e   p a g e s   t o   c r e a t e ,   t h e n   c a l l s   f u n c t i o n s   t o   c r e a t e   t h e   f i l e s �  � � � i    	 � � � I      �� ����� 0 	genprompt 	genPrompt �  ��� � o      ���� 0 desk  ��  ��   � k    � � �  � � � Z     2 � ����� � =     � � � o     ���� 0 desk   � m     � � � � �   � l   . � � � � k    . � �  � � � r     � � � c     � � � l    ����� � I   �� � �
�� .gtqpchltns    @   @ ns   � J     � �  � � � m     � � � � �  N e w s �  � � � m     � � � � �  F e a t u r e s �  � � � m    	 � � � � � 
 S p o r t �  � � � m   	 
 � � � � �  A r t s �  ��� � m   
  � � � � �  C u s t o m   e d i t i o n��   � �� � �
�� 
prmp � m     � � � � � & P l e a s e   p i c k   a   d e s k : � �� ���
�� 
appr � m     � � � � �  P a g e   g e n e r a t o r��  ��  ��   � m    ��
�� 
TEXT � o      ���� 0 desk   �  ��� � Z   . � ����� � =    � � � l    ����� � 1    ��
�� 
rslt��  ��   � m     � � � � � 
 f a l s e � R     *���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   $ '��������  ��  ��  ��   � F @ Allows core.scpt to be used as a generator (useful for testing)    � � � � �   A l l o w s   c o r e . s c p t   t o   b e   u s e d   a s   a   g e n e r a t o r   ( u s e f u l   f o r   t e s t i n g )��  ��   �  � � � l  3 3��������  ��  ��   �  � � � r   3 K � � � J   3 I � �  � � � m   3 6 � � � � �  M o n d a y �  � � � m   6 9 � � � � �  T u e s d a y �  � � � m   9 < � � � � �  W e d n e s d a y �  � � � m   < ? � � � � �  T h u r s d a y �  � � � m   ? B � � � � �  F r i d a y �  ��� � m   B E � � � � �  S a t u r d a y��   � o      ���� 0 	days_list   �  � � � l  L L��������  ��  ��   �  � � � Z   L c ��  >  L Q o   L M���� 0 desk   m   M P �  C u s t o m   e d i t i o n l  T [	 r   T [

 l  T Y���� b   T Y o   T U���� 0 desk   m   U X �     p a g e s   g e n e r a t o r��  ��   o      ���� 0 thetitle theTitle !  Text for prompt title bars   	 � 6   T e x t   f o r   p r o m p t   t i t l e   b a r s��   r   ^ c m   ^ a �  C u s t o m   e d i t i o n o      ���� 0 thetitle theTitle �  l  d d��������  ��  ��    Z   d��� G   d u =  d i  o   d e���� 0 desk    m   e h!! �""  N e w s =  l q#$# o   l m���� 0 desk  $ m   m p%% �&& 
 S p o r t l  x �'()' Z   x �*+,��* =  x }-.- o   x y���� 0 desk  . m   y |// �00  N e w s+ k   � �11 232 r   � �454 J   � �66 787 m   � �99 �::  N e w s   p a g e s8 ;<; m   � �== �>>  T V< ?��? m   � �@@ �AA  L e t t e r s��  5 o      ���� 0 weekday_pages  3 B��B r   � �CDC J   � �EE FGF m   � �HH �II  N e w s   p a g e sG JKJ m   � �LL �MM  T VK NON m   � �PP �QQ  L e t t e r sO RSR m   � �TT �UU  S t r u g g l eS V��V m   � �WW �XX  R e d   L i s t��  D o      ���� 0 weekend_pages  ��  , YZY =  � �[\[ o   � ����� 0 desk  \ m   � �]] �^^ 
 S p o r tZ _��_ k   � �`` aba r   � �cdc J   � �ee fgf m   � �hh �ii  T w o   p a g e sg jkj m   � �ll �mm  T h r e e   p a g e sk non m   � �pp �qq , T h r e e   p a g e s   w i t h   s p l i to rsr m   � �tt �uu  E x t r a   l e f t   p a g es vwv m   � �xx �yy   E x t r a   r i g h t   p a g ew z��z m   � �{{ �||  E x t r a   s p l i t��  d o      ���� 0 weekday_pages  b }��} r   � �~~ J   � ��� ��� m   � ��� ���  F o u r   p a g e s� ��� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� ��� m   � ��� ���  R a c i n g   o n l y� ��� m   � ��� ���  E x t r a   l e f t   p a g e� ��� m   � ��� ���   E x t r a   r i g h t   p a g e� ���� m   � ��� ���  E x t r a   s p l i t��   o      �� 0 weekend_pages  ��  ��  ��  ( @ : This if block sets the page options presented to the user   ) ��� t   T h i s   i f   b l o c k   s e t s   t h e   p a g e   o p t i o n s   p r e s e n t e d   t o   t h e   u s e r ��� G   � ���� =  � ���� o   � ��~�~ 0 desk  � m   � ��� ���  F e a t u r e s� =  � ���� o   � ��}�} 0 desk  � m   � ��� ���  A r t s� ��|� k   ���� ��� l  � ����� r   � ���� m   � ��� ��� , N o   d a y      w o r k i n g   a h e a d� l     ��{�z� n      ���  ;   � �� o   � ��y�y 0 	days_list  �{  �z  � > 8 Adds an extra day option that news and sport don't need   � ��� p   A d d s   a n   e x t r a   d a y   o p t i o n   t h a t   n e w s   a n d   s p o r t   d o n ' t   n e e d� ��x� Z   ������w� =  ���� o   � �v�v 0 desk  � m   �� ���  F e a t u r e s� k  ]�� ��� r  ��� J  �� ��� m  
�� ���  S p r e a d� ��� m  
�� ���  1 0� ��� m  �� ��� 
 1 2 - 1 3� ��� m  �� ���  L e t t e r s� ��� m  �� ���  A r t s� ��u� m  �� ���  A r t s   s p l i t�u  � o      �t�t 0 weekday_pages  � ��� r   8��� J   6�� ��� m   #�� ���  S p r e a d� ��� m  #&�� ��� ( N e w s   r e v i e w s      s p l i t� ��� m  &)�� ��� , N e w s   r e v i e w s      s i n g l e s� ��� m  ),�� ���  1 5� ��� m  ,/�� ��� 
 1 6 - 1 7� ��s� m  /2�� ���  L e t t e r s�s  � o      �r�r 0 weekend_pages  � ��q� r  9]��� J  9[�� ��� m  9<�� ���  S p r e a d� ��� m  <?�� �    1 0�  m  ?B � 
 1 2 - 1 3  m  BE � ( N e w s   r e v i e w s      s p l i t 	
	 m  EH � , N e w s   r e v i e w s      s i n g l e s
  m  HK �  1 5  m  KN � 
 1 6 - 1 7  m  NQ �  L e t t e r s  m  QT �  A r t s �p m  TW �  A r t s   s p l i t�p  � o      �o�o 0 ahead_pages  �q  �  !  = `e"#" o  `a�n�n 0 desk  # m  ad$$ �%%  A r t s! &�m& k  h�'' ()( r  hr*+* J  hp,, -.- m  hk// �00  A r t s   ( p 1 1 ). 1�l1 m  kn22 �33  A r t s   s p l i t�l  + o      �k�k 0 weekday_pages  ) 454 r  s�676 J  s~88 9:9 m  sv;; �<<  1 6 - 1 7   ( w e e k e n d ): =>= m  vy?? �@@  A r t s   s p l i t> A�jA m  y|BB �CC  A r t s   ( p 1 1 )�j  7 o      �i�i 0 weekend_pages  5 D�hD r  ��EFE J  ��GG HIH m  ��JJ �KK  A r t s   ( p 1 1 )I LML m  ��NN �OO  A r t s   s p l i tM P�gP m  ��QQ �RR  1 6 - 1 7   ( w e e k e n d )�g  F o      �f�f 0 ahead_pages  �h  �m  �w  �x  �|  ��   STS l ���e�d�c�e  �d  �c  T UVU l ���bWX�b  W [ U Prompt the user to enter the date. Returns theDay for use in page-picker block below   X �YY �   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t e .   R e t u r n s   t h e D a y   f o r   u s e   i n   p a g e - p i c k e r   b l o c k   b e l o wV Z[Z r  ��\]\ n ��^_^ I  ���a`�`�a 0 
dateprompt 
datePrompt` aba o  ���_�_ 0 thetitle theTitleb c�^c o  ���]�] 0 	days_list  �^  �`  _  f  ��] o      �\�\ 0 theday theDay[ ded l ���[�Z�Y�[  �Z  �Y  e fgf l ���Xhi�X  h   Get the pages to create   i �jj 0   G e t   t h e   p a g e s   t o   c r e a t eg k�Wk Z  ��lm�Vnl = ��opo l ��q�U�Tq o  ���S�S 0 desk  �U  �T  p m  ��rr �ss  C u s t o m   e d i t i o nm l ��tuvt n ��wxw I  ���R�Q�P�R 0 customedition customEdition�Q  �P  x  f  ��u U O The customEdition function itself gets the pages to generate from TextWrangler   v �yy �   T h e   c u s t o m E d i t i o n   f u n c t i o n   i t s e l f   g e t s   t h e   p a g e s   t o   g e n e r a t e   f r o m   T e x t W r a n g l e r�V  n k  ��zz {|{ r  ��}~} l ���O�N b  ����� b  ����� b  ����� m  ���� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  ���M
�M 
ret � o  ���L
�L 
ret � m  ���� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�O  �N  ~ o      �K�K 0 
prompttext 
promptText| ��� Z  �W����J� = ����� o  ���I�I 0 theday theDay� m  ���� ��� , N o   d a y      w o r k i n g   a h e a d� k  ���� ��� r  ����� l ����H�G� I ���F��
�F .gtqpchltns    @   @ ns  � o  ���E�E 0 ahead_pages  � �D��
�D 
prmp� o  ���C�C 0 
prompttext 
promptText� �B��
�B 
appr� o  ���A�A 0 thetitle theTitle� �@��?
�@ 
mlsl� m  ���>
�> boovtrue�?  �H  �G  � o      �=�= &0 masterstogenerate mastersToGenerate� ��<� Z �����;�:� = ����� 1  ���9
�9 
rslt� m  ���8
�8 boovfals� R  ���7�6�
�7 .ascrerr ****      � ****�6  � �5��4
�5 
errn� m  ���3�3���4  �;  �:  �<  � ��� > ����� o  ���2�2 0 theday theDay� m  ���� ���  S a t u r d a y� ��� k  �"�� ��� r  ���� l ���1�0� I ��/��
�/ .gtqpchltns    @   @ ns  � o  ���.�. 0 weekday_pages  � �-��
�- 
prmp� o  ���,�, 0 
prompttext 
promptText� �+��
�+ 
appr� o   �*�* 0 thetitle theTitle� �)��(
�) 
mlsl� m  �'
�' boovtrue�(  �1  �0  � o      �&�& &0 masterstogenerate mastersToGenerate� ��%� Z "���$�#� = ��� 1  �"
�" 
rslt� m  �!
�! boovfals� R  � ��
�  .ascrerr ****      � ****�  � ���
� 
errn� m  �����  �$  �#  �%  � ��� = %*��� o  %&�� 0 theday theDay� m  &)�� ���  S a t u r d a y� ��� k  -S�� ��� r  ->��� l -<���� I -<���
� .gtqpchltns    @   @ ns  � o  -.�� 0 weekend_pages  � ���
� 
prmp� o  /0�� 0 
prompttext 
promptText� ���
� 
appr� o  12�� 0 thetitle theTitle� ���
� 
mlsl� m  56�
� boovtrue�  �  �  � o      �� &0 masterstogenerate mastersToGenerate� ��� Z ?S����� = ?B��� 1  ?@�

�
 
rslt� m  @A�	
�	 boovfals� R  EO���
� .ascrerr ****      � ****�  � ���
� 
errn� m  IL�����  �  �  �  �  �J  � ��� l XX����  �  �  � �� � Z  X������� = X]��� o  XY���� 0 desk  � m  Y\�� ���  N e w s� l `g���� n `g��� I  ag������� 0 newsgen newsGen� ��� o  ab���� &0 masterstogenerate mastersToGenerate� ���� o  bc���� 0 theday theDay��  ��  �  f  `a� S M theDay is passed to distinguish between, for example, Saturday & weekday TV    � ��� �   t h e D a y   i s   p a s s e d   t o   d i s t i n g u i s h   b e t w e e n ,   f o r   e x a m p l e ,   S a t u r d a y   &   w e e k d a y   T V  � ��� = jo��� o  jk���� 0 desk  � m  kn�� ���  F e a t u r e s� ��� n ry��� I  sy������� 0 featsgen featsGen� ��� o  st���� &0 masterstogenerate mastersToGenerate� ���� o  tu���� 0 theday theDay��  ��  �  f  rs�    = |� o  |}���� 0 desk   m  }� � 
 S p o r t  l ��	
 n �� I  �������� 0 	sportsgen 	sportsGen �� o  ������ &0 masterstogenerate mastersToGenerate��  ��    f  ��	   No day checks   
 �    N o   d a y   c h e c k s  = �� o  ������ 0 desk   m  �� �  A r t s �� l �� n �� I  �������� 0 artsgen artsGen �� o  ������ &0 masterstogenerate mastersToGenerate��  ��    f  ��   No day checks    �    N o   d a y   c h e c k s��  ��  �   �W   �   l     ��������  ��  ��    !"! l     ��������  ��  ��  " #$# l     ��%&��  % I C list_position: Returns theItem's position in theList as an integer   & �'' �   l i s t _ p o s i t i o n :   R e t u r n s   t h e I t e m ' s   p o s i t i o n   i n   t h e L i s t   a s   a n   i n t e g e r$ ()( i   
 *+* I      ��,���� 0 list_position  , -.- o      ���� 0 	this_item  . /��/ o      ���� 0 	this_list  ��  ��  + Y     "0��12��0 Z   34����3 =   565 n    787 4    ��9
�� 
cobj9 o    ���� 0 i  8 o    ���� 0 	this_list  6 o    ���� 0 	this_item  4 L    :: o    ���� 0 i  ��  ��  �� 0 i  1 m    ���� 2 I   	��;��
�� .corecnte****       ****; o    ���� 0 	this_list  ��  ��  ) <=< l     ��������  ��  ��  = >?> l     ��������  ��  ��  ? @A@ l     ��BC��  B ( " Prompt the user to enter the date   C �DD D   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t eA EFE i    GHG I      ��I���� 0 
dateprompt 
datePromptI JKJ o      ���� 0 thetitle theTitleK L��L o      ���� 0 	days_list  ��  ��  H k    �MM NON r     PQP J     RR STS m     UU �VV  J a n u a r yT WXW m    YY �ZZ  F e b r u a r yX [\[ m    ]] �^^ 
 M a r c h\ _`_ m    aa �bb 
 A p r i l` cdc m    ee �ff  M a yd ghg m    ii �jj  J u n eh klk m    mm �nn  J u l yl opo m    qq �rr  A u g u s tp sts m    	uu �vv  S e p t e m b e rt wxw m   	 
yy �zz  O c t o b e rx {|{ m   
 }} �~~  N o v e m b e r| �� m    �� ���  D e c e m b e r��  Q o      ���� 0 months_list  O ��� l   ��������  ��  ��  � ��� l   ������  � > 8 Get tomorrow's weekday as a seed default for the prompt   � ��� p   G e t   t o m o r r o w ' s   w e e k d a y   a s   a   s e e d   d e f a u l t   f o r   t h e   p r o m p t� ��� Z    >������ >   ��� c    ��� l   ������ l   ������ n    ��� m    ��
�� 
wkdy� l   ������ l   ������ I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � m    ��
�� 
TEXT� m    �� ���  S a t u r d a y� r   ! .��� l  ! ,������ [   ! ,��� l  ! &������ l  ! &������ I  ! &������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  � l  & +������ ]   & +��� m   & '���� � 1   ' *��
�� 
days��  ��  ��  ��  � o      ���� 0 tomorrow  ��  � l  1 >���� r   1 >��� l  1 <������ [   1 <��� l  1 6������ l  1 6������ I  1 6������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  � l  6 ;������ ]   6 ;��� m   6 7���� � 1   7 :��
�� 
days��  ��  ��  ��  � o      ���� 0 tomorrow  � 4 . Jump ahead a day if Saturday (mostly for dev)   � ��� \   J u m p   a h e a d   a   d a y   i f   S a t u r d a y   ( m o s t l y   f o r   d e v )� ��� l  ? H���� r   ? H��� J   ? F�� ���� l  ? D������ c   ? D��� n  ? B��� m   @ B��
�� 
wkdy� o   ? @���� 0 tomorrow  � m   B C��
�� 
TEXT��  ��  ��  � o      ���� 0 tmday tmDay� C = "Choose from list" requires a list for its default selection   � ��� z   " C h o o s e   f r o m   l i s t "   r e q u i r e s   a   l i s t   f o r   i t s   d e f a u l t   s e l e c t i o n� ��� l  I I��������  ��  ��  � ��� r   I b��� c   I `��� l  I ^������ I  I ^����
�� .gtqpchltns    @   @ ns  � o   I J���� 0 	days_list  � ����
�� 
prmp� m   M P�� ��� 8 P l e a s e   p i c k   t h e   e d i t i o n   d a y :� ����
�� 
inSL� o   S T���� 0 tmday tmDay� �����
�� 
appr� o   W X�� 0 thetitle theTitle��  ��  ��  � m   ^ _�~
�~ 
TEXT� o      �}�} 0 theday theDay� ��� l  c {���� Z  c {���|�{� =  c j��� 1   c f�z
�z 
rslt� m   f i�� ��� 
 f a l s e� R   m w�y�x�
�y .ascrerr ****      � ****�x  � �w��v
�w 
errn� m   q t�u�u���v  �|  �{  � 6 0 Choosing "Cancel" in the dialog ends the script   � ��� `   C h o o s i n g   " C a n c e l "   i n   t h e   d i a l o g   e n d s   t h e   s c r i p t� ��� l  | |�t�s�r�t  �s  �r  � ��� l  | |�q���q  � 2 , Quick return if no date crunching is needed   � ��� X   Q u i c k   r e t u r n   i f   n o   d a t e   c r u n c h i n g   i s   n e e d e d� ��� Z   | ����p�o� =  | ���� o   | }�n�n 0 theday theDay� m   } ��� ��� , N o   d a y      w o r k i n g   a h e a d� k   � ��� ��� r   � ���� m   � ��� ��� * A   d a t e   n e e d s   e n t e r i n g� o      �m�m 0 pagedate pageDate� ��� r   � ���� m   � ��� ��� 
 A h e a d� o      �l�l 0 filedate fileDate� ��k� l  � ��� � L   � � o   � ��j�j 0 theday theDay� $  For use in page-picker prompt     � <   F o r   u s e   i n   p a g e - p i c k e r   p r o m p t�k  �p  �o  �  l  � ��i�h�g�i  �h  �g    l  � ��f�f     Predicted date crunching    �		 2   P r e d i c t e d   d a t e   c r u n c h i n g 

 Z   �.�e =  � � o   � ��d�d 0 theday theDay l  � ��c�b c   � � o   � ��a�a 0 tmday tmDay m   � ��`
�` 
TEXT�c  �b   l  � � k   � �  l  � ��_�_   ) # Set defaults to tomorrow's details    � F   S e t   d e f a u l t s   t o   t o m o r r o w ' s   d e t a i l s  r   � �  n  � �!"! 1   � ��^
�^ 
day " o   � ��]�] 0 tomorrow    o      �\�\ 0 prdate prDate #$# r   � �%&% J   � �'' (�[( l  � �)�Z�Y) c   � �*+* n  � �,-, m   � ��X
�X 
mnth- o   � ��W�W 0 tomorrow  + m   � ��V
�V 
TEXT�Z  �Y  �[  & o      �U�U 0 prmonth prMonth$ .�T. r   � �/0/ n  � �121 1   � ��S
�S 
year2 o   � ��R�R 0 tomorrow  0 o      �Q�Q 0 pryear prYear�T     Chosen day is tomorrow    �33 .   C h o s e n   d a y   i s   t o m o r r o w 454 >  � �676 o   � ��P�P 0 theday theDay7 l  � �8�O�N8 c   � �9:9 o   � ��M�M 0 tmday tmDay: m   � ��L
�L 
TEXT�O  �N  5 ;�K; l  �*<=>< k   �*?? @A@ l  � ��JBC�J  B E ? Determine offset from tomorrow and create a date object for it   C �DD ~   D e t e r m i n e   o f f s e t   f r o m   t o m o r r o w   a n d   c r e a t e   a   d a t e   o b j e c t   f o r   i tA EFE r   � �GHG n  � �IJI I   � ��IK�H�I 0 list_position  K LML l  � �N�G�FN c   � �OPO o   � ��E�E 0 tmday tmDayP m   � ��D
�D 
TEXT�G  �F  M Q�CQ o   � ��B�B 0 	days_list  �C  �H  J  f   � �H o      �A�A 0 
predictpos 
predictPosF RSR r   � �TUT n  � �VWV I   � ��@X�?�@ 0 list_position  X YZY o   � ��>�> 0 theday theDayZ [�=[ o   � ��<�< 0 	days_list  �=  �?  W  f   � �U o      �;�; 0 	actualpos 	actualPosS \]\ r   � �^_^ \   � �`a` o   � ��:�: 0 	actualpos 	actualPosa o   � ��9�9 0 
predictpos 
predictPos_ o      �8�8 0 shiftpos shiftPos] bcb Z   �def�7d ?  � �ghg o   � ��6�6 0 shiftpos shiftPosh m   � ��5�5  e l  � �ijki r   � �lml [   � �non o   � ��4�4 0 tomorrow  o l  � �p�3�2p ]   � �qrq o   � ��1�1 0 shiftpos shiftPosr 1   � ��0
�0 
days�3  �2  m o      �/�/ 0 predictedday predictedDayj "  Another day in current week   k �ss 8   A n o t h e r   d a y   i n   c u r r e n t   w e e kf tut A  � �vwv o   � ��.�. 0 shiftpos shiftPosw m   � ��-�-  u x�,x l  �
yz{y r   �
|}| [   �~~ o   � ��+�+ 0 tomorrow   l  ���*�)� ]   ���� l  ���(�'� [   ���� m   ��&�& � o  �%�% 0 shiftpos shiftPos�(  �'  � 1  �$
�$ 
days�*  �)  } o      �#�# 0 predictedday predictedDayz   Implies next week   { ��� $   I m p l i e s   n e x t   w e e k�,  �7  c ��� l �"�!� �"  �!  �   � ��� l ����  � - ' Set defaults with chosen day's details   � ��� N   S e t   d e f a u l t s   w i t h   c h o s e n   d a y ' s   d e t a i l s� ��� r  ��� n ��� 1  �
� 
day � o  �� 0 predictedday predictedDay� o      �� 0 prdate prDate� ��� r  "��� J   �� ��� l ���� c  ��� n ��� m  �
� 
mnth� o  �� 0 predictedday predictedDay� m  �
� 
TEXT�  �  �  � o      �� 0 prmonth prMonth� ��� r  #*��� n #(��� 1  $(�
� 
year� o  #$�� 0 predictedday predictedDay� o      �� 0 pryear prYear�  = !  Chosen day is not tomorrow   > ��� 6   C h o s e n   d a y   i s   n o t   t o m o r r o w�K  �e   ��� l //����  �  �  � ��� l //����  � &   Prompt for month, date and year   � ��� @   P r o m p t   f o r   m o n t h ,   d a t e   a n d   y e a r� ��� r  /H��� c  /F��� l /D���� I /D�
��
�
 .gtqpchltns    @   @ ns  � o  /0�	�	 0 months_list  � ���
� 
prmp� m  36�� ��� , P l e a s e   p i c k   t h e   m o n t h :� ���
� 
inSL� o  9:�� 0 prmonth prMonth� ���
� 
appr� o  =>�� 0 thetitle theTitle�  �  �  � m  DE�
� 
TEXT� o      �� 0 themonth theMonth� ��� Z Ia��� ��� = IP��� 1  IL��
�� 
rslt� m  LO�� ��� 
 f a l s e� R  S]�����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  WZ��������  �   ��  � ��� r  b{��� c  by��� l bw������ n  bw��� 1  sw��
�� 
ttxt� l bs������ I bs����
�� .sysodlogaskr        TEXT� m  be�� ��� * P l e a s e   t y p e   t h e   d a t e :� ����
�� 
dtxt� o  hi���� 0 prdate prDate� �����
�� 
appr� o  lm���� 0 thetitle theTitle��  ��  ��  ��  ��  � m  wx��
�� 
TEXT� o      ���� 0 thedate theDate� ��� Z |�������� = |���� 1  |��
�� 
rslt� m  ��� ��� 
 f a l s e� R  �������
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  ����������  ��  ��  � ��� r  ����� c  ����� l �������� n  ����� 1  ����
�� 
ttxt� l �������� I ������
�� .sysodlogaskr        TEXT� m  ���� ��� * P l e a s e   t y p e   t h e   y e a r :� ����
�� 
dtxt� o  ������ 0 pryear prYear� �����
�� 
appr� o  ������ 0 thetitle theTitle��  ��  ��  ��  ��  � m  ����
�� 
TEXT� o      ���� 0 theyear theYear� ��� Z ��������� = ����� 1  ����
�� 
rslt� m  ���� ��� 
 f a l s e� R  �������
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ���� ��    . ( Pass date details to creation functions    � P   P a s s   d a t e   d e t a i l s   t o   c r e a t i o n   f u n c t i o n s�  n �� I  �������� "0 create_pagedate create_pageDate 	 o  ������ 0 theday theDay	 

 o  ������ 0 themonth theMonth  o  ������ 0 thedate theDate �� o  ������ 0 theyear theYear��  ��    f  ��  n �� I  �������� "0 create_filedate create_fileDate  o  ������ 0 themonth theMonth  o  ������ 0 thedate theDate  o  ������ 0 theyear theYear �� o  ������ 0 months_list  ��  ��    f  ��  l ����������  ��  ��   �� l ��  L  ��!! o  ������ 0 theday theDay $  For use in page-picker prompt     �"" <   F o r   u s e   i n   p a g e - p i c k e r   p r o m p t��  F #$# l     ��������  ��  ��  $ %&% l     ��������  ��  ��  & '(' l     ��)*��  ) 2 , Assemble date for use on the inDesign pages   * �++ X   A s s e m b l e   d a t e   f o r   u s e   o n   t h e   i n D e s i g n   p a g e s( ,-, i    ./. I      ��0���� "0 create_pagedate create_pageDate0 121 o      ���� 0 theday theDay2 343 o      ���� 0 themonth theMonth4 565 o      ���� 0 thedate theDate6 7��7 o      ���� 0 theyear theYear��  ��  / Z     �89��:8 >    ;<; o     ���� 0 theday theDay< m    == �>>  S a t u r d a y9 l   ?@A? k    BB CDC r    EFE l   G����G b    HIH b    JKJ b    LML b    NON b    PQP b    	RSR o    ���� 0 theday theDayS m    TT �UU   Q o   	 
���� 0 themonth theMonthO m    VV �WW   M o    ���� 0 thedate theDateK m    XX �YY   I o    ���� 0 theyear theYear��  ��  F o      ���� 0 pagedate pageDateD Z��Z l   ��������  ��  ��  ��  @   Weekday pageDate   A �[[ "   W e e k d a y   p a g e D a t e��  : l   �\]^\ k    �__ `a` l   ��bc��  b &   Create a date object for Sunday   c �dd @   C r e a t e   a   d a t e   o b j e c t   f o r   S u n d a ya efe r    0ghg l   .i����i [    .jkj l   *l����l 4    *��m
�� 
ldt m l   )n����n b    )opo b    'qrq b    %sts b    #uvu b    !wxw b    yzy o    ���� 0 theday theDayz m    {{ �||  ,  x o     ���� 0 thedate theDatev m   ! "}} �~~   t o   # $���� 0 themonth theMonthr m   % & ���   p o   ' (���� 0 theyear theYear��  ��  ��  ��  k l  * -������ ]   * -��� m   * +���� � 1   + ,��
�� 
days��  ��  ��  ��  h o      ���� 0 sun  f ��� l  1 1��������  ��  ��  � ��� l  1 1������  � 2 , Check if the weekend spans a month boundary   � ��� X   C h e c k   i f   t h e   w e e k e n d   s p a n s   a   m o n t h   b o u n d a r y� ��� Z   1 J������ >  1 8��� l  1 6������ c   1 6��� n  1 4��� m   2 4��
�� 
mnth� o   1 2���� 0 sun  � m   4 5��
�� 
TEXT��  ��  � o   6 7���� 0 themonth theMonth� k   ; D�� ��� l  ; ;������  � ' ! Sunday month with trailing space   � ��� B   S u n d a y   m o n t h   w i t h   t r a i l i n g   s p a c e� ��� r   ; D��� b   ; B��� l  ; @��~�}� c   ; @��� n  ; >��� m   < >�|
�| 
mnth� o   ; <�{�{ 0 sun  � m   > ?�z
�z 
TEXT�~  �}  � m   @ A�� ���   � o      �y�y 0 secondmonth secondMonth�  ��  � r   G J��� m   G H�� ���  � o      �x�x 0 secondmonth secondMonth� ��� l  K K�w�v�u�w  �v  �u  � ��� l  K K�t���t  � 2 , Check if the weekend spans a month boundary   � ��� X   C h e c k   i f   t h e   w e e k e n d   s p a n s   a   m o n t h   b o u n d a r y� ��� Z   K f���s�� >  K R��� l  K P��r�q� c   K P��� n  K N��� 1   L N�p
�p 
year� o   K L�o�o 0 sun  � m   N O�n
�n 
TEXT�r  �q  � o   P Q�m�m 0 theyear theYear� k   U ^�� ��� l  U U�l���l  � &   Sunday year with leading hyphen   � ��� @   S u n d a y   y e a r   w i t h   l e a d i n g   h y p h e n� ��k� r   U ^��� l  U \��j�i� b   U \��� m   U V�� ���  -� l  V [��h�g� c   V [��� n  V Y��� 1   W Y�f
�f 
year� o   V W�e�e 0 sun  � m   Y Z�d
�d 
TEXT�h  �g  �j  �i  � o      �c�c 0 
secondyear 
secondYear�k  �s  � r   a f��� m   a d�� ���  � o      �b�b 0 
secondyear 
secondYear� ��� l  g g�a�`�_�a  �`  �_  � ��� r   g ���� l  g ���^�]� b   g ���� b   g ���� b   g ���� b   g ���� b   g x��� b   g v��� b   g r��� b   g p��� b   g l��� m   g j�� ���   S a t u r d a y / S u n d a y  � o   j k�\�\ 0 themonth theMonth� m   l o�� ���   � o   p q�[�[ 0 thedate theDate� m   r u�� ���  -� o   v w�Z�Z 0 secondmonth secondMonth� l  x ��Y�X� c   x ��� n  x }��� 1   y }�W
�W 
day � o   x y�V�V 0 sun  � m   } ~�U
�U 
TEXT�Y  �X  � m   � ��� ���   � o   � ��T�T 0 theyear theYear� o   � ��S�S 0 
secondyear 
secondYear�^  �]  � o      �R�R 0 pagedate pageDate� ��Q� l  � ��P���P  � Z T Empty secondMonth/Year strings (set above) mean this can be used for every Saturday   � �   �   E m p t y   s e c o n d M o n t h / Y e a r   s t r i n g s   ( s e t   a b o v e )   m e a n   t h i s   c a n   b e   u s e d   f o r   e v e r y   S a t u r d a y�Q  ]   Saturday/Sunday pageDate   ^ � 2   S a t u r d a y / S u n d a y   p a g e D a t e-  l     �O�N�M�O  �N  �M    l     �L�K�J�L  �K  �J    l     �I	�I   . ( Assemble date for use in the file names   	 �

 P   A s s e m b l e   d a t e   f o r   u s e   i n   t h e   f i l e   n a m e s  i     I      �H�G�H "0 create_filedate create_fileDate  o      �F�F 0 themonth theMonth  o      �E�E 0 thedate theDate  o      �D�D 0 theyear theYear �C o      �B�B 0 months_list  �C  �G   k     =  Z    �A�@ A     l    �?�> c       o     �=�= 0 thedate theDate  m    �<
�< 
nmbr�?  �>   m    �;�; 
 r    !"! l   #�:�9# b    $%$ m    	&& �''  0% o   	 
�8�8 0 thedate theDate�:  �9  " o      �7�7 0 thedate theDate�A  �@   ()( l   �6�5�4�6  �5  �4  ) *+* r    ,-, n   ./. I    �30�2�3 0 list_position  0 121 o    �1�1 0 themonth theMonth2 3�03 o    �/�/ 0 months_list  �0  �2  /  f    - o      �.�. 0 themonth theMonth+ 454 Z   +67�-�,6 A   898 o    �+�+ 0 themonth theMonth9 m    �*�* 
7 r   " ':;: l  " %<�)�(< b   " %=>= m   " #?? �@@  0> o   # $�'�' 0 themonth theMonth�)  �(  ; o      �&�& 0 themonth theMonth�-  �,  5 ABA l  , ,�%�$�#�%  �$  �#  B C�"C l  , =DEFD r   , =GHG l  , ;I�!� I b   , ;JKJ b   , /LML o   , -�� 0 thedate theDateM o   - .�� 0 themonth theMonthK l  / :N��N n   / :OPO 7 0 :�QR
� 
ctxtQ m   4 6�� R m   7 9�� P o   / 0�� 0 theyear theYear�  �  �!  �   H o      �� 0 filedate fileDateE ? 9 Combines the date, month and last two digits of the year   F �SS r   C o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r�"   TUT l     ����  �  �  U VWV l     ����  �  �  W XYX l     �Z[�  Z Y S pageGen: Opens the master file and calls functions to construct the requested page   [ �\\ �   p a g e G e n :   O p e n s   t h e   m a s t e r   f i l e   a n d   c a l l s   f u n c t i o n s   t o   c o n s t r u c t   t h e   r e q u e s t e d   p a g eY ]^] l     �_`�  _ ^ X Takes 4 parameters: spread/single, InDesign master page name, file slug and page number   ` �aa �   T a k e s   4   p a r a m e t e r s :   s p r e a d / s i n g l e ,   I n D e s i g n   m a s t e r   p a g e   n a m e ,   f i l e   s l u g   a n d   p a g e   n u m b e r^ bcb l     �de�  d @ : The page number is that of the left-hand page for spreads   e �ff t   T h e   p a g e   n u m b e r   i s   t h a t   o f   t h e   l e f t - h a n d   p a g e   f o r   s p r e a d sc ghg i    iji I      �k�� 0 pagegen pageGenk lml o      �� 0 pagetype pageTypem non o      �
�
 0 	themaster 	theMastero pqp o      �	�	 0 theslug theSlugq r�r o      �� 0 
pagenumber 
pageNumber�  �  j O     Xsts k    Wuu vwv I   �x�
� .aevtodocnull  �    alisx o    	��  0 masterdocument masterDocument�  w yzy n   {|{ I    �}�� 0 applymaster applyMaster} ~~ o    �� 0 	themaster 	theMaster ��� o    � �  0 pagetype pageType� ���� o    ���� 0 
pagenumber 
pageNumber��  �  |  f    z ��� l   ��������  ��  ��  � ��� Z    '������� E    ��� o    ���� 0 	themaster 	theMaster� m    �� ��� 
 N e w s -� l   #���� n   #��� I    #�������  0 drawembargobox drawEmbargoBox� ���� o    ���� 0 pagetype pageType��  ��  �  f    � 2 , Hyphen needed to exclude Feat-NewsReviews-*   � ��� X   H y p h e n   n e e d e d   t o   e x c l u d e   F e a t - N e w s R e v i e w s - *��  ��  � ��� l  ( (��������  ��  ��  � ��� Z   ( @������� G   ( 3��� =  ( +��� o   ( )���� 0 	themaster 	theMaster� m   ) *�� ���  F e a t - T V� =  . 1��� o   . /���� 0 	themaster 	theMaster� m   / 0�� ���  F e a t - R e d L i s t� n  6 <��� I   7 <������� "0 changelegaldate changeLegalDate� ���� o   7 8���� 0 	themaster 	theMaster��  ��  �  f   6 7��  ��  � ��� l  A A��������  ��  ��  � ��� n  A H��� I   B H������� 0 	cleansave 	cleanSave� ��� o   B C���� 0 
pagenumber 
pageNumber� ���� o   C D���� 0 theslug theSlug��  ��  �  f   A B� ���� O  I W��� I  O V�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m   Q R��
�� savoyes ��  � l  I L������ 1   I L��
�� 
pacd��  ��  ��  t m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  h ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � applyMaster: Applies a master, creating pages as needed, changes the date, overrides Work-layer items and changes the page number if appropriate   � ���"   a p p l y M a s t e r :   A p p l i e s   a   m a s t e r ,   c r e a t i n g   p a g e s   a s   n e e d e d ,   c h a n g e s   t h e   d a t e ,   o v e r r i d e s   W o r k - l a y e r   i t e m s   a n d   c h a n g e s   t h e   p a g e   n u m b e r   i f   a p p r o p r i a t e� ��� i    !��� I      ������� 0 applymaster applyMaster� ��� o      ���� 0 	themaster 	theMaster� ��� o      ���� 0 pagetype pageType� ���� o      ���� 0 
pagenumber 
pageNumber��  ��  � O    ���� O   ���� Z   
������� =  
 ��� o   
 ���� 0 pagetype pageType� m    �� ���  s i n g l e� k    ��� ��� l   ���� r    ��� 4    ���
�� 
mspr� o    ���� 0 	themaster 	theMaster� n      ��� 1    ��
�� 
pmas� 4    ���
�� 
page� m    ���� � 3 - Applies a master to the existing single page   � ��� Z   A p p l i e s   a   m a s t e r   t o   t h e   e x i s t i n g   s i n g l e   p a g e� ���� Z    �������� H     �� E    ��� o    ���� 0 	themaster 	theMaster� m    �� ���  X - B l a n k� l  # ����� k   # ��� ��� I  # 3����
�� .InESovrrobj         obj � n   # *��� 4   ' *���
�� 
txtf� m   ( )�� ���  E d i t i o n   d a t e� 4   # '���
�� 
mspr� o   % &���� 0 	themaster 	theMaster� �����
�� 
dPge� 4   + /���
�� 
page� m   - .���� ��  � ��� l  4 ?� � r   4 ? o   4 5���� 0 pagedate pageDate l     ���� n       1   < >��
�� 
pcnt n   5 < 4   9 <��	
�� 
txtf	 m   : ;

 �  E d i t i o n   d a t e 4   5 9��
�� 
page m   7 8���� ��  ��      Sets the date    �    S e t s   t h e   d a t e�  Q   @ p�� l  C g I  C g��
�� .InESovrrobj         obj  l  C ^���� 6  C ^ n   C K 2   I K��
�� 
cobj n   C I 1   G I��
�� 
mpgs 4   C G��
�� 
page m   E F����  =  N ]  n  O W!"! 1   S W��
�� 
pnam" 1   O S��
�� 
pilr  m   X \## �$$  W o r k��  ��   ��%��
�� 
dPge% 4   _ c��&
�� 
page& m   a b���� ��   o i Block to make the Work-layer items editable. In a try block to avoid errors when there are no such items    �'' �   B l o c k   t o   m a k e   t h e   W o r k - l a y e r   i t e m s   e d i t a b l e .   I n   a   t r y   b l o c k   t o   a v o i d   e r r o r s   w h e n   t h e r e   a r e   n o   s u c h   i t e m s R      ������
�� .ascrerr ****      � ****��  ��  ��   (��( Z   q �)*����) >  q v+,+ o   q r���� 0 
pagenumber 
pageNumber, m   r u-- �..  * l  y �/01/ k   y �22 343 I  y ���56
�� .InESovrrobj         obj 5 n   y �787 4   } ���9
�� 
txtf9 m   ~ �:: �;;  P a g e   n u m b e r8 4   y }��<
�� 
mspr< o   { |���� 0 	themaster 	theMaster6 ��=��
�� 
dPge= 4   � ���>
�� 
page> m   � ����� ��  4 ?��? r   � �@A@ o   � ����� 0 
pagenumber 
pageNumberA l     B����B n      CDC 1   � ���
�� 
pcntD n   � �EFE 4   � ���G
�� 
txtfG m   � �HH �II  P a g e   n u m b e rF 4   � ���J
�� 
pageJ m   � ����� ��  ��  ��  0 G A Mostly to skip the front, which doesn't have a page number frame   1 �KK �   M o s t l y   t o   s k i p   t h e   f r o n t ,   w h i c h   d o e s n ' t   h a v e   a   p a g e   n u m b e r   f r a m e��  ��  ��  � 6 0 The X-Blanks have no page number or date frames   � �LL `   T h e   X - B l a n k s   h a v e   n o   p a g e   n u m b e r   o r   d a t e   f r a m e s��  ��  ��  � MNM =  � �OPO o   � ����� 0 pagetype pageTypeP m   � �QQ �RR  s p r e a dN S��S k   ��TT UVU l  � �WXYW I  � �����Z
�� .corecrel****      � null��  Z ��[\
�� 
kocl[ m   � ���
�� 
sprd\ ��]��
�� 
prdt] K   � �^^ ��_��
�� 
pmas_ 4   � ���`
�� 
mspr` o   � ����� 0 	themaster 	theMaster��  ��  X G A Creates a two-page spread at pages 2 & 3 with the master applied   Y �aa �   C r e a t e s   a   t w o - p a g e   s p r e a d   a t   p a g e s   2   &   3   w i t h   t h e   m a s t e r   a p p l i e dV b�b Z   ��cd�~�}c H   � �ee E   � �fgf o   � ��|�| 0 	themaster 	theMasterg m   � �hh �ii  X - B l a n kd k   ��jj klk I  � ��{mn
�{ .InESovrrobj         obj m n   � �opo 4   � ��zq
�z 
txtfq m   � �rr �ss  L - E d i t i o n   d a t ep 4   � ��yt
�y 
msprt o   � ��x�x 0 	themaster 	theMastern �wu�v
�w 
dPgeu 4   � ��uv
�u 
pagev m   � ��t�t �v  l wxw I  � ��syz
�s .InESovrrobj         obj y n   � �{|{ 4   � ��r}
�r 
txtf} m   � �~~ �  R - E d i t i o n   d a t e| 4   � ��q�
�q 
mspr� o   � ��p�p 0 	themaster 	theMasterz �o��n
�o 
dPge� 4   � ��m�
�m 
page� m   � ��l�l �n  x ��� l  � ���� r   � ��� o   � ��k�k 0 pagedate pageDate� l     ��j�i� n      ��� 1   � ��h
�h 
pcnt� n   � ���� 4   � ��g�
�g 
txtf� m   � ��� ���  L - E d i t i o n   d a t e� 4   � ��f�
�f 
page� m   � ��e�e �j  �i  � * $ Sets the date on the left-hand page   � ��� H   S e t s   t h e   d a t e   o n   t h e   l e f t - h a n d   p a g e� ��� l ���� r  ��� o  �d�d 0 pagedate pageDate� l     ��c�b� n      ��� 1  �a
�a 
pcnt� n  ��� 4  �`�
�` 
txtf� m  
�� ���  R - E d i t i o n   d a t e� 4  �_�
�_ 
page� m  �^�^ �c  �b  � + % Sets the date on the right-hand page   � ��� J   S e t s   t h e   d a t e   o n   t h e   r i g h t - h a n d   p a g e� ��� Q  d���]� k  [�� ��� I 6�\��
�\ .InESovrrobj         obj � l -��[�Z� 6 -��� n  ��� 2  �Y
�Y 
cobj� n  ��� 1  �X
�X 
mpgs� 4  �W�
�W 
page� m  �V�V � = ,��� n &��� 1  "&�U
�U 
pnam� 1  "�T
�T 
pilr� m  '+�� ���  W o r k�[  �Z  � �S��R
�S 
dPge� 4  .2�Q�
�Q 
page� m  01�P�P �R  � ��O� I 7[�N��
�N .InESovrrobj         obj � l 7R��M�L� 6 7R��� n  7?��� 2  =?�K
�K 
cobj� n  7=��� 1  ;=�J
�J 
mpgs� 4  7;�I�
�I 
page� m  9:�H�H � = BQ��� n CK��� 1  GK�G
�G 
pnam� 1  CG�F
�F 
pilr� m  LP�� ���  W o r k�M  �L  � �E��D
�E 
dPge� 4  SW�C�
�C 
page� m  UV�B�B �D  �O  � R      �A�@�?
�A .ascrerr ****      � ****�@  �?  �]  � ��>� Z  e����=�<� > ej��� o  ef�;�; 0 
pagenumber 
pageNumber� m  fi�� ���  � k  m��� ��� I m�:��
�: .InESovrrobj         obj � n  mv��� 4  qv�9�
�9 
txtf� m  ru�� ���  L - P a g e   n u m b e r� 4  mq�8�
�8 
mspr� o  op�7�7 0 	themaster 	theMaster� �6��5
�6 
dPge� 4  w{�4�
�4 
page� m  yz�3�3 �5  � ��� I ���2��
�2 .InESovrrobj         obj � n  ����� 4  ���1�
�1 
txtf� m  ���� ���  R - P a g e   n u m b e r� 4  ���0�
�0 
mspr� o  ���/�/ 0 	themaster 	theMaster� �.��-
�. 
dPge� 4  ���,�
�, 
page� m  ���+�+ �-  � ��� r  ����� o  ���*�* 0 
pagenumber 
pageNumber� l     ��)�(� n      ��� 1  ���'
�' 
pcnt� n  ����� 4  ���&�
�& 
txtf� m  ���� ���  L - P a g e   n u m b e r� 4  ���%�
�% 
page� m  ���$�$ �)  �(  � ��#� r  ��� � l ���"�! c  �� l ��� � [  �� o  ���� 0 
pagenumber 
pageNumber m  ���� �   �   m  ���
� 
TEXT�"  �!    l     �� n      	 1  ���
� 
pcnt	 n  ��

 4  ���
� 
txtf m  �� �  R - P a g e   n u m b e r 4  ���
� 
page m  ���� �  �  �#  �=  �<  �>  �~  �}  �  ��  ��  � l   �� 1    �
� 
pacd�  �  � m     �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  l     ����  �  �    l     ����  �  �    l     ��   X R changeLegalDate: Overrides and sets the legal date on the weekday TV and Red List    � �   c h a n g e L e g a l D a t e :   O v e r r i d e s   a n d   s e t s   t h e   l e g a l   d a t e   o n   t h e   w e e k d a y   T V   a n d   R e d   L i s t  i   " % I      ��
� "0 changelegaldate changeLegalDate  �	  o      �� 0 	themaster 	theMaster�	  �
   O     W!"! O    V#$# Z   
 U%&'�% =  
 ()( o   
 �� 0 	themaster 	theMaster) m    ** �++  F e a t - R e d L i s t& k    ,,, -.- I    �/0
� .InESovrrobj         obj / n    121 4    �3
� 
txtf3 m    44 �55  L e g a l   d a t e2 4    �6
� 
mspr6 o    �� 0 	themaster 	theMaster0 �7� 
� 
dPge7 4    ��8
�� 
page8 m    ���� �   . 9��9 r   ! ,:;: o   ! "���� 0 pagedate pageDate; l     <����< n      =>= 1   ) +��
�� 
pcnt> n   " )?@? 4   & )��A
�� 
txtfA m   ' (BB �CC  L e g a l   d a t e@ 4   " &��D
�� 
pageD m   $ %���� ��  ��  ��  ' EFE =  / 2GHG o   / 0���� 0 	themaster 	theMasterH m   0 1II �JJ  F e a t - T VF K��K k   5 QLL MNM I  5 E��OP
�� .InESovrrobj         obj O n   5 <QRQ 4   9 <��S
�� 
txtfS m   : ;TT �UU  L e g a l   d a t eR 4   5 9��V
�� 
msprV o   7 8���� 0 	themaster 	theMasterP ��W��
�� 
dPgeW 4   = A��X
�� 
pageX m   ? @���� ��  N Y��Y r   F QZ[Z o   F G���� 0 pagedate pageDate[ l     \����\ n      ]^] 1   N P��
�� 
pcnt^ n   G N_`_ 4   K N��a
�� 
txtfa m   L Mbb �cc  L e g a l   d a t e` 4   G K��d
�� 
paged m   I J���� ��  ��  ��  ��  �  $ l   e����e 1    ��
�� 
pacd��  ��  " m     ff�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   ghg l     ��������  ��  ��  h iji l     ��������  ��  ��  j klk l     ��mn��  m c ] drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page   n �oo �   d r a w E m b a r g o B o x :   C r e a t e s   a n   e m b a r g o e d   s t o r i e s   f r a m e   o n   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g el pqp i   & )rsr I      ��t����  0 drawembargobox drawEmbargoBoxt u��u o      ���� 0 pagetype pageType��  ��  s O     �vwv O    �xyx Z    �z{|��z =   }~} o    ���� 0 pagetype pageType~ m     ���  s i n g l e{ k    E�� ��� O    .��� r    -��� I   +�����
�� .corecrel****      � null��  � ����
�� 
kocl� m    ��
�� 
txtf� �����
�� 
prdt� K    '�� ����
�� 
gbnd� J    #�� ��� m    �� @,      � ��� m    �� �b�     � ��� m     �� @\�     � ���� m     !�� �I      ��  � �����
�� 
pcnt� m   $ %�� ��� " E m b a r g o e d   s t o r i e s��  ��  � o      ���� 0 ebox eBox� 4    ���
�� 
page� m    ���� � ��� l  / =���� r   / =��� 4   / 7���
�� 
ObSt� m   3 6�� ��� " N e w s   N I B   b o x   t i n t� l     ������ n      ��� 1   8 <��
�� 
aobs� o   7 8���� 0 ebox eBox��  ��  � K E Set separately as it throws an error if you try to do it on creation   � ��� �   S e t   s e p a r a t e l y   a s   i t   t h r o w s   a n   e r r o r   i f   y o u   t r y   t o   d o   i t   o n   c r e a t i o n� ���� r   > E��� m   > ?��
�� boovtrue� n      ��� 1   @ D��
�� 
plck� o   ? @���� 0 ebox eBox��  | ��� =  H M��� o   H I���� 0 pagetype pageType� m   I L�� ���  s p r e a d� ���� k   P ��� ��� O   P o��� r   W n��� I  W l�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   Y Z��
�� 
txtf� �����
�� 
prdt� K   [ h�� ����
�� 
gbnd� J   \ b�� ��� m   \ ]�� @,      � ��� m   ] ^�� �b�     � ��� m   ^ _�� @\�     � ���� m   _ `�� �I      ��  � �����
�� 
pcnt� m   c f�� ��� " E m b a r g o e d   s t o r i e s��  ��  � o      ���� 0 ebox eBox� 4   P T���
�� 
page� m   R S���� � ��� r   p ~��� 4   p x���
�� 
ObSt� m   t w�� ��� " N e w s   N I B   b o x   t i n t� l     ������ n      ��� 1   y }��
�� 
aobs� o   x y���� 0 ebox eBox��  ��  � ���� r    ���� m    ���
�� boovtrue� n      ��� 1   � ���
�� 
plck� o   � ����� 0 ebox eBox��  ��  ��  y l   ������ 4   ���
�� 
docu� m    ���� ��  ��  w m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  q ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � cleanSave: Locks the date/page number layer, selects the Work layer, sets the correct ruler zero-point and saves the file using theSlug and fileDate   � ���*   c l e a n S a v e :   L o c k s   t h e   d a t e / p a g e   n u m b e r   l a y e r ,   s e l e c t s   t h e   W o r k   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o - p o i n t   a n d   s a v e s   t h e   f i l e   u s i n g   t h e S l u g   a n d   f i l e D a t e� ��� i   * -��� I      ������� 0 	cleansave 	cleanSave� ��� o      ���� 0 
pagenumber 
pageNumber� ���� o      ���� 0 theslug theSlug��  ��  � O     _��� O    ^��� k   
 ]�� �	 � r   
 			 m   
 ��
�� boovtrue	 n      			 1    ��
�� 
plck	 4    ��	
�� 
layr	 m    		 �		 ( D a t e   a n d   p a g e   n u m b e r	  				 r    	
		
 m    ��
�� boovtrue	 n      			 1    ��
�� 
plck	 4    ��	
�� 
layr	 m    		 �		  F u r n i t u r e		 			 r    !			 m    		 �		  W o r k	 1     ��
�� 
pacl	 			 l  " "��������  ��  ��  	 			 Z   " I			��	 l  " '	����	 =  " '		 	 `   " %	!	"	! o   " #���� 0 
pagenumber 
pageNumber	" m   # $���� 	  m   % &����  ��  ��  	 l  * 2	#	$	%	# r   * 2	&	'	& J   * .	(	( 	)	*	) m   * +	+	+ @.      	* 	,��	, m   + ,	-	- @&      ��  	' l     	.����	. 1   . 1��
�� 
zero��  ��  	$ ( " For left-hand singles and spreads   	% �	/	/ D   F o r   l e f t - h a n d   s i n g l e s   a n d   s p r e a d s	 	0	1	0 l  5 :	2����	2 =  5 :	3	4	3 `   5 8	5	6	5 o   5 6�� 0 
pagenumber 
pageNumber	6 m   6 7�~�~ 	4 m   8 9�}�} ��  ��  	1 	7�|	7 l  = E	8	9	:	8 r   = E	;	<	; J   = A	=	= 	>	?	> m   = >	@	@ @"      	? 	A�{	A m   > ?	B	B @&      �{  	< l     	C�z�y	C 1   A D�x
�x 
zero�z  �y  	9   For right-hand singles   	: �	D	D .   F o r   r i g h t - h a n d   s i n g l e s�|  ��  	 	E	F	E l  J J�w�v�u�w  �v  �u  	F 	G�t	G I  J ]�s�r	H
�s .CoResavedocu        obj �r  	H �q	I�p
�q 
kfil	I b   L Y	J	K	J b   L W	L	M	L b   L U	N	O	N b   L S	P	Q	P o   L Q�o�o $0 freshpagesfolder freshPagesFolder	Q o   Q R�n�n 0 theslug theSlug	O m   S T	R	R �	S	S  _	M o   U V�m�m 0 filedate fileDate	K m   W X	T	T �	U	U 
 . i n d d�p  �t  � l   	V�l�k	V 1    �j
�j 
pacd�l  �k  � m     	W	W�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 	X	Y	X l     �i�h�g�i  �h  �g  	Y 	Z	[	Z l     �f�e�d�f  �e  �d  	[ 	\	]	\ l     �c	^	_�c  	^ f ` customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them   	_ �	`	` �   c u s t o m E d i t i o n :   R e a d s   a   l i s t   o f   w a n t e d   p a g e s   f r o m   T e x t W r a n g l e r   t h e n   c a l l s   p a g e G e n ( )   t o   m a k e   t h e m	] 	a	b	a i   . 1	c	d	c I      �b�a�`�b 0 customedition customEdition�a  �`  	d k    �	e	e 	f	g	f l     �_�^�]�_  �^  �]  	g 	h	i	h l     �\	j	k�\  	j | v The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.   	k �	l	l �   T h e   e n t r i e s   i n   t h e   h u m a n ,   m a s t e r s   &   s l u g s   l i s t s   m u s t   m a t c h   e x a c t l y ,   a s   t h e y   a r e   f e t c h e d   b a s e d   o n   t h e i r   l i s t   p o s i t i o n .	i 	m	n	m l     �[	o	p�[  	o a [ e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent   	p �	q	q �   e . g .   I f   i t e m   4   o f   h u m a n _ l i s t   i s   " L e t t e r s _ S " ,   i t e m   4   o f   m a s t e r s _ l i s t   m u s t   b e   t h e   e q u i v a l e n t	n 	r	s	r l     �Z	t	u�Z  	t [ U InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"   	u �	v	v �   I n D e s i g n   m a s t e r   n a m e   ( F e a t - L e t t e r s - S p l i t )   a n d   i t e m   4   o f   s l u g s _ l i s t   m u s t   b e   " L e t t e r s "	s 	w	x	w l     �Y�X�W�Y  �X  �W  	x 	y	z	y l     �V	{	|�V  	{ > 8 The human-friendly names used in the TextWrangler file	   	| �	}	} p   T h e   h u m a n - f r i e n d l y   n a m e s   u s e d   i n   t h e   T e x t W r a n g l e r   f i l e 		z 	~		~ r     U	�	�	� J     S	�	� 	�	�	� m     	�	� �	�	� 
 F r o n t	� 	�	�	� m    	�	� �	�	�  S a t F r o n t	� 	�	�	� m    	�	� �	�	�  H o m e _ S	� 	�	�	� m    	�	� �	�	�  H o m e _ L	� 	�	�	� m    	�	� �	�	�  H o m e _ R	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ S	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ L	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ R	� 	�	�	� m    		�	� �	�	�  S t r u g g l e _ S	� 	�	�	� m   	 
	�	� �	�	�  S t r u g g l e _ L	� 	�	�	� m   
 	�	� �	�	�  S t r u g g l e _ R	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ S	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ L	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ R	� 	�	�	� m    	�	� �	�	�  S p r e a d	� 	�	�	� m    	�	� �	�	�  T V	� 	�	�	� m    	�	� �	�	� 
 S a t T V	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ S	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ L	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ R	� 	�	�	� m    	�	� �	�	�  R e d L i s t	� 	�	�	� m    "	�	� �	�	�  F e a t _ S	� 	�	�	� m   " %	�	� �	�	�  F e a t _ L	� 	�	�	� m   % (	�	� �	�	�  F e a t _ R	� 	�	�	� m   ( +	�	� �	�	�  A r t s _ E n t s	� 	�	�	� m   + .	�	� �	�	�  A r t s _ S	� 	�	�	� m   . 1	�	� �	�	�  A r t s _ L	� 	�	�	� m   1 4	�	� �	�	�  A r t s _ R	� 	�	�	� m   4 7	�	� �	�	�  B a c k	� 	�	�	� m   7 :	�	� �	�	�  S p o r t _ S	� 	�	�	� m   : =	�	� �	�	�  S p o r t _ L	� 	�
 	� m   = @

 �

  S p o r t _ R
  


 m   @ C

 �

  R a c i n g _ L
 


 m   C F
	
	 �



  R a c i n g _ R
 


 m   F I

 �

  B l a n k _ S
 


 m   I L

 �

  B l a n k _ L
 
�U
 m   L O

 �

  B l a n k _ R�U  	� o      �T�T 0 
human_list  	 


 l  V V�S

�S  
    The InDesign master names   
 �

 4   T h e   I n D e s i g n   m a s t e r   n a m e s
 


 r   V �


 J   V �

 
 
!
  m   V Y
"
" �
#
#  N e w s - F r o n t
! 
$
%
$ m   Y \
&
& �
'
'  N e w s - S a t F r o n t
% 
(
)
( m   \ _
*
* �
+
+  N e w s - H o m e - S p l i t
) 
,
-
, m   _ b
.
. �
/
/  N e w s - H o m e - L
- 
0
1
0 m   b e
2
2 �
3
3  N e w s - H o m e - R
1 
4
5
4 m   e h
6
6 �
7
7 $ N e w s - F o r e i g n - S p l i t
5 
8
9
8 m   h k
:
: �
;
;  N e w s - F o r e i g n - L
9 
<
=
< m   k n
>
> �
?
?  N e w s - F o r e i g n - R
= 
@
A
@ m   n q
B
B �
C
C & F e a t - S t r u g g l e - S p l i t
A 
D
E
D m   q t
F
F �
G
G  F e a t - S t r u g g l e - L
E 
H
I
H m   t w
J
J �
K
K  F e a t - S t r u g g l e - R
I 
L
M
L m   w z
N
N �
O
O * F e a t - N e w s R e v i e w - S p l i t
M 
P
Q
P m   z }
R
R �
S
S " F e a t - N e w s R e v i e w - L
Q 
T
U
T m   } �
V
V �
W
W " F e a t - N e w s R e v i e w - R
U 
X
Y
X m   � �
Z
Z �
[
[  F e a t - S p r e a d
Y 
\
]
\ m   � �
^
^ �
_
_  F e a t - T V
] 
`
a
` m   � �
b
b �
c
c  F e a t - S a t T V
a 
d
e
d m   � �
f
f �
g
g $ F e a t - L e t t e r s - S p l i t
e 
h
i
h m   � �
j
j �
k
k  F e a t - L e t t e r s - L
i 
l
m
l m   � �
n
n �
o
o  F e a t - L e t t e r s - R
m 
p
q
p m   � �
r
r �
s
s  F e a t - R e d L i s t
q 
t
u
t m   � �
v
v �
w
w   F e a t - B l a n k - S p l i t
u 
x
y
x m   � �
z
z �
{
{  F e a t - B l a n k - L
y 
|
}
| m   � �
~
~ �

  F e a t - B l a n k - R
} 
�
�
� m   � �
�
� �
�
�  A r t s - E n t s - S p l i t
� 
�
�
� m   � �
�
� �
�
�   A r t s - B l a n k - S p l i t
� 
�
�
� m   � �
�
� �
�
�  A r t s - B l a n k - L
� 
�
�
� m   � �
�
� �
�
�  A r t s - B l a n k - R
� 
�
�
� m   � �
�
� �
�
�  S p r t - B a c k
� 
�
�
� m   � �
�
� �
�
�   S p r t - B l a n k - S p l i t
� 
�
�
� m   � �
�
� �
�
�  S p r t - B l a n k - L
� 
�
�
� m   � �
�
� �
�
�  S p r t - B l a n k - R
� 
�
�
� m   � �
�
� �
�
�  S p r t - R a c i n g - L
� 
�
�
� m   � �
�
� �
�
�  S p r t - R a c i n g - R
� 
�
�
� m   � �
�
� �
�
�  X - B l a n k - S p l i t
� 
�
�
� m   � �
�
� �
�
�  X - B l a n k - L
� 
��R
� m   � �
�
� �
�
�  X - B l a n k - R�R  
 o      �Q�Q 0 masters_list  
 
�
�
� l  � ��P
�
��P  
� $  Slugs to use in the file name   
� �
�
� <   S l u g s   t o   u s e   i n   t h e   f i l e   n a m e
� 
�
�
� r   �A
�
�
� J   �?
�
� 
�
�
� m   � �
�
� �
�
� 
 F r o n t
� 
�
�
� m   � �
�
� �
�
� 
 F r o n t
� 
�
�
� m   � �
�
� �
�
�  H o m e
� 
�
�
� m   � �
�
� �
�
�  H o m e
� 
�
�
� m   � �
�
� �
�
�  H o m e
� 
�
�
� m   � �
�
� �
�
�  F o r e i g n
� 
�
�
� m   � �
�
� �
�
�  F o r e i g n
� 
�
�
� m   � �
�
� �
�
�  F o r e i g n
� 
�
�
� m   � �
�
� �
�
�  S t r u g g l e
� 
�
�
� m   � �
�
� �
�
�  S t r u g g l e
� 
�
�
� m   � �
�
� �
�
�  S t r u g g l e
� 
�
�
� m   � �
�
� �
�
�  N e w s R e v i e w s
� 
�
�
� m   � �
�
� �
�
�  N e w s R e v i e w
� 
�
�
� m   � �
�
� �
�
�  N e w s R e v i e w
� 
�
�
� m   � �
�
� �
�
�  S p r e a d
� 
�
�
� m   � �
�
� �
�
�  T V
� 
�
�
� m   � �
�
� �    T V
�  m   � �  L e t t e r s  m   �  L e t t e r s 	
	 m   �  L e t t e r s
  m   �  R e d L i s t  m   �  F e a t u r e s  m   �  F e a t u r e  m   �  F e a t u r e  m   �    A r t s - E n t s !"! m  ## �$$  A r t s" %&% m  '' �((  A r t s& )*) m   ++ �,,  A r t s* -.- m   #// �00  B a c k. 121 m  #&33 �44 
 S p o r t2 565 m  &)77 �88 
 S p o r t6 9:9 m  ),;; �<< 
 S p o r t: =>= m  ,/?? �@@  R a c i n g> ABA m  /2CC �DD  R a c i n gB EFE m  25GG �HH 
 B L A N KF IJI m  58KK �LL 
 B L A N KJ M�OM m  8;NN �OO 
 B L A N K�O  
� o      �N�N 0 
slugs_list  
� PQP l BB�M�L�K�M  �L  �K  Q RSR l BB�JTU�J  T 1 + Single-page masters (used to set pageType)   U �VV V   S i n g l e - p a g e   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )S WXW r  B�YZY J  B�[[ \]\ m  BE^^ �__  N e w s - F r o n t] `a` m  EHbb �cc  N e w s - S a t F r o n ta ded m  HKff �gg  N e w s - H o m e - Le hih m  KNjj �kk  N e w s - H o m e - Ri lml m  NQnn �oo  N e w s - F o r e i g n - Lm pqp m  QTrr �ss  N e w s - F o r e i g n - Rq tut m  TWvv �ww  F e a t - S t r u g g l e - Lu xyx m  WZzz �{{  F e a t - S t r u g g l e - Ry |}| m  Z]~~ � " F e a t - N e w s R e v i e w - L} ��� m  ]`�� ��� " F e a t - N e w s R e v i e w - R� ��� m  `c�� ���  F e a t - L e t t e r s - L� ��� m  cf�� ���  F e a t - L e t t e r s - R� ��� m  fi�� ���  F e a t - R e d L i s t� ��� m  il�� ���  F e a t - B l a n k - L� ��� m  lo�� ���  F e a t - B l a n k - R� ��� m  or�� ���  A r t s - B l a n k - L� ��� m  ru�� ���  A r t s - B l a n k - R� ��� m  ux�� ���  S p r t - B a c k� ��� m  x{�� ���  S p r t - B l a n k - L� ��� m  {~�� ���  S p r t - B l a n k - R� ��� m  ~��� ���  S p r t - R a c i n g - L� ��� m  ���� ���  S p r t - R a c i n g - R� ��� m  ���� ���  X - B l a n k - L� ��I� m  ���� ���  X - B l a n k - R�I  Z o      �H�H 0 singles_list  X ��� l ���G���G  � , & Spread masters (used to set pageType)   � ��� L   S p r e a d   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )� ��� r  ����� J  ���� ��� m  ���� ���  N e w s - H o m e - S p l i t� ��� m  ���� ��� $ N e w s - F o r e i g n - S p l i t� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m  ���� ���  F e a t - S p r e a d� ��� m  ���� ���  F e a t - T V� ��� m  ���� ���  F e a t - S a t T V� ��� m  ���� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  ���� ���   F e a t - B l a n k - S p l i t� ��� m  ���� ���  A r t s - E n t s - S p l i t� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ��F� m  ���� ���  X - B l a n k - S p l i t�F  � o      �E�E 0 spreads_list  � ��� l ���D�C�B�D  �C  �B  � ��A� O  ����� O  ����� k  ����    l �� r  �� l ���@�? I ���>	
�> .R*chFindMtch���     TEXT m  ��

 �  ^ # S t a r t s   h e r e # $	 �=�<
�= 
Opts K  �� �;
�; 
SMod m  ���:
�: SModGrep �9�8
�9 
STop m  ���7
�7 boovtrue�8  �<  �@  �?   o      �6�6 0 hashline hashLine   Finds the beginning line    � 2   F i n d s   t h e   b e g i n n i n g   l i n e  l �� r  �� l ���5�4 [  �� l ���3�2 l ���1�0 n  �� 1  ���/
�/ 
SLin l �� �.�-  n  ��!"! 1  ���,
�, 
MSpc" o  ���+�+ 0 hashline hashLine�.  �-  �1  �0  �3  �2   m  ���*�* �5  �4   o      �)�) 0 thestart theStart : 4 The first instruction is on the line after hashLine    �## h   T h e   f i r s t   i n s t r u c t i o n   i s   o n   t h e   l i n e   a f t e r   h a s h L i n e $%$ l �&'(& r  �)*) l �+�(�'+ 1  ��&
�& 
ELin�(  �'  * o      �%�% 0 theend theEnd' @ : The last instruction must be on the last line of the file   ( �,, t   T h e   l a s t   i n s t r u c t i o n   m u s t   b e   o n   t h e   l a s t   l i n e   o f   t h e   f i l e% -.- l �$�#�"�$  �#  �"  . /0/ Y  �1�!23� 1 l �4564 k  �77 898 l -:;<: r  -=>= l +?��? I +�@A
� .R*chFindMtch���     TEXT@ m  BB �CC  ^ ( . + ) \ t ( . + ) $A �DE
� 
FnInD 4  �F
� 
clinF o  �� 0 x  E �G�
� 
OptsG K  %HH �I�
� 
SModI m   #�
� SModGrep�  �  �  �  > o      �� 0 searchresult searchResult; 9 3 Finds characters, then a tab, then more characters   < �JJ f   F i n d s   c h a r a c t e r s ,   t h e n   a   t a b ,   t h e n   m o r e   c h a r a c t e r s9 KLK l ..����  �  �  L MNM l .;OPQO r  .;RSR l .9T��T I .9��U
� .R*chGSubutxt    ��� null�  U �V�
� 
RplPV m  25WW �XX  \ 1�  �  �  S o      �
�
 0 
pagenumber 
pageNumberP < 6 The page number (or a spread's left-hand page number)   Q �YY l   T h e   p a g e   n u m b e r   ( o r   a   s p r e a d ' s   l e f t - h a n d   p a g e   n u m b e r )N Z[Z l <I\]^\ r  <I_`_ l <Ga�	�a I <G��b
� .R*chGSubutxt    ��� null�  b �c�
� 
RplPc m  @Cdd �ee  \ 2�  �	  �  ` o      �� 0 hmaster hMaster] = 7 Human-friendly master name, as contained in human_list   ^ �ff n   H u m a n - f r i e n d l y   m a s t e r   n a m e ,   a s   c o n t a i n e d   i n   h u m a n _ l i s t[ ghg l JJ��� �  �  �   h i��i Z  J�jk����j H  JTll E  JSmnm l JOo����o n  JOpqp 1  KO��
�� 
MTxtq o  JK���� 0 searchresult searchResult��  ��  n m  ORrr �ss  - 	 -k l W�tuvt k  W�ww xyx l W`z{|z r  W`}~} l W^���� n W^��� I  X^������� 0 list_position  � ��� o  XY���� 0 hmaster hMaster� ���� o  YZ���� 0 
human_list  ��  ��  �  f  WX��  ��  ~ o      ���� 0 listpos listPos{ Q K Gets hMaster's list position, so it can fetch from masters_ and slugs_list   | ��� �   G e t s   h M a s t e r ' s   l i s t   p o s i t i o n ,   s o   i t   c a n   f e t c h   f r o m   m a s t e r s _   a n d   s l u g s _ l i s ty ��� l ai���� r  ai��� l ag������ n  ag��� 4  bg���
�� 
cobj� o  ef���� 0 listpos listPos� o  ab���� 0 masters_list  ��  ��  � o      ���� 0 	themaster 	theMaster� 1 + Sets theMaster to the InDesign master name   � ��� V   S e t s   t h e M a s t e r   t o   t h e   I n D e s i g n   m a s t e r   n a m e� ��� l jj��������  ��  ��  � ��� Z  j������� E jm��� o  jk���� 0 singles_list  � o  kl���� 0 	themaster 	theMaster� r  pu��� m  ps�� ���  s i n g l e� o      ���� 0 pagetype pageType� ��� E x{��� o  xy���� 0 spreads_list  � o  yz���� 0 	themaster 	theMaster� ���� r  ~���� m  ~��� ���  s p r e a d� o      ���� 0 pagetype pageType��  ��  � ��� l ����������  ��  ��  � ��� Z  �������� = ����� o  ������ 0 pagetype pageType� m  ���� ���  s i n g l e� l ������ r  ����� l �������� b  ����� b  ����� o  ������ 0 
pagenumber 
pageNumber� m  ���� ���  _� l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 listpos listPos� o  ������ 0 
slugs_list  ��  ��  ��  ��  � o      ���� 0 theslug theSlug� 2 , Block to set the slug used to name the file   � ��� X   B l o c k   t o   s e t   t h e   s l u g   u s e d   t o   n a m e   t h e   f i l e� ��� = ����� o  ������ 0 pagetype pageType� m  ���� ���  s p r e a d� ���� r  ����� l �������� b  ����� b  ����� b  ����� b  ����� o  ������ 0 
pagenumber 
pageNumber� m  ���� ���  -� l �������� [  ����� o  ������ 0 
pagenumber 
pageNumber� m  ������ ��  ��  � m  ���� ���  _� l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 listpos listPos� o  ������ 0 
slugs_list  ��  ��  ��  ��  � o      ���� 0 theslug theSlug��  ��  � ��� l ����������  ��  ��  � ��� Z  ��������� G  ����� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - F r o n t� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - S a t F r o n t� l ������ r  ����� m  ���� ���  � o      ���� 0 
pagenumber 
pageNumber� H B So applyMaster doesn't try to set a page number, which would fail   � ��� �   S o   a p p l y M a s t e r   d o e s n ' t   t r y   t o   s e t   a   p a g e   n u m b e r ,   w h i c h   w o u l d   f a i l��  ��  � ��� l ����������  ��  ��  � ��� l ���� � n �� I  �������� 0 pagegen pageGen  o  ������ 0 pagetype pageType  o  ������ 0 	themaster 	theMaster 	 o  ������ 0 theslug theSlug	 
��
 o  ������ 0 
pagenumber 
pageNumber��  ��    f  ��� ' ! Calls pageGen to create the page     � B   C a l l s   p a g e G e n   t o   c r e a t e   t h e   p a g e� �� l ����������  ��  ��  ��  u : 4 Lines consisting of "hyphen tab hyphen" are skipped   v � h   L i n e s   c o n s i s t i n g   o f   " h y p h e n   t a b   h y p h e n "   a r e   s k i p p e d��  ��  ��  5 P J Goes through each line from the one after hashLine to the end of the file   6 � �   G o e s   t h r o u g h   e a c h   l i n e   f r o m   t h e   o n e   a f t e r   h a s h L i n e   t o   t h e   e n d   o f   t h e   f i l e�! 0 x  2 o  ���� 0 thestart theStart3 o  	���� 0 theend theEnd�   0 �� l ����������  ��  ��  ��  � n  �� 4  ����
�� 
ctxt m  ������  4  ����
�� 
TxtW m  ������ � m  ���                                                                                  !Rch  alis    J  SSD                        �@��H+  ��TextWrangler.app                                                ±	��u}        ����  	                Applications    �@��      ��gm    ��  "SSD:Applications: TextWrangler.app  "  T e x t W r a n g l e r . a p p    S S D  Applications/TextWrangler.app   / ��  �A  	b  l     ��������  ��  ��    l     ����   , & newsGen: News-page generation routine    � L   n e w s G e n :   N e w s - p a g e   g e n e r a t i o n   r o u t i n e  i   2 5 I      �� ���� 0 newsgen newsGen  !"! o      ���� &0 masterstogenerate mastersToGenerate" #��# o      ���� 0 theday theDay��  ��   k    X$$ %&% Z     _'(����' E    )*) o     ���� &0 masterstogenerate mastersToGenerate* m    ++ �,,  N e w s   p a g e s( k    [-- ./. Z    +012��0 >   	343 o    ���� 0 theday theDay4 m    55 �66  S a t u r d a y1 l   7897 I    ��:���� 0 pagegen pageGen: ;<; m    == �>>  s i n g l e< ?@? m    AA �BB  N e w s - F r o n t@ CDC m    EE �FF  1 _ F r o n tD G��G m    HH �II  ��  ��  8 ; 5 If block to create the weekday or weekend front page   9 �JJ j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e2 KLK =   MNM o    ���� 0 theday theDayN m    OO �PP  S a t u r d a yL Q��Q I    '��R���� 0 pagegen pageGenR STS m     UU �VV  s i n g l eT WXW m     !YY �ZZ  N e w s - S a t F r o n tX [\[ m   ! "]] �^^  1 _ F r o n t\ _��_ m   " #`` �aa  ��  ��  ��  ��  / bcb I   , 7��d���� 0 pagegen pageGend efe m   - .gg �hh  s p r e a df iji m   . /kk �ll  N e w s - H o m e - S p l i tj mnm m   / 0oo �pp  2 - 3 _ H o m en q��q m   0 3rr �ss  2��  ��  c tut I   8 I��v���� 0 pagegen pageGenv wxw m   9 <yy �zz  s p r e a dx {|{ m   < ?}} �~~  N e w s - H o m e - S p l i t| � m   ? B�� ���  4 - 5 _ H o m e� ���� m   B E�� ���  4��  ��  u ���� I   J [������� 0 pagegen pageGen� ��� m   K N�� ���  s p r e a d� ��� m   N Q�� ��� $ N e w s - F o r e i g n - S p l i t� ��� m   Q T�� ���  6 - 7 _ F o r e i g n� ���� m   T W�� ���  6��  ��  ��  ��  ��  & ��� l  ` `��������  ��  ��  � ��� Z   ` �����~� E  ` e��� o   ` a�}�} &0 masterstogenerate mastersToGenerate� m   a d�� ���  T V� Z   h �����|� >  h m��� o   h i�{�{ 0 theday theDay� m   i l�� ���  S a t u r d a y� I   p ��z��y�z 0 pagegen pageGen� ��� m   q t�� ���  s p r e a d� ��� m   t w�� ���  F e a t - T V� ��� m   w z�� ���  1 2 - 1 3 _ T V� ��x� m   z }�� ���  1 2�x  �y  � ��� =  � ���� o   � ��w�w 0 theday theDay� m   � ��� ���  S a t u r d a y� ��v� I   � ��u��t�u 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���  F e a t - S a t T V� ��� m   � ��� ���  1 8 - 1 9 _ T V� ��s� m   � ��� ���  1 8�s  �t  �v  �|  �  �~  � ��� l  � ��r�q�p�r  �q  �p  � ��� Z   ����o�n� E  � ���� o   � ��m�m &0 masterstogenerate mastersToGenerate� m   � ��� ���  L e t t e r s� k   ��� ��� l  � ����� r   � ���� J   � ��� ��� m   � ��� ���  M o n d a y� ��l� m   � ��� ���  W e d n e s d a y�l  � o      �k�k 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r   � ���� J   � ��� ��� m   � ��� ���  T u e s d a y� ��� m   � ��� ���  T h u r s d a y� ��j� m   � ��� ���  F r i d a y�j  � o      �i�i 0 p14_days  � ��� l  � ��h�g�f�h  �g  �f  � ��e� Z   �����d� E  � �   o   � ��c�c 0 p10_days   o   � ��b�b 0 theday theDay� I   � ��a�`�a 0 pagegen pageGen  m   � � �  s i n g l e  m   � �		 �

  F e a t - L e t t e r s - L  m   � � �  1 0 _ L e t t e r s �_ m   � � �  1 0�_  �`  �  E  � � o   � ��^�^ 0 p14_days   o   � ��]�] 0 theday theDay  I   � ��\�[�\ 0 pagegen pageGen  m   � � �  s i n g l e  m   � � �    F e a t - L e t t e r s - L !"! m   � �## �$$  1 4 _ L e t t e r s" %�Z% m   � �&& �''  1 4�Z  �[   ()( =  � *+* o   � ��Y�Y 0 theday theDay+ m   � �,, �--  S a t u r d a y) .�X. I  �W/�V�W 0 pagegen pageGen/ 010 m  22 �33  s p r e a d1 454 m  
66 �77 $ F e a t - L e t t e r s - S p l i t5 898 m  
:: �;;  1 0 - 1 1 _ L e t t e r s9 <�U< m  == �>>  1 0�U  �V  �X  �d  �e  �o  �n  � ?@? l �T�S�R�T  �S  �R  @ ABA Z  :CD�Q�PC E "EFE o  �O�O &0 masterstogenerate mastersToGenerateF m  !GG �HH  S t r u g g l eD I  %6�NI�M�N 0 pagegen pageGenI JKJ m  &)LL �MM  s i n g l eK NON m  ),PP �QQ  F e a t - S t r u g g l e - LO RSR m  ,/TT �UU  1 4 _ S t r u g g l eS V�LV m  /2WW �XX  1 4�L  �M  �Q  �P  B YZY l ;;�K�J�I�K  �J  �I  Z [�H[ Z  ;X\]�G�F\ E ;@^_^ o  ;<�E�E &0 masterstogenerate mastersToGenerate_ m  <?`` �aa  R e d   L i s t] I  CT�Db�C�D 0 pagegen pageGenb cdc m  DGee �ff  s i n g l ed ghg m  GJii �jj  F e a t - R e d L i s th klk m  JMmm �nn  2 0 _ R e d L i s tl o�Bo m  MPpp �qq  2 0�B  �C  �G  �F  �H   rsr l     �A�@�?�A  �@  �?  s tut l     �>�=�<�>  �=  �<  u vwv l     �;xy�;  x 1 + featsGen: Features-page generation routine   y �zz V   f e a t s G e n :   F e a t u r e s - p a g e   g e n e r a t i o n   r o u t i n ew {|{ i   6 9}~} I      �:�9�: 0 featsgen featsGen ��� o      �8�8 &0 masterstogenerate mastersToGenerate� ��7� o      �6�6 0 theday theDay�7  �9  ~ k    ��� ��� Z     %���5�4� E    ��� o     �3�3 &0 masterstogenerate mastersToGenerate� m    �� ���  S p r e a d� Z    !���2�� =   	��� o    �1�1 0 theday theDay� m    �� ���  S a t u r d a y� I    �0��/�0 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  1 2 - 1 3 _ F e a t u r e s� ��.� m    �� ���  1 2�.  �/  �2  � I    !�-��,�- 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  8 - 9 _ F e a t u r e s� ��+� m    �� ���  8�+  �,  �5  �4  � ��� l  & &�*�)�(�*  �)  �(  � ��� Z   & ;���'�&� E  & )��� o   & '�%�% &0 masterstogenerate mastersToGenerate� m   ' (�� ���  1 0� I   , 7�$��#�$ 0 pagegen pageGen� ��� m   - .�� ���  s i n g l e� ��� m   . /�� ���  F e a t - B l a n k - L� ��� m   / 0�� ���  1 0 _ F e a t u r e s� ��"� m   0 3�� ���  1 0�"  �#  �'  �&  � ��� l  < <�!� ��!  �   �  � ��� Z   < Y����� E  < A��� o   < =�� &0 masterstogenerate mastersToGenerate� m   = @�� ��� 
 1 2 - 1 3� I   D U���� 0 pagegen pageGen� ��� m   E H�� ���  s p r e a d� ��� m   H K�� ���  F e a t - T V� ��� m   K N�� ���  1 2 - 1 3 _ T V� ��� m   N Q�� ���  1 2�  �  �  �  � ��� l  Z Z����  �  �  � ��� Z   Z w����� E  Z _��� o   Z [�� &0 masterstogenerate mastersToGenerate� m   [ ^�� ��� ( N e w s   r e v i e w s      s p l i t� I   b s���� 0 pagegen pageGen� ��� m   c f�� ���  s p r e a d� ��� m   f i�� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m   i l�� ���  8 - 9 _ N e w s R e v i e w� ��� m   l o�� �    8�  �  �  �  �  Z   x ��� E  x } o   x y�� &0 masterstogenerate mastersToGenerate m   y | � , N e w s   r e v i e w s      s i n g l e s k   � �		 

 I   � ���� 0 pagegen pageGen  m   � � �  s i n g l e  m   � � � " F e a t - N e w s R e v i e w - L  m   � � �  8 _ N e w s R e v i e w �
 m   � � �  8�
  �   �	 I   � ���� 0 pagegen pageGen  m   � �   �!!  s i n g l e "#" m   � �$$ �%% " F e a t - N e w s R e v i e w - R# &'& m   � �(( �))  9 _ N e w s R e v i e w' *�* m   � �++ �,,  9�  �  �	  �  �   -.- l  � �����  �  �  . /0/ Z   � �12��1 E  � �343 o   � �� �  &0 masterstogenerate mastersToGenerate4 m   � �55 �66  1 52 I   � ���7���� 0 pagegen pageGen7 898 m   � �:: �;;  s i n g l e9 <=< m   � �>> �??  F e a t - B l a n k - R= @A@ m   � �BB �CC  1 5 _ F e a t u r e sA D��D m   � �EE �FF  1 5��  ��  �  �  0 GHG l  � ���������  ��  ��  H IJI Z   � �KL����K E  � �MNM o   � ����� &0 masterstogenerate mastersToGenerateN m   � �OO �PP 
 1 6 - 1 7L l  � �QRSQ I   � ���T���� 0 pagegen pageGenT UVU m   � �WW �XX  s p r e a dV YZY m   � �[[ �\\  A r t s - E n t s - S p l i tZ ]^] m   � �__ �``  1 6 - 1 7 _ E n t s - A r t s^ a��a m   � �bb �cc  1 6��  ��  R ( " Create the weekend Ents/Arts page   S �dd D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  J efe l  � ���������  ��  ��  f ghg Z   �]ij����i E  � �klk o   � ����� &0 masterstogenerate mastersToGeneratel m   � �mm �nn  L e t t e r sj k   �Yoo pqp l  � �rstr r   � �uvu J   � �ww xyx m   � �zz �{{  M o n d a yy |��| m   � �}} �~~  W e d n e s d a y��  v o      ���� 0 p10_days  s = 7 These two lists determine what the page number will be   t � n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b eq ��� r   ���� J   ��� ��� m   � ��� ���  T u e s d a y� ��� m   � ��� ���  T h u r s d a y� ��� m   � �� ���  F r i d a y� ���� m   �� ��� , N o   d a y      w o r k i n g   a h e a d��  � o      ���� 0 p14_days  � ��� l ��������  ��  ��  � ���� Z  Y������ E ��� o  	���� 0 p10_days  � o  	
���� 0 theday theDay� I  ������� 0 pagegen pageGen� ��� m  �� ���  s i n g l e� ��� m  �� ���  F e a t - L e t t e r s - L� ��� m  �� ���  1 0 _ L e t t e r s� ���� m  �� ���  1 0��  ��  � ��� E "%��� o  "#���� 0 p14_days  � o  #$���� 0 theday theDay� ��� I  (9������� 0 pagegen pageGen� ��� m  ),�� ���  s i n g l e� ��� m  ,/�� ���  F e a t - L e t t e r s - L� ��� m  /2�� ���  1 4 _ L e t t e r s� ���� m  25�� ���  1 4��  ��  � ��� = <A��� o  <=���� 0 theday theDay� m  =@�� ���  S a t u r d a y� ���� I  DU������� 0 pagegen pageGen� ��� m  EH�� ���  s p r e a d� ��� m  HK�� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  KN�� ���  1 0 - 1 1 _ L e t t e r s� ���� m  NQ�� ���  1 0��  ��  ��  ��  ��  ��  ��  h ��� l ^^��������  ��  ��  � ��� Z  ^{������� E ^c��� o  ^_���� &0 masterstogenerate mastersToGenerate� m  _b�� ���  A r t s� l fw���� I  fw������� 0 pagegen pageGen� ��� m  gj�� ���  s i n g l e� ��� m  jm�� ���  A r t s - B l a n k - R� ��� m  mp�� ���  1 1 _ A r t s� ���� m  ps�� ���  1 1��  ��  � ( " Create the weekday Arts page (11)   � ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  � ��� l ||��������  ��  ��  � ���� Z  |�������� E |���� o  |}���� &0 masterstogenerate mastersToGenerate� m  }��� ���  A r t s   s p l i t� I  ���� ���� 0 pagegen pageGen   m  �� �  s p r e a d  m  �� �   A r t s - B l a n k - S p l i t 	
	 m  �� �  1 0 - 1 1 _ A r t s
 �� m  �� �  1 0��  ��  ��  ��  ��  |  l     ��������  ��  ��    l     ��������  ��  ��    l     ����   , & artsGen: Arts-page generation routine    � L   a r t s G e n :   A r t s - p a g e   g e n e r a t i o n   r o u t i n e  i   : = I      ������ 0 artsgen artsGen �� o      ���� &0 masterstogenerate mastersToGenerate��  ��   k     =  !  Z     "#����" E    $%$ o     ���� &0 masterstogenerate mastersToGenerate% m    && �''  1 6 - 1 7   ( w e e k e n d )# l   ()*( I    ��+���� 0 pagegen pageGen+ ,-, m    .. �//  s p r e a d- 010 m    	22 �33  A r t s - E n t s - S p l i t1 454 m   	 
66 �77  1 6 - 1 7 _ E n t s - A r t s5 8��8 m   
 99 �::  1 6��  ��  ) ( " Create the weekend Ents/Arts page   * �;; D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  ! <=< l   ��������  ��  ��  = >?> Z    '@A����@ E   BCB o    ���� &0 masterstogenerate mastersToGenerateC m    DD �EE  A r t s   ( p 1 1 )A l   #FGHF I    #��I���� 0 pagegen pageGenI JKJ m    LL �MM  s i n g l eK NON m    PP �QQ  A r t s - B l a n k - RO RSR m    TT �UU  1 1 _ A r t sS V��V m    WW �XX  1 1��  ��  G ( " Create the weekday Arts page (11)   H �YY D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  ? Z[Z l  ( (��������  ��  ��  [ \��\ Z   ( =]^����] E  ( +_`_ o   ( )���� &0 masterstogenerate mastersToGenerate` m   ) *aa �bb  A r t s   s p l i t^ l  . 9cdec I   . 9��f���� 0 pagegen pageGenf ghg m   / 0ii �jj  s p r e a dh klk m   0 1mm �nn   A r t s - B l a n k - S p l i tl opo m   1 2qq �rr  1 0 - 1 1 _ A r t sp s��s m   2 5tt �uu  1 0��  ��  d + % Creates an Arts split-spread (10-11)   e �vv J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )��  ��  ��   wxw l     ��������  ��  ��  x yzy l     ��������  ��  ��  z {|{ l     ��}~��  } 0 * sportsGen: Sports-page generation routine   ~ � T   s p o r t s G e n :   S p o r t s - p a g e   g e n e r a t i o n   r o u t i n e| ���� i   > A��� I      ������� 0 	sportsgen 	sportsGen� ���� o      ���� &0 masterstogenerate mastersToGenerate��  ��  � k    ��� ��� Z     ������� E    ��� o     ���� &0 masterstogenerate mastersToGenerate� m    �� ���  T w o   p a g e s� k    �� ��� I    ������� 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    	�� ���  S p r t - B a c k� ��� m   	 
�� ���  1 6 _ B a c k� ���� m   
 �� ���  1 6��  ��  � ���� I    ������� 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  S p r t - B l a n k - R� ��� m    �� ���  1 5 _ S p o r t� ���� m    �� ���  1 5��  ��  ��  ��  ��  � ��� l   ��������  ��  ��  � ��� Z    U������� E   !��� o    ���� &0 masterstogenerate mastersToGenerate� m     �� ���  T h r e e   p a g e s� k   $ Q�� ��� I   $ -������� 0 pagegen pageGen� ��� m   % &�� ���  s i n g l e� ��� m   & '�� ���  S p r t - B a c k� ��� m   ' (�� ���  1 6 _ B a c k� ���� m   ( )�� ���  1 6��  ��  � ��� I   . ?���~� 0 pagegen pageGen� ��� m   / 2�� ���  s i n g l e� ��� m   2 5�� ���  S p r t - B l a n k - R� ��� m   5 8�� ���  1 5 _ S p o r t� ��}� m   8 ;�� ���  1 5�}  �~  � ��|� I   @ Q�{��z�{ 0 pagegen pageGen� ��� m   A D�� ���  s i n g l e� ��� m   D G�� ���  S p r t - B l a n k - L� ��� m   G J�� ���  1 4 _ S p o r t� ��y� m   J M�� ���  1 4�y  �z  �|  ��  ��  � ��� l  V V�x�w�v�x  �w  �v  � ��� Z   V ����u�t� E  V [��� o   V W�s�s &0 masterstogenerate mastersToGenerate� m   W Z�� ��� , T h r e e   p a g e s   w i t h   s p l i t� k   ^ ��� ��� I   ^ o�r��q�r 0 pagegen pageGen�    m   _ b �  s i n g l e  m   b e �  S p r t - B a c k 	 m   e h

 �  1 6 _ B a c k	 �p m   h k �  1 6�p  �q  � �o I   p ��n�m�n 0 pagegen pageGen  m   q t �  s p r e a d  m   t w �   S p r t - B l a n k - S p l i t  m   w z �  1 4 - 1 5 _ S p o r t �l m   z } �  1 4�l  �m  �o  �u  �t  �  !  l  � ��k�j�i�k  �j  �i  ! "#" Z   � �$%�h�g$ E  � �&'& o   � ��f�f &0 masterstogenerate mastersToGenerate' m   � �(( �))  F o u r   p a g e s% k   � �** +,+ I   � ��e-�d�e 0 pagegen pageGen- ./. m   � �00 �11  s i n g l e/ 232 m   � �44 �55  S p r t - B a c k3 676 m   � �88 �99  2 4 _ B a c k7 :�c: m   � �;; �<<  2 4�c  �d  , =>= I   � ��b?�a�b 0 pagegen pageGen? @A@ m   � �BB �CC  s i n g l eA DED m   � �FF �GG  S p r t - B l a n k - RE HIH m   � �JJ �KK  2 3 _ S p o r tI L�`L m   � �MM �NN  2 3�`  �a  > OPO I   � ��_Q�^�_ 0 pagegen pageGenQ RSR m   � �TT �UU  s i n g l eS VWV m   � �XX �YY  S p r t - B l a n k - LW Z[Z m   � �\\ �]]  2 2 _ S p o r t[ ^�]^ m   � �__ �``  2 2�]  �^  P a�\a I   � ��[b�Z�[ 0 pagegen pageGenb cdc m   � �ee �ff  s i n g l ed ghg m   � �ii �jj  S p r t - R a c i n g - Rh klk m   � �mm �nn  2 1 _ R a c i n gl o�Yo m   � �pp �qq  2 1�Y  �Z  �\  �h  �g  # rsr l  � ��X�W�V�X  �W  �V  s tut Z   �vw�U�Tv E  � �xyx o   � ��S�S &0 masterstogenerate mastersToGeneratey m   � �zz �{{ * F o u r   p a g e s   w i t h   s p l i tw k   �|| }~} I   � ��R�Q�R 0 pagegen pageGen ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B a c k� ��� m   � ��� ���  2 4 _ B a c k� ��P� m   � ��� ���  2 4�P  �Q  ~ ��� I   ��O��N�O 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���   S p r t - B l a n k - S p l i t� ��� m   � ��� ���  2 2 - 2 3 _ S p o r t� ��M� m   ��� ���  2 2�M  �N  � ��L� I  �K��J�K 0 pagegen pageGen� ��� m  
�� ���  s i n g l e� ��� m  
�� ���  S p r t - R a c i n g - R� ��� m  �� ���  2 1 _ R a c i n g� ��I� m  �� ���  2 1�I  �J  �L  �U  �T  u ��� l �H�G�F�H  �G  �F  � ��� Z  9���E�D� E !��� o  �C�C &0 masterstogenerate mastersToGenerate� m   �� ���  R a c i n g   o n l y� I  $5�B��A�B 0 pagegen pageGen� ��� m  %(�� ���  s i n g l e� ��� m  (+�� ���  S p r t - R a c i n g - R� ��� m  +.�� ���  2 1 _ R a c i n g� ��@� m  .1�� ���  2 1�@  �A  �E  �D  � ��� l ::�?�>�=�?  �>  �=  � ��� Z  :W���<�;� E :?��� o  :;�:�: &0 masterstogenerate mastersToGenerate� m  ;>�� ���  E x t r a   l e f t   p a g e� I  BS�9��8�9 0 pagegen pageGen� ��� m  CF�� ���  s i n g l e� ��� m  FI�� ���  S p r t - B l a n k - L� ��� m  IL�� ���  L _ X X _ S p o r t� ��7� m  LO�� ���  0 0�7  �8  �<  �;  � ��� l XX�6�5�4�6  �5  �4  � ��� Z  Xu���3�2� E X]��� o  XY�1�1 &0 masterstogenerate mastersToGenerate� m  Y\�� ���   E x t r a   r i g h t   p a g e� I  `q�0��/�0 0 pagegen pageGen� ��� m  ad�� ���  s i n g l e� ��� m  dg�� ���  S p r t - B l a n k - R� ��� m  gj�� ���  R _ X X _ S p o r t� ��.� m  jm�� ���  0 0�.  �/  �3  �2  �    l vv�-�,�+�-  �,  �+   �* Z  v��)�( E v{ o  vw�'�' &0 masterstogenerate mastersToGenerate m  wz �  E x t r a   s p l i t I  ~��&	�%�& 0 pagegen pageGen	 

 m  � �  s p r e a d  m  �� �   S p r t - B l a n k - S p l i t  m  �� � " S p l i t _ X X - X X _ S p o r t �$ m  �� �  0 0�$  �%  �)  �(  �*  ��       �# K U !"#$%&'()�#   �"�!� ����������������" $0 freshpagesfolder freshPagesFolder�!  0 masterdocument masterDocument�  0 	genprompt 	genPrompt� 0 list_position  � 0 
dateprompt 
datePrompt� "0 create_pagedate create_pageDate� "0 create_filedate create_fileDate� 0 pagegen pageGen� 0 applymaster applyMaster� "0 changelegaldate changeLegalDate�  0 drawembargobox drawEmbargoBox� 0 	cleansave 	cleanSave� 0 customedition customEdition� 0 newsgen newsGen� 0 featsgen featsGen� 0 artsgen artsGen� 0 	sportsgen 	sportsGen
� .aevtoappnull  �   � **** � ���*+�� 0 	genprompt 	genPrompt� �,� ,  �� 0 desk  �  * 	�
�	��������
 0 desk  �	 0 	days_list  � 0 thetitle theTitle� 0 weekday_pages  � 0 weekend_pages  � 0 ahead_pages  � 0 theday theDay� 0 
prompttext 
promptText� &0 masterstogenerate mastersToGenerate+ k � � � � � ���  ��� ��������� ����� � � � � � ���!%��/9=@HLPTW]hlptx{��������������������������$/2;?BJNQ��r���������������������� 
�  
prmp
�� 
appr�� 
�� .gtqpchltns    @   @ ns  
�� 
TEXT
�� 
rslt
�� 
errn������ 
�� 
bool�� 
�� 0 
dateprompt 
datePrompt�� 0 customedition customEdition
�� 
ret 
�� 
mlsl�� 0 newsgen newsGen�� 0 featsgen featsGen�� 0 	sportsgen 	sportsGen�� 0 artsgen artsGen����  -������v����� �&E�O��  )a a lhY hY hOa a a a a a a vE�O�a  �a %E�Y a E�O�a  
 �a  a & n�a   &a  a !a "mvE�Oa #a $a %a &a '�vE�Y ?�a (  6a )a *a +a ,a -a .a vE�Oa /a 0a 1a 2a 3a 4a vE�Y hY ��a 5 
 �a 6 a & �a 7�6FO�a 8  [a 9a :a ;a <a =a >a vE�Oa ?a @a Aa Ba Ca Da vE�Oa Ea Fa Ga Ha Ia Ja Ka La Ma Na OvE�Y 4�a P  +a Qa RlvE�Oa Sa Ta UmvE�Oa Va Wa XmvE�Y hY hO)��l+ YE�O�a Z  
)j+ [Y �a \_ ]%_ ]%a ^%E�O�a _  +���a `ea  E�O�f  )a a lhY hY e�a a +���a `ea  E�O�f  )a a lhY hY 4�a b  +���a `ea  E�O�f  )a a lhY hY hO�a c  )��l+ dY 7�a e  )��l+ fY %�a g  )�k+ hY �a i  )�k+ jY h ��+����-.���� 0 list_position  �� ��/�� /  ������ 0 	this_item  �� 0 	this_list  ��  - �������� 0 	this_item  �� 0 	this_list  �� 0 i  . ����
�� .corecnte****       ****
�� 
cobj�� # !k�j  kh ��/�  �Y h[OY�� ��H����01���� 0 
dateprompt 
datePrompt�� ��2�� 2  ������ 0 thetitle theTitle�� 0 	days_list  ��  0 ���������������������������������� 0 thetitle theTitle�� 0 	days_list  �� 0 months_list  �� 0 tomorrow  �� 0 tmday tmDay�� 0 theday theDay�� 0 prdate prDate�� 0 prmonth prMonth�� 0 pryear prYear�� 0 
predictpos 
predictPos�� 0 	actualpos 	actualPos�� 0 shiftpos shiftPos�� 0 predictedday predictedDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear1 2UY]aeimquy}������������������������������������������������������������������� 
�� .misccurdldt    ��� null
�� 
wkdy
�� 
TEXT
�� 
days
�� 
prmp
�� 
inSL
�� 
appr�� 
�� .gtqpchltns    @   @ ns  
�� 
rslt
�� 
errn������ 0 pagedate pageDate�� 0 filedate fileDate
�� 
day 
�� 
mnth
�� 
year�� 0 list_position  �� 
�� 
dtxt�� 
�� .sysodlogaskr        TEXT
�� 
ttxt�� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate����������������vE�O*j �,�&a  *j k_  E�Y *j l_  E�O��,�&kvE�O�a a a �a �a  �&E�O_ a   )a a lhY hO�a   a E` Oa E`  O�Y hO���&   �a !,E�O�a ",�&kvE�O�a #,E�Y o���& f)��&�l+ $E�O)��l+ $E�O��E�O�j ��_  E�Y �j �a %�_  E�Y hO�a !,E�O�a ",�&kvE�O�a #,E�Y hO�a a &a �a �a  �&E�O_ a '  )a a lhY hOa (a )�a �a * +a ,,�&E�O_ a -  )a a lhY hOa .a )�a �a * +a ,,�&E�O_ a /  )a a lhY hO)����a *+ 0O)����a *+ 1O� ��/����34���� "0 create_pagedate create_pageDate�� ��5�� 5  ���������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear��  3 ���������������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 sun  �� 0 secondmonth secondMonth�� 0 
secondyear 
secondYear4 =TVX����{}�������������������� 0 pagedate pageDate
�� 
ldt 
�� 
days
�� 
mnth
�� 
TEXT
�� 
year
�� 
day �� ��� ��%�%�%�%�%�%E�OPY t*��%�%�%�%�%�%/k� E�O��,�&� ��,�&�%E�Y �E�O��,�&� ��,�&%E�Y a E�Oa �%a %�%a %�%�a ,�&%a %�%�%E�OP ������67���� "0 create_filedate create_fileDate�� ��8�� 8  ���������� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  ��  6 ���������� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  7 ����&��?������
�� 
nmbr�� 
�� 0 list_position  
�� 
ctxt�� �� 0 filedate fileDate�� >��&� 
�%E�Y hO)��l+ E�O�� 
�%E�Y hO��%�[�\[Zm\Z�2%E� ��j����9:���� 0 pagegen pageGen�� ��;�� ;  ������~�� 0 pagetype pageType�� 0 	themaster 	theMaster� 0 theslug theSlug�~ 0 
pagenumber 
pageNumber��  9 �}�|�{�z�} 0 pagetype pageType�| 0 	themaster 	theMaster�{ 0 theslug theSlug�z 0 
pagenumber 
pageNumber: ��y�x��w���v�u�t�s�r�q�p
�y .aevtodocnull  �    alis�x 0 applymaster applyMaster�w  0 drawembargobox drawEmbargoBox
�v 
bool�u "0 changelegaldate changeLegalDate�t 0 	cleansave 	cleanSave
�s 
pacd
�r 
svop
�q savoyes 
�p .CoReclosnull���     obj �� Y� Ub  j O)���m+ O�� )�k+ Y hO�� 
 �� �& )�k+ Y hO)��l+ 	O*�, 	*��l UU  �o��n�m<=�l�o 0 applymaster applyMaster�n �k>�k >  �j�i�h�j 0 	themaster 	theMaster�i 0 pagetype pageType�h 0 
pagenumber 
pageNumber�m  < �g�f�e�g 0 	themaster 	theMaster�f 0 pagetype pageType�e 0 
pagenumber 
pageNumber= ,�d��c�b�a��`��_�^�]
�\�[�Z?�Y�X#�W�V-:HQ�U�T�S�R�Qhr~���������P
�d 
pacd
�c 
mspr
�b 
page
�a 
pmas
�` 
txtf
�_ 
dPge
�^ .InESovrrobj         obj �] 0 pagedate pageDate
�\ 
pcnt
�[ 
mpgs
�Z 
cobj?  
�Y 
pilr
�X 
pnam�W  �V  
�U 
kocl
�T 
sprd
�S 
prdt�R 
�Q .corecrel****      � null
�P 
TEXT�l���*�,���  �*�/*�k/�,FO�� *�/��/�*�k/l 
O�*�k/��/�,FO )*�k/�,�-a [a ,a ,\Za 81�*�k/l 
W X  hO�a  %*�/�a /�*�k/l 
O�*�k/�a /�,FY hY hY�a  *a a a �*�/la  O�a  �*�/�a  /�*�l/l 
O*�/�a !/�*�m/l 
O�*�l/�a "/�,FO�*�m/�a #/�,FO N*�l/�,�-a [a ,a ,\Za $81�*�l/l 
O*�m/�,�-a [a ,a ,\Za %81�*�m/l 
W X  hO�a & L*�/�a '/�*�l/l 
O*�/�a (/�*�m/l 
O�*�l/�a )/�,FO�ka *&*�m/�a +/�,FY hY hY hUU! �O�N�M@A�L�O "0 changelegaldate changeLegalDate�N �KB�K B  �J�J 0 	themaster 	theMaster�M  @ �I�I 0 	themaster 	theMasterA f�H*�G�F4�E�D�C�BB�AITb
�H 
pacd
�G 
mspr
�F 
txtf
�E 
dPge
�D 
page
�C .InESovrrobj         obj �B 0 pagedate pageDate
�A 
pcnt�L X� T*�, M��  !*�/��/�*�k/l O�*�k/��/�,FY (��  !*�/��/�*�l/l O�*�l/��/�,FY hUU" �@s�?�>CD�=�@  0 drawembargobox drawEmbargoBox�? �<E�< E  �;�; 0 pagetype pageType�>  C �:�9�: 0 pagetype pageType�9 0 ebox eBoxD ��8�7�6�5�4�3�����2�1��0�/��.�-���
�8 
docu
�7 
page
�6 
kocl
�5 
txtf
�4 
prdt
�3 
gbnd�2 
�1 
pcnt
�0 .corecrel****      � null
�/ 
ObSt
�. 
aobs
�- 
plck�= �� �*�k/ ���  9*�k/ *���������v���� E�UO*a a /�a ,FOe�a ,FY D�a   ;*�l/ *���������v�a �� E�UO*a a /�a ,FOe�a ,FY hUU# �,��+�*FG�)�, 0 	cleansave 	cleanSave�+ �(H�( H  �'�&�' 0 
pagenumber 
pageNumber�& 0 theslug theSlug�*  F �%�$�% 0 
pagenumber 
pageNumber�$ 0 theslug theSlugG 	W�#�"	�!		� 	+	-�	@�	R�	T�
�# 
pacd
�" 
layr
�! 
plck
�  
pacl
� 
zero
� 
kfil� 0 filedate fileDate
� .CoResavedocu        obj �) `� \*�, Ue*��/�,FOe*��/�,FO�*�,FO�l#j  ��lv*�,FY �l#k  ��lv*�,FY hO*�b   �%�%�%�%l UU$ �	d��IJ�� 0 customedition customEdition�  �  I ��������������
�	�� 0 
human_list  � 0 masters_list  � 0 
slugs_list  � 0 singles_list  � 0 spreads_list  � 0 hashline hashLine� 0 thestart theStart� 0 theend theEnd� 0 x  � 0 searchresult searchResult� 0 
pagenumber 
pageNumber� 0 hmaster hMaster� 0 listpos listPos�
 0 	themaster 	theMaster�	 0 pagetype pageType� 0 theslug theSlugJ �	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�


	


�
"
&
*
.
2
6
:
>
B
F
J
N
R
V
Z
^
b
f
j
n
r
v
z
~
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
�
�
�
�
�
�#'+/37;?CGKN^bfjnrvz~��������������������������������
��� ������������B������W��d��r������������������� %� � 
� 
TxtW
� 
ctxt
� 
Opts
� 
SMod
�  SModGrep
�� 
STop�� 
�� .R*chFindMtch���     TEXT
�� 
MSpc
�� 
SLin
�� 
ELin
�� 
FnIn
�� 
clin
�� 
RplP
�� .R*chGSubutxt    ��� null
�� 
MTxt�� 0 list_position  
�� 
cobj
�� 
bool�� 0 pagegen pageGen������������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %vE�Oa &a 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja %vE�Oa Ka La Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fa ga ha ia ja ka la ma na oa %vE�Oa pa qa ra sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �vE�Oa �a �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa �8*a �k/a �k/)a �a �a �a �a �ea �l �E�O�a �,a �,kE�O*a �,E�O �kh a �a �*a ��/a �a �a �la � �E�O*a �a �l �E�O*a �a �l �E�O�a �,a � �)��l+ �E�O�a ��/E�O�� 
a �E�Y �� 
a �E�Y hO�a �  �a �%�a ��/%E�Y $�a �  �a �%�k%a �%�a ��/%E�Y hO�a � 
 �a � a �& 
a �E�Y hO)����a �+ �OPY h[OY�OPUU% ������KL���� 0 newsgen newsGen�� ��M�� M  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  K ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  L A+5=AEH����OUY]`gkory}�����������������������	#&,26:=GLPTW`eimp�� �� 0 pagegen pageGen��Y�� Z�� *�����+ Y ��  *�����+ Y hO*���a �+ O*a a a a �+ O*a a a a �+ Y hO�a  >�a  *a a a a �+ Y �a   *a  a !a "a #�+ Y hY hO�a $ oa %a &lvE�Oa 'a (a )mvE�O�� *a *a +a ,a -�+ Y 9�� *a .a /a 0a 1�+ Y �a 2  *a 3a 4a 5a 6�+ Y hY hO�a 7 *a 8a 9a :a ;�+ Y hO�a < *a =a >a ?a @�+ Y h& ��~����NO���� 0 featsgen featsGen�� ��P�� P  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  N ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  O L����������������������������� $(+5:>BEOW[_bmz}������������������������� �� 0 pagegen pageGen�����  ��  *�����+ Y *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a  (*a a a a �+ O*a  a !a "a #�+ Y hO�a $ *a %a &a 'a (�+ Y hO�a ) *a *a +a ,a -�+ Y hO�a . ra /a 0lvE�Oa 1a 2a 3a 4�vE�O�� *a 5a 6a 7a 8�+ Y 9�� *a 9a :a ;a <�+ Y �a =  *a >a ?a @a A�+ Y hY hO�a B *a Ca Da Ea F�+ Y hO�a G *a Ha Ia Ja K�+ Y h' ������QR���� 0 artsgen artsGen�� ��S�� S  ���� &0 masterstogenerate mastersToGenerate��  Q ���� &0 masterstogenerate mastersToGenerateR &.269����DLPTWaimqt�� �� 0 pagegen pageGen�� >�� *�����+ Y hO�� *�����+ Y hO�� *���a �+ Y h( �������TU���� 0 	sportsgen 	sportsGen�� ��V�� V  ���� &0 masterstogenerate mastersToGenerate��  T ���� &0 masterstogenerate mastersToGenerateU S���������������������������
(048;BFJMTX\_eimpz����������������������������� �� 0 pagegen pageGen����� *�����+ O*�����+ Y hO�� 2*�����+ O*a a a a �+ O*a a a a �+ Y hO�a  (*a a a a �+ O*a a a a  �+ Y hO�a ! L*a "a #a $a %�+ O*a &a 'a (a )�+ O*a *a +a ,a -�+ O*a .a /a 0a 1�+ Y hO�a 2 :*a 3a 4a 5a 6�+ O*a 7a 8a 9a :�+ O*a ;a <a =a >�+ Y hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y hO�a I *a Ja Ka La M�+ Y hO�a N *a Oa Pa Qa R�+ Y h) ��W����XY��
�� .aevtoappnull  �   � ****W k     5ZZ  `[[  m\\  w]]  �����  ��  ��  X  Y 
 k������ t���� �����
�� elnteNvr
�� 
pScr
�� 
UIAc�� 0 	genprompt 	genPrompt
�� elnteInA
�� .miscactvnull��� ��� obj 
�� .aevtodocnull  �    alis�� 6� 	�*�,�,FUO*�k+ O� 	�*�,�,FUO� *j Ob   j 	U ascr  ��ޭ