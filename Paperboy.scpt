FasdUAS 1.101.10   ��   ��    k             l     ��  ��    : 4	Paperboy, a better Morning Star news-page generator     � 	 	 h 	 P a p e r b o y ,   a   b e t t e r   M o r n i n g   S t a r   n e w s - p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��    " 	Created on			June 15th 2012     �   8 	 C r e a t e d   o n 	 	 	 J u n e   1 5 t h   2 0 1 2      l     ��  ��    # 	Last updated		June 16th 2012     �   : 	 L a s t   u p d a t e d 	 	 J u n e   1 6 t h   2 0 1 2      l     ��������  ��  ��        l      ��   ��    � � Description: This generates the pages needed by the subs desk - news pages and a few others. It has a different name because it�s written in a very different way to previous scripts and isn�t finished.      � ! !�   D e s c r i p t i o n :   T h i s   g e n e r a t e s   t h e   p a g e s   n e e d e d   b y   t h e   s u b s   d e s k   -   n e w s   p a g e s   a n d   a   f e w   o t h e r s .   I t   h a s   a   d i f f e r e n t   n a m e   b e c a u s e   i t  s   w r i t t e n   i n   a   v e r y   d i f f e r e n t   w a y   t o   p r e v i o u s   s c r i p t s   a n d   i s n  t   f i n i s h e d .   " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   & t n	Status: As of 06/15/12 - Feature complete (as far as I can tell) but could do with a bit more documentation.	    ' � ( ( � 	 S t a t u s :   A s   o f   0 6 / 1 5 / 1 2   -   F e a t u r e   c o m p l e t e   ( a s   f a r   a s   I   c a n   t e l l )   b u t   c o u l d   d o   w i t h   a   b i t   m o r e   d o c u m e n t a t i o n . 	 %  ) * ) l     ��������  ��  ��   *  + , + l      �� - .��   - Z T	Testing: Seems to work fine in CS4. Not every combination has been tested, though.     . � / / � 	 T e s t i n g :   S e e m s   t o   w o r k   f i n e   i n   C S 4 .   N o t   e v e r y   c o m b i n a t i o n   h a s   b e e n   t e s t e d ,   t h o u g h .   ,  0 1 0 l     ��������  ��  ��   1  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6 D > Global variables that are needed in handlers at some point --    7 � 8 8 |   G l o b a l   v a r i a b l e s   t h a t   a r e   n e e d e d   i n   h a n d l e r s   a t   s o m e   p o i n t   - - 5  9 : 9 p       ; ; ������ 0 theday theDay��   :  < = < p       > > ������ 0 themonth theMonth��   =  ? @ ? p       A A ������ 0 thedate theDate��   @  B C B p       D D ������ 0 theyear theYear��   C  E F E p       G G ������ 0 months_list  ��   F  H I H l      J K L J p       M M ������ 0 fileslug fileSlug��   K > 8 The short code used at the start of the new file�s name    L � N N p   T h e   s h o r t   c o d e   u s e d   a t   t h e   s t a r t   o f   t h e   n e w   f i l e  s   n a m e I  O P O l      Q R S Q p       T T ������ 0 filedate fileDate��   R 5 / The short date used to name the InDesign files    S � U U ^   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s P  V W V l      X Y Z X p       [ [ ������ 0 pagedate pageDate��   Y 6 0 The full date used in the InDesign page�s folio    Z � \ \ `   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o W  ] ^ ] l      _ ` a _ p       b b ������ $0 freshpagesfolder freshPagesFolder��   ` . ( Where the newly created files are saved    a � c c P   W h e r e   t h e   n e w l y   c r e a t e d   f i l e s   a r e   s a v e d ^  d e d l      f g h f p       i i ������  0 masterdocument masterDocument��   g * $ The actual InDesign master document    h � j j H   T h e   a c t u a l   I n D e s i g n   m a s t e r   d o c u m e n t e  k l k l      m n o m p       p p ������ 0 
mastername 
masterName��   n C = The name of the master page/spread to be applied in InDesign    o � q q z   T h e   n a m e   o f   t h e   m a s t e r   p a g e / s p r e a d   t o   b e   a p p l i e d   i n   I n D e s i g n l  r s r l     ��������  ��  ��   s  t u t l     ��������  ��  ��   u  v w v l     �� x y��   x   Unchanging variables --    y � z z 0   U n c h a n g i n g   v a r i a b l e s   - - w  { | { l     }���� } r      ~  ~ m      � � � � � j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s :  o      ���� $0 freshpagesfolder freshPagesFolder��  ��   |  � � � l    ����� � r     � � � m     � � � � � p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d � o      ����  0 masterdocument masterDocument��  ��   �  � � � l     ��������  ��  ��   �  � � � l    ����� � r     � � � J     � �  � � � m    	 � � � � �  N e w s      s i n g l e s �  � � � m   	 
 � � � � �  N e w s      s p l i t s �  � � � m   
  � � � � � & N e w s      2 - 3   a s   s p l i t �  � � � m     � � � � � & N e w s      4 - 5   a s   s p l i t �  � � � m     � � � � � & N e w s      6 - 7   a s   s p l i t �  � � � m     � � � � �  T V �  ��� � m     � � � � �  L e t t e r s��   � o      ���� 0 weekday_pages  ��  ��   �  � � � l   4 ����� � r    4 � � � J    0 � �  � � � m     � � � � �  N e w s      s i n g l e s �  � � � m     � � � � �  N e w s      s p l i t s �  � � � m     � � � � � & N e w s      2 - 3   a s   s p l i t �  � � � m     � � � � � & N e w s      4 - 5   a s   s p l i t �  � � � m     � � � � � & N e w s      6 - 7   a s   s p l i t �  � � � m      � � � � �  T V �  � � � m     # � � � � �  L e t t e r s �  � � � m   # & � � � � �  S t r u g g l e �  � � � m   & ) � � � � �  S i n g l e   s t r u g g l e �  ��� � m   ) , � � � � �  R e d   L i s t��   � o      ���� 0 weekend_pages  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  5 O ����� � r   5 O � � � J   5 K � �  � � � m   5 8 � � � � �  M o n d a y �  � � � m   8 ; � � � � �  T u e s d a y �  � � � m   ; > � � � � �  W e d n e s d a y �  � � � m   > A � � � � �  T h u r s d a y �  � � � m   A D � � � � �  F r i d a y �  ��� � m   D G � � � � �  S a t u r d a y��   � o      ���� 0 	days_list  ��  ��   �  � � � l  P | ����� � r   P | � � � J   P x � �  � � � m   P S   �  J a n u a r y �  m   S V �  F e b r u a r y  m   V Y �		 
 M a r c h 

 m   Y \ � 
 A p r i l  m   \ _ �  M a y  m   _ b �  J u n e  m   b e �  J u l y  m   e h �  A u g u s t  m   h k   �!!  S e p t e m b e r "#" m   k n$$ �%%  O c t o b e r# &'& m   n q(( �))  N o v e m b e r' *��* m   q t++ �,,  D e c e m b e r��   � o      ���� 0 months_list  ��  ��   � -.- l     ��������  ��  ��  . /0/ l     ��������  ��  ��  0 121 l     ��34��  3   User prompts --   4 �55     U s e r   p r o m p t s   - -2 676 l     ��������  ��  ��  7 898 l      ��:;��  :  Get the date    ; �<<  G e t   t h e   d a t e  9 =>= l  } �?����? r   } �@A@ c   } �BCB l  } �D����D I  } ���EF
