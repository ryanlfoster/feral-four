FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "	Morning Star combo page generator     � 	 	 D 	 M o r n i n g   S t a r   c o m b o   p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��     	Created on			15/12/2012     �   0 	 C r e a t e d   o n 	 	 	 1 5 / 1 2 / 2 0 1 2      l     ��  ��     	Last updated		20/01/2013     �   2 	 L a s t   u p d a t e d 	 	 2 0 / 0 1 / 2 0 1 3      l     ��  ��     	Version:			1.8     �    	 V e r s i o n : 	 	 	 1 . 8     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.    % � & & 	 T h i s   i s   t h e   c o r e   p a g e   g e n e r a t o r .   I t   c o n t a i n s   a l l   o f   t h e   c o d e   n e e d e d   b y   a n y   o f   t h e   f o u r   d e s k s   b u t   t h i s   s c r i p t   s h o u l d   n o t   b e   u s e d   b y   i t s e l f . #  ' ( ' l     �� ) *��   ) � �	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.    * � + + 	 I n s t e a d   a   d e s k   n a m e   s h o u l d   b e   e n t e r e d   i n   t h e   g e n P r o m p t ( )   c a l l   o n   l i n e   2 4 ,   a n d   t h e n   s a v e d   a s   d e s k - s p e c i f i c   a p p l i c a t i o n   w i t h   t h e   p r o p e r   i c o n . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   Global variables --    1 � 2 2 (   G l o b a l   v a r i a b l e s   - - /  3 4 3 l      5 6 7 5 p       8 8 ������ 0 pagedate pageDate��   6 P J The full date used in the InDesign page�s folio, set in create_pageDate()    7 � 9 9 �   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o ,   s e t   i n   c r e a t e _ p a g e D a t e ( ) 4  : ; : l      < = > < p       ? ? ������ 0 filedate fileDate��   = O I The short date used to name the InDesign files, set in create_fileDate()    > � @ @ �   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s ,   s e t   i n   c r e a t e _ f i l e D a t e ( ) ;  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E   Path to new pages folder    F � G G 2   P a t h   t o   n e w   p a g e s   f o l d e r D  H I H j     �� J�� $0 freshpagesfolder freshPagesFolder J m      K K � L L j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : I  M N M l     �� O P��   O + % Path to the InDesign master document    P � Q Q J   P a t h   t o   t h e   I n D e s i g n   m a s t e r   d o c u m e n t N  R S R j    �� T��  0 masterdocument masterDocument T m     U U � V V p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d S  W X W l     ��������  ��  ��   X  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ]   Running code --    ^ � _ _     R u n n i n g   c o d e   - - \  ` a ` l     b c d b O     e f e r     g h g m    ��
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
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Handler definitions    � � � � (   H a n d l e r   d e f i n i t i o n s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � e _ genPrompt: Gets for the date and the pages to create, then calls functions to create the files    � � � � �   g e n P r o m p t :   G e t s   f o r   t h e   d a t e   a n d   t h e   p a g e s   t o   c r e a t e ,   t h e n   c a l l s   f u n c t i o n s   t o   c r e a t e   t h e   f i l e s �  � � � i    	 � � � I      �� ����� 0 	genprompt 	genPrompt �  ��� � o      ���� 0 desk  ��  ��   � k    ! � �  � � � Z      � ����� � =     � � � o     ���� 0 desk   � m     � � � � �   � l    � � � � r     � � � c     � � � l    ����� � I   �� � �
�� .gtqpchltns    @   @ ns   � J     � �  � � � m     � � � � �  N e w s �  � � � m     � � � � �  F e a t u r e s �  � � � m    	 � � � � � 
 S p o r t �  � � � m   	 
 � � � � �  A r t s �  ��� � m   
  � � � � �  C u s t o m   e d i t i o n��   � �� � �
�� 
prmp � m     � � � � � & P l e a s e   p i c k   a   d e s k : � �� ���
�� 
appr � m     � � � � �  P a g e   g e n e r a t o r��  ��  ��   � m    ��
�� 
TEXT � o      ���� 0 desk   � F @ Allows core.scpt to be used as a generator (useful for testing)    � � � � �   A l l o w s   c o r e . s c p t   t o   b e   u s e d   a s   a   g e n e r a t o r   ( u s e f u l   f o r   t e s t i n g )��  ��   �  � � � l   ��������  ��  ��   �  � � � r    D � � � J    B � �  � � � m     � � � � �  J a n u a r y �  � � � m      � � � � �  F e b r u a r y �  � � � m     # � � � � � 
 M a r c h �  � � � m   # & � � � � � 
 A p r i l �  � � � m   & ) � � � � �  M a y �  � � � m   ) , � � � � �  J u n e �  � � � m   , / � � � � �  J u l y �  � � � m   / 2 � � � � �  A u g u s t �  � � � m   2 5 � � � � �  S e p t e m b e r �  � � � m   5 8 � � � � �  O c t o b e r �    m   8 ; �  N o v e m b e r �� m   ; > �  D e c e m b e r��   � o      ���� 0 months_list   �  r   E ]	
	 J   E [  m   E H �  M o n d a y  m   H K �  T u e s d a y  m   K N �  W e d n e s d a y  m   N Q �  T h u r s d a y  m   Q T �  F r i d a y  ��  m   T W!! �""  S a t u r d a y��  
 o      ���� 0 	days_list   #$# l  ^ ^��������  ��  ��  $ %&% Z   ^�'()��' G   ^ {*+* G   ^ o,-, =  ^ c./. o   ^ _���� 0 desk  / m   _ b00 �11  N e w s- =  f k232 o   f g���� 0 desk  3 m   g j44 �55 
 S p o r t+ =  r w676 o   r s���� 0 desk  7 m   s v88 �99  C u s t o m   e d i t i o n( l  ~:;<: Z   ~=>?��= =  ~ �@A@ o   ~ ���� 0 desk  A m    �BB �CC  N e w s> k   � �DD EFE l  � �GHIG r   � �JKJ m   � �LL �MM ( N e w s   p a g e s   g e n e r a t o rK o      ���� 0 thetitle theTitleH ) # Used to add a title to the prompts   I �NN F   U s e d   t o   a d d   a   t i t l e   t o   t h e   p r o m p t sF OPO r   � �QRQ J   � �SS TUT m   � �VV �WW  N e w s      s p l i t sU XYX m   � �ZZ �[[ * N e w s      2 - 3   a s   s i n g l e sY \]\ m   � �^^ �__ * N e w s      4 - 5   a s   s i n g l e s] `a` m   � �bb �cc * N e w s      6 - 7   a s   s i n g l e sa ded m   � �ff �gg  T Ve h��h m   � �ii �jj  L e t t e r s��  R o      ���� 0 weekday_pages  P k��k r   � �lml J   � �nn opo m   � �qq �rr  N e w s      s p l i t sp sts m   � �uu �vv * N e w s      2 - 3   a s   s i n g l e st wxw m   � �yy �zz * N e w s      4 - 5   a s   s i n g l e sx {|{ m   � �}} �~~ * N e w s      6 - 7   a s   s i n g l e s| � m   � ��� ���  T V� ��� m   � ��� ���  L e t t e r s� ��� m   � ��� ���  S t r u g g l e� ��� m   � ��� ��� , S i n g l e   s t r u g g l e   -   l e f t� ��� m   � ��� ��� . S i n g l e   s t r u g g l e   -   r i g h t� ���� m   � ��� ���  R e d   L i s t��  m o      ���� 0 weekend_pages  ��  ? ��� =  � ���� o   � ����� 0 desk  � m   � ��� ��� 
 S p o r t� ��� k   ��� ��� r   � ���� m   � ��� ��� * S p o r t   p a g e s   g e n e r a t o r� o      ���� 0 thetitle theTitle� ��� r   � ���� J   � ��� ��� m   � ��� ���  T w o   p a g e s� ��� m   � ��� ���  T h r e e   p a g e s� ��� m   � ��� ��� , T h r e e   p a g e s   w i t h   s p l i t� ��� m   � ��� ���  E x t r a   l e f t   p a g e� ��� m   � ��� ���   E x t r a   r i g h t   p a g e� ���� m   � ��� ���  E x t r a   s p l i t��  � o      ���� 0 weekday_pages  � ���� r   ���� J   �	�� ��� m   � ��� ���  F o u r   p a g e s� ��� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� ��� m   � ��� ���  R a c i n g   o n l y� ��� m   � ��� ���  E x t r a   l e f t   p a g e� ��� m   ��� ���   E x t r a   r i g h t   p a g e� ���� m  �� ���  E x t r a   s p l i t��  � o      ���� 0 weekend_pages  ��  � ��� = ��� l ������ o  ���� 0 desk  ��  ��  � m  �� ���  C u s t o m   e d i t i o n� ���� r  ��� m  �� ���  C u s t o m   e d i t i o n� o      ���� 0 thetitle theTitle��  ��  ; @ : This if block sets the page options presented to the user   < ��� t   T h i s   i f   b l o c k   s e t s   t h e   p a g e   o p t i o n s   p r e s e n t e d   t o   t h e   u s e r) ��� G  "3��� = "'��� o  "#���� 0 desk  � m  #&�� ���  F e a t u r e s� = */��� o  *+���� 0 desk  � m  +.�� ���  A r t s� ���� k  6��� ��� l 6<���� r  6<��� m  69�� ��� , N o   d a y      w o r k i n g   a h e a d� l      ����  n        ;  :; o  9:���� 0 	days_list  ��  ��  � > 8 Adds an extra day option that news and sport don't need   � � p   A d d s   a n   e x t r a   d a y   o p t i o n   t h a t   n e w s   a n d   s p o r t   d o n ' t   n e e d� �� Z  =��� = =B	 o  =>���� 0 desk  	 m  >A

 �  F e a t u r e s k  E�  r  EJ m  EH � 0 F e a t u r e s   p a g e s   g e n e r a t o r o      ���� 0 thetitle theTitle  r  Kc J  Ka  m  KN �  S p r e a d  m  NQ �  1 0  !  m  QT"" �## 
 1 2 - 1 3! $%$ m  TW&& �''  L e t t e r s% ()( m  WZ** �++  A r t s) ,��, m  Z]-- �..  A r t s   s p l i t��   o      �� 0 weekday_pages   /0/ r  d|121 J  dz33 454 m  dg66 �77  S p r e a d5 898 m  gj:: �;; ( N e w s   r e v i e w s      s p l i t9 <=< m  jm>> �?? , N e w s   r e v i e w s      s i n g l e s= @A@ m  mpBB �CC  1 5A DED m  psFF �GG 
 1 6 - 1 7E H�~H m  svII �JJ  L e t t e r s�~  2 o      �}�} 0 weekend_pages  0 K�|K r  }�LML J  }�NN OPO m  }�QQ �RR  S p r e a dP STS m  ��UU �VV  1 0T WXW m  ��YY �ZZ 
 1 2 - 1 3X [\[ m  ��]] �^^ ( N e w s   r e v i e w s      s p l i t\ _`_ m  ��aa �bb , N e w s   r e v i e w s      s i n g l e s` cdc m  ��ee �ff  1 5d ghg m  ��ii �jj 
 1 6 - 1 7h klk m  ��mm �nn  L e t t e r sl opo m  ��qq �rr  A r t sp s�{s m  ��tt �uu  A r t s   s p l i t�{  M o      �z�z 0 ahead_pages  �|   vwv = ��xyx o  ���y�y 0 desk  y m  ��zz �{{  A r t sw |�x| k  ��}} ~~ r  ����� m  ���� ��� ( A r t s   p a g e s   g e n e r a t o r� o      �w�w 0 thetitle theTitle ��� r  ����� J  ���� ��� m  ���� ���  A r t s   ( p 1 1 )� ��v� m  ���� ���  A r t s   s p l i t�v  � o      �u�u 0 weekday_pages  � ��t� r  ����� J  ���� ��� m  ���� ���  A r t s   ( p 1 1 )� ��� m  ���� ���  A r t s   s p l i t� ��s� m  ���� ���  1 6 - 1 7   ( w e e k e n d )�s  � o      �r�r 0 ahead_pages  �t  �x  ��  ��  ��  ��  & ��� l ���q�p�o�q  �p  �o  � ��� l ���n���n  � F @ Get 'tomorrow' values to use as default answers in date prompts   � ��� �   G e t   ' t o m o r r o w '   v a l u e s   t o   u s e   a s   d e f a u l t   a n s w e r s   i n   d a t e   p r o m p t s� ��� l ������ r  ����� l ����m�l� [  ����� l ����k�j� l ����i�h� I ���g�f�e
�g .misccurdldt    ��� null�f  �e  �i  �h  �k  �j  � m  ���d�d  Q��m  �l  � o      �c�c 0 tomorrow  �   60s * 60m * 24h   � ���     6 0 s   *   6 0 m   *   2 4 h� ��� l ������ r  ����� J  ���� ��b� l ����a�`� c  ����� n ����� m  ���_
�_ 
wkdy� o  ���^�^ 0 tomorrow  � m  ���]
�] 
TEXT�a  �`  �b  � o      �\�\ 0 tmday tmDay� C = "Choose from list" requires a list for its default selection   � ��� z   " C h o o s e   f r o m   l i s t "   r e q u i r e s   a   l i s t   f o r   i t s   d e f a u l t   s e l e c t i o n� ��� r  ����� n ����� 1  ���[
�[ 
day � o  ���Z�Z 0 tomorrow  � o      �Y�Y 0 tmdate tmDate� ��� r  ����� J  ���� ��X� l ����W�V� c  ����� n ����� m  ���U
�U 
mnth� o  ���T�T 0 tomorrow  � m  ���S
�S 
TEXT�W  �V  �X  � o      �R�R 0 tmmonth tmMonth� ��� r  ���� n ���� 1   �Q
�Q 
year� o  � �P�P 0 tomorrow  � o      �O�O 0 tmyear tmYear� ��� l �N�M�L�N  �M  �L  � ��� l �K���K  � ( " Prompt the user to enter the date   � ��� D   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t e� ��� r  ��� c  ��� l ��J�I� I �H��
�H .gtqpchltns    @   @ ns  � o  �G�G 0 	days_list  � �F��
�F 
prmp� m  	�� ��� 8 P l e a s e   p i c k   t h e   e d i t i o n   d a y :� �E��
�E 
inSL� o  �D�D 0 tmday tmDay� �C��B
�C 
appr� o  �A�A 0 thetitle theTitle�B  �J  �I  � m  �@
�@ 
TEXT� o      �?�? 0 theday theDay� ��� l 5���� Z 5���>�=� = $��� 1   �<
�< 
rslt� m   #�� ��� 
 f a l s e� R  '1�;�:�
�; .ascrerr ****      � ****�:  � �9��8
�9 
errn� m  +.�7�7���8  �>  �=  � 9 3 So choosing "Cancel" in the dialog ends the script   � ��� f   S o   c h o o s i n g   " C a n c e l "   i n   t h e   d i a l o g   e n d s   t h e   s c r i p t� ��� Z  6� �6  = 6; o  67�5�5 0 theday theDay m  7: � , N o   d a y      w o r k i n g   a h e a d k  >M 	 r  >E

 m  >A � * A   d a t e   n e e d s   e n t e r i n g o      �4�4 0 pagedate pageDate	 �3 r  FM m  FI � 
 A h e a d o      �2�2 0 filedate fileDate�3  �6   k  P�  r  Pe c  Pc l Pa�1�0 I Pa�/
�/ .gtqpchltns    @   @ ns   o  PQ�.�. 0 months_list   �-
�- 
prmp m  RU �   , P l e a s e   p i c k   t h e   m o n t h : �,!"
�, 
inSL! o  XY�+�+ 0 tmmonth tmMonth" �*#�)
�* 
appr# o  Z[�(�( 0 thetitle theTitle�)  �1  �0   m  ab�'
�' 
TEXT o      �&�& 0 themonth theMonth $%$ Z f~&'�%�$& = fm()( 1  fi�#
�# 
rslt) m  il** �++ 
 f a l s e' R  pz�"�!,
�" .ascrerr ****      � ****�!  , � -�
�  
errn- m  tw�����  �%  �$  % ./. r  �010 c  �232 l �4��4 n  �565 1  ���
� 
ttxt6 l �7��7 I ��89
� .sysodlogaskr        TEXT8 m  �:: �;; * P l e a s e   t y p e   t h e   d a t e :9 �<=
� 
dtxt< o  ���� 0 tmdate tmDate= �>�
� 
appr> o  ���� 0 thetitle theTitle�  �  �  �  �  3 m  ���
� 
TEXT1 o      �� 0 thedate theDate/ ?@? Z ��AB��A = ��CDC 1  ���
� 
rsltD m  ��EE �FF 
 f a l s eB R  ����G
� .ascrerr ****      � ****�  G �H�

� 
errnH m  ���	�	���
  �  �  @ IJI r  ��KLK c  ��MNM l ��O��O n  ��PQP 1  ���
� 
ttxtQ l ��R��R I ���ST
� .sysodlogaskr        TEXTS m  ��UU �VV * P l e a s e   t y p e   t h e   y e a r :T �WX
� 
dtxtW o  ���� 0 tmyear tmYearX � Y��
�  
apprY o  ������ 0 thetitle theTitle��  �  �  �  �  N m  ����
�� 
TEXTL o      ���� 0 theyear theYearJ Z[Z Z ��\]����\ = ��^_^ 1  ����
�� 
rslt_ m  ��`` �aa 
 f a l s e] R  ������b
�� .ascrerr ****      � ****��  b ��c��
�� 
errnc m  ����������  ��  ��  [ ded n ��fgf I  ����h���� "0 create_pagedate create_pageDateh iji o  ������ 0 theday theDayj klk o  ������ 0 themonth theMonthl mnm o  ������ 0 thedate theDaten opo o  ������ 0 theyear theYearp q��q o  ������ 0 months_list  ��  ��  g  f  ��e r��r n ��sts I  ����u���� "0 create_filedate create_fileDateu vwv o  ������ 0 theday theDayw xyx o  ������ 0 themonth theMonthy z{z o  ������ 0 thedate theDate{ |}| o  ������ 0 theyear theYear} ~��~ o  ������ 0 months_list  ��  ��  t  f  ����  � � l ����������  ��  ��  � ��� l ��������  �   Get the pages to create   � ��� 0   G e t   t h e   p a g e s   t o   c r e a t e� ���� Z  �!������ = ����� l �������� o  ������ 0 desk  ��  ��  � m  ���� ���  C u s t o m   e d i t i o n� l � ���� n � ��� I  � �������� 0 customedition customEdition��  ��  �  f  ��� U O The customEdition function itself gets the pages to generate from TextWrangler   � ��� �   T h e   c u s t o m E d i t i o n   f u n c t i o n   i t s e l f   g e t s   t h e   p a g e s   t o   g e n e r a t e   f r o m   T e x t W r a n g l e r��  � k  !�� ��� r  ��� l ������ b  ��� b  ��� b  
��� m  �� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  	��
�� 
ret � o  
��
�� 
ret � m  �� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .��  ��  � o      ���� 0 
prompttext 
promptText� ��� Z  ������� = ��� o  ���� 0 theday theDay� m  �� ��� , N o   d a y      w o r k i n g   a h e a d� k  K�� ��� r  4��� l 0������ I 0����
�� .gtqpchltns    @   @ ns  � o   ���� 0 ahead_pages  � ����
�� 
prmp� o  !$���� 0 
prompttext 
promptText� ����
�� 
appr� o  %&���� 0 thetitle theTitle� �����
�� 
mlsl� m  )*��
�� boovtrue��  ��  ��  � o      ���� &0 masterstogenerate mastersToGenerate� ���� Z 5K������� = 5:��� 1  58��
�� 
rslt� m  89��
�� boovfals� R  =G�����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  AD��������  ��  ��  ��  � ��� > NS��� o  NO���� 0 theday theDay� m  OR�� ���  S a t u r d a y� ��� k  V��� ��� r  Vk��� l Vg������ I Vg����
�� .gtqpchltns    @   @ ns  � o  VW���� 0 weekday_pages  � ����
�� 
prmp� o  X[���� 0 
prompttext 
promptText� ����
�� 
appr� o  \]���� 0 thetitle theTitle� �����
�� 
mlsl� m  `a��
�� boovtrue��  ��  ��  � o      ���� &0 masterstogenerate mastersToGenerate� ���� Z l�������� = lq��� 1  lo��
�� 
rslt� m  op��
�� boovfals� R  t~�����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  x{��������  ��  ��  ��  � ��� = ����� o  ������ 0 theday theDay� m  ���� ���  S a t u r d a y� ���� Z  �������� = ����� l �������� o  ������ 0 desk  ��  ��  � m  ���� ���  A r t s� l ������ r  ����� J  ���� ���� m  ���� ���  1 6 - 1 7   ( w e e k e n d )��  � o      ���� &0 masterstogenerate mastersToGenerate� ] W The arts desk only has one page on Saturday, so there's no point in prompting the user   � ��� �   T h e   a r t s   d e s k   o n l y   h a s   o n e   p a g e   o n   S a t u r d a y ,   s o   t h e r e ' s   n o   p o i n t   i n   p r o m p t i n g   t h e   u s e r��  � k  ���� ��� r  ����� l �������� I ������
�� .gtqpchltns    @   @ ns  � o  ������ 0 weekend_pages  � ��� 
�� 
prmp� o  ������ 0 
prompttext 
promptText  ��
�� 
appr o  ������ 0 thetitle theTitle ����
�� 
mlsl m  ����
�� boovtrue��  ��  ��  � o      ���� &0 masterstogenerate mastersToGenerate� �� Z ������ = �� 1  ����
�� 
rslt m  ����
�� boovfals R  ������	
�� .ascrerr ****      � ****��  	 ��
��
�� 
errn
 m  ����������  ��  ��  ��  ��  ��  �  l ����������  ��  ��   �� Z  �!�� = �� o  ���� 0 desk   m  �� �  N e w s l �� n �� I  ���~�}�~ 0 newsgen newsGen  o  ���|�| &0 masterstogenerate mastersToGenerate �{ o  ���z�z 0 theday theDay�{  �}    f  �� S M theDay is passed to distinguish between, for example, Saturday & weekday TV     � �   t h e D a y   i s   p a s s e d   t o   d i s t i n g u i s h   b e t w e e n ,   f o r   e x a m p l e ,   S a t u r d a y   &   w e e k d a y   T V     = ��!"! o  ���y�y 0 desk  " m  ��## �$$  F e a t u r e s  %&% n ��'(' I  ���x)�w�x 0 featsgen featsGen) *+* o  ���v�v &0 masterstogenerate mastersToGenerate+ ,�u, o  ���t�t 0 theday theDay�u  �w  (  f  ��& -.- = ��/0/ o  ���s�s 0 desk  0 m  ��11 �22 
 S p o r t. 343 l 
5675 n 
898 I  
�r:�q�r 0 	sportsgen 	sportsGen: ;�p; o  �o�o &0 masterstogenerate mastersToGenerate�p  �q  9  f  6   No day checks   7 �<<    N o   d a y   c h e c k s4 =>= = ?@? o  �n�n 0 desk  @ m  AA �BB  A r t s> C�mC l DEFD n GHG I  �lI�k�l 0 artsgen artsGenI J�jJ o  �i�i &0 masterstogenerate mastersToGenerate�j  �k  H  f  E   No day checks   F �KK    N o   d a y   c h e c k s�m  ��  ��  ��   � LML l     �h�g�f�h  �g  �f  M NON l     �e�d�c�e  �d  �c  O PQP l     �bRS�b  R I C list_position: Returns theItem's position in theList as an integer   S �TT �   l i s t _ p o s i t i o n :   R e t u r n s   t h e I t e m ' s   p o s i t i o n   i n   t h e L i s t   a s   a n   i n t e g e rQ UVU i   
 WXW I      �aY�`�a 0 list_position  Y Z[Z o      �_�_ 0 	this_item  [ \�^\ o      �]�] 0 	this_list  �^  �`  X Y     "]�\^_�[] Z   `a�Z�Y` =   bcb n    ded 4    �Xf
�X 
cobjf o    �W�W 0 i  e o    �V�V 0 	this_list  c o    �U�U 0 	this_item  a L    gg o    �T�T 0 i  �Z  �Y  �\ 0 i  ^ m    �S�S _ I   	�Rh�Q
�R .corecnte****       ****h o    �P�P 0 	this_list  �Q  �[  V iji l     �O�N�M�O  �N  �M  j klk l     �L�K�J�L  �K  �J  l mnm l     �Iop�I  o l f create_pageDate: Assembles the date used on the InDesign pages, and deals with some Saturday oddities   p �qq �   c r e a t e _ p a g e D a t e :   A s s e m b l e s   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l s   w i t h   s o m e   S a t u r d a y   o d d i t i e sn rsr i    tut I      �Hv�G�H "0 create_pagedate create_pageDatev wxw o      �F�F 0 theday theDayx yzy o      �E�E 0 themonth theMonthz {|{ o      �D�D 0 thedate theDate| }~} o      �C�C 0 theyear theYear~ �B o      �A�A 0 months_list  �B  �G  u k    ��� ��� r     
��� J     �� ��� m     �� ���  J a n u a r y� ��� m    �� ��� 
 M a r c h� ��� m    �� ���  M a y� ��� m    �� ���  J u l y� ��� m    �� ���  A u g u s t� ��@� m    �� ���  O c t o b e r�@  � o      �?�? (0 thirtyonedaymonths ThirtyOneDayMonths� ��� r    ��� J    �� ��� m    �� ��� 
 A p r i l� ��� m    �� ���  J u n e� ��� m    �� ���  S e p t e m b e r� ��>� m    �� ���  N o v e m b e r�>  � o      �=�= "0 thirtydaymonths ThirtyDayMonths� ��� l   �<�;�:�<  �;  �:  � ��9� Z   �����8� >   ��� o    �7�7 0 theday theDay� m    �� ���  S a t u r d a y� l   -���� k    -�� ��� r    +��� l   '��6�5� b    '��� b    %��� b    #��� b    !��� b    ��� b    ��� o    �4�4 0 theday theDay� m    �� ���   � o    �3�3 0 themonth theMonth� m     �� ���   � o   ! "�2�2 0 thedate theDate� m   # $�� ���   � o   % &�1�1 0 theyear theYear�6  �5  � o      �0�0 0 pagedate pageDate� ��/� l  , ,�.�-�,�.  �-  �,  �/  � + % Does the page date for every weekday   � ��� J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a y� ��� F   0 K��� F   0 A��� =  0 5��� o   0 1�+�+ 0 theday theDay� m   1 4�� ���  S a t u r d a y� =  8 =��� o   8 9�*�* 0 thedate theDate� m   9 <�� ���  3 0� E  D G��� o   D E�)�) "0 thirtydaymonths ThirtyDayMonths� o   E F�(�( 0 themonth theMonth� ��� l  N ����� k   N ��� ��� Y   N z��'���&� l  \ u���� Z  \ u���%�$� =  \ d��� n   \ b��� 4   ] b�#�
�# 
cobj� o   ` a�"�" 0 i  � o   \ ]�!�! 0 months_list  � o   b c� �  0 themonth theMonth� r   g q��� l  g o���� n   g o   4   h o�
� 
cobj l  k n�� [   k n o   k l�� 0 i   m   l m�� �  �   o   g h�� 0 months_list  �  �  � o      �� 0 secondmonth secondMonth�%  �$  � V P This repeat block here grabs the name of the next month to use in the page date   � � �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e�' 0 i  � m   Q R�� � I  R W��
� .corecnte****       **** o   R S�� 0 months_list  �  �&  � 	 l  { �

 r   { � l  { ��� b   { � b   { � b   { � b   { � b   { � m   { ~ �   S a t u r d a y / S u n d a y   o   ~ �� 0 themonth theMonth m   � � �    3 0 - o   � ��� 0 secondmonth secondMonth m   � � �    1   o   � ��� 0 theyear theYear�  �   o      �� 0 pagedate pageDate P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"    �   �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 "	 !�! l  � ���
�	�  �
  �	  �  � 7 1 Deals with Saturdays at the end of 30-day months   � �"" b   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s� #$# F   � �%&% F   � �'(' =  � �)*) o   � ��� 0 theday theDay* m   � �++ �,,  S a t u r d a y( =  � �-.- o   � ��� 0 thedate theDate. m   � �// �00  3 1& E  � �121 o   � ��� (0 thirtyonedaymonths ThirtyOneDayMonths2 o   � ��� 0 themonth theMonth$ 343 l  � �5675 k   � �88 9:9 Y   � �;�<=�; Z  � �>?��> =  � �@A@ n   � �BCB 4   � �� D
�  
cobjD o   � ����� 0 i  C o   � ����� 0 months_list  A o   � ����� 0 themonth theMonth? r   � �EFE l  � �G����G n   � �HIH 4   � ���J
�� 
cobjJ l  � �K����K [   � �LML o   � ����� 0 i  M m   � ����� ��  ��  I o   � ����� 0 months_list  ��  ��  F o      ���� 0 secondmonth secondMonth�  �  � 0 i  < m   � ����� = I  � ���N��
�� .corecnte****       ****N o   � ����� 0 months_list  ��  �  : OPO r   � �QRQ l  � �S����S b   � �TUT b   � �VWV b   � �XYX b   � �Z[Z b   � �\]\ m   � �^^ �__   S a t u r d a y / S u n d a y  ] o   � ����� 0 themonth theMonth[ m   � �`` �aa    3 1 -Y o   � ����� 0 secondmonth secondMonthW m   � �bb �cc    1  U o   � ����� 0 theyear theYear��  ��  R o      ���� 0 pagedate pageDateP d��d l  � ���������  ��  ��  ��  6 7 1 Deals with Saturdays at the end of 31-day months   7 �ee b   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s4 fgf F   �hih F   �jkj =  � �lml o   � ����� 0 theday theDaym m   � �nn �oo  S a t u r d a yk ? pqp o  ���� 0 thedate theDateq m  rr �ss  2 7i = tut o  ���� 0 themonth theMonthu m  vv �ww  F e b r u a r yg xyx l +z{|z k  +}} ~~ r  )��� l %������ b  %��� b  #��� b  ��� m  �� ��� 2 S a t u r d a y / S u n d a y   F e b r u a r y  � o  ���� 0 thedate theDate� m  "�� ���  - M a r c h   1  � o  #$���� 0 theyear theYear��  ��  � o      ���� 0 pagedate pageDate ���� l **��������  ��  ��  ��  { N H Deals with Saturdays at the end of February. Blunt but right until 2032   | ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   B l u n t   b u t   r i g h t   u n t i l   2 0 3 2y ��� F  .K��� F  .?��� = .3��� o  ./���� 0 theday theDay� m  /2�� ���  S a t u r d a y� = 6;��� o  67���� 0 thedate theDate� m  7:�� ���  3 1� = BG��� o  BC���� 0 themonth theMonth� m  CF�� ���  D e c e m b e r� ��� l Na���� k  Na�� ��� r  N_��� l N[������ b  N[��� b  NW��� b  NS��� m  NQ�� ��� L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  � o  QR���� 0 theyear theYear� m  SV�� ���  -� l WZ������ [  WZ��� o  WX���� 0 theyear theYear� m  XY���� ��  ��  ��  ��  � o      ���� 0 pagedate pageDate� ���� l ``��������  ��  ��  ��  � 2 , Deals with Saturdays at the end of December   � ��� X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e r� ��� = di��� o  de���� 0 theday theDay� m  eh�� ���  S a t u r d a y� ���� l l����� k  l��� ��� r  l���� l l������� b  l���� b  l���� b  l��� b  l{��� b  lw��� b  lu��� b  lq��� m  lo�� ���   S a t u r d a y / S u n d a y  � o  op���� 0 themonth theMonth� m  qt�� ���   � o  uv���� 0 thedate theDate� m  wz�� ���  -� l {~������ [  {~��� o  {|���� 0 thedate theDate� m  |}���� ��  ��  � m  ��� ���   � o  ������ 0 theyear theYear��  ��  � o      ���� 0 pagedate pageDate� ���� l ����������  ��  ��  ��  � Z T Does the page date for every normal Saturday. At the end to avoid the special cases   � ��� �   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y .   A t   t h e   e n d   t o   a v o i d   t h e   s p e c i a l   c a s e s��  �8  �9  s ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � J D create_fileDate: Assembles the date used in the InDesign file names   � ��� �   c r e a t e _ f i l e D a t e :   A s s e m b l e s   t h e   d a t e   u s e d   i n   t h e   I n D e s i g n   f i l e   n a m e s� ��� i    ��� I      ������� "0 create_filedate create_fileDate� ��� o      ���� 0 theday theDay� ��� o      ���� 0 themonth theMonth� ��� o      ���� 0 thedate theDate� ��� o      ���� 0 theyear theYear� ���� o      ���� 0 months_list  ��  ��  � k     [�� ��� Z      ��  A     c      o     ���� 0 thedate theDate m    ��
�� 
long m     �  1 0 l   	
	 r     l   ���� b     m    	 �  0 o   	 
���� 0 thedate theDate��  ��   o      ���� 0 numdate numDate
 J D If the date is 1-9 this adds a leading zero to use in the file name    � �   I f   t h e   d a t e   i s   1 - 9   t h i s   a d d s   a   l e a d i n g   z e r o   t o   u s e   i n   t h e   f i l e   n a m e��   r     o    ���� 0 thedate theDate o      ���� 0 numdate numDate�  l   ��������  ��  ��    Y    7���� l  " 2 Z  " 2 !����  =  " ("#" n   " &$%$ 4   # &��&
�� 
cobj& o   $ %���� 0 i  % o   " #���� 0 months_list  # o   & '���� 0 themonth theMonth! r   + .'(' o   + ,���� 0 i  ( o      ���� 0 raw_nummonth raw_numMonth��  ��   F @ Gets the month number and, if less than 10, adds a leading zero    �)) �   G e t s   t h e   m o n t h   n u m b e r   a n d ,   i f   l e s s   t h a n   1 0 ,   a d d s   a   l e a d i n g   z e r o�� 0 i   m    ����  I   ��*��
�� .corecnte****       ***** o    ���� 0 months_list  ��  ��   +,+ Z   8 I-.��/- A  8 ;010 o   8 9���� 0 raw_nummonth raw_numMonth1 m   9 :���� 
. r   > C232 l  > A4����4 b   > A565 m   > ?77 �88  06 o   ? @���� 0 raw_nummonth raw_numMonth��  ��  3 o      ���� 0 nummonth numMonth��  / r   F I9:9 o   F G���� 0 raw_nummonth raw_numMonth: o      ���� 0 nummonth numMonth, ;<; l  J J��������  ��  ��  < =��= l  J [>?@> r   J [ABA l  J YC����C b   J YDED b   J MFGF o   J K���� 0 numdate numDateG o   K L���� 0 nummonth numMonthE l  M XH���H n   M XIJI 7 N X�~KL
�~ 
ctxtK m   R T�}�} L m   U W�|�| J o   M N�{�{ 0 theyear theYear��  �  ��  ��  B o      �z�z 0 filedate fileDate? ? 9 Combines the date, month and last two digits of the year   @ �MM r   C o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r��  � NON l     �y�x�w�y  �x  �w  O PQP l     �v�u�t�v  �u  �t  Q RSR l     �sTU�s  T Y S pageGen: Opens the master file and calls functions to construct the requested page   U �VV �   p a g e G e n :   O p e n s   t h e   m a s t e r   f i l e   a n d   c a l l s   f u n c t i o n s   t o   c o n s t r u c t   t h e   r e q u e s t e d   p a g eS WXW l     �rYZ�r  Y ^ X Takes 4 parameters: spread/single, InDesign master page name, file slug and page number   Z �[[ �   T a k e s   4   p a r a m e t e r s :   s p r e a d / s i n g l e ,   I n D e s i g n   m a s t e r   p a g e   n a m e ,   f i l e   s l u g   a n d   p a g e   n u m b e rX \]\ l     �q^_�q  ^ @ : The page number is that of the left-hand page for spreads   _ �`` t   T h e   p a g e   n u m b e r   i s   t h a t   o f   t h e   l e f t - h a n d   p a g e   f o r   s p r e a d s] aba i    cdc I      �pe�o�p 0 pagegen pageGene fgf o      �n�n 0 pagetype pageTypeg hih o      �m�m 0 	themaster 	theMasteri jkj o      �l�l 0 theslug theSlugk l�kl o      �j�j 0 
pagenumber 
pageNumber�k  �o  d O     Xmnm k    Woo pqp I   �ir�h
�i .aevtodocnull  �    alisr o    	�g�g  0 masterdocument masterDocument�h  q sts n   uvu I    �fw�e�f 0 applymaster applyMasterw xyx o    �d�d 0 	themaster 	theMastery z{z o    �c�c 0 pagetype pageType{ |�b| o    �a�a 0 
pagenumber 
pageNumber�b  �e  v  f    t }~} l   �`�_�^�`  �_  �^  ~ � Z    '���]�\� E    ��� o    �[�[ 0 	themaster 	theMaster� m    �� ��� 
 N e w s -� l   #���� n   #��� I    #�Z��Y�Z  0 drawembargobox drawEmbargoBox� ��X� o    �W�W 0 pagetype pageType�X  �Y  �  f    � 2 , Hyphen needed to exclude Feat-NewsReviews-*   � ��� X   H y p h e n   n e e d e d   t o   e x c l u d e   F e a t - N e w s R e v i e w s - *�]  �\  � ��� l  ( (�V�U�T�V  �U  �T  � ��� Z   ( @���S�R� G   ( 3��� =  ( +��� o   ( )�Q�Q 0 	themaster 	theMaster� m   ) *�� ���  F e a t - T V� =  . 1��� o   . /�P�P 0 	themaster 	theMaster� m   / 0�� ���  F e a t - R e d L i s t� n  6 <��� I   7 <�O��N�O "0 changelegaldate changeLegalDate� ��M� o   7 8�L�L 0 	themaster 	theMaster�M  �N  �  f   6 7�S  �R  � ��� l  A A�K�J�I�K  �J  �I  � ��� n  A H��� I   B H�H��G�H 0 	cleansave 	cleanSave� ��� o   B C�F�F 0 
pagenumber 
pageNumber� ��E� o   C D�D�D 0 theslug theSlug�E  �G  �  f   A B� ��C� O  I W��� I  O V�B�A�
�B .CoReclosnull���     obj �A  � �@��?
�@ 
svop� m   Q R�>
�> savoyes �?  � l  I L��=�<� 1   I L�;
�; 
pacd�=  �<  �C  n m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  b ��� l     �:�9�8�:  �9  �8  � ��� l     �7�6�5�7  �6  �5  � ��� l     �4���4  � � � applyMaster: Applies a master, creating pages as needed, changes the date, overrides Work-layer items and changes the page number if appropriate   � ���"   a p p l y M a s t e r :   A p p l i e s   a   m a s t e r ,   c r e a t i n g   p a g e s   a s   n e e d e d ,   c h a n g e s   t h e   d a t e ,   o v e r r i d e s   W o r k - l a y e r   i t e m s   a n d   c h a n g e s   t h e   p a g e   n u m b e r   i f   a p p r o p r i a t e� ��� i    ��� I      �3��2�3 0 applymaster applyMaster� ��� o      �1�1 0 	themaster 	theMaster� ��� o      �0�0 0 pagetype pageType� ��/� o      �.�. 0 
pagenumber 
pageNumber�/  �2  � O    ���� O   ���� Z   
�����-� =  
 ��� o   
 �,�, 0 pagetype pageType� m    �� ���  s i n g l e� k    ��� ��� l   ���� r    ��� 4    �+�
�+ 
mspr� o    �*�* 0 	themaster 	theMaster� n      ��� 1    �)
�) 
pmas� 4    �(�
�( 
page� m    �'�' � 3 - Applies a master to the existing single page   � ��� Z   A p p l i e s   a   m a s t e r   t o   t h e   e x i s t i n g   s i n g l e   p a g e� ��&� Z    ����%�$� H     �� E    ��� o    �#�# 0 	themaster 	theMaster� m    �� ���  X - B l a n k� l  # ����� k   # ��� ��� I  # 3�"��
�" .InESovrrobj         obj � n   # *��� 4   ' *�!�
�! 
txtf� m   ( )�� ���  E d i t i o n   d a t e� 4   # '� �
�  
mspr� o   % &�� 0 	themaster 	theMaster� ���
� 
dPge� 4   + /��
� 
page� m   - .�� �  � ��� l  4 ?���� r   4 ?��� o   4 5�� 0 pagedate pageDate� l     ���� n      � � 1   < >�
� 
pcnt  n   5 < 4   9 <�
� 
txtf m   : ; �  E d i t i o n   d a t e 4   5 9�
� 
page m   7 8�� �  �  �   Sets the date   � �    S e t s   t h e   d a t e� 	 Q   @ p
�
 l  C g I  C g�
� .InESovrrobj         obj  l  C ^�� 6  C ^ n   C K 2   I K�
� 
cobj n   C I 1   G I�
� 
mpgs 4   C G�
� 
page m   E F��  =  N ] n  O W 1   S W�
� 
pnam 1   O S�

�
 
pilr m   X \ �  W o r k�  �   �	�
�	 
dPge 4   _ c� 
� 
page  m   a b�� �   o i Block to make the Work-layer items editable. In a try block to avoid errors when there are no such items    �!! �   B l o c k   t o   m a k e   t h e   W o r k - l a y e r   i t e m s   e d i t a b l e .   I n   a   t r y   b l o c k   t o   a v o i d   e r r o r s   w h e n   t h e r e   a r e   n o   s u c h   i t e m s R      ���
� .ascrerr ****      � ****�  �  �  	 "�" Z   q �#$�� # >  q v%&% o   q r���� 0 
pagenumber 
pageNumber& m   r u'' �((  $ l  y �)*+) k   y �,, -.- I  y ���/0
�� .InESovrrobj         obj / n   y �121 4   } ���3
�� 
txtf3 m   ~ �44 �55  P a g e   n u m b e r2 4   y }��6
�� 
mspr6 o   { |���� 0 	themaster 	theMaster0 ��7��
�� 
dPge7 4   � ���8
�� 
page8 m   � ����� ��  . 9��9 r   � �:;: o   � ����� 0 
pagenumber 
pageNumber; l     <����< n      =>= 1   � ���
�� 
pcnt> n   � �?@? 4   � ���A
�� 
txtfA m   � �BB �CC  P a g e   n u m b e r@ 4   � ���D
�� 
pageD m   � ����� ��  ��  ��  * G A Mostly to skip the front, which doesn't have a page number frame   + �EE �   M o s t l y   t o   s k i p   t h e   f r o n t ,   w h i c h   d o e s n ' t   h a v e   a   p a g e   n u m b e r   f r a m e�  �   �  � 6 0 The X-Blanks have no page number or date frames   � �FF `   T h e   X - B l a n k s   h a v e   n o   p a g e   n u m b e r   o r   d a t e   f r a m e s�%  �$  �&  � GHG =  � �IJI o   � ����� 0 pagetype pageTypeJ m   � �KK �LL  s p r e a dH M��M k   ��NN OPO l  � �QRSQ I  � �����T
�� .corecrel****      � null��  T ��UV
�� 
koclU m   � ���
�� 
sprdV ��W��
�� 
prdtW K   � �XX ��Y��
�� 
pmasY 4   � ���Z
�� 
msprZ o   � ����� 0 	themaster 	theMaster��  ��  R G A Creates a two-page spread at pages 2 & 3 with the master applied   S �[[ �   C r e a t e s   a   t w o - p a g e   s p r e a d   a t   p a g e s   2   &   3   w i t h   t h e   m a s t e r   a p p l i e dP \��\ Z   ��]^����] H   � �__ E   � �`a` o   � ����� 0 	themaster 	theMastera m   � �bb �cc  X - B l a n k^ k   ��dd efe I  � ���gh
�� .InESovrrobj         obj g n   � �iji 4   � ���k
�� 
txtfk m   � �ll �mm  L - E d i t i o n   d a t ej 4   � ���n
�� 
msprn o   � ����� 0 	themaster 	theMasterh ��o��
�� 
dPgeo 4   � ���p
�� 
pagep m   � ����� ��  f qrq I  � ���st
�� .InESovrrobj         obj s n   � �uvu 4   � ���w
�� 
txtfw m   � �xx �yy  R - E d i t i o n   d a t ev 4   � ���z
�� 
msprz o   � ����� 0 	themaster 	theMastert ��{��
�� 
dPge{ 4   � ���|
�� 
page| m   � ����� ��  r }~} l  � �� r   � ��� o   � ����� 0 pagedate pageDate� l     ������ n      ��� 1   � ���
�� 
pcnt� n   � ���� 4   � ����
�� 
txtf� m   � ��� ���  L - E d i t i o n   d a t e� 4   � ����
�� 
page� m   � ����� ��  ��  � * $ Sets the date on the left-hand page   � ��� H   S e t s   t h e   d a t e   o n   t h e   l e f t - h a n d   p a g e~ ��� l ���� r  ��� o  ���� 0 pagedate pageDate� l     ������ n      ��� 1  ��
�� 
pcnt� n  ��� 4  ���
�� 
txtf� m  
�� ���  R - E d i t i o n   d a t e� 4  ���
�� 
page� m  ���� ��  ��  � + % Sets the date on the right-hand page   � ��� J   S e t s   t h e   d a t e   o n   t h e   r i g h t - h a n d   p a g e� ��� Q  d����� k  [�� ��� I 6����
�� .InESovrrobj         obj � l -������ 6 -��� n  ��� 2  ��
�� 
cobj� n  ��� 1  ��
�� 
mpgs� 4  ���
�� 
page� m  ���� � = ,��� n &��� 1  "&��
�� 
pnam� 1  "��
�� 
pilr� m  '+�� ���  W o r k��  ��  � �����
�� 
dPge� 4  .2���
�� 
page� m  01���� ��  � ���� I 7[����
�� .InESovrrobj         obj � l 7R������ 6 7R��� n  7?��� 2  =?��
�� 
cobj� n  7=��� 1  ;=��
�� 
mpgs� 4  7;���
�� 
page� m  9:���� � = BQ��� n CK��� 1  GK��
�� 
pnam� 1  CG��
�� 
pilr� m  LP�� ���  W o r k��  ��  � �����
�� 
dPge� 4  SW���
�� 
page� m  UV���� ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� Z  e�������� > ej��� o  ef���� 0 
pagenumber 
pageNumber� m  fi�� ���  � k  m��� ��� I m����
�� .InESovrrobj         obj � n  mv��� 4  qv���
�� 
txtf� m  ru�� ���  L - P a g e   n u m b e r� 4  mq���
�� 
mspr� o  op���� 0 	themaster 	theMaster� �����
�� 
dPge� 4  w{���
�� 
page� m  yz���� ��  � ��� I ������
�� .InESovrrobj         obj � n  ����� 4  �����
�� 
txtf� m  ���� ���  R - P a g e   n u m b e r� 4  �����
�� 
mspr� o  ������ 0 	themaster 	theMaster� �����
�� 
dPge� 4  �����
�� 
page� m  ������ ��  � ��� r  ����� o  ������ 0 
pagenumber 
pageNumber� l     ������ n      ��� 1  ����
�� 
pcnt� n  ����� 4  �����
�� 
txtf� m  ���� ���  L - P a g e   n u m b e r� 4  �����
�� 
page� m  ������ ��  ��  � ���� r  ����� l �������� c  ����� l �������� [  ��� � o  ������ 0 
pagenumber 
pageNumber  m  ������ ��  ��  � m  ���
� 
TEXT��  ��  � l     �~�} n       1  ���|
�| 
pcnt n  �� 4  ���{
�{ 
txtf m  �� �  R - P a g e   n u m b e r 4  ���z	
�z 
page	 m  ���y�y �~  �}  ��  ��  ��  ��  ��  ��  ��  ��  �-  � l   
�x�w
 1    �v
�v 
pacd�x  �w  � m     �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  l     �u�t�s�u  �t  �s    l     �r�q�p�r  �q  �p    l     �o�o   X R changeLegalDate: Overrides and sets the legal date on the weekday TV and Red List    � �   c h a n g e L e g a l D a t e :   O v e r r i d e s   a n d   s e t s   t h e   l e g a l   d a t e   o n   t h e   w e e k d a y   T V   a n d   R e d   L i s t  i    ! I      �n�m�n "0 changelegaldate changeLegalDate �l o      �k�k 0 	themaster 	theMaster�l  �m   O     W O    V Z   
 U !�j =  
 "#" o   
 �i�i 0 	themaster 	theMaster# m    $$ �%%  F e a t - R e d L i s t  k    ,&& '(' I    �h)*
�h .InESovrrobj         obj ) n    +,+ 4    �g-
�g 
txtf- m    .. �//  L e g a l   d a t e, 4    �f0
�f 
mspr0 o    �e�e 0 	themaster 	theMaster* �d1�c
�d 
dPge1 4    �b2
�b 
page2 m    �a�a �c  ( 3�`3 r   ! ,454 o   ! "�_�_ 0 pagedate pageDate5 l     6�^�]6 n      787 1   ) +�\
�\ 
pcnt8 n   " )9:9 4   & )�[;
�[ 
txtf; m   ' (<< �==  L e g a l   d a t e: 4   " &�Z>
�Z 
page> m   $ %�Y�Y �^  �]  �`  ! ?@? =  / 2ABA o   / 0�X�X 0 	themaster 	theMasterB m   0 1CC �DD  F e a t - T V@ E�WE k   5 QFF GHG I  5 E�VIJ
�V .InESovrrobj         obj I n   5 <KLK 4   9 <�UM
�U 
txtfM m   : ;NN �OO  L e g a l   d a t eL 4   5 9�TP
�T 
msprP o   7 8�S�S 0 	themaster 	theMasterJ �RQ�Q
�R 
dPgeQ 4   = A�PR
�P 
pageR m   ? @�O�O �Q  H S�NS r   F QTUT o   F G�M�M 0 pagedate pageDateU l     V�L�KV n      WXW 1   N P�J
�J 
pcntX n   G NYZY 4   K N�I[
�I 
txtf[ m   L M\\ �]]  L e g a l   d a t eZ 4   G K�H^
�H 
page^ m   I J�G�G �L  �K  �N  �W  �j   l   _�F�E_ 1    �D
�D 
pacd�F  �E   m     ``�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   aba l     �C�B�A�C  �B  �A  b cdc l     �@�?�>�@  �?  �>  d efe l     �=gh�=  g c ] drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page   h �ii �   d r a w E m b a r g o B o x :   C r e a t e s   a n   e m b a r g o e d   s t o r i e s   f r a m e   o n   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g ef jkj i   " %lml I      �<n�;�<  0 drawembargobox drawEmbargoBoxn o�:o o      �9�9 0 pagetype pageType�:  �;  m O     �pqp O    �rsr Z    �tuv�8t =   wxw o    �7�7 0 pagetype pageTypex m    yy �zz  s i n g l eu k    E{{ |}| O    .~~ r    -��� I   +�6�5�
�6 .corecrel****      � null�5  � �4��
�4 
kocl� m    �3
�3 
txtf� �2��1
�2 
prdt� K    '�� �0��
�0 
gbnd� J    #�� ��� m    �� @,      � ��� m    �� �b�     � ��� m     �� @\�     � ��/� m     !�� �I      �/  � �.��-
�. 
pcnt� m   $ %�� ��� " E m b a r g o e d   s t o r i e s�-  �1  � o      �,�, 0 ebox eBox 4    �+�
�+ 
page� m    �*�* } ��� l  / =���� r   / =��� 4   / 7�)�
�) 
ObSt� m   3 6�� ��� " N e w s   N I B   b o x   t i n t� l     ��(�'� n      ��� 1   8 <�&
�& 
aobs� o   7 8�%�% 0 ebox eBox�(  �'  � K E Set separately as it throws an error if you try to do it on creation   � ��� �   S e t   s e p a r a t e l y   a s   i t   t h r o w s   a n   e r r o r   i f   y o u   t r y   t o   d o   i t   o n   c r e a t i o n� ��$� r   > E��� m   > ?�#
�# boovtrue� n      ��� 1   @ D�"
�" 
plck� o   ? @�!�! 0 ebox eBox�$  v ��� =  H M��� o   H I� �  0 pagetype pageType� m   I L�� ���  s p r e a d� ��� k   P ��� ��� O   P o��� r   W n��� I  W l���
� .corecrel****      � null�  � ���
� 
kocl� m   Y Z�
� 
txtf� ���
� 
prdt� K   [ h�� ���
� 
gbnd� J   \ b�� ��� m   \ ]�� @,      � ��� m   ] ^�� �b�     � ��� m   ^ _�� @\�     � ��� m   _ `�� �I      �  � ���
� 
pcnt� m   c f�� ��� " E m b a r g o e d   s t o r i e s�  �  � o      �� 0 ebox eBox� 4   P T��
� 
page� m   R S�� � ��� r   p ~��� 4   p x��
� 
ObSt� m   t w�� ��� " N e w s   N I B   b o x   t i n t� l     ���� n      ��� 1   y }�
� 
aobs� o   x y�� 0 ebox eBox�  �  � ��� r    ���� m    ��
� boovtrue� n      ��� 1   � ��

�
 
plck� o   � ��	�	 0 ebox eBox�  �  �8  s l   ���� 4   ��
� 
docu� m    �� �  �  q m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  k ��� l     ����  �  �  � ��� l     �� ���  �   ��  � ��� l     ������  � � � cleanSave: Locks the date/page number layer, selects the Work layer, sets the correct ruler zero-point and saves the file using theSlug and fileDate   � ���*   c l e a n S a v e :   L o c k s   t h e   d a t e / p a g e   n u m b e r   l a y e r ,   s e l e c t s   t h e   W o r k   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o - p o i n t   a n d   s a v e s   t h e   f i l e   u s i n g   t h e S l u g   a n d   f i l e D a t e� ��� i   & )��� I      ������� 0 	cleansave 	cleanSave� ��� o      ���� 0 
pagenumber 
pageNumber� ���� o      ���� 0 theslug theSlug��  ��  � O     _��� O    ^��� k   
 ]�� ��� r   
 ��� m   
 ��
�� boovtrue� n      ��� 1    ��
�� 
plck� 4    ���
�� 
layr� m    	 	  �		 ( D a t e   a n d   p a g e   n u m b e r� 			 r    			 m    ��
�� boovtrue	 n      			 1    ��
�� 
plck	 4    ��	
�� 
layr	 m    				 �	
	
  F u r n i t u r e	 			 r    !			 m    		 �		  W o r k	 1     ��
�� 
pacl	 			 l  " "��������  ��  ��  	 			 Z   " I			��	 l  " '	����	 =  " '			 `   " %			 o   " #���� 0 
pagenumber 
pageNumber	 m   # $���� 	 m   % &����  ��  ��  	 l  * 2				 r   * 2	 	!	  J   * .	"	" 	#	$	# m   * +	%	% @.      	$ 	&��	& m   + ,	'	' @&      ��  	! l     	(����	( 1   . 1��
�� 
zero��  ��  	 ( " For left-hand singles and spreads   	 �	)	) D   F o r   l e f t - h a n d   s i n g l e s   a n d   s p r e a d s	 	*	+	* l  5 :	,����	, =  5 :	-	.	- `   5 8	/	0	/ o   5 6���� 0 
pagenumber 
pageNumber	0 m   6 7���� 	. m   8 9���� ��  ��  	+ 	1��	1 l  = E	2	3	4	2 r   = E	5	6	5 J   = A	7	7 	8	9	8 m   = >	:	: @"      	9 	;��	; m   > ?	<	< @&      ��  	6 l     	=����	= 1   A D��
�� 
zero��  ��  	3   For right-hand singles   	4 �	>	> .   F o r   r i g h t - h a n d   s i n g l e s��  ��  	 	?	@	? l  J J��������  ��  ��  	@ 	A��	A I  J ]����	B
�� .CoResavedocu        obj ��  	B ��	C��
�� 
kfil	C b   L Y	D	E	D b   L W	F	G	F b   L U	H	I	H b   L S	J	K	J o   L Q���� $0 freshpagesfolder freshPagesFolder	K o   Q R���� 0 theslug theSlug	I m   S T	L	L �	M	M  _	G o   U V���� 0 filedate fileDate	E m   W X	N	N �	O	O 
 . i n d d��  ��  � l   	P����	P 1    ��
�� 
pacd��  ��  � m     	Q	Q�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 	R	S	R l     ��������  ��  ��  	S 	T	U	T l     ��������  ��  ��  	U 	V	W	V l     ��	X	Y��  	X f ` customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them   	Y �	Z	Z �   c u s t o m E d i t i o n :   R e a d s   a   l i s t   o f   w a n t e d   p a g e s   f r o m   T e x t W r a n g l e r   t h e n   c a l l s   p a g e G e n ( )   t o   m a k e   t h e m	W 	[	\	[ i   * -	]	^	] I      �������� 0 customedition customEdition��  ��  	^ k    �	_	_ 	`	a	` l     ��������  ��  ��  	a 	b	c	b l     ��	d	e��  	d | v The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.   	e �	f	f �   T h e   e n t r i e s   i n   t h e   h u m a n ,   m a s t e r s   &   s l u g s   l i s t s   m u s t   m a t c h   e x a c t l y ,   a s   t h e y   a r e   f e t c h e d   b a s e d   o n   t h e i r   l i s t   p o s i t i o n .	c 	g	h	g l     ��	i	j��  	i a [ e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent   	j �	k	k �   e . g .   I f   i t e m   4   o f   h u m a n _ l i s t   i s   " L e t t e r s _ S " ,   i t e m   4   o f   m a s t e r s _ l i s t   m u s t   b e   t h e   e q u i v a l e n t	h 	l	m	l l     ��	n	o��  	n [ U InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"   	o �	p	p �   I n D e s i g n   m a s t e r   n a m e   ( F e a t - L e t t e r s - S p l i t )   a n d   i t e m   4   o f   s l u g s _ l i s t   m u s t   b e   " L e t t e r s "	m 	q	r	q l     ��������  ��  ��  	r 	s	t	s l     ��	u	v��  	u > 8 The human-friendly names used in the TextWrangler file	   	v �	w	w p   T h e   h u m a n - f r i e n d l y   n a m e s   u s e d   i n   t h e   T e x t W r a n g l e r   f i l e 		t 	x	y	x r     U	z	{	z J     S	|	| 	}	~	} m     		 �	�	� 
 F r o n t	~ 	�	�	� m    	�	� �	�	�  S a t F r o n t	� 	�	�	� m    	�	� �	�	�  H o m e _ S	� 	�	�	� m    	�	� �	�	�  H o m e _ L	� 	�	�	� m    	�	� �	�	�  H o m e _ R	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ S	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ L	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ R	� 	�	�	� m    		�	� �	�	�  S t r u g g l e _ S	� 	�	�	� m   	 
	�	� �	�	�  S t r u g g l e _ L	� 	�	�	� m   
 	�	� �	�	�  S t r u g g l e _ R	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ S	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ L	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ R	� 	�	�	� m    	�	� �	�	�  S p r e a d	� 	�	�	� m    	�	� �	�	�  T V	� 	�	�	� m    	�	� �	�	� 
 S a t T V	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ S	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ L	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ R	� 	�	�	� m    	�	� �	�	�  R e d L i s t	� 	�	�	� m    "	�	� �	�	�  F e a t _ S	� 	�	�	� m   " %	�	� �	�	�  F e a t _ L	� 	�	�	� m   % (	�	� �	�	�  F e a t _ R	� 	�	�	� m   ( +	�	� �	�	�  A r t s _ E n t s	� 	�	�	� m   + .	�	� �	�	�  A r t s _ S	� 	�	�	� m   . 1	�	� �	�	�  A r t s _ L	� 	�	�	� m   1 4	�	� �	�	�  A r t s _ R	� 	�	�	� m   4 7	�	� �	�	�  B a c k	� 	�	�	� m   7 :	�	� �	�	�  S p o r t _ S	� 	�	�	� m   : =	�	� �	�	�  S p o r t _ L	� 	�	�	� m   = @	�	� �	�	�  S p o r t _ R	� 	�	�	� m   @ C	�	� �
 
   R a c i n g _ L	� 


 m   C F

 �

  R a c i n g _ R
 


 m   F I

 �

  B l a n k _ S
 
	


	 m   I L

 �

  B l a n k _ L

 
��
 m   L O

 �

  B l a n k _ R��  	{ o      ���� 0 
human_list  	y 


 l  V V��

��  
    The InDesign master names   
 �

 4   T h e   I n D e s i g n   m a s t e r   n a m e s
 


 r   V �


 J   V �

 


 m   V Y

 �

  N e w s - F r o n t
 


 m   Y \
 
  �
!
!  N e w s - S a t F r o n t
 
"
#
" m   \ _
$
$ �
%
%  N e w s - H o m e - S p l i t
# 
&
'
& m   _ b
(
( �
)
)  N e w s - H o m e - L
' 
*
+
* m   b e
,
, �
-
-  N e w s - H o m e - R
+ 
.
/
. m   e h
0
0 �
1
1 $ N e w s - F o r e i g n - S p l i t
/ 
2
3
2 m   h k
4
4 �
5
5  N e w s - F o r e i g n - L
3 
6
7
6 m   k n
8
8 �
9
9  N e w s - F o r e i g n - R
7 
:
;
: m   n q
<
< �
=
= & F e a t - S t r u g g l e - S p l i t
; 
>
?
> m   q t
@
@ �
A
A  F e a t - S t r u g g l e - L
? 
B
C
B m   t w
D
D �
E
E  F e a t - S t r u g g l e - R
C 
F
G
F m   w z
H
H �
I
I * F e a t - N e w s R e v i e w - S p l i t
G 
J
K
J m   z }
L
L �
M
M " F e a t - N e w s R e v i e w - L
K 
N
O
N m   } �
P
P �
Q
Q " F e a t - N e w s R e v i e w - R
O 
R
S
R m   � �
T
T �
U
U  F e a t - S p r e a d
S 
V
W
V m   � �
X
X �
Y
Y  F e a t - T V
W 
Z
[
Z m   � �
\
\ �
]
]  F e a t - S a t T V
[ 
^
_
^ m   � �
`
` �
a
a $ F e a t - L e t t e r s - S p l i t
_ 
b
c
b m   � �
d
d �
e
e  F e a t - L e t t e r s - L
c 
f
g
f m   � �
h
h �
i
i  F e a t - L e t t e r s - R
g 
j
k
j m   � �
l
l �
m
m  F e a t - R e d L i s t
k 
n
o
n m   � �
p
p �
q
q   F e a t - B l a n k - S p l i t
o 
r
s
r m   � �
t
t �
u
u  F e a t - B l a n k - L
s 
v
w
v m   � �
x
x �
y
y  F e a t - B l a n k - R
w 
z
{
z m   � �
|
| �
}
}  A r t s - E n t s - S p l i t
{ 
~

~ m   � �
�
� �
�
�   A r t s - B l a n k - S p l i t
 
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
���
� m   � �
�
� �
�
�  X - B l a n k - R��  
 o      ���� 0 masters_list  
 
�
�
� l  � ���
�
���  
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
� �
�
�  T V
� 
�
�
� m   �
�
� �
�
�  L e t t e r s
� 
� 
� m   �  L e t t e r s   m   �  L e t t e r s  m  		 �

  R e d L i s t  m   �  F e a t u r e s  m   �  F e a t u r e  m   �  F e a t u r e  m   �  A r t s - E n t s  m   �  A r t s   m  !! �""  A r t s  #$# m   %% �&&  A r t s$ '(' m   #)) �**  B a c k( +,+ m  #&-- �.. 
 S p o r t, /0/ m  &)11 �22 
 S p o r t0 343 m  ),55 �66 
 S p o r t4 787 m  ,/99 �::  R a c i n g8 ;<; m  /2== �>>  R a c i n g< ?@? m  25AA �BB 
 B L A N K@ CDC m  58EE �FF 
 B L A N KD G��G m  8;HH �II 
 B L A N K��  
� o      ���� 0 
slugs_list  
� JKJ l BB��������  ��  ��  K LML l BB��NO��  N 1 + Single-page masters (used to set pageType)   O �PP V   S i n g l e - p a g e   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )M QRQ r  B�STS J  B�UU VWV m  BEXX �YY  N e w s - F r o n tW Z[Z m  EH\\ �]]  N e w s - S a t F r o n t[ ^_^ m  HK`` �aa  N e w s - H o m e - L_ bcb m  KNdd �ee  N e w s - H o m e - Rc fgf m  NQhh �ii  N e w s - F o r e i g n - Lg jkj m  QTll �mm  N e w s - F o r e i g n - Rk non m  TWpp �qq  F e a t - S t r u g g l e - Lo rsr m  WZtt �uu  F e a t - S t r u g g l e - Rs vwv m  Z]xx �yy " F e a t - N e w s R e v i e w - Lw z{z m  ]`|| �}} " F e a t - N e w s R e v i e w - R{ ~~ m  `c�� ���  F e a t - L e t t e r s - L ��� m  cf�� ���  F e a t - L e t t e r s - R� ��� m  fi�� ���  F e a t - R e d L i s t� ��� m  il�� ���  F e a t - B l a n k - L� ��� m  lo�� ���  F e a t - B l a n k - R� ��� m  or�� ���  A r t s - B l a n k - L� ��� m  ru�� ���  A r t s - B l a n k - R� ��� m  ux�� ���  S p r t - B a c k� ��� m  x{�� ���  S p r t - B l a n k - L� ��� m  {~�� ���  S p r t - B l a n k - R� ��� m  ~��� ���  S p r t - R a c i n g - L� ��� m  ���� ���  S p r t - R a c i n g - R� ��� m  ���� ���  X - B l a n k - L� ���� m  ���� ���  X - B l a n k - R��  T o      ���� 0 singles_list  R ��� l ��������  � , & Spread masters (used to set pageType)   � ��� L   S p r e a d   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )� ��� r  ����� J  ���� ��� m  ���� ���  N e w s - H o m e - S p l i t� ��� m  ���� ��� $ N e w s - F o r e i g n - S p l i t� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m  ���� ���  F e a t - S p r e a d� ��� m  ���� ���  F e a t - T V� ��� m  ���� ���  F e a t - S a t T V� ��� m  ���� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  ���� ���   F e a t - B l a n k - S p l i t� ��� m  ���� ���  A r t s - E n t s - S p l i t� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ���� m  ���� ���  X - B l a n k - S p l i t��  � o      ���� 0 spreads_list  � ��� l ����������  ��  ��  � ���� O  ����� O  ����� k  ���� ��� l ������ r  ��� � l ������ I ����
�� .R*chFindMtch���     TEXT m  �� �  ^ # S t a r t s   h e r e # $ ����
�� 
Opts K  �� ��	
�� 
SMod m  ����
�� SModGrep	 ��
��
�� 
STop
 m  ����
�� boovtrue��  ��  ��  ��    o      ���� 0 hashline hashLine�   Finds the beginning line   � � 2   F i n d s   t h e   b e g i n n i n g   l i n e�  l �� r  �� l ������ [  �� l ������ l ������ n  �� 1  ����
�� 
SLin l ������ n  �� 1  ����
�� 
MSpc o  ������ 0 hashline hashLine��  ��  ��  ��  ��  ��   m  ������ ��  ��   o      ���� 0 thestart theStart : 4 The first instruction is on the line after hashLine    � h   T h e   f i r s t   i n s t r u c t i o n   i s   o n   t h e   l i n e   a f t e r   h a s h L i n e  l � !"  r  �#$# l �%����% 1  ���
�� 
ELin��  ��  $ o      ���� 0 theend theEnd! @ : The last instruction must be on the last line of the file   " �&& t   T h e   l a s t   i n s t r u c t i o n   m u s t   b e   o n   t h e   l a s t   l i n e   o f   t h e   f i l e '(' l ��������  ��  ��  ( )*) Y  �+��,-��+ l �./0. k  �11 232 l -4564 r  -787 l +9����9 I +��:;
�� .R*chFindMtch���     TEXT: m  << �==  ^ ( . + ) \ t ( . + ) $; �>?
� 
FnIn> 4  �~@
�~ 
clin@ o  �}�} 0 x  ? �|A�{
�| 
OptsA K  %BB �zC�y
�z 
SModC m   #�x
�x SModGrep�y  �{  ��  ��  8 o      �w�w 0 searchresult searchResult5 9 3 Finds characters, then a tab, then more characters   6 �DD f   F i n d s   c h a r a c t e r s ,   t h e n   a   t a b ,   t h e n   m o r e   c h a r a c t e r s3 EFE l ..�v�u�t�v  �u  �t  F GHG l .;IJKI r  .;LML l .9N�s�rN I .9�q�pO
�q .R*chGSubutxt    ��� null�p  O �oP�n
�o 
RplPP m  25QQ �RR  \ 1�n  �s  �r  M o      �m�m 0 
pagenumber 
pageNumberJ < 6 The page number (or a spread's left-hand page number)   K �SS l   T h e   p a g e   n u m b e r   ( o r   a   s p r e a d ' s   l e f t - h a n d   p a g e   n u m b e r )H TUT l <IVWXV r  <IYZY l <G[�l�k[ I <G�j�i\
�j .R*chGSubutxt    ��� null�i  \ �h]�g
�h 
RplP] m  @C^^ �__  \ 2�g  �l  �k  Z o      �f�f 0 hmaster hMasterW = 7 Human-friendly master name, as contained in human_list   X �`` n   H u m a n - f r i e n d l y   m a s t e r   n a m e ,   a s   c o n t a i n e d   i n   h u m a n _ l i s tU aba l JJ�e�d�c�e  �d  �c  b c�bc Z  J�de�a�`d H  JTff E  JSghg l JOi�_�^i n  JOjkj 1  KO�]
�] 
MTxtk o  JK�\�\ 0 searchresult searchResult�_  �^  h m  ORll �mm  - 	 -e l W�nopn k  W�qq rsr l W`tuvt r  W`wxw l W^y�[�Zy n W^z{z I  X^�Y|�X�Y 0 list_position  | }~} o  XY�W�W 0 hmaster hMaster~ �V o  YZ�U�U 0 
human_list  �V  �X  {  f  WX�[  �Z  x o      �T�T 0 listpos listPosu Q K Gets hMaster's list position, so it can fetch from masters_ and slugs_list   v ��� �   G e t s   h M a s t e r ' s   l i s t   p o s i t i o n ,   s o   i t   c a n   f e t c h   f r o m   m a s t e r s _   a n d   s l u g s _ l i s ts ��� l ai���� r  ai��� l ag��S�R� n  ag��� 4  bg�Q�
�Q 
cobj� o  ef�P�P 0 listpos listPos� o  ab�O�O 0 masters_list  �S  �R  � o      �N�N 0 	themaster 	theMaster� 1 + Sets theMaster to the InDesign master name   � ��� V   S e t s   t h e M a s t e r   t o   t h e   I n D e s i g n   m a s t e r   n a m e� ��� l jj�M�L�K�M  �L  �K  � ��� Z  j�����J� E jm��� o  jk�I�I 0 singles_list  � o  kl�H�H 0 	themaster 	theMaster� r  pu��� m  ps�� ���  s i n g l e� o      �G�G 0 pagetype pageType� ��� E x{��� o  xy�F�F 0 spreads_list  � o  yz�E�E 0 	themaster 	theMaster� ��D� r  ~���� m  ~��� ���  s p r e a d� o      �C�C 0 pagetype pageType�D  �J  � ��� l ���B�A�@�B  �A  �@  � ��� Z  ������?� = ����� o  ���>�> 0 pagetype pageType� m  ���� ���  s i n g l e� l ������ r  ����� l ����=�<� b  ����� b  ����� o  ���;�; 0 
pagenumber 
pageNumber� m  ���� ���  _� l ����:�9� n  ����� 4  ���8�
�8 
cobj� o  ���7�7 0 listpos listPos� o  ���6�6 0 
slugs_list  �:  �9  �=  �<  � o      �5�5 0 theslug theSlug� 2 , Block to set the slug used to name the file   � ��� X   B l o c k   t o   s e t   t h e   s l u g   u s e d   t o   n a m e   t h e   f i l e� ��� = ����� o  ���4�4 0 pagetype pageType� m  ���� ���  s p r e a d� ��3� r  ����� l ����2�1� b  ����� b  ����� b  ����� b  ����� o  ���0�0 0 
pagenumber 
pageNumber� m  ���� ���  -� l ����/�.� [  ����� o  ���-�- 0 
pagenumber 
pageNumber� m  ���,�, �/  �.  � m  ���� ���  _� l ����+�*� n  ����� 4  ���)�
�) 
cobj� o  ���(�( 0 listpos listPos� o  ���'�' 0 
slugs_list  �+  �*  �2  �1  � o      �&�& 0 theslug theSlug�3  �?  � ��� l ���%�$�#�%  �$  �#  � ��� Z  �����"�!� G  ����� = ����� o  ��� �  0 	themaster 	theMaster� m  ���� ���  N e w s - F r o n t� = ����� o  ���� 0 	themaster 	theMaster� m  ���� ���  N e w s - S a t F r o n t� l ������ r  ����� m  ���� ���  � o      �� 0 
pagenumber 
pageNumber� H B So applyMaster doesn't try to set a page number, which would fail   � ��� �   S o   a p p l y M a s t e r   d o e s n ' t   t r y   t o   s e t   a   p a g e   n u m b e r ,   w h i c h   w o u l d   f a i l�"  �!  � ��� l ������  �  �  � ��� l ������ n ����� I  ������ 0 pagegen pageGen� ��� o  ���� 0 pagetype pageType�    o  ���� 0 	themaster 	theMaster  o  ���� 0 theslug theSlug � o  ���� 0 
pagenumber 
pageNumber�  �  �  f  ��� ' ! Calls pageGen to create the page   � � B   C a l l s   p a g e G e n   t o   c r e a t e   t h e   p a g e� � l ������  �  �  �  o : 4 Lines consisting of "hyphen tab hyphen" are skipped   p � h   L i n e s   c o n s i s t i n g   o f   " h y p h e n   t a b   h y p h e n "   a r e   s k i p p e d�a  �`  �b  / P J Goes through each line from the one after hashLine to the end of the file   0 � �   G o e s   t h r o u g h   e a c h   l i n e   f r o m   t h e   o n e   a f t e r   h a s h L i n e   t o   t h e   e n d   o f   t h e   f i l e�� 0 x  , o  �� 0 thestart theStart- o  	�� 0 theend theEnd��  * 	�	 l �����
�  �  �
  �  � n  ��

 4  ���	
�	 
ctxt m  ����  4  ���
� 
TxtW m  ���� � m  ���                                                                                  !Rch  alis    J  SSD                        �@��H+  ��TextWrangler.app                                                ±	��u}        ����  	                Applications    �@��      ��gm    ��  "SSD:Applications: TextWrangler.app  "  T e x t W r a n g l e r . a p p    S S D  Applications/TextWrangler.app   / ��  ��  	\  l     ����  �  �    l     ��   , & newsGen: News-page generation routine    � L   n e w s G e n :   N e w s - p a g e   g e n e r a t i o n   r o u t i n e  i   . 1 I      �� � 0 newsgen newsGen  o      ���� &0 masterstogenerate mastersToGenerate �� o      ���� 0 theday theDay��  �    k       Z     �!"����! E    #$# o     ���� &0 masterstogenerate mastersToGenerate$ m    %% �&&  N e w s      s p l i t s" k    �'' ()( Z    +*+,��* >   	-.- o    ���� 0 theday theDay. m    // �00  S a t u r d a y+ l   1231 I    ��4���� 0 pagegen pageGen4 565 m    77 �88  s i n g l e6 9:9 m    ;; �<<  N e w s - F r o n t: =>= m    ?? �@@  1 _ F r o n t> A��A m    BB �CC  ��  ��  2 ; 5 If block to create the weekday or weekend front page   3 �DD j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e, EFE =   GHG o    ���� 0 theday theDayH m    II �JJ  S a t u r d a yF K��K I    '��L���� 0 pagegen pageGenL MNM m     OO �PP  s i n g l eN QRQ m     !SS �TT  N e w s - S a t F r o n tR UVU m   ! "WW �XX  1 _ F r o n tV Y��Y m   " #ZZ �[[  ��  ��  ��  ��  ) \]\ l  , ,��������  ��  ��  ] ^_^ Z   , e`a��b` E  , /cdc o   , -���� &0 masterstogenerate mastersToGenerated m   - .ee �ff * N e w s      2 - 3   a s   s i n g l e sa l  2 Qghig k   2 Qjj klk I   2 ?��m���� 0 pagegen pageGenm non m   3 4pp �qq  s i n g l eo rsr m   4 5tt �uu  N e w s - H o m e - Ls vwv m   5 8xx �yy  2 _ H o m ew z��z m   8 ;{{ �||  2��  ��  l }��} I   @ Q��~���� 0 pagegen pageGen~ � m   A D�� ���  s i n g l e� ��� m   D G�� ���  N e w s - H o m e - R� ��� m   G J�� ���  3 _ H o m e� ���� m   J M�� ���  3��  ��  ��  h 3 - If block to create 2-3 as singles or a split   i ��� Z   I f   b l o c k   t o   c r e a t e   2 - 3   a s   s i n g l e s   o r   a   s p l i t��  b I   T e������� 0 pagegen pageGen� ��� m   U X�� ���  s p r e a d� ��� m   X [�� ���  N e w s - H o m e - S p l i t� ��� m   [ ^�� ���  2 - 3 _ H o m e� ���� m   ^ a�� ���  2��  ��  _ ��� l  f f��������  ��  ��  � ��� Z   f ������� E  f k��� o   f g���� &0 masterstogenerate mastersToGenerate� m   g j�� ��� * N e w s      4 - 5   a s   s i n g l e s� l  n ����� k   n ��� ��� I   n ������� 0 pagegen pageGen� ��� m   o r�� ���  s i n g l e� ��� m   r u�� ���  N e w s - H o m e - L� ��� m   u x�� ���  4 _ H o m e� ���� m   x {�� ���  4��  ��  � ���� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  N e w s - H o m e - R� ��� m   � ��� ���  5 _ H o m e� ���� m   � ��� ���  5��  ��  ��  � 3 - If block to create 4-5 as singles or a split   � ��� Z   I f   b l o c k   t o   c r e a t e   4 - 5   a s   s i n g l e s   o r   a   s p l i t��  � I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���  N e w s - H o m e - S p l i t� ��� m   � ��� ���  4 - 5 _ H o m e� ���� m   � ��� ���  4��  ��  � ��� l  � ���������  ��  ��  � ���� Z   � ������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ��� * N e w s      6 - 7   a s   s i n g l e s� l  � ����� k   � ��� ��� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  N e w s - F o r e i g n - L� ��� m   � ��� ���  6 _ F o r e i g n� ���� m   � �   �  6��  ��  � �� I   � ������� 0 pagegen pageGen  m   � � �  s i n g l e 	 m   � �

 �  N e w s - F o r e i g n - R	  m   � � �  7 _ F o r e i g n �� m   � � �  7��  ��  ��  � 3 - If block to create 6-7 as singles or a split   � � Z   I f   b l o c k   t o   c r e a t e   6 - 7   a s   s i n g l e s   o r   a   s p l i t��  � I   � ������� 0 pagegen pageGen  m   � � �  s p r e a d  m   � � � $ N e w s - F o r e i g n - S p l i t  m   � � �    6 - 7 _ F o r e i g n !��! m   � �"" �##  6��  ��  ��  ��  ��    $%$ l  � ���������  ��  ��  % &'& Z   �/()����( E  � �*+* o   � ����� &0 masterstogenerate mastersToGenerate+ m   � �,, �--  T V) Z   �+./0��. >  � �121 o   � ����� 0 theday theDay2 m   � �33 �44  S a t u r d a y/ I   ���5���� 0 pagegen pageGen5 676 m   � �88 �99  s p r e a d7 :;: m   �<< �==  F e a t - T V; >?> m  @@ �AA  1 2 - 1 3 _ T V? B��B m  CC �DD  1 2��  ��  0 EFE = GHG o  ���� 0 theday theDayH m  II �JJ  S a t u r d a yF K��K I  '��L���� 0 pagegen pageGenL MNM m  OO �PP  s p r e a dN QRQ m  SS �TT  F e a t - S a t T VR UVU m   WW �XX  1 8 - 1 9 _ T VV Y��Y m   #ZZ �[[  1 8��  ��  ��  ��  ��  ��  ' \]\ l 00��������  ��  ��  ] ^_^ Z  0�`a����` E 05bcb o  01���� &0 masterstogenerate mastersToGeneratec m  14dd �ee  L e t t e r sa k  8�ff ghg l 8Bijki r  8Blml J  8@nn opo m  8;qq �rr  M o n d a yp s��s m  ;>tt �uu  W e d n e s d a y��  m o      ���� 0 p10_days  j = 7 These two lists determine what the page number will be   k �vv n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b eh wxw r  CSyzy J  CQ{{ |}| m  CF~~ �  T u e s d a y} ��� m  FI�� ���  T h u r s d a y� ��� m  IL�� ���  F r i d a y� ���� m  LO�� ���  S a t u r d a y��  z o      ���� 0 p14_days  x ��� l TT��������  ��  ��  � ���� Z  T������� E TW��� o  TU���� 0 p10_days  � o  UV���� 0 theday theDay� I  Zk������� 0 pagegen pageGen� ��� m  [^�� ���  s i n g l e� ��� m  ^a�� ���  F e a t - L e t t e r s - L� ��� m  ad�� ���  1 0 _ L e t t e r s� ���� m  dg�� ���  1 0��  ��  � ��� E nq��� o  no���� 0 p14_days  � o  op���� 0 theday theDay� ���� I  t�������� 0 pagegen pageGen� ��� m  ux�� ���  s i n g l e� ��� m  x{�� ���  F e a t - L e t t e r s - L� ��� m  {~�� ���  1 4 _ L e t t e r s� ���� m  ~��� ���  1 4��  ��  ��  ��  ��  ��  ��  _ ��� l ����������  ��  ��  � ��� Z  ��������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  S t r u g g l e� I  ��������� 0 pagegen pageGen� ��� m  ���� ���  s p r e a d� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ���  1 0 - 1 1 _ S t r u g g l e� ���� m  ���� ���  1 0��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� Z  ��������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ��� , S i n g l e   s t r u g g l e   -   l e f t� I  ��������� 0 pagegen pageGen� ��� m  ���� ���  s i n g l e� ��� m  ���� ���  F e a t - S t r u g g l e - L� ��� m  ���� ���  1 0 _ S t r u g g l e� ���� m  ���� ���  1 0��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� Z  ��������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ��� . S i n g l e   s t r u g g l e   -   r i g h t� I  �����~� 0 pagegen pageGen� ��� m  ���� ���  s i n g l e� ��� m  ���� ���  F e a t - S t r u g g l e - R� � � m  �� �  1 1 _ S t r u g g l e  �} m  �� �  1 1�}  �~  ��  ��  �  l ���|�{�z�|  �{  �z   �y Z  �	
�x�w	 E �� o  ���v�v &0 masterstogenerate mastersToGenerate m  �� �  R e d   L i s t
 I  ��u�t�u 0 pagegen pageGen  m  �� �  s i n g l e  m  �� �  F e a t - R e d L i s t  m  �� �  2 0 _ R e d L i s t �s m  �� �  2 0�s  �t  �x  �w  �y     l     �r�q�p�r  �q  �p    !"! l     �o�n�m�o  �n  �m  " #$# l     �l%&�l  % 1 + featsGen: Features-page generation routine   & �'' V   f e a t s G e n :   F e a t u r e s - p a g e   g e n e r a t i o n   r o u t i n e$ ()( i   2 5*+* I      �k,�j�k 0 featsgen featsGen, -.- o      �i�i &0 masterstogenerate mastersToGenerate. /�h/ o      �g�g 0 theday theDay�h  �j  + k    �00 121 Z     %34�f�e3 E    565 o     �d�d &0 masterstogenerate mastersToGenerate6 m    77 �88  S p r e a d4 Z    !9:�c;9 =   	<=< o    �b�b 0 theday theDay= m    >> �??  S a t u r d a y: I    �a@�`�a 0 pagegen pageGen@ ABA m    CC �DD  s p r e a dB EFE m    GG �HH  F e a t - S p r e a dF IJI m    KK �LL  1 2 - 1 3 _ F e a t u r e sJ M�_M m    NN �OO  1 2�_  �`  �c  ; I    !�^P�]�^ 0 pagegen pageGenP QRQ m    SS �TT  s p r e a dR UVU m    WW �XX  F e a t - S p r e a dV YZY m    [[ �\\  8 - 9 _ F e a t u r e sZ ]�\] m    ^^ �__  8�\  �]  �f  �e  2 `a` l  & &�[�Z�Y�[  �Z  �Y  a bcb Z   & ;de�X�Wd E  & )fgf o   & '�V�V &0 masterstogenerate mastersToGenerateg m   ' (hh �ii  1 0e I   , 7�Uj�T�U 0 pagegen pageGenj klk m   - .mm �nn  s i n g l el opo m   . /qq �rr  F e a t - B l a n k - Lp sts m   / 0uu �vv  1 0 _ F e a t u r e st w�Sw m   0 3xx �yy  1 0�S  �T  �X  �W  c z{z l  < <�R�Q�P�R  �Q  �P  { |}| Z   < Y~�O�N~ E  < A��� o   < =�M�M &0 masterstogenerate mastersToGenerate� m   = @�� ��� 
 1 2 - 1 3 I   D U�L��K�L 0 pagegen pageGen� ��� m   E H�� ���  s p r e a d� ��� m   H K�� ���  F e a t - T V� ��� m   K N�� ���  1 2 - 1 3 _ T V� ��J� m   N Q�� ���  1 2�J  �K  �O  �N  } ��� l  Z Z�I�H�G�I  �H  �G  � ��� Z   Z w���F�E� E  Z _��� o   Z [�D�D &0 masterstogenerate mastersToGenerate� m   [ ^�� ��� ( N e w s   r e v i e w s      s p l i t� I   b s�C��B�C 0 pagegen pageGen� ��� m   c f�� ���  s p r e a d� ��� m   f i�� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m   i l�� ���  8 - 9 _ N e w s R e v i e w� ��A� m   l o�� ���  8�A  �B  �F  �E  � ��� Z   x ����@�?� E  x }��� o   x y�>�> &0 masterstogenerate mastersToGenerate� m   y |�� ��� , N e w s   r e v i e w s      s i n g l e s� k   � ��� ��� I   � ��=��<�= 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ��� " F e a t - N e w s R e v i e w - L� ��� m   � ��� ���  8 _ N e w s R e v i e w� ��;� m   � ��� ���  8�;  �<  � ��:� I   � ��9��8�9 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ��� " F e a t - N e w s R e v i e w - R� ��� m   � ��� ���  9 _ N e w s R e v i e w� ��7� m   � ��� ���  9�7  �8  �:  �@  �?  � ��� l  � ��6�5�4�6  �5  �4  � ��� Z   � ����3�2� E  � ���� o   � ��1�1 &0 masterstogenerate mastersToGenerate� m   � ��� ���  1 5� I   � ��0��/�0 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  F e a t - B l a n k - R� ��� m   � ��� ���  1 5 _ F e a t u r e s� ��.� m   � ��� ���  1 5�.  �/  �3  �2  � ��� l  � ��-�,�+�-  �,  �+  � ��� Z   � ����*�)� E  � ���� o   � ��(�( &0 masterstogenerate mastersToGenerate� m   � ��� ��� 
 1 6 - 1 7� l  � ��� � I   � ��'�&�' 0 pagegen pageGen  m   � � �  s p r e a d  m   � � �		  A r t s - E n t s - S p l i t 

 m   � � �  1 6 - 1 7 _ E n t s - A r t s �% m   � � �  1 6�%  �&  � ( " Create the weekend Ents/Arts page     � D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e�*  �)  �  l  � ��$�#�"�$  �#  �"    Z   �F�!�  E  � � o   � ��� &0 masterstogenerate mastersToGenerate m   � � �  L e t t e r s k   �B  l  � � ! r   � �"#" J   � �$$ %&% m   � �'' �((  M o n d a y& )�) m   � �** �++  W e d n e s d a y�  # o      �� 0 p10_days    = 7 These two lists determine what the page number will be   ! �,, n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e -.- r   �/0/ J   �
11 232 m   � �44 �55  T u e s d a y3 676 m   � �88 �99  T h u r s d a y7 :;: m   � << �==  F r i d a y; >?> m   @@ �AA  S a t u r d a y? B�B m  CC �DD , N o   d a y      w o r k i n g   a h e a d�  0 o      �� 0 p14_days  . EFE l ����  �  �  F G�G Z  BHIJ�H E KLK o  �� 0 p10_days  L o  �� 0 theday theDayI I  $�M�� 0 pagegen pageGenM NON m  PP �QQ  s i n g l eO RSR m  TT �UU  F e a t - L e t t e r s - LS VWV m  XX �YY  1 0 _ L e t t e r sW Z�Z m   [[ �\\  1 0�  �  J ]^] E '*_`_ o  '(�� 0 p14_days  ` o  ()�� 0 theday theDay^ a�a I  ->�b�� 0 pagegen pageGenb cdc m  .1ee �ff  s i n g l ed ghg m  14ii �jj  F e a t - L e t t e r s - Lh klk m  47mm �nn  1 4 _ L e t t e r sl o�o m  7:pp �qq  1 4�  �  �  �  �  �!  �    rsr l GG�
�	��
  �	  �  s tut Z  Gdvw��v E GLxyx o  GH�� &0 masterstogenerate mastersToGeneratey m  HKzz �{{  A r t sw l O`|}~| I  O`��� 0 pagegen pageGen ��� m  PS�� ���  s i n g l e� ��� m  SV�� ���  A r t s - B l a n k - R� ��� m  VY�� ���  1 1 _ A r t s� ��� m  Y\�� ���  1 1�  �  } ( " Create the weekday Arts page (11)   ~ ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )�  �  u ��� l ee�� ���  �   ��  � ���� Z  e�������� E ej��� o  ef���� &0 masterstogenerate mastersToGenerate� m  fi�� ���  A r t s   s p l i t� I  m~������� 0 pagegen pageGen� ��� m  nq�� ���  s p r e a d� ��� m  qt�� ���   A r t s - B l a n k - S p l i t� ��� m  tw�� ���  1 0 - 1 1 _ A r t s� ���� m  wz�� ���  1 0��  ��  ��  ��  ��  ) ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � , & artsGen: Arts-page generation routine   � ��� L   a r t s G e n :   A r t s - p a g e   g e n e r a t i o n   r o u t i n e� ��� i   6 9��� I      ������� 0 artsgen artsGen� ���� o      ���� &0 masterstogenerate mastersToGenerate��  ��  � k     =�� ��� Z     ������� E    ��� o     ���� &0 masterstogenerate mastersToGenerate� m    �� ���  1 6 - 1 7   ( w e e k e n d )� l   ���� I    ������� 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    	�� ���  A r t s - E n t s - S p l i t� ��� m   	 
�� ���  1 6 - 1 7 _ E n t s - A r t s� ���� m   
 �� ���  1 6��  ��  � ( " Create the weekend Ents/Arts page   � ��� D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  � ��� l   ��������  ��  ��  � ��� Z    '������� E   ��� o    ���� &0 masterstogenerate mastersToGenerate� m    �� ���  A r t s   ( p 1 1 )� l   #���� I    #������� 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  A r t s - B l a n k - R� ��� m    �� ���  1 1 _ A r t s� ���� m    �� ���  1 1��  ��  � ( " Create the weekday Arts page (11)   � ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  � ��� l  ( (��������  ��  ��  � ���� Z   ( =������� E  ( +��� o   ( )���� &0 masterstogenerate mastersToGenerate� m   ) *�� ���  A r t s   s p l i t� l  . 9���� I   . 9������� 0 pagegen pageGen�    m   / 0 �  s p r e a d  m   0 1 �   A r t s - B l a n k - S p l i t 	 m   1 2

 �  1 0 - 1 1 _ A r t s	 �� m   2 5 �  1 0��  ��  � + % Creates an Arts split-spread (10-11)   � � J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )��  ��  ��  �  l     ��������  ��  ��    l     ��������  ��  ��    l     ����   0 * sportsGen: Sports-page generation routine    � T   s p o r t s G e n :   S p o r t s - p a g e   g e n e r a t i o n   r o u t i n e �� i   : = I      ������ 0 	sportsgen 	sportsGen �� o      ���� &0 masterstogenerate mastersToGenerate��  ��   k    �   Z     !"����! E    #$# o     ���� &0 masterstogenerate mastersToGenerate$ m    %% �&&  T w o   p a g e s" k    '' ()( I    ��*���� 0 pagegen pageGen* +,+ m    -- �..  s i n g l e, /0/ m    	11 �22  S p r t - B a c k0 343 m   	 
55 �66  1 6 _ B a c k4 7��7 m   
 88 �99  1 6��  ��  ) :��: I    ��;���� 0 pagegen pageGen; <=< m    >> �??  s i n g l e= @A@ m    BB �CC  S p r t - B l a n k - RA DED m    FF �GG  1 5 _ S p o r tE H��H m    II �JJ  1 5��  ��  ��  ��  ��    KLK l   ��������  ��  ��  L MNM Z    UOP����O E   !QRQ o    ���� &0 masterstogenerate mastersToGenerateR m     SS �TT  T h r e e   p a g e sP k   $ QUU VWV I   $ -��X���� 0 pagegen pageGenX YZY m   % &[[ �\\  s i n g l eZ ]^] m   & '__ �``  S p r t - B a c k^ aba m   ' (cc �dd  1 6 _ B a c kb e��e m   ( )ff �gg  1 6��  ��  W hih I   . ?��j���� 0 pagegen pageGenj klk m   / 2mm �nn  s i n g l el opo m   2 5qq �rr  S p r t - B l a n k - Rp sts m   5 8uu �vv  1 5 _ S p o r tt w��w m   8 ;xx �yy  1 5��  ��  i z��z I   @ Q��{���� 0 pagegen pageGen{ |}| m   A D~~ �  s i n g l e} ��� m   D G�� ���  S p r t - B l a n k - L� ��� m   G J�� ���  1 4 _ S p o r t� ���� m   J M�� ���  1 4��  ��  ��  ��  ��  N ��� l  V V��������  ��  ��  � ��� Z   V �������� E  V [��� o   V W���� &0 masterstogenerate mastersToGenerate� m   W Z�� ��� , T h r e e   p a g e s   w i t h   s p l i t� k   ^ ��� ��� I   ^ o������� 0 pagegen pageGen� ��� m   _ b�� ���  s i n g l e� ��� m   b e�� ���  S p r t - B a c k� ��� m   e h�� ���  1 6 _ B a c k� ���� m   h k�� ���  1 6��  ��  � ���� I   p �������� 0 pagegen pageGen� ��� m   q t�� ���  s p r e a d� ��� m   t w�� ���   S p r t - B l a n k - S p l i t� ��� m   w z�� ���  1 4 - 1 5 _ S p o r t� ���� m   z }�� ���  1 4��  ��  ��  ��  ��  � ��� l  � ���������  ��  ��  � ��� Z   � �������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ���  F o u r   p a g e s� k   � ��� ��� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B a c k� ��� m   � ��� ���  2 4 _ B a c k� ���� m   � ��� ���  2 4��  ��  � ��� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B l a n k - R� ��� m   � ��� ���  2 3 _ S p o r t� ���� m   � ��� ���  2 3��  ��  � ��� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B l a n k - L� ��� m   � ��� ���  2 2 _ S p o r t� ���� m   � ��� ���  2 2��  ��  � ���� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e�    m   � � �  S p r t - R a c i n g - R  m   � � �  2 1 _ R a c i n g �� m   � �		 �

  2 1��  ��  ��  ��  ��  �  l  � ���������  ��  ��    Z   ����� E  � � o   � ����� &0 masterstogenerate mastersToGenerate m   � � � * F o u r   p a g e s   w i t h   s p l i t k   �  I   � ������� 0 pagegen pageGen  m   � � �  s i n g l e  m   � � �    S p r t - B a c k !"! m   � �## �$$  2 4 _ B a c k" %��% m   � �&& �''  2 4��  ��   ()( I   ���*���� 0 pagegen pageGen* +,+ m   � �-- �..  s p r e a d, /0/ m   � �11 �22   S p r t - B l a n k - S p l i t0 343 m   � �55 �66  2 2 - 2 3 _ S p o r t4 7��7 m   �88 �99  2 2��  ��  ) :��: I  ��;��� 0 pagegen pageGen; <=< m  
>> �??  s i n g l e= @A@ m  
BB �CC  S p r t - R a c i n g - RA DED m  FF �GG  2 1 _ R a c i n gE H�~H m  II �JJ  2 1�~  �  ��  ��  ��   KLK l �}�|�{�}  �|  �{  L MNM Z  9OP�z�yO E !QRQ o  �x�x &0 masterstogenerate mastersToGenerateR m   SS �TT  R a c i n g   o n l yP I  $5�wU�v�w 0 pagegen pageGenU VWV m  %(XX �YY  s i n g l eW Z[Z m  (+\\ �]]  S p r t - R a c i n g - R[ ^_^ m  +.`` �aa  2 1 _ R a c i n g_ b�ub m  .1cc �dd  2 1�u  �v  �z  �y  N efe l ::�t�s�r�t  �s  �r  f ghg Z  :Wij�q�pi E :?klk o  :;�o�o &0 masterstogenerate mastersToGeneratel m  ;>mm �nn  E x t r a   l e f t   p a g ej I  BS�no�m�n 0 pagegen pageGeno pqp m  CFrr �ss  s i n g l eq tut m  FIvv �ww  S p r t - B l a n k - Lu xyx m  ILzz �{{  L _ X X _ S p o r ty |�l| m  LO}} �~~  0 0�l  �m  �q  �p  h � l XX�k�j�i�k  �j  �i  � ��� Z  Xu���h�g� E X]��� o  XY�f�f &0 masterstogenerate mastersToGenerate� m  Y\�� ���   E x t r a   r i g h t   p a g e� I  `q�e��d�e 0 pagegen pageGen� ��� m  ad�� ���  s i n g l e� ��� m  dg�� ���  S p r t - B l a n k - R� ��� m  gj�� ���  R _ X X _ S p o r t� ��c� m  jm�� ���  0 0�c  �d  �h  �g  � ��� l vv�b�a�`�b  �a  �`  � ��_� Z  v����^�]� E v{��� o  vw�\�\ &0 masterstogenerate mastersToGenerate� m  wz�� ���  E x t r a   s p l i t� I  ~��[��Z�[ 0 pagegen pageGen� ��� m  ��� ���  s p r e a d� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ��� m  ���� ��� " S p l i t _ X X - X X _ S p o r t� ��Y� m  ���� ���  0 0�Y  �Z  �^  �]  �_  ��       �X� K U����������������X  � �W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�W $0 freshpagesfolder freshPagesFolder�V  0 masterdocument masterDocument�U 0 	genprompt 	genPrompt�T 0 list_position  �S "0 create_pagedate create_pageDate�R "0 create_filedate create_fileDate�Q 0 pagegen pageGen�P 0 applymaster applyMaster�O "0 changelegaldate changeLegalDate�N  0 drawembargobox drawEmbargoBox�M 0 	cleansave 	cleanSave�L 0 customedition customEdition�K 0 newsgen newsGen�J 0 featsgen featsGen�I 0 artsgen artsGen�H 0 	sportsgen 	sportsGen
�G .aevtoappnull  �   � ****� �F ��E�D���C�F 0 	genprompt 	genPrompt�E �B��B �  �A�A 0 desk  �D  � �@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�@ 0 desk  �? 0 months_list  �> 0 	days_list  �= 0 thetitle theTitle�< 0 weekday_pages  �; 0 weekend_pages  �: 0 ahead_pages  �9 0 tomorrow  �8 0 tmday tmDay�7 0 tmdate tmDate�6 0 tmmonth tmMonth�5 0 tmyear tmYear�4 0 theday theDay�3 0 themonth theMonth�2 0 thedate theDate�1 0 theyear theYear�0 0 
prompttext 
promptText�/ &0 masterstogenerate mastersToGenerate� � � � � � � ��.�- ��, ��+�*�) � � � � � � � � � ��(!�'04�&8BLVZ^bfiquy}�������%�������������������
"&*-6:>BFIQUY]aeimqtz�������$�#�"�!� ���������*:���EU`��������������#�1�A��. 
�- 
prmp
�, 
appr�+ 
�* .gtqpchltns    @   @ ns  
�) 
TEXT�( �' 
�& 
bool�% 

�$ .misccurdldt    ��� null�#  Q�
�" 
wkdy
�! 
day 
�  
mnth
� 
year
� 
inSL
� 
rslt
� 
errn���� 0 pagedate pageDate� 0 filedate fileDate
� 
dtxt
� .sysodlogaskr        TEXT
� 
ttxt� "0 create_pagedate create_pageDate� "0 create_filedate create_fileDate� 0 customedition customEdition
� 
ret 
� 
mlsl� 0 newsgen newsGen� 0 featsgen featsGen� 0 	sportsgen 	sportsGen� 0 artsgen artsGen�C"��  ������v����� �&E�Y hO��a a a a a a a a a a a vE�Oa a a a a a  a !vE�O�a " 
 �a # a $&
 �a % a $& ��a &  Ha 'E�Oa (a )a *a +a ,a -a !vE�Oa .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8vE�Y U�a 9  <a :E�Oa ;a <a =a >a ?a @a !vE�Oa Aa Ba Ca Da Ea Fa !vE�Y �a G  
a HE�Y hY ��a I 
 �a J a $& �a K�6FO�a L  aa ME�Oa Na Oa Pa Qa Ra Sa !vE�Oa Ta Ua Va Wa Xa Ya !vE�Oa Za [a \a ]a ^a _a `a aa ba ca 8vE�Y ,�a d  #a eE�Oa fa glvE�Oa ha ia jmvE�Y hY hO*j ka lE�O�a m,�&kvE�O�a n,E�O�a o,�&kvE�O�a p,E�O��a qa r��a ! �&E�O_ sa t  )a ua vlhY hO�a w  a xE` yOa zE` {Y ���a |a r��a ! �&E�O_ sa }  )a ua vlhY hOa ~a ��� �a �,�&E�O_ sa �  )a ua vlhY hOa �a ��� �a �,�&E�O_ sa �  )a ua vlhY hO)������+ �O)������+ �O�a �  
)j+ �Y a �_ �%_ �%a �%E^ O�a �  1��] �a �ea ! E^ O_ sf  )a ua vlhY hY ��a � 1��] �a �ea ! E^ O_ sf  )a ua vlhY hY N�a �  E�a �  a �kvE^ Y .��] �a �ea ! E^ O_ sf  )a ua vlhY hY hO�a �  )] �l+ �Y =�a �  )] �l+ �Y )�a �  )] k+ �Y �a �  )] k+ �Y h� �X��
���	� 0 list_position  � ��� �  ��� 0 	this_item  � 0 	this_list  �
  � ���� 0 	this_item  � 0 	this_list  � 0 i  � ��
� .corecnte****       ****
� 
cobj�	 # !k�j  kh ��/�  �Y h[OY��� � u���������  "0 create_pagedate create_pageDate�� ����� �  ������������ 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  ��  � 	�������������������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  �� (0 thirtyonedaymonths ThirtyOneDayMonths�� "0 thirtydaymonths ThirtyDayMonths�� 0 i  �� 0 secondmonth secondMonth� -����������������������������+/^`bnrv�������������� �� �� 0 pagedate pageDate
�� 
bool
�� .corecnte****       ****
�� 
cobj����������vE�O�����vE�O�� ��%�%�%�%�%�%E` OPYa�a  	 �a  a &	 	��a & I +k�j kh �a �/�  �a �k/E�Y h[OY��Oa �%a %�%a %�%E` OPY ��a  	 �a  a &	 	��a & I +k�j kh �a �/�  �a �k/E�Y h[OY��Oa �%a %�%a %�%E` OPY ��a  	 �a a &	 �a   a & a !�%a "%�%E` OPY c�a # 	 �a $ a &	 �a % a & a &�%a '%�k%E` OPY -�a (  $a )�%a *%�%a +%�k%a ,%�%E` OPY h� ������������� "0 create_filedate create_fileDate�� ����� �  ������������ 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  ��  � 	�������������������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  �� 0 numdate numDate�� 0 i  �� 0 raw_nummonth raw_numMonth�� 0 nummonth numMonth� 
��������7������
�� 
long
�� .corecnte****       ****
�� 
cobj�� 

�� 
ctxt�� �� 0 filedate fileDate�� \��&� 
�%E�Y �E�O "k�j kh ��/�  �E�Y h[OY��O�� 
�%E�Y �E�O��%�[�\[Zm\Z�2%E�� ��d���������� 0 pagegen pageGen�� ����� �  ���������� 0 pagetype pageType�� 0 	themaster 	theMaster�� 0 theslug theSlug�� 0 
pagenumber 
pageNumber��  � ���������� 0 pagetype pageType�� 0 	themaster 	theMaster�� 0 theslug theSlug�� 0 
pagenumber 
pageNumber� ������������������������
�� .aevtodocnull  �    alis�� 0 applymaster applyMaster��  0 drawembargobox drawEmbargoBox
�� 
bool�� "0 changelegaldate changeLegalDate�� 0 	cleansave 	cleanSave
�� 
pacd
�� 
svop
�� savoyes 
�� .CoReclosnull���     obj �� Y� Ub  j O)���m+ O�� )�k+ Y hO�� 
 �� �& )�k+ Y hO)��l+ 	O*�, 	*��l UU� ������������� 0 applymaster applyMaster�� ����� �  �������� 0 	themaster 	theMaster�� 0 pagetype pageType�� 0 