�� .gtqpchltns    @   @ ns  E o   } ����� 0 	days_list  F ��GH
�� 
prmpG m   � �II �JJ 8 P l e a s e   p i c k   t h e   e d i t i o n   d a y :H ��K��
�� 
apprK m   � �LL �MM ( N e w s   p a g e s   g e n e r a t o r��  ��  ��  C m   � ���
�� 
TEXTA o      ���� 0 theday theDay��  ��  > NON l  � �P����P Z  � �QR����Q =  � �STS 1   � ���
�� 
rsltT m   � �UU �VV 
 f a l s eR R   � �����W
�� .ascrerr ****      � ****��  W ��X��
�� 
errnX m   � ���������  ��  ��  ��  ��  O YZY l  � �[����[ r   � �\]\ c   � �^_^ l  � �`����` I  � ���ab
�� .gtqpchltns    @   @ ns  a o   � ����� 0 months_list  b ��cd
�� 
prmpc m   � �ee �ff , P l e a s e   p i c k   t h e   m o n t h :d ��g��
�� 
apprg m   � �hh �ii ( N e w s   p a g e s   g e n e r a t o r��  ��  ��  _ m   � ���
�� 
TEXT] o      ���� 0 themonth theMonth��  ��  Z jkj l  � �l���l Z  � �mn�~�}m =  � �opo 1   � ��|
�| 
rsltp m   � �qq �rr 
 f a l s en R   � ��{�zs
�{ .ascrerr ****      � ****�z  s �yt�x
�y 
errnt m   � ��w�w���x  �~  �}  ��  �  k uvu l  �w�v�uw r   �xyx c   �z{z l  �|�t�s| n   �}~} 1   �r
�r 
ttxt~ l  � �q�p I  � �o��
�o .sysodlogaskr        TEXT� m   � ��� ��� * P l e a s e   t y p e   t h e   d a t e :� �n��
�n 
dtxt� m   � ��� ���  � �m��l
�m 
appr� m   � ��� ��� ( N e w s   p a g e s   g e n e r a t o r�l  �q  �p  �t  �s  { m  �k
�k 
TEXTy o      �j�j 0 thedate theDate�v  �u  v ��� l %��i�h� Z %���g�f� = ��� 1  �e
�e 
rslt� m  �� ��� 
 f a l s e� R  !�d�c�
�d .ascrerr ****      � ****�c  � �b��a
�b 
errn� m  �`�`���a  �g  �f  �i  �h  � ��� l &G��_�^� r  &G��� c  &C��� l &?��]�\� n  &?��� 1  ;?�[
�[ 
ttxt� l &;��Z�Y� I &;�X��
�X .sysodlogaskr        TEXT� m  &)�� ��� * P l e a s e   t y p e   t h e   y e a r :� �W��
�W 
dtxt� m  ,/�� ���  � �V��U
�V 
appr� m  25�� ��� ( N e w s   p a g e s   g e n e r a t o r�U  �Z  �Y  �]  �\  � m  ?B�T
�T 
TEXT� o      �S�S 0 theyear theYear�_  �^  � ��� l H`��R�Q� Z H`���P�O� = HO��� 1  HK�N
�N 
rslt� m  KN�� ��� 
 f a l s e� R  R\�M�L�
�M .ascrerr ****      � ****�L  � �K��J
�K 
errn� m  VY�I�I���J  �P  �O  �R  �Q  � ��� l     �H�G�F�H  �G  �F  � ��� l      �E���E  �  Get the pages to create   � ��� . G e t   t h e   p a g e s   t o   c r e a t e� ��� l a���D�C� Z  a�����B� > ah��� o  ad�A�A 0 theday theDay� m  dg�� ���  S a t u r d a y� k  k��� ��� r  k���� l k���@�?� I k��>��
�> .gtqpchltns    @   @ ns  � o  kl�=�= 0 weekday_pages  � �<��
�< 
prmp� l o~��;�:� b  o~��� b  oz��� b  ov��� m  or�� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  ru�9
�9 
ret � o  vy�8
�8 
ret � m  z}�� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�;  �:  � �7��
�7 
appr� m  ���� ��� ( N e w s   p a g e s   g e n e r a t o r� �6��5
�6 
mlsl� m  ���4
�4 boovtrue�5  �@  �?  � o      �3�3 &0 masterstogenerate mastersToGenerate� ��2� Z �����1�0� = ����� 1  ���/
�/ 
rslt� m  ���.
�. boovfals� R  ���-�,�
�- .ascrerr ****      � ****�,  � �+��*
�+ 
errn� m  ���)�)���*  �1  �0  �2  � ��� = ����� o  ���(�( 0 theday theDay� m  ���� ���  S a t u r d a y� ��'� k  ���� ��� r  ����� l ����&�%� I ���$��
�$ .gtqpchltns    @   @ ns  � o  ���#�# 0 weekend_pages  � �"��
�" 
prmp� l ����!� � b  ����� b  ����� b  ��� � m  �� � D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?  o  ���
� 
ret � o  ���
� 
ret � m  �� � X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�!  �   � �
� 
appr m  �� � ( N e w s   p a g e s   g e n e r a t o r �	�
� 
mlsl	 m  ���
� boovtrue�  �&  �%  � o      �� &0 masterstogenerate mastersToGenerate� 
�
 Z ���� = �� 1  ���
� 
rslt m  ���
� boovfals R  ����
� .ascrerr ****      � ****�   ��
� 
errn m  �������  �  �  �  �'  �B  �D  �C  �  l     ����  �  �    l     ��
�	�  �
  �	    l     ��     Create the date --    � &   C r e a t e   t h e   d a t e   - -  l     ����  �  �    l � �� I  � ��� � "0 create_pagedate create_pageDate�  �   �  �     l     ��������  ��  ��    !"! l #����# I  �������� "0 create_filedate create_fileDate��  ��  ��  ��  " $%$ l     ��������  ��  ��  % &'& l     ��������  ��  ��  ' ()( l     ��*+��  *   Generate the pages --   + �,, ,   G e n e r a t e   t h e   p a g e s   - -) -.- l     ��������  ��  ��  . /0/ l O1����1 Z  O23����2 E 454 o  
���� &0 masterstogenerate mastersToGenerate5 m  
66 �77  N e w s      s i n g l e s3 k  K88 9:9 l ��������  ��  ��  : ;<; Z  �=>?��= > @A@ o  ���� 0 theday theDayA m  BB �CC  S a t u r d a y> l XDEFD k  XGG HIH r  "JKJ m  LL �MM  N e w s - F r o n tK o      ���� 0 
mastername 
masterNameI NON r  #*PQP m  #&RR �SS  1 _ F r o n tQ o      ���� 0 fileslug fileSlugO T��T O  +XUVU k  1WWW XYX I 16��Z��
�� .aevtodocnull  �    alisZ o  12����  0 masterdocument masterDocument��  Y [\[ n 7<]^] I  8<�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  ^  f  78\ _`_ n =Baba I  >B�������� 0 clean_save_r clean_save_R��  ��  b  f  =>` c��c O CWded I KV����f
�� .CoReclosnull���     obj ��  f ��g��
�� 
svopg m  OR��
�� savoyes ��  e l CHh����h 1  CH��
�� 
pacd��  ��  ��  V m  +.ii
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  E ; 5 If block to create the weekday or weekend front page   F �jj j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e? klk = [bmnm o  [^���� 0 theday theDayn m  ^aoo �pp  S a t u r d a yl q��q k  e�rr sts r  eluvu m  ehww �xx $ N e w s - W e e k e n d   f r o n tv o      ���� 0 
mastername 
masterNamet yzy r  mt{|{ m  mp}} �~~  1 _ F r o n t| o      ���� 0 fileslug fileSlugz �� O  u���� k  {��� ��� I {������
�� .aevtodocnull  �    alis� o  {|����  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_r clean_save_R��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  ux��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  ��  ��  < ��� l ����������  ��  ��  � ��� Z  �������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ��� & N e w s      2 - 3   a s   s p l i t� l ������ k  ���� ��� r  ����� m  ���� ���  N e w s - H o m e - S p l i t� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  2 - 3 _ H o m e� o      ���� 0 fileslug fileSlug� ���� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_spread changePageNumber_spread� ���� m  ���� ���  2��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  � 8 2 If block to create 2-3 as a split or single pages   � ��� d   I f   b l o c k   t o   c r e a t e   2 - 3   a s   a   s p l i t   o r   s i n g l e   p a g e s��  � k  ���� ��� r  ���� m  ���� ���  N e w s - H o m e - L S� o      ���� 0 
mastername 
masterName� ��� r  	��� m  �� ���  2 _ H o m e� o      ���� 0 fileslug fileSlug� ��� O  
@��� k  ?�� ��� I �����
�� .aevtodocnull  �    alis� o  ����  0 masterdocument masterDocument��  � ��� n ��� I  �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  � ��� n $��� I  $������� 20 changepagenumber_single changePageNumber_single� ���� m   �� ���  2��  ��  �  f  � ��� n %*��� I  &*�������� 0 clean_save_l clean_save_L��  ��  �  f  %&� ���� O +?��� I 3>�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  7:��
�� savoyes ��  � l +0������ 1  +0��
�� 
pacd��  ��  ��  � m  
��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � ��� l AA��������  ��  ��  � ��� r  AH� � m  AD �  N e w s - H o m e - R S  o      ���� 0 
mastername 
masterName�  r  IP m  IL �  3 _ H o m e o      �� 0 fileslug fileSlug 	�~	 O  Q�

 k  W�  I W\�}�|
�} .aevtodocnull  �    alis o  WX�{�{  0 masterdocument masterDocument�|    n ]b I  ^b�z�y�x�z >0 applymaster_changedate_single applyMaster_changeDate_single�y  �x    f  ]^  n ck I  dk�w�v�w 20 changepagenumber_single changePageNumber_single �u m  dg �  3�u  �v    f  cd  n lq I  mq�t�s�r�t 0 clean_save_r clean_save_R�s  �r    f  lm  �q  O r�!"! I z��p�o#
�p .CoReclosnull���     obj �o  # �n$�m
�n 
svop$ m  ~��l
�l savoyes �m  " l rw%�k�j% 1  rw�i
�i 
pacd�k  �j  �q   m  QT&&
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �~  � '(' l ���h�g�f�h  �g  �f  ( )*) Z  �h+,�e-+ E ��./. o  ���d�d &0 masterstogenerate mastersToGenerate/ m  ��00 �11 & N e w s      4 - 5   a s   s p l i t, l ��2342 k  ��55 676 r  ��898 m  ��:: �;;  N e w s - H o m e - S p l i t9 o      �c�c 0 
mastername 
masterName7 <=< r  ��>?> m  ��@@ �AA  4 - 5 _ H o m e? o      �b�b 0 fileslug fileSlug= B�aB O  ��CDC k  ��EE FGF I ���`H�_
�` .aevtodocnull  �    alisH o  ���^�^  0 masterdocument masterDocument�_  G IJI n ��KLK I  ���]�\�[�] >0 applymaster_changedate_spread applyMaster_changeDate_spread�\  �[  L  f  ��J MNM n ��OPO I  ���ZQ�Y�Z 20 changepagenumber_spread changePageNumber_spreadQ R�XR m  ��SS �TT  4�X  �Y  P  f  ��N UVU n ��WXW I  ���W�V�U�W 0 clean_save_l clean_save_L�V  �U  X  f  ��V Y�TY O ��Z[Z I ���S�R\
�S .CoReclosnull���     obj �R  \ �Q]�P
�Q 
svop] m  ���O
�O savoyes �P  [ l ��^�N�M^ 1  ���L
�L 
pacd�N  �M  �T  D m  ��__
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �a  3 8 2 If block to create 4-5 as a split or single pages   4 �`` d   I f   b l o c k   t o   c r e a t e   4 - 5   a s   a   s p l i t   o r   s i n g l e   p a g e s�e  - k  �haa bcb r  ��ded m  ��ff �gg  N e w s - H o m e - L Se o      �K�K 0 
mastername 
masterNamec hih r  ��jkj m  ��ll �mm  4 _ H o m ek o      �J�J 0 fileslug fileSlugi non O  �!pqp k  � rr sts I ���Iu�H
�I .aevtodocnull  �    alisu o  ���G�G  0 masterdocument masterDocument�H  t vwv n ��xyx I  ���F�E�D�F >0 applymaster_changedate_single applyMaster_changeDate_single�E  �D  y  f  ��w z{z n �|}| I  ��C~�B�C 20 changepagenumber_single changePageNumber_single~ �A m  ��� ���  4�A  �B  }  f  ��{ ��� n ��� I  �@�?�>�@ 0 clean_save_l clean_save_L�?  �>  �  f  � ��=� O  ��� I �<�;�
�< .CoReclosnull���     obj �;  � �:��9
�: 
svop� m  �8
�8 savoyes �9  � l ��7�6� 1  �5
�5 
pacd�7  �6  �=  q m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  o ��� l ""�4�3�2�4  �3  �2  � ��� r  ")��� m  "%�� ���  N e w s - H o m e - R S� o      �1�1 0 
mastername 
masterName� ��� r  *1��� m  *-�� ���  5 _ H o m e� o      �0�0 0 fileslug fileSlug� ��/� O  2h��� k  8g�� ��� I 8=�.��-
�. .aevtodocnull  �    alis� o  89�,�,  0 masterdocument masterDocument�-  � ��� n >C��� I  ?C�+�*�)�+ >0 applymaster_changedate_single applyMaster_changeDate_single�*  �)  �  f  >?� ��� n DL��� I  EL�(��'�( 20 changepagenumber_single changePageNumber_single� ��&� m  EH�� ���  5�&  �'  �  f  DE� ��� n MR��� I  NR�%�$�#�% 0 clean_save_r clean_save_R�$  �#  �  f  MN� ��"� O Sg��� I [f�!� �
�! .CoReclosnull���     obj �   � ���
� 
svop� m  _b�
� savoyes �  � l SX���� 1  SX�
� 
pacd�  �  �"  � m  25��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �/  * ��� l ii����  �  �  � ��� Z  iI����� E ip��� o  il�� &0 masterstogenerate mastersToGenerate� m  lo�� ��� & N e w s      6 - 7   a s   s p l i t� l s����� k  s��� ��� r  sz��� m  sv�� ��� $ N e w s - F o r e i g n - S p l i t� o      �� 0 
mastername 
masterName� ��� r  {���� m  {~�� ���  6 - 7 _ F o r e i g n� o      �� 0 fileslug fileSlug� ��� O  ����� k  ���� ��� I �����
� .aevtodocnull  �    alis� o  ����  0 masterdocument masterDocument�  � ��� n ����� I  ������ >0 applymaster_changedate_spread applyMaster_changeDate_spread�  �  �  f  ��� ��� n ����� I  �����
� 20 changepagenumber_spread changePageNumber_spread� ��	� m  ���� ���  6�	  �
  �  f  ��� ��� n ����� I  ������ 0 clean_save_l clean_save_L�  �  �  f  ��� ��� O ����� I �����
� .CoReclosnull���     obj �  � ���
� 
svop� m  ��� 
�  savoyes �  � l �������� 1  ����
�� 
pacd��  ��  �  � m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �  � 8 2 If block to create 6-7 as a split or single pages   � ��� d   I f   b l o c k   t o   c r e a t e   6 - 7   a s   a   s p l i t   o r   s i n g l e   p a g e s�  � k  �I�� ��� r  ����� m  ���� ���  N e w s - F o r e i g n - L S� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  6 _ F o r e i g n� o      ���� 0 fileslug fileSlug�    O  � k  �  I ������
�� .aevtodocnull  �    alis o  ������  0 masterdocument masterDocument��   	 n ��

 I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��    f  ��	  n �� I  �������� 20 changepagenumber_single changePageNumber_single �� m  �� �  6��  ��    f  ��  n �� I  ���������� 0 clean_save_l clean_save_L��  ��    f  �� �� O � I � ����
�� .CoReclosnull���     obj ��   ����
�� 
svop m  ����
�� savoyes ��   l ������ 1  ����
�� 
pacd��  ��  ��   m  ��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��     l ��������  ��  ��    !"! r  
#$# m  %% �&&  N e w s - F o r e i g n - R S$ o      ���� 0 
mastername 
masterName" '(' r  )*) m  ++ �,,  7 _ F o r e i g n* o      ���� 0 fileslug fileSlug( -��- O  I./. k  H00 121 I ��3��
�� .aevtodocnull  �    alis3 o  ����  0 masterdocument masterDocument��  2 454 n $676 I   $�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  7  f   5 898 n %-:;: I  &-��<���� 20 changepagenumber_single changePageNumber_single< =��= m  &)>> �??  7��  ��  ;  f  %&9 @A@ n .3BCB I  /3�������� 0 clean_save_r clean_save_R��  ��  C  f  ./A D��D O 4HEFE I <G����G
�� .CoReclosnull���     obj ��  G ��H��
�� 
svopH m  @C��
�� savoyes ��  F l 49I����I 1  49��
�� 
pacd��  ��  ��  / m  JJ
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  � K��K l JJ��������  ��  ��  ��  ��  ��  ��  ��  0 LML l     ��������  ��  ��  M NON l     ��������  ��  ��  O PQP l P�R����R Z  P�ST����S E PWUVU o  PS���� &0 masterstogenerate mastersToGenerateV m  SVWW �XX  N e w s      s p l i t sT k  Z�YY Z[Z l ZZ��������  ��  ��  [ \]\ Z  Z�^_`��^ > Zaaba o  Z]���� 0 theday theDayb m  ]`cc �dd  S a t u r d a y_ l d�efge k  d�hh iji r  dkklk m  dgmm �nn  N e w s - F r o n tl o      ���� 0 
mastername 
masterNamej opo r  lsqrq m  loss �tt  1 _ F r o n tr o      ���� 0 fileslug fileSlugp u��u O  t�vwv k  z�xx yzy I z��{��
�� .aevtodocnull  �    alis{ o  z{����  0 masterdocument masterDocument��  z |}| n ��~~ I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��    f  ��} ��� n ����� I  ���������� 0 clean_save_r clean_save_R��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  w m  tw��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  f ; 5 If block to create the weekday or weekend front page   g ��� j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e` ��� = ����� o  ������ 0 theday theDay� m  ���� ���  S a t u r d a y� ���� k  ���� ��� r  ����� m  ���� ��� $ N e w s - W e e k e n d   f r o n t� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  1 _ F r o n t� o      ���� 0 fileslug fileSlug� ���� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_r clean_save_R��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  ��  ��  ] ��� l ����������  ��  ��  � ��� l ������ r  ����� m  ���� ���  N e w s - H o m e - S p l i t� o      ���� 0 
mastername 
masterName�   Create 2-3 as a split   � ��� ,   C r e a t e   2 - 3   a s   a   s p l i t� ��� r  ����� m  ���� ���  2 - 3 _ H o m e� o      ���� 0 fileslug fileSlug� ��� O   6��� k  5�� ��� I �����
�� .aevtodocnull  �    alis� o  ����  0 masterdocument masterDocument��  � ��� n ��� I  �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  � ��� n ��� I  ���~� 20 changepagenumber_spread changePageNumber_spread� ��}� m  �� ���  2�}  �~  �  f  � ��� n  ��� I   �|�{�z�| 0 clean_save_l clean_save_L�{  �z  �  f  � ��y� O !5��� I )4�x�w�
�x .CoReclosnull���     obj �w  � �v��u
�v 
svop� m  -0�t
�t savoyes �u  � l !&��s�r� 1  !&�q
�q 
pacd�s  �r  �y  � m   ��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � ��� l 77�p�o�n�p  �o  �n  � ��� l 7>���� r  7>��� m  7:�� ���  N e w s - H o m e - S p l i t� o      �m�m 0 
mastername 
masterName�   Create 4-5 as a split   � ��� ,   C r e a t e   4 - 5   a s   a   s p l i t� ��� r  ?F��� m  ?B�� ���  4 - 5 _ H o m e� o      �l�l 0 fileslug fileSlug� ��� O  G}��� k  M|�� ��� I MR�k �j
�k .aevtodocnull  �    alis  o  MN�i�i  0 masterdocument masterDocument�j  �  n SX I  TX�h�g�f�h >0 applymaster_changedate_spread applyMaster_changeDate_spread�g  �f    f  ST  n Ya I  Za�e	�d�e 20 changepagenumber_spread changePageNumber_spread	 
�c
 m  Z] �  4�c  �d    f  YZ  n bg I  cg�b�a�`�b 0 clean_save_l clean_save_L�a  �`    f  bc �_ O h| I p{�^�]
�^ .CoReclosnull���     obj �]   �\�[
�\ 
svop m  tw�Z
�Z savoyes �[   l hm�Y�X 1  hm�W
�W 
pacd�Y  �X  �_  � m  GJ
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �  l ~~�V�U�T�V  �U  �T    l ~� r  ~�  m  ~�!! �"" $ N e w s - F o r e i g n - S p l i t  o      �S�S 0 
mastername 
masterName   Create 6-7 as a split    �## ,   C r e a t e   6 - 7   a s   a   s p l i t $%$ r  ��&'& m  ��(( �))  6 - 7 _ F o r e i g n' o      �R�R 0 fileslug fileSlug% *+* O  ��,-, k  ��.. /0/ I ���Q1�P
�Q .aevtodocnull  �    alis1 o  ���O�O  0 masterdocument masterDocument�P  0 232 n ��454 I  ���N�M�L�N >0 applymaster_changedate_spread applyMaster_changeDate_spread�M  �L  5  f  ��3 676 n ��898 I  ���K:�J�K 20 changepagenumber_spread changePageNumber_spread: ;�I; m  ��<< �==  6�I  �J  9  f  ��7 >?> n ��@A@ I  ���H�G�F�H 0 clean_save_l clean_save_L�G  �F  A  f  ��? B�EB O ��CDC I ���D�CE
�D .CoReclosnull���     obj �C  E �BF�A
�B 
svopF m  ���@
�@ savoyes �A  D l ��G�?�>G 1  ���=
�= 
pacd�?  �>  �E  - m  ��HH
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  + I�<I l ���;�:�9�;  �:  �9  �<  ��  ��  ��  ��  Q JKJ l     �8�7�6�8  �7  �6  K LML l     �5�4�3�5  �4  �3  M NON l ��P�2�1P Z  ��QR�0�/Q H  ��SS E ��TUT o  ���.�. &0 masterstogenerate mastersToGenerateU m  ��VV �WW  N e w s      s i n g l e sR l ��XYZX Z  ��[\�-�,[ H  ��]] E ��^_^ o  ���+�+ &0 masterstogenerate mastersToGenerate_ m  ��`` �aa  N e w s      s p l i t s\ l ��bcdb k  ��ee fgf l ���*�)�(�*  �)  �(  g hih Z  �5jk�'�&j E ��lml o  ���%�% &0 masterstogenerate mastersToGeneratem m  ��nn �oo & N e w s      2 - 3   a s   s p l i tk k  �1pp qrq l ��stus r  ��vwv m  ��xx �yy  N e w s - H o m e - S p l i tw o      �$�$ 0 
mastername 
masterNamet   Create 2-3 as a split   u �zz ,   C r e a t e   2 - 3   a s   a   s p l i tr {|{ r  ��}~} m  �� ���  2 - 3 _ H o m e~ o      �#�# 0 fileslug fileSlug| ��"� O  �1��� k  0�� ��� I �!�� 
�! .aevtodocnull  �    alis� o  ��  0 masterdocument masterDocument�   � ��� n ��� I  ���� >0 applymaster_changedate_spread applyMaster_changeDate_spread�  �  �  f  � ��� n ��� I  ���� 20 changepagenumber_spread changePageNumber_spread� ��� m  �� ���  2�  �  �  f  � ��� n ��� I  ���� 0 clean_save_l clean_save_L�  �  �  f  � ��� O 0��� I $/���
� .CoReclosnull���     obj �  � ���
� 
svop� m  (+�
� savoyes �  � l !���� 1  !�
� 
pacd�  �  �  � m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �"  �'  �&  i ��� l 66���
�  �  �
  � ��� Z  6����	�� E 6=��� o  69�� &0 masterstogenerate mastersToGenerate� m  9<�� ��� & N e w s      4 - 5   a s   s p l i t� k  @��� ��� l @G���� r  @G��� m  @C�� ���  N e w s - H o m e - S p l i t� o      �� 0 
mastername 
masterName�   Create 4-5 as a split   � ��� ,   C r e a t e   4 - 5   a s   a   s p l i t� ��� r  HO��� m  HK�� ���  4 - 5 _ H o m e� o      �� 0 fileslug fileSlug� ��� O  P���� k  V��� ��� I V[���
� .aevtodocnull  �    alis� o  VW��  0 masterdocument masterDocument�  � ��� n \a��� I  ]a� �����  >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  \]� ��� n bj��� I  cj������� 20 changepagenumber_spread changePageNumber_spread� ���� m  cf�� ���  4��  ��  �  f  bc� ��� n kp��� I  lp�������� 0 clean_save_l clean_save_L��  ��  �  f  kl� ���� O q���� I y������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  }���
�� savoyes ��  � l qv������ 1  qv��
�� 
pacd��  ��  ��  � m  PS��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �  �	  �  � ��� l ����������  ��  ��  � ��� Z  ��������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ��� & N e w s      6 - 7   a s   s p l i t� k  ���� ��� l ������ r  ����� m  ���� ��� $ N e w s - F o r e i g n - S p l i t� o      ���� 0 
mastername 
masterName�   Create 6-7 as a split   � ��� ,   C r e a t e   6 - 7   a s   a   s p l i t� ��� r  ����� m  ���� ���  6 - 7 _ F o r e i g n� o      ���� 0 fileslug fileSlug� ���� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  ��� ��� n ��   I  �������� 20 changepagenumber_spread changePageNumber_spread �� m  �� �  6��  ��    f  ���  n ��	 I  ���������� 0 clean_save_l clean_save_L��  ��  	  f  �� 
��
 O �� I ������
�� .CoReclosnull���     obj ��   ����
�� 
svop m  ����
�� savoyes ��   l ������ 1  ����
�� 
pacd��  ��  ��  � m  ��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  ��  ��  � �� l ����������  ��  ��  ��  c F @ Prevents you creating extra splits if "News � splits" is chosen   d � �   P r e v e n t s   y o u   c r e a t i n g   e x t r a   s p l i t s   i f   " N e w s      s p l i t s "   i s   c h o s e n�-  �,  Y ; 5 This block creates individually chosen split spreads   Z � j   T h i s   b l o c k   c r e a t e s   i n d i v i d u a l l y   c h o s e n   s p l i t   s p r e a d s�0  �/  �2  �1  O  l     ��������  ��  ��    l     ��������  ��  ��    l ������ Z  ������ E �� o  ������ &0 masterstogenerate mastersToGenerate m  �� �    T V Z  ��!"#��! > ��$%$ o  ������ 0 theday theDay% m  ��&& �''  S a t u r d a y" k  �A(( )*) l �+,-+ r  �./. m  �00 �11  F e a t - 1 2 - 1 3/ o      ���� 0 
mastername 
masterName, * $ Create the weekday TV/features page   - �22 H   C r e a t e   t h e   w e e k d a y   T V / f e a t u r e s   p a g e* 343 r  565 m  	77 �88  1 2 - 1 3 _ T V6 o      ���� 0 fileslug fileSlug4 9��9 O  A:;: k  @<< =>= I ��?��
�� .aevtodocnull  �    alis? o  ����  0 masterdocument masterDocument��  > @A@ n BCB I  �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  C  f  A DED n  %FGF I  !%�������� (0 changelegaldate_12 changeLegalDate_12��  ��  G  f   !E HIH n &+JKJ I  '+�������� 0 clean_save_l clean_save_L��  ��  K  f  &'I L��L O ,@MNM I 4?����O
�� .CoReclosnull���     obj ��  O ��P��
�� 
svopP m  8;��
�� savoyes ��  N l ,1Q����Q 1  ,1��
�� 
pacd��  ��  ��  ; m  RR
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  # STS = DKUVU o  DG���� 0 theday theDayV m  GJWW �XX  S a t u r d a yT Y��Y k  N�ZZ [\[ l NU]^_] r  NU`a` m  NQbb �cc  T V - W e e k e n da o      ���� 0 
mastername 
masterName^ !  Create the weekend TV page   _ �dd 6   C r e a t e   t h e   w e e k e n d   T V   p a g e\ efe r  V]ghg m  VYii �jj  1 8 - 1 9 _ T Vh o      ���� 0 fileslug fileSlugf k��k O  ^�lml k  d�nn opo I di��q��
�� .aevtodocnull  �    alisq o  de����  0 masterdocument masterDocument��  p rsr n jotut I  ko�������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  u  f  jks vwv n puxyx I  qu�������� 0 clean_save_l clean_save_L��  ��  y  f  pqw z��z O v�{|{ I ~�����}
�� .CoReclosnull���     obj ��  } ��~��
�� 
svop~ m  ����
�� savoyes ��  | l v{���� 1  v{��
�� 
pacd��  ��  ��  m m  ^a��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  ��  ��  ��  ��  ��  ��   ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l �	e������ Z  �	e������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  L e t t e r s� k  �	a�� ��� r  ����� m  ���� ���  F e a t - L e t t e r s� o      ���� 0 
mastername 
masterName� ��� l ������ r  ����� J  ���� ��� m  ���� ���  M o n d a y� ���� m  ���� ���  W e d n e s d a y��  � o      ���� 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r  ����� J  ���� ��� m  ���� ���  T u e s d a y� ��� m  ���� ���  T h u r s d a y� ��� m  ���� ���  F r i d a y� ���� m  ���� ���  S a t u r d a y��  � o      ���� 0 p14_days  � ��� l ������~��  �  �~  � ��}� Z  �	a����|� E ����� o  ���{�{ 0 p10_days  � o  ���z�z 0 theday theDay� k  �	�� ��� r  ����� m  ���� ���  1 0 _ L e t t e r s� l     ��y�x� o      �w�w 0 fileslug fileSlug�y  �x  � ��� O  �	��� k  �	�� ��� I ���v��u
�v .aevtodocnull  �    alis� o  ���t�t  0 masterdocument masterDocument�u  � ��� n ����� I  ���s�r�q�s >0 applymaster_changedate_single applyMaster_changeDate_single�r  �q  �  f  ��� ��� n ����� I  ���p��o�p 20 changepagenumber_single changePageNumber_single� ��n� m  ���� ���  1 0�n  �o  �  f  ��� ��� n ����� I  ���m�l�k�m 0 clean_save_l clean_save_L�l  �k  �  f  ��� ��j� O �	��� I 		�i�h�
�i .CoReclosnull���     obj �h  � �g��f
�g 
svop� m  		
�e
�e savoyes �f  � 1  �	 �d
�d 
pacd�j  � m  ����
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � ��c� l 		�b�a�`�b  �a  �`  �c  � ��� E 		��� o  		�_�_ 0 p14_days  � o  		�^�^ 0 theday theDay� ��]� k  		]�� ��� r  		&��� m  		"�� ���  1 4 _ L e t t e r s� l     ��\�[� o      �Z�Z 0 fileslug fileSlug�\  �[  � ��Y� O  	'	]��� k  	-	\�� ��� I 	-	2�X��W
�X .aevtodocnull  �    alis� o  	-	.�V�V  0 masterdocument masterDocument�W  � ��� n 	3	8��� I  	4	8�U�T�S�U >0 applymaster_changedate_single applyMaster_changeDate_single�T  �S  �  f  	3	4�    n 	9	A I  	:	A�R�Q�R 20 changepagenumber_single changePageNumber_single �P m  	:	= �  1 4�P  �Q    f  	9	: 	 n 	B	G

 I  	C	G�O�N�M�O 0 clean_save_l clean_save_L�N  �M    f  	B	C	 �L O 	H	\ I 	P	[�K�J
�K .CoReclosnull���     obj �J   �I�H
�I 
svop m  	T	W�G
�G savoyes �H   1  	H	M�F
�F 
pacd�L  � m  	'	*
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �Y  �]  �|  �}  ��  ��  ��  ��  �  l     �E�D�C�E  �D  �C    l     �B�A�@�B  �A  �@    l 	f	��?�> Z  	f	��=�< E 	f	m o  	f	i�;�; &0 masterstogenerate mastersToGenerate m  	i	l �  S t r u g g l e k  	p	�  !  r  	p	w"#" m  	p	s$$ �%%  N e w s - S t r u g g l e# o      �:�: 0 
mastername 
masterName! &'& r  	x	()( m  	x	{** �++  1 0 - 1 1 _ S t r u g g l e) l     ,�9�8, o      �7�7 0 fileslug fileSlug�9  �8  ' -�6- O  	�	�./. k  	�	�00 121 I 	�	��53�4
�5 .aevtodocnull  �    alis3 o  	�	��3�3  0 masterdocument masterDocument�4  2 454 n 	�	�676 I  	�	��2�1�0�2 >0 applymaster_changedate_spread applyMaster_changeDate_spread�1  �0  7  f  	�	�5 898 n 	�	�:;: I  	�	��/�.�-�/ 0 clean_save_l clean_save_L�.  �-  ;  f  	�	�9 <�,< O 	�	�=>= I 	�	��+�*?
�+ .CoReclosnull���     obj �*  ? �)@�(
�) 
svop@ m  	�	��'
�' savoyes �(  > 1  	�	��&
�& 
pacd�,  / m  	�	�AA
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �6  �=  �<  �?  �>   BCB l     �%�$�#�%  �$  �#  C DED l     �"�!� �"  �!  �   E FGF l 	�	�H��H Z  	�	�IJ��I E 	�	�KLK o  	�	��� &0 masterstogenerate mastersToGenerateL m  	�	�MM �NN  S i n g l e   s t r u g g l eJ k  	�	�OO PQP r  	�	�RSR m  	�	�TT �UU ( N e w s - S t r u g g l e   s i n g l eS o      �� 0 
mastername 
masterNameQ VWV r  	�	�XYX m  	�	�ZZ �[[  1 1 _ S t r u g g l eY l     \��\ o      �� 0 fileslug fileSlug�  �  W ]�] O  	�	�^_^ k  	�	�`` aba I 	�	��c�
� .aevtodocnull  �    alisc o  	�	���  0 masterdocument masterDocument�  b ded n 	�	�fgf I  	�	����� >0 applymaster_changedate_single applyMaster_changeDate_single�  �  g  f  	�	�e hih n 	�	�jkj I  	�	����� 0 clean_save_r clean_save_R�  �  k  f  	�	�i l�l O 	�	�mnm I 	�	���
o
� .CoReclosnull���     obj �
  o �	p�
�	 
svopp m  	�	��
� savoyes �  n 1  	�	��
� 
pacd�  _ m  	�	�qq
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �  �  �  �  �  G rsr l     ����  �  �  s tut l     ��� �  �  �   u vwv l 	�
Ox����x Z  	�
Oyz����y E 	�
{|{ o  	�
���� &0 masterstogenerate mastersToGenerate| m  

}} �~~  R e d   L i s tz k  

K ��� r  

��� m  

�� ���  F e a t - R e d   L i s t� o      ���� 0 
mastername 
masterName� ��� r  

��� m  

�� ���  2 0 _ R e d L i s t� l     ������ o      ���� 0 fileslug fileSlug��  ��  � ���� O  

K��� k  

J�� ��� I 

#�����
�� .aevtodocnull  �    alis� o  

����  0 masterdocument masterDocument��  � ��� n 
$
)��� I  
%
)�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  
$
%� ��� n 
*
/��� I  
+
/�������� (0 changelegaldate_20 changeLegalDate_20��  ��  �  f  
*
+� ��� n 
0
5��� I  
1
5�������� 0 clean_save_l clean_save_L��  ��  �  f  
0
1� ���� O 
6
J��� I 
>
I�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  
B
E��
�� savoyes ��  � 1  
6
;��
�� 
pacd��  � m  

��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  ��  ��  ��  ��  w ��� l     ��������  ��  ��  � ��� l 
P
\������ O 
P
\��� I 
V
[�����
�� .aevtodocnull  �    alis� o  
V
W���� $0 freshpagesfolder freshPagesFolder��  � m  
P
S���                                                                                  MACS   alis    r  Macintosh HD               ĬplH+     t
Finder.app                                                       u��=g�        ����  	                CoreServices    Ĭb\      �=Y�       t   0   /  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   Handler definitions --   � ��� .   H a n d l e r   d e f i n i t i o n s   - -� ��� l     ��������  ��  ��  � ��� l      ������  � X R	Create the date used on the InDesign pages, and deal with some Saturday oddities	   � ��� � 	 C r e a t e   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l   w i t h   s o m e   S a t u r d a y   o d d i t i e s 	� ��� i     ��� I      �������� "0 create_pagedate create_pageDate��  ��  � k    ��� ��� r     
��� J     �� ��� m     �� ���  J a n u a r y� ��� m    �� ��� 
 M a r c h� ��� m    �� ���  M a y� ��� m    �� ���  J u l y� ��� m    �� ���  A u g u s t� ���� m    �� ���  O c t o b e r��  � o      ���� (0 thirtyonedaymonths ThirtyOneDayMonths� ��� r    ��� J    �� ��� m    �� ��� 
 A p r i l� ��� m    �� ���  J u n e� ��� m    �� ���  S e p t e m b e r� ���� m    �� ���  N o v e m b e r��  � o      ���� "0 thirtydaymonths ThirtyDayMonths� ��� l   ��������  ��  ��  � ���� Z   ������� >   ��� o    ���� 0 theday theDay� m    �� ���  S a t u r d a y� l   5�� � k    5  r    3 l   /���� b    / b    +	
	 b    ' b    # b     b     o    ���� 0 theday theDay m     �    o    ���� 0 themonth theMonth m    " �    o   # &���� 0 thedate theDate
 m   ' * �    o   + .���� 0 theyear theYear��  ��   o      ���� 0 pagedate pageDate �� l  4 4��������  ��  ��  ��  � + % Does the page date for every weekday     � J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a y�  F   8 U F   8 K  =  8 =!"! o   8 9���� 0 theday theDay" m   9 <## �$$  S a t u r d a y  =  @ G%&% o   @ C���� 0 thedate theDate& m   C F'' �((  3 0 E  N Q)*) o   N O���� "0 thirtydaymonths ThirtyDayMonths* o   O P���� 0 themonth theMonth +,+ l  X �-./- k   X �00 121 Y   X �3��45��3 l  h �6786 Z  h �9:����9 =  h r;<; n   h p=>= 4   k p��?
�� 
cobj? o   n o���� 0 i  > o   h k���� 0 months_list  < o   p q���� 0 themonth theMonth: r   u �@A@ l  u B����B n   u CDC 4   x ��E
�� 
cobjE l  { ~F����F [   { ~GHG o   { |���� 0 i  H m   | }���� ��  ��  D o   u x���� 0 months_list  ��  ��  A o      ���� 0 secondmonth secondMonth��  ��  7 V P This repeat block here grabs the name of the next month to use in the page date   8 �II �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e�� 0 i  4 m   [ \���� 5 I  \ c��J��
�� .corecnte****       ****J o   \ _���� 0 months_list  ��  ��  2 KLK l  � �MNOM r   � �PQP l  � �R����R b   � �STS b   � �UVU b   � �WXW b   � �YZY b   � �[\[ m   � �]] �^^   S a t u r d a y / S u n d a y  \ o   � ����� 0 themonth theMonthZ m   � �__ �``    3 0 -X o   � ����� 0 secondmonth secondMonthV m   � �aa �bb    1  T o   � ����� 0 theyear theYear��  ��  Q o      ���� 0 pagedate pageDateN P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"   O �cc �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 "L d��d l  � ���������  ��  ��  ��  . I C Deals with Saturdays at the end of 30-day months (uses list above)   / �ee �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e ), fgf F   � �hih F   � �jkj =  � �lml o   � ����� 0 theday theDaym m   � �nn �oo  S a t u r d a yk =  � �pqp o   � ����� 0 thedate theDateq m   � �rr �ss  3 1i E  � �tut o   � ����� (0 thirtyonedaymonths ThirtyOneDayMonthsu o   � ����� 0 themonth theMonthg vwv l  �xyzx k   �{{ |}| Y   � �~�����~ Z  � �������� =  � ���� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 i  � o   � ����� 0 months_list  � o   � ����� 0 themonth theMonth� r   � ���� l  � ������� n   � ���� 4   � ����
�� 
cobj� l  � ������� [   � ���� o   � ����� 0 i  � m   � ����� ��  ��  � o   � ����� 0 months_list  ��  ��  � o      ���� 0 secondmonth secondMonth��  ��  �� 0 i   m   � ��� � I  � ��~��}
�~ .corecnte****       ****� o   � ��|�| 0 months_list  �}  ��  } ��� r   ���� l  ���{�z� b   ���� b   �	��� b   ���� b   ���� b   � ���� m   � ��� ���   S a t u r d a y / S u n d a y  � o   � ��y�y 0 themonth theMonth� m   ��� ���    3 1 -� o  �x�x 0 secondmonth secondMonth� m  �� ���    1  � o  	�w�w 0 theyear theYear�{  �z  � o      �v�v 0 pagedate pageDate� ��u� l �t�s�r�t  �s  �r  �u  y I C Deals with Saturdays at the end of 31-day months (uses list above)   z ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )w ��� F  5��� F  )��� = ��� o  �q�q 0 theday theDay� m  �� ���  S a t u r d a y� ? %��� o  !�p�p 0 thedate theDate� m  !$�� ���  2 7� = ,1��� o  ,-�o�o 0 themonth theMonth� m  -0�� ���  F e b r u a r y� ��� l 8M���� k  8M�� ��� r  8K��� l 8G��n�m� b  8G��� b  8C��� b  8?��� m  8;�� ��� 2 S a t u r d a y / S u n d a y   F e b r u a r y  � o  ;>�l�l 0 thedate theDate� m  ?B�� ���  - M a r c h   1  � o  CF�k�k 0 theyear theYear�n  �m  � o      �j�j 0 pagedate pageDate� ��i� l LL�h�g�f�h  �g  �f  �i  � � | Deals with Saturdays at the end of February. Fun fact: it�s not that precise, but won�t turn out the wrong date until 2032.   � ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   F u n   f a c t :   i t  s   n o t   t h a t   p r e c i s e ,   b u t   w o n  t   t u r n   o u t   t h e   w r o n g   d a t e   u n t i l   2 0 3 2 .� ��� F  Po��� F  Pc��� = PU��� o  PQ�e�e 0 theday theDay� m  QT�� ���  S a t u r d a y� = X_��� o  X[�d�d 0 thedate theDate� m  [^�� ���  3 1� = fk��� o  fg�c�c 0 themonth theMonth� m  gj�� ���  D e c e m b e r� ��� l r����� k  r��� ��� r  r���� l r���b�a� b  r���� b  r}��� b  ry��� m  ru�� ��� L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  � o  ux�`�` 0 theyear theYear� m  y|�� ���  -� l }���_�^� [  }���� o  }��]�] 0 theyear theYear� m  ���\�\ �_  �^  �b  �a  � o      �[�[ 0 pagedate pageDate� ��Z� l ���Y�X�W�Y  �X  �W  �Z  � 2 , Deals with Saturdays at the end of December   � ��� X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e r� ��� = ��	 		  o  ���V�V 0 theday theDay	 m  ��		 �		  S a t u r d a y� 	�U	 l ��				 k  ��		 			
		 r  ��			 l ��	�T�S	 b  ��			 b  ��			 b  ��			 b  ��			 b  ��			 b  ��			 b  ��			 m  ��		 �		   S a t u r d a y / S u n d a y  	 o  ���R�R 0 themonth theMonth	 m  ��		 �		   	 o  ���Q�Q 0 thedate theDate	 m  ��	 	  �	!	!  -	 l ��	"�P�O	" [  ��	#	$	# o  ���N�N 0 thedate theDate	$ m  ���M�M �P  �O  	 m  ��	%	% �	&	&   	 o  ���L�L 0 theyear theYear�T  �S  	 o      �K�K 0 pagedate pageDate	
 	'�J	' l ���I�H�G�I  �H  �G  �J  	 3 - Does the page date for every normal Saturday   	 �	(	( Z   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y�U  ��  ��  � 	)	*	) l     �F�E�D�F  �E  �D  	* 	+	,	+ l     �C�B�A�C  �B  �A  	, 	-	.	- l      �@	/	0�@  	/ @ :	Create the short date to name the created InDesign files	   	0 �	1	1 t 	 C r e a t e   t h e   s h o r t   d a t e   t o   n a m e   t h e   c r e a t e d   I n D e s i g n   f i l e s 		. 	2	3	2 i    	4	5	4 I      �?�>�=�? "0 create_filedate create_fileDate�>  �=  	5 k    �	6	6 	7	8	7 r     	9	:	9 o     �<�< 0 thedate theDate	: o      �;�; 0 numdate numDate	8 	;	<	; l   �:�9�8�:  �9  �8  	< 	=	>	= Z   	?	@�7�6	? =   	A	B	A o    �5�5 0 thedate theDate	B m    	C	C �	D	D  1	@ r   
 	E	F	E m   
 	G	G �	H	H  0 1	F o      �4�4 0 numdate numDate�7  �6  	> 	I	J	I Z   	K	L�3�2	K =   	M	N	M o    �1�1 0 thedate theDate	N m    	O	O �	P	P  2	L r    	Q	R	Q m    	S	S �	T	T  0 2	R o      �0�0 0 numdate numDate�3  �2  	J 	U	V	U Z    -	W	X�/�.	W =    #	Y	Z	Y o     !�-�- 0 thedate theDate	Z m   ! "	[	[ �	\	\  3	X r   & )	]	^	] m   & '	_	_ �	`	`  0 3	^ o      �,�, 0 numdate numDate�/  �.  	V 	a	b	a Z  . ;	c	d�+�*	c =  . 1	e	f	e o   . /�)�) 0 thedate theDate	f m   / 0	g	g �	h	h  4	d r   4 7	i	j	i m   4 5	k	k �	l	l  0 4	j o      �(�( 0 numdate numDate�+  �*  	b 	m	n	m Z  < I	o	p�'�&	o =  < ?	q	r	q o   < =�%�% 0 thedate theDate	r m   = >	s	s �	t	t  5	p r   B E	u	v	u m   B C	w	w �	x	x  0 5	v o      �$�$ 0 numdate numDate�'  �&  	n 	y	z	y Z  J W	{	|�#�"	{ =  J M	}	~	} o   J K�!�! 0 thedate theDate	~ m   K L		 �	�	�  6	| r   P S	�	�	� m   P Q	�	� �	�	�  0 6	� o      � �  0 numdate numDate�#  �"  	z 	�	�	� Z  X e	�	���	� =  X [	�	�	� o   X Y�� 0 thedate theDate	� m   Y Z	�	� �	�	�  7	� r   ^ a	�	�	� m   ^ _	�	� �	�	�  0 7	� o      �� 0 numdate numDate�  �  	� 	�	�	� Z  f u	�	���	� =  f i	�	�	� o   f g�� 0 thedate theDate	� m   g h	�	� �	�	�  8	� r   l q	�	�	� m   l o	�	� �	�	�  0 8	� o      �� 0 numdate numDate�  �  	� 	�	�	� Z  v �	�	���	� =  v {	�	�	� o   v w�� 0 thedate theDate	� m   w z	�	� �	�	�  9	� r   ~ �	�	�	� m   ~ �	�	� �	�	�  0 9	� o      �� 0 numdate numDate�  �  	� 	�	�	� l  � �����  �  �  	� 	�	�	� Z  � �	�	���	� =  � �	�	�	� o   � ��� 0 themonth theMonth	� m   � �	�	� �	�	�  J a n u a r y	� r   � �	�	�	� m   � �	�	� �	�	�  0 1	� o      �� 0 nummonth numMonth�  �  	� 	�	�	� Z  � �	�	���	� =  � �	�	�	� o   � ��
�
 0 themonth theMonth	� m   � �	�	� �	�	�  F e b r u a r y	� r   � �	�	�	� m   � �	�	� �	�	�  0 2	� o      �	�	 0 nummonth numMonth�  �  	� 	�	�	� Z  � �	�	���	� =  � �	�	�	� o   � ��� 0 themonth theMonth	� m   � �	�	� �	�	� 
 M a r c h	� r   � �	�	�	� m   � �	�	� �	�	�  0 3	� o      �� 0 nummonth numMonth�  �  	� 	�	�	� Z  � �	�	���	� =  � �	�	�	� o   � ��� 0 themonth theMonth	� m   � �	�	� �	�	� 
 A p r i l	� r   � �	�	�	� m   � �	�	� �	�	�  0 4	� o      �� 0 nummonth numMonth�  �  	� 	�	�	� Z  � �	�	�� ��	� =  � �	�	�	� o   � ����� 0 themonth theMonth	� m   � �	�	� �	�	�  M a y	� r   � �	�	�	� m   � �	�	� �	�	�  0 5	� o      ���� 0 nummonth numMonth�   ��  	� 	�	�	� Z  � �	�	�����	� =  � �	�	�	� o   � ����� 0 themonth theMonth	� m   � �	�	� �	�	�  J u n e	� r   � �	�	�	� m   � �	�	� �	�	�  0 6	� o      ���� 0 nummonth numMonth��  ��  	� 	�	�	� Z  	�	�����	� =  	�	�	� o   ���� 0 themonth theMonth	� m  	�	� �	�	�  J u l y	� r  
	�	�	� m  
	�	� �	�	�  0 7	� o      ���� 0 nummonth numMonth��  ��  	� 	�
 	� Z '

����
 = 


 o  ���� 0 themonth theMonth
 m  

 �

  A u g u s t
 r  #


 m  !
	
	 �



  0 8
 o      ���� 0 nummonth numMonth��  ��  
  


 Z (;

����
 = (/


 o  (+���� 0 themonth theMonth
 m  +.

 �

  S e p t e m b e r
 r  27


 m  25

 �

  0 9
 o      ���� 0 nummonth numMonth��  ��  
 


 Z <O

����
 = <C


 o  <?���� 0 themonth theMonth
 m  ?B

 �

  O c t o b e r
 r  FK

 
 m  FI
!
! �
"
"  1 0
  o      ���� 0 nummonth numMonth��  ��  
 
#
$
# Z Pc
%
&����
% = PW
'
(
' o  PS���� 0 themonth theMonth
( m  SV
)
) �
*
*  N o v e m b e r
& r  Z_
+
,
+ m  Z]
-
- �
.
.  1 1
, o      ���� 0 nummonth numMonth��  ��  
$ 
/
0
/ Z dw
1
2����
1 = dk
3
4
3 o  dg���� 0 themonth theMonth
4 m  gj
5
5 �
6
6  D e c e m b e r
2 r  ns
7
8
7 m  nq
9
9 �
:
:  1 2
8 o      ���� 0 nummonth numMonth��  ��  
0 
;
<
; l xx��������  ��  ��  
< 
=
>
= r  x�
?
@
? b  x�
A
B
A b  x�
C
D
C b  x
E
F
E b  x}
G
H
G o  xy���� 0 numdate numDate
H m  y|
I
I �
J
J  -
F o  }~���� 0 nummonth numMonth
D m  �
K
K �
L
L  -
B o  ������ 0 theyear theYear
@ o      ���� 0 filedate fileDate
> 
M��
M l ����������  ��  ��  ��  	3 
N
O
N l     ��������  ��  ��  
O 
P
Q
P l     ��������  ��  ��  
Q 
R
S
R l      ��
T
U��  
T ` Z	Single page: Apply a master, change the date and override everything on the "Work" layer	   
U �
V
V � 	 S i n g l e   p a g e :   A p p l y   a   m a s t e r ,   c h a n g e   t h e   d a t e   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	
S 
W
X
W i    
Y
Z
Y I      �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  
Z O     c
[
\
[ O    b
]
^
] k   
 a
_
_ 
`
a
` r   
 
b
c
b 4   
 ��
d
�� 
mspr
d o    ���� 0 
mastername 
masterName
c n      
e
f
e 1    ��
�� 
pmas
f 4    ��
g
�� 
page
g m    ���� 
a 
h
i
h I   &��
j
k
�� .InESovrrobj         obj 
j n    
l
m
l 4    ��
n
�� 
txtf
n m    
o
o �
p
p  E d i t i o n   d a t e
m 4    ��
q
�� 
mspr
q o    ���� 0 
mastername 
masterName
k ��
r��
�� 
dPge
r 4    "��
s
�� 
page
s m     !���� ��  
i 
t
u
t r   ' 2
v
w
v o   ' (���� 0 pagedate pageDate
w l     
x����
x n      
y
z
y 1   / 1��
�� 
pcnt
z n   ( /
{
|
{ 4   , /��
}
�� 
txtf
} m   - .
~
~ �

  E d i t i o n   d a t e
| 4   ( ,��
�
�� 
page
� m   * +���� ��  ��  
u 
���
� Q   3 a
�
���
� I  6 X��
�
�
�� .InESovrrobj         obj 
� l  6 O
�����
� 6  6 O
�
�
� n   6 >
�
�
� 2   < >��
�� 
cobj
� n   6 <
�
�
� 1   : <��
�� 
mpgs
� 4   6 :��
�
�� 
page
� m   8 9���� 
� =  ? N
�
�
� n  @ H
�
�
� 1   D H��
�� 
pnam
� 1   @ D��
�� 
pilr
� m   I M
�
� �
�
�  W o r k��  ��  
� ��
���
�� 
dPge
� 4   P T��
�
�� 
page
� m   R S���� ��  
� R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  
^ l   
�����
� 1    ��
�� 
pacd��  ��  
\ m     
�
�
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  
X 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l      ��
�
���  
� } w	Spreads: Create a new spread from a master, change the date on both pages and override everything on the "Work" layer	   
� �
�
� � 	 S p r e a d s :   C r e a t e   a   n e w   s p r e a d   f r o m   a   m a s t e r ,   c h a n g e   t h e   d a t e   o n   b o t h   p a g e s   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	
� 
�
�
� i    
�
�
� I      �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  
� O     �
�
�
� O    �
�
�
� k   
 �
�
� 
�
�
� I  
 ����
�
�� .corecrel****      � null��  
� ��
�
�
�� 
kocl
� m    ��
�� 
sprd
� ��
���
�� 
prdt
� K    
�
� ��
���
�� 
pmas
� 4    ��
�
�� 
mspr
� o    ���� 0 
mastername 
masterName��  ��  
� 
�
�
� I   *��
�
�
�� .InESovrrobj         obj 
� n    !
�
�
� 4    !��
�
�� 
txtf
� m     
�
� �
�
�  L - E d i t i o n   d a t e
� 4    ��
�
�� 
mspr
� o    ���� 0 
mastername 
masterName
� ��
���
�� 
dPge
� 4   " &��
�
�� 
page
� m   $ %���� ��  
� 
�
�
� I  + ;��
�
�
�� .InESovrrobj         obj 
� n   + 2
�
�
� 4   / 2��
�
�� 
txtf
� m   0 1
�
� �
�
�  R - E d i t i o n   d a t e
� 4   + /��
�
�� 
mspr
� o   - .���� 0 
mastername 
masterName
� ��
���
�� 
dPge
� 4   3 7��
�
�� 
page
� m   5 6�� ��  
� 
�
�
� r   < M
�
�
� o   < ?�~�~ 0 pagedate pageDate
� l     
��}�|
� n      
�
�
� 1   H L�{
�{ 
pcnt
� n   ? H
�
�
� 4   C H�z
�
�z 
txtf
� m   D G
�
� �
�
�  L - E d i t i o n   d a t e
� 4   ? C�y
�
�y 
page
� m   A B�x�x �}  �|  
� 
�
�
� r   N _
�
�
� o   N Q�w�w 0 pagedate pageDate
� l     
��v�u
� n      
�
�
� 1   Z ^�t
�t 
pcnt
� n   Q Z
�
�
� 4   U Z�s
�
�s 
txtf
� m   V Y
�
� �
�
�  R - E d i t i o n   d a t e
� 4   Q U�r
�
�r 
page
� m   S T�q�q �v  �u  
� 
��p
� Q   ` �
�
��o
� k   c �
�
� 
�
�
� I  c ��n
�
�
�n .InESovrrobj         obj 
� l  c �
��m�l
� 6  c �
�
�
� n   c o
�
�
� 2   k o�k
�k 
cobj
� n   c k
�
�
� 1   g k�j
�j 
mpgs
� 4   c g�i
�
�i 
page
� m   e f�h�h 
� =  r �
�
�
� n  s {
�
�
� 1   w {�g
�g 
pnam
� 1   s w�f
�f 
pilr
� m   | �
�
� �
�
�  W o r k�m  �l  
� �e
��d
�e 
dPge
� 4   � ��c
�
�c 
page
� m   � ��b�b �d  
� 
��a
� I  � ��`
�
�
�` .InESovrrobj         obj 
� l  � � �_�^  6  � � n   � � 2   � ��]
�] 
cobj n   � � 1   � ��\
�\ 
mpgs 4   � ��[
�[ 
page m   � ��Z�Z  =  � �	 n  � �

 1   � ��Y
�Y 
pnam 1   � ��X
�X 
pilr	 m   � � �  W o r k�_  �^  
� �W�V
�W 
dPge 4   � ��U
�U 
page m   � ��T�T �V  �a  
� R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q  �o  �p  
� l   �P�O 1    �N
�N 
pacd�P  �O  
� m     
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  
�  l     �M�L�K�M  �L  �K    l     �J�I�H�J  �I  �H    l      �G�G   � }	Single page: Change the page number to the one specified in the handler call - e.g. changePageNumber_single("3") for page 3	    � � 	 S i n g l e   p a g e :   C h a n g e   t h e   p a g e   n u m b e r   t o   t h e   o n e   s p e c i f i e d   i n   t h e   h a n d l e r   c a l l   -   e . g .   c h a n g e P a g e N u m b e r _ s i n g l e ( " 3 " )   f o r   p a g e   3 	  i     I      �F�E�F 20 changepagenumber_single changePageNumber_single  �D  o      �C�C 0 
pagenumber 
pageNumber�D  �E   O     (!"! O    '#$# k   
 &%% &'& I  
 �B()
�B .InESovrrobj         obj ( n   
 *+* 4    �A,
�A 
txtf, m    -- �..  P a g e   n u m b e r+ 4   
 �@/
�@ 
mspr/ o    �?�? 0 
mastername 
masterName) �>0�=
�> 
dPge0 4    �<1
�< 
page1 m    �;�; �=  ' 2�:2 r    &343 o    �9�9 0 
pagenumber 
pageNumber4 l     5�8�75 n      676 1   # %�6
�6 
pcnt7 n    #898 4     #�5:
�5 
txtf: m   ! ";; �<<  P a g e   n u m b e r9 4     �4=
�4 
page= m    �3�3 �8  �7  �:  $ l   >�2�1> 1    �0
�0 
pacd�2  �1  " m     ??
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��   @A@ l     �/�.�-�/  �.  �-  A BCB l     �,�+�*�,  �+  �*  C DED l      �)FG�)  F � �	Spreads: Change the page number on both pages. The handler call asks for the left-hand page�s number - e.g. changePageNumber_spread("8") for pages 8 and 9	   G �HH8 	 S p r e a d s :   C h a n g e   t h e   p a g e   n u m b e r   o n   b o t h   p a g e s .   T h e   h a n d l e r   c a l l   a s k s   f o r   t h e   l e f t - h a n d   p a g e  s   n u m b e r   -   e . g .   c h a n g e P a g e N u m b e r _ s p r e a d ( " 8 " )   f o r   p a g e s   8   a n d   9 	E IJI i    KLK I      �(M�'�( 20 changepagenumber_spread changePageNumber_spreadM N�&N o      �%�%  0 leftpagenumber leftPageNumber�&  �'  L O     IOPO O    HQRQ k   
 GSS TUT I  
 �$VW
�$ .InESovrrobj         obj V n   
 XYX 4    �#Z
�# 
txtfZ m    [[ �\\  L - P a g e   n u m b e rY 4   
 �"]
�" 
mspr] o    �!�! 0 
mastername 
masterNameW � ^�
�  
dPge^ 4    �_
� 
page_ m    �� �  U `a` I   +�bc
� .InESovrrobj         obj b n    "ded 4    "�f
� 
txtff m     !gg �hh  R - P a g e   n u m b e re 4    �i
� 
mspri o    �� 0 
mastername 
masterNamec �j�
� 
dPgej 4   # '�k
� 
pagek m   % &�� �  a lml r   , 7non o   , -��  0 leftpagenumber leftPageNumbero l     p��p n      qrq 1   4 6�
� 
pcntr n   - 4sts 4   1 4�u
� 
txtfu m   2 3vv �ww  L - P a g e   n u m b e rt 4   - 1�x
� 
pagex m   / 0�� �  �  m y�y r   8 Gz{z l  8 =|��| c   8 =}~} l  8 ;�
�	 [   8 ;��� o   8 9��  0 leftpagenumber leftPageNumber� m   9 :�� �
  �	  ~ m   ; <�
� 
TEXT�  �  { l     ���� n      ��� 1   D F�
� 
pcnt� n   = D��� 4   A D��
� 
txtf� m   B C�� ���  R - P a g e   n u m b e r� 4   = A��
� 
page� m   ? @� �  �  �  �  R l   ������ 1    ��
�� 
pacd��  ��  P m     ��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  J ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �	Spreads and left-hand single pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   � ���� 	 S p r e a d s   a n d   l e f t - h a n d   s i n g l e   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 	� ��� i    ��� I      �������� 0 clean_save_l clean_save_L��  ��  � O     3��� O    2��� k   
 1�� ��� r   
 ��� m   
 ��
�� boovtrue� n      ��� 1    ��
�� 
plck� 4    ���
�� 
layr� m    �� ��� ( D a t e   a n d   p a g e   n u m b e r� ��� r    ��� m    �� ���  W o r k� 1    ��
�� 
pacl� ��� r    !��� J    �� ��� m    �� @EB�
(F� ���� m    �� @&      ��  � l     ������ 1     ��
�� 
zero��  ��  � ���� I  " 1�����
�� .CoResavedocu        obj ��  � �����
�� 
kfil� b   $ -��� b   $ +��� b   $ )��� b   $ '��� o   $ %���� $0 freshpagesfolder freshPagesFolder� o   % &���� 0 fileslug fileSlug� m   ' (�� ���  _� o   ) *���� 0 filedate fileDate� m   + ,�� ��� 
 . i n d d��  ��  � l   ������ 1    ��
�� 
pacd��  ��  � m     ��
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �	Right-hand pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   � ���z 	 R i g h t - h a n d   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 	� ��� i    ��� I      �������� 0 clean_save_r clean_save_R��  ��  � O     3��� O    2��� k   
 1�� ��� r   
 ��� m   
 ��
�� boovtrue� n      ��� 1    ��
�� 
plck� 4    ���
�� 
layr� m    �� ��� ( D a t e   a n d   p a g e   n u m b e r� ��� r    ��� m    �� ���  W o r k� 1    ��
�� 
pacl� ��� r    !��� J    �� ��� m    �� @9�0S� ���� m    �� @&      ��  � l     ������ 1     ��
�� 
zero��  ��  � ���� I  " 1�����
�� .CoResavedocu        obj ��  � �����
�� 
kfil� b   $ -��� b   $ +��� b   $ )��� b   $ '� � o   $ %���� $0 freshpagesfolder freshPagesFolder  o   % &���� 0 fileslug fileSlug� m   ' ( �  _� o   ) *���� 0 filedate fileDate� m   + , � 
 . i n d d��  ��  � l   ���� 1    ��
�� 
pacd��  ��  � m     
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �  l     ��������  ��  ��   	
	 l     ��������  ��  ��  
  l      ����   � �	Changes the legal date on the left-hand page of a spread - it�s designed for pages 12-13 (TV), which have the legal date on weekdays.	    � 	 C h a n g e s   t h e   l e g a l   d a t e   o n   t h e   l e f t - h a n d   p a g e   o f   a   s p r e a d   -   i t  s   d e s i g n e d   f o r   p a g e s   1 2 - 1 3   ( T V ) ,   w h i c h   h a v e   t h e   l e g a l   d a t e   o n   w e e k d a y s . 	  i     # I      �������� (0 changelegaldate_12 changeLegalDate_12��  ��   O     ( O    ' k   
 &  I  
 ��
�� .InESovrrobj         obj  n   
  4    ��
�� 
txtf m       �!!  L e g a l   d a t e 4   
 ��"
�� 
mspr" o    ���� 0 
mastername 
masterName ��#��
�� 
dPge# 4    ��$
�� 
page$ m    ���� ��   %��% r    &&'& o    ���� 0 pagedate pageDate' l     (����( n      )*) 1   # %��
�� 
pcnt* n    #+,+ 4     #��-
�� 
txtf- m   ! ".. �//  L e g a l   d a t e, 4     ��0
�� 
page0 m    ���� ��  ��  ��   l   1����1 1    ��
�� 
pacd��  ��   m     22
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��   343 l     ��������  ��  ��  4 565 l      ��78��  7 � �	Changes the legal date on a left-hand single page - it�s designed for the Red List page (20), which has the legal date at weekends.	   8 �99
 	 C h a n g e s   t h e   l e g a l   d a t e   o n   a   l e f t - h a n d   s i n g l e   p a g e   -   i t  s   d e s i g n e d   f o r   t h e   R e d   L i s t   p a g e   ( 2 0 ) ,   w h i c h   h a s   t h e   l e g a l   d a t e   a t   w e e k e n d s . 	6 :��: i   $ ';<; I      �������� (0 changelegaldate_20 changeLegalDate_20��  ��  < O     (=>= O    '?@? k   
 &AA BCB I  
 ��DE
�� .InESovrrobj         obj D n   
 FGF 4    ��H
�� 
txtfH m    II �JJ  L e g a l   d a t eG 4   
 ��K
�� 
msprK o    ���� 0 
mastername 
masterNameE ��L��
�� 
dPgeL 4    ��M
�� 
pageM m    ���� ��  C N��N r    &OPO o    ���� 0 pagedate pageDateP l     Q����Q n      RSR 1   # %��
�� 
pcntS n    #TUT 4     #��V
�� 
txtfV m   ! "WW �XX  L e g a l   d a t eU 4     ��Y
�� 
pageY m    ���� ��  ��  ��  @ l   Z����Z 1    ��
�� 
pacd��  ��  > m     [[
                                                                                  InDn   alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?�     CMacintosh HD:Applications:Adobe InDesign CS4:Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��       ��\]^_`abcdefg��  \ ����������������������� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate�� >0 applymaster_changedate_single applyMaster_changeDate_single�� >0 applymaster_changedate_spread applyMaster_changeDate_spread�� 20 changepagenumber_single changePageNumber_single�� 20 changepagenumber_spread changePageNumber_spread�� 0 clean_save_l clean_save_L�� 0 clean_save_r clean_save_R�� (0 changelegaldate_12 changeLegalDate_12�� (0 changelegaldate_20 changeLegalDate_20
� .aevtoappnull  �   � ****] �~��}�|hi�{�~ "0 create_pagedate create_pageDate�}  �|  h �z�y�x�w�z (0 thirtyonedaymonths ThirtyOneDayMonths�y "0 thirtydaymonths ThirtyDayMonths�x 0 i  �w 0 secondmonth secondMonthi 2�������v�����u�t��s�r�q�p#'�o�n�m�l]_anr�������������				 	%�v �u �t 0 theday theDay�s 0 themonth theMonth�r 0 thedate theDate�q 0 theyear theYear�p 0 pagedate pageDate
�o 
bool�n 0 months_list  
�m .corecnte****       ****
�l 
cobj�{��������vE�O�����vE�O��  ��%�%a %_ %a %_ %E` OPY��a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa �%a %�%a %_ %E` OPY�a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa  �%a !%�%a "%_ %E` OPY ��a # 	 _ a $a &	 �a % a & a &_ %a '%_ %E` OPY o�a ( 	 _ a ) a &	 �a * a & a +_ %a ,%_ k%E` OPY 3�a -  *a .�%a /%_ %a 0%_ k%a 1%_ %E` OPY h^ �k	5�j�ijk�h�k "0 create_filedate create_fileDate�j  �i  j �g�f�g 0 numdate numDate�f 0 nummonth numMonthk 0�e	C	G	O	S	[	_	g	k	s	w		�	�	�	�	�	�	��d	�	�	�	�	�	�	�	�	�	�	�	�	�	�

	



!
)
-
5
9
I
K�c�b�e 0 thedate theDate�d 0 themonth theMonth�c 0 theyear theYear�b 0 filedate fileDate�h��E�O��  �E�Y hO��  �E�Y hO��  �E�Y hO��  �E�Y hO��  �E�Y hO��  �E�Y hO��  �E�Y hO��  
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
a +E�Y hO�a ,%�%a -%_ .%E` /OP_ �a
Z�`�_lm�^�a >0 applymaster_changedate_single applyMaster_changeDate_single�`  �_  l  m 
��]�\�[�Z�Y�X
o�W�V�U
~�T�S�Rn�Q�P
��O�N
�] 
pacd
�\ 
mspr�[ 0 
mastername 
masterName
�Z 
page
�Y 
pmas
�X 
txtf
�W 
dPge
�V .InESovrrobj         obj �U 0 pagedate pageDate
�T 
pcnt
�S 
mpgs
�R 
cobjn  
�Q 
pilr
�P 
pnam�O  �N  �^ d� `*�, Y*��/*�k/�,FO*��/��/�*�k/l 	O�*�k/��/�,FO '*�k/�,�-�[a ,a ,\Za 81�*�k/l 	W X  hUU` �M
��L�Kop�J�M >0 applymaster_changedate_spread applyMaster_changeDate_spread�L  �K  o  p �I�H�G�F�E�D�C�B�A�@
��?�>�=
��<
��;
��:�9n�8�7
��6�5
�I 
pacd
�H 
kocl
�G 
sprd
�F 
prdt
�E 
pmas
�D 
mspr�C 0 
mastername 
masterName�B 
�A .corecrel****      � null
�@ 
txtf
�? 
dPge
�> 
page
�= .InESovrrobj         obj �< 0 pagedate pageDate
�; 
pcnt
�: 
mpgs
�9 
cobj
�8 
pilr
�7 
pnam�6  �5  �J �� �*�, �*����*��/l� 	O*��/��/�*�l/l O*��/��/�*�m/l O_ *�l/�a /a ,FO_ *�m/�a /a ,FO V*�l/a ,a -a [a ,a ,\Za 81�*�l/l O*�m/a ,a -a [a ,a ,\Za 81�*�m/l W X  hUUa �4�3�2qr�1�4 20 changepagenumber_single changePageNumber_single�3 �0s�0 s  �/�/ 0 
pagenumber 
pageNumber�2  q �.�. 0 
pagenumber 
pageNumberr ?�-�,�+�*-�)�(�';�&
�- 
pacd
�, 
mspr�+ 0 
mastername 
masterName
�* 
txtf
�) 
dPge
�( 
page
�' .InESovrrobj         obj 
�& 
pcnt�1 )� %*�, *��/��/�*�k/l O�*�k/��/�,FUUb �%L�$�#tu�"�% 20 changepagenumber_spread changePageNumber_spread�$ �!v�! v  � �   0 leftpagenumber leftPageNumber�#  t ��  0 leftpagenumber leftPageNumberu �����[���gv���
� 
pacd
� 
mspr� 0 
mastername 
masterName
� 
txtf
� 
dPge
� 
page
� .InESovrrobj         obj 
� 
pcnt
� 
TEXT�" J� F*�, ?*��/��/�*�l/l O*��/��/�*�m/l O�*�l/��/�,FO�k�&*�m/��/�,FUUc ����wx�� 0 clean_save_l clean_save_L�  �  w  x �������������
��	��
� 
pacd
� 
layr
� 
plck
� 
pacl
� 
zero
� 
kfil� $0 freshpagesfolder freshPagesFolder�
 0 fileslug fileSlug�	 0 filedate fileDate
� .CoResavedocu        obj � 4� 0*�, )e*��/�,FO�*�,FO��lv*�,FO*���%�%�%�%l UUd ����yz�� 0 clean_save_r clean_save_R�  �  y  z ������ ��������������
� 
pacd
� 
layr
� 
plck
�  
pacl
�� 
zero
�� 
kfil�� $0 freshpagesfolder freshPagesFolder�� 0 fileslug fileSlug�� 0 filedate fileDate
�� .CoResavedocu        obj � 4� 0*�, )e*��/�,FO�*�,FO��lv*�,FO*���%�%�%�%l UUe ������{|���� (0 changelegaldate_12 changeLegalDate_12��  ��  {  | 2�������� ��������.��
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
pcnt�� )� %*�, *��/��/�*�l/l O�*�l/��/�,FUUf ��<����}~���� (0 changelegaldate_20 changeLegalDate_20��  ��  }  ~ [��������I��������W��
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
pcnt�� )� %*�, *��/��/�*�k/l O�*�k/��/�,FUUg ����������
�� .aevtoappnull  �   � **** k    
\��  {��  ���  ���  ���  ���  ��� =�� N�� Y�� j�� u�� ��� ��� ��� ��� �� !�� /�� P�� N�� �� ��� �� F�� v�� �����  ��  ��  �  � � ��� ��� � � � � � � ����� � � � � � � � � � ����� � � � � � �����  $(+������I��L����������U����eh��q���������������������������������6BL��R��i��������������ow}���������������0:@Sfl����������%+>Wcms��������!(<V`nx��������&07��Wbi���������������$*MTZ}������� $0 freshpagesfolder freshPagesFolder��  0 masterdocument masterDocument�� �� 0 weekday_pages  �� 
�� 0 weekend_pages  �� �� 0 	days_list  �� �� 0 months_list  
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
mlsl�� &0 masterstogenerate mastersToGenerate�� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate�� 0 
mastername 
masterName�� 0 fileslug fileSlug
�� .aevtodocnull  �    alis�� >0 applymaster_changedate_single applyMaster_changeDate_single�� 0 clean_save_r clean_save_R
�� 
pacd
�� 
svop
�� savoyes 
�� .CoReclosnull���     obj �� >0 applymaster_changedate_spread applyMaster_changeDate_spread�� 20 changepagenumber_spread changePageNumber_spread�� 0 clean_save_l clean_save_L�� 20 changepagenumber_single changePageNumber_single�� (0 changelegaldate_12 changeLegalDate_12�� 0 p10_days  �� 0 p14_days  �� (0 changelegaldate_20 changeLegalDate_20��
]�E�O�E�O��������vE�O���a a a a a a a a vE` Oa a a a a a a vE`  Oa !a "a #a $a %a &a 'a (a )a *a +a ,a -vE` .O_  a /a 0a 1a 2a 3 4a 5&E` 6O_ 7a 8  )a 9a :lhY hO_ .a /a ;a 1a <a 3 4a 5&E` =O_ 7a >  )a 9a :lhY hOa ?a @a Aa 1a Ba 3 Ca D,a 5&E` EO_ 7a F  )a 9a :lhY hOa Ga @a Ha 1a Ia 3 Ca D,a 5&E` JO_ 7a K  )a 9a :lhY hO_ 6a L C�a /a M_ N%_ N%a O%a 1a Pa Qea  4E` RO_ 7f  )a 9a :lhY hY P_ 6a S  E_ a /a T_ N%_ N%a U%a 1a Va Qea  4E` RO_ 7f  )a 9a :lhY hY hO*j+ WO*j+ XO_ Ra Y?_ 6a Z Ba [E` \Oa ]E` ^Oa _ (�j `O)j+ aO)j+ bO*a c, *a da el fUUY M_ 6a g  Ba hE` \Oa iE` ^Oa _ (�j `O)j+ aO)j+ bO*a c, *a da el fUUY hO_ Ra j Ka kE` \Oa lE` ^Oa _ 1�j `O)j+ mO)a nk+ oO)j+ pO*a c, *a da el fUUY �a qE` \Oa rE` ^Oa _ 1�j `O)j+ aO)a sk+ tO)j+ pO*a c, *a da el fUUOa uE` \Oa vE` ^Oa _ 1�j `O)j+ aO)a wk+ tO)j+ bO*a c, *a da el fUUO_ Ra x Ka yE` \Oa zE` ^Oa _ 1�j `O)j+ mO)a {k+ oO)j+ pO*a c, *a da el fUUY �a |E` \Oa }E` ^Oa _ 1�j `O)j+ aO)a ~k+ tO)j+ pO*a c, *a da el fUUOa E` \Oa �E` ^Oa _ 1�j `O)j+ aO)a �k+ tO)j+ bO*a c, *a da el fUUO_ Ra � Ka �E` \Oa �E` ^Oa _ 1�j `O)j+ mO)a �k+ oO)j+ pO*a c, *a da el fUUY �a �E` \Oa �E` ^Oa _ 1�j `O)j+ aO)a �k+ tO)j+ pO*a c, *a da el fUUOa �E` \Oa �E` ^Oa _ 1�j `O)j+ aO)a �k+ tO)j+ bO*a c, *a da el fUUOPY hO_ Ra �q_ 6a � Ba �E` \Oa �E` ^Oa _ (�j `O)j+ aO)j+ bO*a c, *a da el fUUY M_ 6a �  Ba �E` \Oa �E` ^Oa _ (�j `O)j+ aO)j+ bO*a c, *a da el fUUY hOa �E` \Oa �E` ^Oa _ 1�j `O)j+ mO)a �k+ oO)j+ pO*a c, *a da el fUUOa �E` \Oa �E` ^Oa _ 1�j `O)j+ mO)a �k+ oO)j+ pO*a c, *a da el fUUOa �E` \Oa �E` ^Oa _ 1�j `O)j+ mO)a �k+ oO)j+ pO*a c, *a da el fUUOPY hO_ Ra �_ Ra �_ Ra � Ka �E` \Oa �E` ^Oa _ 1�j `O)j+ mO)a �k+ oO)j+ pO*a c, *a da el fUUY hO_ Ra � Ka �E` \Oa �E` ^Oa _ 1�j `O)j+ mO)a �k+ oO)j+ pO*a c, *a da el fUUY hO_ Ra � Ka �E` \Oa �E` ^Oa _ 1�j `O)j+ mO)a �k+ oO)j+ pO*a c, *a da el fUUY hOPY hY hO_ Ra � �_ 6a � Ha �E` \Oa �E` ^Oa _ .�j `O)j+ mO)j+ �O)j+ pO*a c, *a da el fUUY M_ 6a �  Ba �E` \Oa �E` ^Oa _ (�j `O)j+ mO)j+ pO*a c, *a da el fUUY hY hO_ Ra � �a �E` \Oa �a �lvE` �Oa �a �a �a �a 3vE` �O_ �_ 6 Ea �E` ^Oa _ 1�j `O)j+ aO)a �k+ tO)j+ pO*a c, *a da el fUUOPY N_ �_ 6 Ca �E` ^Oa _ 1�j `O)j+ aO)a �k+ tO)j+ pO*a c, *a da el fUUY hY hO_ Ra � Ba �E` \Oa �E` ^Oa _ (�j `O)j+ mO)j+ pO*a c, *a da el fUUY hO_ Ra � Ba �E` \Oa �E` ^Oa _ (�j `O)j+ aO)j+ bO*a c, *a da el fUUY hO_ Ra � Ha �E` \Oa �E` ^Oa _ .�j `O)j+ aO)j+ �O)j+ pO*a c, *a da el fUUY hOa � �j `U ascr  ��ޭ