pagenumber 
pageNumber��  � �������� 0 	themaster 	theMaster�� 0 pagetype pageType�� 0 
pagenumber 
pageNumber� ,����������������������������������'4BK����������blx����������
�� 
pacd
�� 
mspr
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
cobj�  
�� 
pilr
�� 
pnam��  ��  
�� 
kocl
�� 
sprd
�� 
prdt�� 
�� .corecrel****      � null
�� 
TEXT�����*�,���  �*�/*�k/�,FO�� *�/��/�*�k/l 
O�*�k/��/�,FO )*�k/�,�-a [a ,a ,\Za 81�*�k/l 
W X  hO�a  %*�/�a /�*�k/l 
O�*�k/�a /�,FY hY hY�a  *a a a �*�/la  O�a  �*�/�a  /�*�l/l 
O*�/�a !/�*�m/l 
O�*�l/�a "/�,FO�*�m/�a #/�,FO N*�l/�,�-a [a ,a ,\Za $81�*�l/l 
O*�m/�,�-a [a ,a ,\Za %81�*�m/l 
W X  hO�a & L*�/�a '/�*�l/l 
O*�/�a (/�*�m/l 
O�*�l/�a )/�,FO�ka *&*�m/�a +/�,FY hY hY hUU� ������������ "0 changelegaldate changeLegalDate�� ����� �  ���� 0 	themaster 	theMaster��  � ���� 0 	themaster 	theMaster� `��$����.��������<��CN\
�� 
pacd
�� 
mspr
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt�� X� T*�, M��  !*�/��/�*�k/l O�*�k/��/�,FY (��  !*�/��/�*�l/l O�*�l/��/�,FY hUU� ��m����������  0 drawembargobox drawEmbargoBox�� ����� �  ���� 0 pagetype pageType��  � ������ 0 pagetype pageType�� 0 ebox eBox� ��y�~�}�|�{�z�����y�x��w�v��u�t���
� 
docu
�~ 
page
�} 
kocl
�| 
txtf
�{ 
prdt
�z 
gbnd�y 
�x 
pcnt
�w .corecrel****      � null
�v 
ObSt
�u 
aobs
�t 
plck�� �� �*�k/ ���  9*�k/ *���������v���� E�UO*a a /�a ,FOe�a ,FY D�a   ;*�l/ *���������v�a �� E�UO*a a /�a ,FOe�a ,FY hUU� �s��r�q���p�s 0 	cleansave 	cleanSave�r �o��o �  �n�m�n 0 
pagenumber 
pageNumber�m 0 theslug theSlug�q  � �l�k�l 0 
pagenumber 
pageNumber�k 0 theslug theSlug� 	Q�j�i	 �h			�g	%	'�f	:�e	L�d	N�c
�j 
pacd
�i 
layr
�h 
plck
�g 
pacl
�f 
zero
�e 
kfil�d 0 filedate fileDate
�c .CoResavedocu        obj �p `� \*�, Ue*��/�,FOe*��/�,FO�*�,FO�l#j  ��lv*�,FY �l#k  ��lv*�,FY hO*�b   �%�%�%�%l UU� �b	^�a�`���_�b 0 customedition customEdition�a  �`  � �^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�^ 0 
human_list  �] 0 masters_list  �\ 0 
slugs_list  �[ 0 singles_list  �Z 0 spreads_list  �Y 0 hashline hashLine�X 0 thestart theStart�W 0 theend theEnd�V 0 x  �U 0 searchresult searchResult�T 0 
pagenumber 
pageNumber�S 0 hmaster hMaster�R 0 listpos listPos�Q 0 	themaster 	theMaster�P 0 pagetype pageType�O 0 theslug theSlug� �		�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�



�N

 
$
(
,
0
4
8
<
@
D
H
L
P
T
X
\
`
d
h
l
p
t
x
|
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
�	!%)-159=AEHX\`dhlptx|���������������M��������������L�K�J�I�H�G�F�E�D�C�B�A<�@�?�>Q�=^�<l�;�:����������9��8�N %�M �L 
�K 
TxtW
�J 
ctxt
�I 
Opts
�H 
SMod
�G SModGrep
�F 
STop�E 
�D .R*chFindMtch���     TEXT
�C 
MSpc
�B 
SLin
�A 
ELin
�@ 
FnIn
�? 
clin
�> 
RplP
�= .R*chGSubutxt    ��� null
�< 
MTxt�; 0 list_position  
�: 
cobj
�9 
bool�8 0 pagegen pageGen�_�����������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %vE�Oa &a 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja %vE�Oa Ka La Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fa ga ha ia ja ka la ma na oa %vE�Oa pa qa ra sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �vE�Oa �a �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa �8*a �k/a �k/)a �a �a �a �a �ea �l �E�O�a �,a �,kE�O*a �,E�O �kh a �a �*a ��/a �a �a �la � �E�O*a �a �l �E�O*a �a �l �E�O�a �,a � �)��l+ �E�O�a ��/E�O�� 
a �E�Y �� 
a �E�Y hO�a �  �a �%�a ��/%E�Y $�a �  �a �%�k%a �%�a ��/%E�Y hO�a � 
 �a � a �& 
a �E�Y hO)����a �+ �OPY h[OY�OPUU� �7�6�5���4�7 0 newsgen newsGen�6 �3��3 �  �2�1�2 &0 masterstogenerate mastersToGenerate�1 0 theday theDay�5  � �0�/�.�-�0 &0 masterstogenerate mastersToGenerate�/ 0 theday theDay�. 0 p10_days  �- 0 p14_days  � b%/7;?B�,�+IOSWZeptx{������������������������� 
",38<@CIOSWZdqt~�������������������������, �+ 0 pagegen pageGen�4�� �� *�����+ Y ��  *�����+ Y hO�� $*��a a �+ O*a a a a �+ Y *a a a a �+ O�a  (*a a a a �+ O*a a  a !a "�+ Y *a #a $a %a &�+ O�a ' (*a (a )a *a +�+ O*a ,a -a .a /�+ Y *a 0a 1a 2a 3�+ Y hO�a 4 >�a 5 *a 6a 7a 8a 9�+ Y �a :  *a ;a <a =a >�+ Y hY hO�a ? Va @a AlvE�Oa Ba Ca Da E�vE�O�� *a Fa Ga Ha I�+ Y �� *a Ja Ka La M�+ Y hY hO�a N *a Oa Pa Qa R�+ Y hO�a S *a Ta Ua Va W�+ Y hO�a X *a Ya Za [a \�+ Y hO�a ] *a ^a _a `a a�+ Y h� �*+�)�(���'�* 0 featsgen featsGen�) �&��& �  �%�$�% &0 masterstogenerate mastersToGenerate�$ 0 theday theDay�(  � �#�"�!� �# &0 masterstogenerate mastersToGenerate�" 0 theday theDay�! 0 p10_days  �  0 p14_days  � I7>CGKN��SW[^hmqux�������������������������'*48<@C�PTX[eimpz���������� � 0 pagegen pageGen� �'���  ��  *�����+ Y *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a  (*a a a a �+ O*a  a !a "a #�+ Y hO�a $ *a %a &a 'a (�+ Y hO�a ) *a *a +a ,a -�+ Y hO�a . [a /a 0lvE�Oa 1a 2a 3a 4a 5a 6vE�O�� *a 7a 8a 9a :�+ Y �� *a ;a <a =a >�+ Y hY hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y h� �������� 0 artsgen artsGen� ��� �  �� &0 masterstogenerate mastersToGenerate�  � �� &0 masterstogenerate mastersToGenerate� �������������
� � 0 pagegen pageGen� >�� *�����+ Y hO�� *�����+ Y hO�� *���a �+ Y h� ������� 0 	sportsgen 	sportsGen� ��� �  �� &0 masterstogenerate mastersToGenerate�  � �� &0 masterstogenerate mastersToGenerate� S%-158��>BFIS[_cfmqux~��������������������������	#&-158>BFISX\`cmrvz}����������� � 0 pagegen pageGen���� *�����+ O*�����+ Y hO�� 2*�����+ O*a a a a �+ O*a a a a �+ Y hO�a  (*a a a a �+ O*a a a a  �+ Y hO�a ! L*a "a #a $a %�+ O*a &a 'a (a )�+ O*a *a +a ,a -�+ O*a .a /a 0a 1�+ Y hO�a 2 :*a 3a 4a 5a 6�+ O*a 7a 8a 9a :�+ O*a ;a <a =a >�+ Y hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y hO�a I *a Ja Ka La M�+ Y hO�a N *a Oa Pa Qa R�+ Y h� �
��	����
�
 .aevtoappnull  �   � ****� k     5��  `��  m��  w��  ���  �	  �  �  � 
 k��� t�� �� ��
� elnteNvr
� 
pScr
� 
UIAc� 0 	genprompt 	genPrompt
� elnteInA
�  .miscactvnull��� ��� obj 
�� .aevtodocnull  �    alis� 6� 	�*�,�,FUO*�k+ O� 	�*�,�,FUO� *j Ob   j 	U ascr  ��ޭ