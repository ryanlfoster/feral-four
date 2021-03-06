FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ? 9	Big Spike, a better Morning Star features-page generator     � 	 	 r 	 B i g   S p i k e ,   a   b e t t e r   M o r n i n g   S t a r   f e a t u r e s - p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��    " 	Created on			June 16th 2012     �   8 	 C r e a t e d   o n 	 	 	 J u n e   1 6 t h   2 0 1 2      l     ��  ��    " 	Last updated		July 7th 2012     �   8 	 L a s t   u p d a t e d 	 	 J u l y   7 t h   2 0 1 2      l     ��������  ��  ��        l      ��   ��    � � Description: This generates the pages needed by the features and arts desks. It has a different name because it�s written in a very different way to previous scripts and isn�t finished.	      � ! !v   D e s c r i p t i o n :   T h i s   g e n e r a t e s   t h e   p a g e s   n e e d e d   b y   t h e   f e a t u r e s   a n d   a r t s   d e s k s .   I t   h a s   a   d i f f e r e n t   n a m e   b e c a u s e   i t  s   w r i t t e n   i n   a   v e r y   d i f f e r e n t   w a y   t o   p r e v i o u s   s c r i p t s   a n d   i s n  t   f i n i s h e d . 	   " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   & � � Status: Updated handlers, now stored in St Ann's.scpt, Finder activation at script end, InDesign to ignore dialogs while the script runs.     ' � ( (   S t a t u s :   U p d a t e d   h a n d l e r s ,   n o w   s t o r e d   i n   S t   A n n ' s . s c p t ,   F i n d e r   a c t i v a t i o n   a t   s c r i p t   e n d ,   I n D e s i g n   t o   i g n o r e   d i a l o g s   w h i l e   t h e   s c r i p t   r u n s .   %  ) * ) l     ��������  ��  ��   *  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / D > Global variables that are needed in handlers at some point --    0 � 1 1 |   G l o b a l   v a r i a b l e s   t h a t   a r e   n e e d e d   i n   h a n d l e r s   a t   s o m e   p o i n t   - - .  2 3 2 p       4 4 ������ 0 theday theDay��   3  5 6 5 p       7 7 ������ 0 themonth theMonth��   6  8 9 8 p       : : ������ 0 thedate theDate��   9  ; < ; p       = = ������ 0 theyear theYear��   <  > ? > p       @ @ ������ 0 months_list  ��   ?  A B A l      C D E C p       F F ������ 0 fileslug fileSlug��   D > 8 The short code used at the start of the new file�s name    E � G G p   T h e   s h o r t   c o d e   u s e d   a t   t h e   s t a r t   o f   t h e   n e w   f i l e  s   n a m e B  H I H l      J K L J p       M M ������ 0 filedate fileDate��   K 5 / The short date used to name the InDesign files    L � N N ^   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s I  O P O l      Q R S Q p       T T ������ 0 pagedate pageDate��   R 6 0 The full date used in the InDesign page�s folio    S � U U `   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o P  V W V l      X Y Z X p       [ [ ������ $0 freshpagesfolder freshPagesFolder��   Y . ( Where the newly created files are saved    Z � \ \ P   W h e r e   t h e   n e w l y   c r e a t e d   f i l e s   a r e   s a v e d W  ] ^ ] l      _ ` a _ p       b b ������  0 masterdocument masterDocument��   ` * $ The actual InDesign master document    a � c c H   T h e   a c t u a l   I n D e s i g n   m a s t e r   d o c u m e n t ^  d e d l      f g h f p       i i ������ 0 
mastername 
masterName��   g C = The name of the master page/spread to be applied in InDesign    h � j j z   T h e   n a m e   o f   t h e   m a s t e r   p a g e / s p r e a d   t o   b e   a p p l i e d   i n   I n D e s i g n e  k l k l     ��������  ��  ��   l  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q   Unchanging variables --    r � s s 0   U n c h a n g i n g   v a r i a b l e s   - - p  t u t l     v���� v r      w x w m      y y � z z j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : x o      ���� $0 freshpagesfolder freshPagesFolder��  ��   u  { | { l    }���� } r     ~  ~ m     � � � � � p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d  o      ����  0 masterdocument masterDocument��  ��   |  � � � l     ��������  ��  ��   �  � � � l    ����� � r     � � � J     � �  � � � m    	 � � � � �  S p r e a d �  � � � m   	 
 � � � � �  1 0 �  � � � m   
  � � � � � 
 1 2 - 1 3 �  � � � m     � � � � �  L e t t e r s �  � � � m     � � � � �  A r t s �  ��� � m     � � � � �  A r t s   s p l i t��   � o      ���� 0 weekday_pages  ��  ��   �  � � � l   # ����� � r    # � � � J     � �  � � � m     � � � � �  S p r e a d �  � � � m     � � � � � ( N e w s   r e v i e w s      s p l i t �  � � � m     � � � � � , N e w s   r e v i e w s      s i n g l e s �  � � � m     � � � � �  1 5 �  � � � m     � � � � � 
 1 6 - 1 7 �  ��� � m     � � � � �  L e t t e r s��   � o      ���� 0 weekend_pages  ��  ��   �  � � � l  $ J ����� � r   $ J � � � J   $ F � �  � � � m   $ ' � � � � �  S p r e a d �  � � � m   ' * � � � � �  1 0 �  � � � m   * - � � � � � 
 1 2 - 1 3 �  � � � m   - 0 � � � � � ( N e w s   r e v i e w s      s p l i t �  � � � m   0 3 � � � � � , N e w s   r e v i e w s      s i n g l e s �  � � � m   3 6 � � � � �  1 5 �  � � � m   6 9 � � � � � 
 1 6 - 1 7 �  � � � m   9 < � � � � �  L e t t e r s �  � � � m   < ? � � � � �  A r t s �  ��� � m   ? B � � � � �  A r t s   s p l i t��   � o      ���� 0 ahead_pages  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  K h ����� � r   K h � � � J   K d � �  � � � m   K N � � � � �  M o n d a y �  � � � m   N Q � � � � �  T u e s d a y �  � � � m   Q T � � � � �  W e d n e s d a y �  �  � m   T W �  T h u r s d a y   m   W Z �  F r i d a y  m   Z ]		 �

  S a t u r d a y �� m   ] ` � , N o   d a y      w o r k i n g   a h e a d��   � o      ���� 0 	days_list  ��  ��   �  l  i ����� r   i � J   i �  m   i l �  J a n u a r y  m   l o �  F e b r u a r y  m   o r � 
 M a r c h  !  m   r u"" �## 
 A p r i l! $%$ m   u x&& �''  M a y% ()( m   x {** �++  J u n e) ,-, m   { ~.. �//  J u l y- 010 m   ~ �22 �33  A u g u s t1 454 m   � �66 �77  S e p t e m b e r5 898 m   � �:: �;;  O c t o b e r9 <=< m   � �>> �??  N o v e m b e r= @��@ m   � �AA �BB  D e c e m b e r��   o      ���� 0 months_list  ��  ��   CDC l     ��������  ��  ��  D EFE l     ��������  ��  ��  F GHG l     ��IJ��  I   User prompts --   J �KK     U s e r   p r o m p t s   - -H LML l     ��������  ��  ��  M NON l      ��PQ��  P  Get the date    Q �RR  G e t   t h e   d a t e  O STS l  � �U����U r   � �VWV c   � �XYX l  � �Z����Z I  � ���[\
�� .gtqpchltns    @   @ ns  [ o   � ����� 0 	days_list  \ ��]^
�� 
prmp] m   � �__ �`` 8 P l e a s e   p i c k   t h e   e d i t i o n   d a y :^ ��a��
�� 
appra m   � �bb �cc 0 F e a t u r e s   p a g e s   g e n e r a t o r��  ��  ��  Y m   � ���
�� 
TEXTW o      ���� 0 theday theDay��  ��  T ded l  � �f����f Z  � �gh����g =  � �iji 1   � ���
�� 
rsltj m   � �kk �ll 
 f a l s eh R   � �����m
�� .ascrerr ****      � ****��  m ��n��
�� 
errnn m   � ���������  ��  ��  ��  ��  e opo l  ��q����q Z   ��rs����r >  � �tut o   � ����� 0 theday theDayu m   � �vv �ww , N o   d a y      w o r k i n g   a h e a ds k   ��xx yzy r   � �{|{ c   � �}~} l  � ����� I  � �����
�� .gtqpchltns    @   @ ns  � o   � ����� 0 months_list  � ����
�� 
prmp� m   � ��� ��� , P l e a s e   p i c k   t h e   m o n t h :� �����
�� 
appr� m   � ��� ��� 0 F e a t u r e s   p a g e s   g e n e r a t o r��  ��  ��  ~ m   � ��
� 
TEXT| o      �~�~ 0 themonth theMonthz ��� Z  ����}�|� =  � ���� 1   � ��{
�{ 
rslt� m   � ��� ��� 
 f a l s e� R   �	�z�y�
�z .ascrerr ****      � ****�y  � �x��w
�x 
errn� m  �v�v���w  �}  �|  � ��� r  /��� c  +��� l '��u�t� n  '��� 1  #'�s
�s 
ttxt� l #��r�q� I #�p��
�p .sysodlogaskr        TEXT� m  �� ��� * P l e a s e   t y p e   t h e   d a t e :� �o��
�o 
dtxt� m  �� ���  � �n��m
�n 
appr� m  �� ��� 0 F e a t u r e s   p a g e s   g e n e r a t o r�m  �r  �q  �u  �t  � m  '*�l
�l 
TEXT� o      �k�k 0 thedate theDate� ��� Z 0H���j�i� = 07��� 1  03�h
�h 
rslt� m  36�� ��� 
 f a l s e� R  :D�g�f�
�g .ascrerr ****      � ****�f  � �e��d
�e 
errn� m  >A�c�c���d  �j  �i  � ��� r  Ij��� c  If��� l Ib��b�a� n  Ib��� 1  ^b�`
�` 
ttxt� l I^��_�^� I I^�]��
�] .sysodlogaskr        TEXT� m  IL�� ��� * P l e a s e   t y p e   t h e   y e a r :� �\��
�\ 
dtxt� m  OR�� ���  � �[��Z
�[ 
appr� m  UX�� ��� 0 F e a t u r e s   p a g e s   g e n e r a t o r�Z  �_  �^  �b  �a  � m  be�Y
�Y 
TEXT� o      �X�X 0 theyear theYear� ��W� Z k����V�U� = kr��� 1  kn�T
�T 
rslt� m  nq�� ��� 
 f a l s e� R  u�S�R�
�S .ascrerr ****      � ****�R  � �Q��P
�Q 
errn� m  y|�O�O���P  �V  �U  �W  ��  ��  ��  ��  p ��� l     �N�M�L�N  �M  �L  � ��� l      �K���K  �  Get the pages to create   � ��� . G e t   t h e   p a g e s   t o   c r e a t e� ��� l �h��J�I� Z  �h����H� = ����� o  ���G�G 0 theday theDay� m  ���� ��� , N o   d a y      w o r k i n g   a h e a d� k  ���� ��� r  ����� l ����F�E� I ���D��
�D .gtqpchltns    @   @ ns  � o  ���C�C 0 ahead_pages  � �B��
�B 
prmp� l ����A�@� b  ����� b  ����� b  ����� m  ���� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  ���?
�? 
ret � o  ���>
�> 
ret � m  ���� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�A  �@  � �=��
�= 
appr� m  ���� ��� 0 F e a t u r e s   p a g e s   g e n e r a t o r� �<��;
�< 
mlsl� m  ���:
�: boovtrue�;  �F  �E  � o      �9�9 &0 masterstogenerate mastersToGenerate� ��8� Z �����7�6� = ����� 1  ���5
�5 
rslt� m  ���4
�4 boovfals� R  ���3�2 
�3 .ascrerr ****      � ****�2    �1�0
�1 
errn m  ���/�/���0  �7  �6  �8  �  > �� o  ���.�. 0 theday theDay m  �� �  S a t u r d a y 	 k  �

  r  � l ���-�, I ���+
�+ .gtqpchltns    @   @ ns   o  ���*�* 0 weekday_pages   �)
�) 
prmp l ���(�' b  �� b  �� b  �� m  �� � D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ? o  ���&
�& 
ret  o  ���%
�% 
ret  m  �� � X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�(  �'   �$ 
�$ 
appr m  ��!! �"" 0 F e a t u r e s   p a g e s   g e n e r a t o r  �##�"
�# 
mlsl# m  ���!
�! boovtrue�"  �-  �,   o      � �  &0 masterstogenerate mastersToGenerate $�$ Z %&��% = '(' 1  �
� 
rslt( m  �
� boovfals& R  ��)
� .ascrerr ****      � ****�  ) �*�
� 
errn* m  �����  �  �  �  	 +,+ = #-.- o  �� 0 theday theDay. m  "// �00  S a t u r d a y, 1�1 k  &d22 343 r  &M565 l &I7��7 I &I�89
� .gtqpchltns    @   @ ns  8 o  &)�� 0 weekend_pages  9 �:;
� 
prmp: l ,;<��< b  ,;=>= b  ,7?@? b  ,3ABA m  ,/CC �DD D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?B o  /2�
� 
ret @ o  36�
� 
ret > m  7:EE �FF X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�  �  ; �
GH
�
 
apprG m  >AII �JJ 0 F e a t u r e s   p a g e s   g e n e r a t o rH �	K�
�	 
mlslK m  DE�
� boovtrue�  �  �  6 o      �� &0 masterstogenerate mastersToGenerate4 L�L Z NdMN��M = NSOPO 1  NQ�
� 
rsltP m  QR�
� boovfalsN R  V`� ��Q
�  .ascrerr ****      � ****��  Q ��R��
�� 
errnR m  Z]��������  �  �  �  �  �H  �J  �I  � STS l     ��������  ��  ��  T UVU l     ��������  ��  ��  V WXW l     ��YZ��  Y   Create the date --   Z �[[ &   C r e a t e   t h e   d a t e   - -X \]\ l     ��������  ��  ��  ] ^_^ l i�`����` Z  i�ab��ca = ipded o  il���� 0 theday theDaye m  loff �gg , N o   d a y      w o r k i n g   a h e a db k  s�hh iji r  szklk m  svmm �nn * A   d a t e   n e e d s   e n t e r i n gl o      ���� 0 pagedate pageDatej o��o r  {�pqp m  {~rr �ss 
 A h e a dq o      ���� 0 filedate fileDate��  ��  c k  ��tt uvu I  ���������� "0 create_pagedate create_pageDate��  ��  v w��w I  ���������� "0 create_filedate create_fileDate��  ��  ��  ��  ��  _ xyx l     ��������  ��  ��  y z{z l     ��������  ��  ��  { |}| l     ��~��  ~   Generate the pages --    ��� ,   G e n e r a t e   t h e   p a g e s   - -} ��� l     ��������  ��  ��  � ��� l �������� O ����� r  ����� m  ����
�� elnteNvr� n      ��� 1  ����
�� 
UIAc� 1  ����
�� 
pScr� m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l �E������ Z  �E������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  S p r e a d� k  �A�� ��� r  ����� m  ���� ���  F e a t - S p r e a d� o      ���� 0 
mastername 
masterName� ���� Z  �A������ = ����� o  ������ 0 theday theDay� m  ���� ���  S a t u r d a y� k  � �� ��� r  ����� m  ���� ���  1 2 - 1 3 _ F e a t u r e s� o      ���� 0 fileslug fileSlug� ���� O  � ��� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_spread changePageNumber_spread� ���� m  ���� ���  1 2��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  � k  A�� ��� r  
��� m  �� ���  8 - 9 _ F e a t u r e s� o      ���� 0 fileslug fileSlug� ���� O  A��� k  @�� ��� I �����
�� .aevtodocnull  �    alis� o  ����  0 masterdocument masterDocument��  � ��� n ��� I  �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  � ��� n %��� I  %������� 20 changepagenumber_spread changePageNumber_spread� ���� m  !�� ���  8��  ��  �  f  � ��� n &+��� I  '+�������� 0 clean_save_l clean_save_L��  ��  �  f  &'� ���� O ,@��� I 4?�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  8;��
�� savoyes ��  � l ,1������ 1  ,1��
�� 
pacd��  ��  ��  � m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l F������� Z  F�������� E FM��� o  FI���� &0 masterstogenerate mastersToGenerate� m  IL�� ���  1 0� k  P��� � � r  PW m  PS �  F e a t - 1 0 o      ���� 0 
mastername 
masterName   r  X_ m  X[		 �

  1 0 _ F e a t u r e s o      ���� 0 fileslug fileSlug �� O  `� k  f�  I fk����
�� .aevtodocnull  �    alis o  fg����  0 masterdocument masterDocument��    n lq I  mq�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��    f  lm  n rw I  sw�������� 0 clean_save_l clean_save_L��  ��    f  rs �� O x� I ������
�� .CoReclosnull���     obj ��   ���
�� 
svop m  ���~
�~ savoyes �   1  x}�}
�} 
pacd��   m  `c�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  ��  ��  �  !  l     �|�{�z�|  �{  �z  ! "#" l     �y�x�w�y  �x  �w  # $%$ l ��&�v�u& Z  ��'(�t�s' E ��)*) o  ���r�r &0 masterstogenerate mastersToGenerate* m  ��++ �,, 
 1 2 - 1 3( k  ��-- ./. l ��0120 r  ��343 m  ��55 �66  F e a t - 1 2 - 1 34 o      �q�q 0 
mastername 
masterName1 * $ Create the weekday TV/features page   2 �77 H   C r e a t e   t h e   w e e k d a y   T V / f e a t u r e s   p a g e/ 898 r  ��:;: m  ��<< �==  1 2 - 1 3 _ T V; o      �p�p 0 fileslug fileSlug9 >�o> O  ��?@? k  ��AA BCB I ���nD�m
�n .aevtodocnull  �    alisD o  ���l�l  0 masterdocument masterDocument�m  C EFE n ��GHG I  ���k�j�i�k >0 applymaster_changedate_spread applyMaster_changeDate_spread�j  �i  H  f  ��F IJI n ��KLK I  ���h�g�f�h (0 changelegaldate_12 changeLegalDate_12�g  �f  L  f  ��J MNM n ��OPO I  ���e�d�c�e 0 clean_save_l clean_save_L�d  �c  P  f  ��N Q�bQ O ��RSR I ���a�`T
�a .CoReclosnull���     obj �`  T �_U�^
�_ 
svopU m  ���]
�] savoyes �^  S l ��V�\�[V 1  ���Z
�Z 
pacd�\  �[  �b  @ m  ��WW�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �o  �t  �s  �v  �u  % XYX l     �Y�X�W�Y  �X  �W  Y Z[Z l     �V�U�T�V  �U  �T  [ \]\ l �/^�S�R^ Z  �/_`�Q�P_ E ��aba o  ���O�O &0 masterstogenerate mastersToGenerateb m  ��cc �dd ( N e w s   r e v i e w s      s p l i t` k  �+ee fgf r  ��hih m  ��jj �kk " F e a t - N e w s   r e v i e w si o      �N�N 0 
mastername 
masterNameg lml r  ��non m  ��pp �qq  8 - 9 _ N e w s R e v i e wo o      �M�M 0 fileslug fileSlugm r�Lr O  �+sts k  *uu vwv I 	�Kx�J
�K .aevtodocnull  �    alisx o  �I�I  0 masterdocument masterDocument�J  w yzy n 
{|{ I  �H�G�F�H >0 applymaster_changedate_spread applyMaster_changeDate_spread�G  �F  |  f  
z }~} n � I  �E�D�C�E 0 clean_save_l clean_save_L�D  �C  �  f  ~ ��B� O *��� I )�A�@�
�A .CoReclosnull���     obj �@  � �?��>
�? 
svop� m  "%�=
�= savoyes �>  � l ��<�;� 1  �:
�: 
pacd�<  �;  �B  t m  ����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �L  �Q  �P  �S  �R  ] ��� l     �9�8�7�9  �8  �7  � ��� l 0���6�5� Z  0����4�3� E 07��� o  03�2�2 &0 masterstogenerate mastersToGenerate� m  36�� ��� , N e w s   r e v i e w s      s i n g l e s� k  :��� ��� r  :A��� m  :=�� ��� " F e a t - N e w s R e v   L e f t� o      �1�1 0 
mastername 
masterName� ��� r  BI��� m  BE�� ���  8 _ N e w s R e v i e w� o      �0�0 0 fileslug fileSlug� ��� O  Jw��� k  Pv�� ��� I PU�/��.
�/ .aevtodocnull  �    alis� o  PQ�-�-  0 masterdocument masterDocument�.  � ��� n V[��� I  W[�,�+�*�, >0 applymaster_changedate_single applyMaster_changeDate_single�+  �*  �  f  VW� ��� n \a��� I  ]a�)�(�'�) 0 clean_save_l clean_save_L�(  �'  �  f  \]� ��&� O bv��� I ju�%�$�
�% .CoReclosnull���     obj �$  � �#��"
�# 
svop� m  nq�!
�! savoyes �"  � l bg�� �� 1  bg�
� 
pacd�   �  �&  � m  JM���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l xx����  �  �  � ��� r  x��� m  x{�� ��� $ F e a t - N e w s R e v   R i g h t� o      �� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  9 _ N e w s R e v i e w� o      �� 0 fileslug fileSlug� ��� O  ����� k  ���� ��� I �����
� .aevtodocnull  �    alis� o  ����  0 masterdocument masterDocument�  � ��� n ����� I  ������ >0 applymaster_changedate_single applyMaster_changeDate_single�  �  �  f  ��� ��� n ����� I  ������ 0 clean_save_r clean_save_R�  �  �  f  ��� ��� O ����� I �����
� .CoReclosnull���     obj �  � ���

� 
svop� m  ���	
�	 savoyes �
  � l ������ 1  ���
� 
pacd�  �  �  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  �4  �3  �6  �5  � ��� l     ����  �  �  � ��� l     ��� �  �  �   � ��� l ������� Z  �������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  1 5� k  ��� ��� r  ����� m  ���� ���  F e a t - 1 5� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  1 5 _ F e a t u r e s� o      ���� 0 fileslug fileSlug� ���� O  ���� k  � �� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ���    n �� I  ���������� 0 clean_save_r clean_save_R��  ��    f  �� �� O �  I ������
�� .CoReclosnull���     obj ��   ����
�� 
svop m  ����
�� savoyes ��   1  ����
�� 
pacd��  � m  ��		�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  ��  ��  � 

 l     ��������  ��  ��    l     ��������  ��  ��    l Q���� Z  Q���� E  o  	���� &0 masterstogenerate mastersToGenerate m  	 � 
 1 6 - 1 7 l M k  M  r   m   �    A r t s - 1 6 - 1 7 o      ���� 0 
mastername 
masterName !"! r  #$# m  %% �&&  1 6 - 1 7 _ E n t s - A r t s$ o      ���� 0 fileslug fileSlug" '��' O   M()( k  &L** +,+ I &+��-��
�� .aevtodocnull  �    alis- o  &'����  0 masterdocument masterDocument��  , ./. n ,1010 I  -1�������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  1  f  ,-/ 232 n 27454 I  37�������� 0 clean_save_l clean_save_L��  ��  5  f  233 6��6 O 8L787 I @K����9
�� .CoReclosnull���     obj ��  9 ��:��
�� 
svop: m  DG��
�� savoyes ��  8 l 8=;����; 1  8=��
�� 
pacd��  ��  ��  ) m   #<<�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��   ( " Create the weekend Ents/Arts page    �== D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  ��  ��   >?> l     ��������  ��  ��  ? @A@ l     ��������  ��  ��  A BCB l R&D����D Z  R&EF����E E RYGHG o  RU���� &0 masterstogenerate mastersToGenerateH m  UXII �JJ  L e t t e r sF k  \"KK LML r  \cNON m  \_PP �QQ  F e a t - L e t t e r sO o      ���� 0 
mastername 
masterNameM RSR l dpTUVT r  dpWXW J  dlYY Z[Z m  dg\\ �]]  M o n d a y[ ^��^ m  gj__ �``  W e d n e s d a y��  X o      ���� 0 p10_days  U = 7 These two lists determine what the page number will be   V �aa n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b eS bcb r  q�ded J  q�ff ghg m  qtii �jj  T u e s d a yh klk m  twmm �nn  T h u r s d a yl opo m  wzqq �rr  F r i d a yp sts m  z}uu �vv  S a t u r d a yt w��w m  }�xx �yy , N o   d a y      w o r k i n g   a h e a d��  e o      ���� 0 p14_days  c z{z l ����������  ��  ��  { |��| Z  �"}~��} E ����� o  ������ 0 p10_days  � o  ������ 0 theday theDay~ k  ���� ��� r  ����� m  ���� ���  1 0 _ L e t t e r s� l     ������ o      ���� 0 fileslug fileSlug��  ��  � ��� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_single changePageNumber_single� ���� m  ���� ���  1 0��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � 1  ����
�� 
pacd��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ���� l ����������  ��  ��  ��   ��� E ����� o  ������ 0 p14_days  � o  ������ 0 theday theDay� ���� k  ��� ��� r  ����� m  ���� ���  1 4 _ L e t t e r s� l     ������ o      ���� 0 fileslug fileSlug��  ��  � ���� O  ���� k  ��� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ���� I  �������� 20 changepagenumber_single changePageNumber_single� ���� m  ���� ���  1 4��  ��  �  f  ��� ��� n ��� I  �������� 0 clean_save_l clean_save_L��  ��  �  f  � ���� O 	��� I �����
�� .CoReclosnull���     obj ��  � ����
�� 
svop� m  �~
�~ savoyes �  � 1  	�}
�} 
pacd��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  ��  ��  ��  ��  ��  C ��� l     �|�{�z�|  �{  �z  � ��� l     �y�x�w�y  �x  �w  � ��� l     �v�u�t�v  �u  �t  � ��� l 'r��s�r� Z  'r���q�p� E '.��� o  '*�o�o &0 masterstogenerate mastersToGenerate� m  *-�� ���  A r t s� l 1n���� k  1n�� ��� r  18��� m  14�� ���  A r t s - 1 1� o      �n�n 0 
mastername 
masterName� ��� r  9@��� m  9<�� ���  1 1 _ A r t s� o      �m�m 0 fileslug fileSlug� ��l� O  An��� k  Gm�� ��� I GL�k��j
�k .aevtodocnull  �    alis� o  GH�i�i  0 masterdocument masterDocument�j  � ��� n MR��� I  NR�h�g�f�h >0 applymaster_changedate_single applyMaster_changeDate_single�g  �f  �  f  MN� ��� n SX� � I  TX�e�d�c�e 0 clean_save_r clean_save_R�d  �c     f  ST� �b O Ym I al�a�`
�a .CoReclosnull���     obj �`   �_�^
�_ 
svop m  eh�]
�] savoyes �^   1  Y^�\
�\ 
pacd�b  � m  AD�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �l  � ( " Create the weekday Arts page (11)   � � D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )�q  �p  �s  �r  � 	 l     �[�Z�Y�[  �Z  �Y  	 

 l     �X�W�V�X  �W  �V    l s��U�T Z  s��S�R E sz o  sv�Q�Q &0 masterstogenerate mastersToGenerate m  vy �  A r t s   s p l i t k  }�  r  }� m  }� �  A r t s - S p l i t o      �P�P 0 
mastername 
masterName  r  �� m  ��   �!!  1 0 - 1 1 _ A r t s o      �O�O 0 fileslug fileSlug "�N" O  ��#$# k  ��%% &'& I ���M(�L
�M .aevtodocnull  �    alis( o  ���K�K  0 masterdocument masterDocument�L  ' )*) n ��+,+ I  ���J�I�H�J >0 applymaster_changedate_spread applyMaster_changeDate_spread�I  �H  ,  f  ��* -.- n ��/0/ I  ���G�F�E�G 0 clean_save_l clean_save_L�F  �E  0  f  ��. 1�D1 O ��232 I ���C�B4
�C .CoReclosnull���     obj �B  4 �A5�@
�A 
svop5 m  ���?
�? savoyes �@  3 l ��6�>�=6 1  ���<
�< 
pacd�>  �=  �D  $ m  ��77�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �N  �S  �R  �U  �T   898 l     �;�:�9�;  �:  �9  9 :;: l     �8�7�6�8  �7  �6  ; <=< l ��>�5�4> O ��?@? r  ��ABA m  ���3
�3 elnteInAB n      CDC 1  ���2
�2 
UIAcD 1  ���1
�1 
pScr@ m  ��EE�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �5  �4  = FGF l     �0�/�.�0  �/  �.  G HIH l ��J�-�,J O  ��KLK k  ��MM NON I ���+�*�)
�+ .miscactvnull��� ��� obj �*  �)  O P�(P I ���'Q�&
�' .aevtodocnull  �    alisQ o  ���%�% $0 freshpagesfolder freshPagesFolder�&  �(  L m  ��RR�                                                                                  MACS  alis    Z  SSD                        �@��H+     <
Finder.app                                                       ���(��        ����  	                CoreServices    �@��      �(��       <   /   .  -SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  �-  �,  I STS l     �$�#�"�$  �#  �"  T UVU l     �!� ��!  �   �  V WXW l     �YZ�  Y   Handler definitions --   Z �[[ .   H a n d l e r   d e f i n i t i o n s   - -X \]\ l     ����  �  �  ] ^_^ l     ����  �  �  _ `a` l      �bc�  b X R	Create the date used on the InDesign pages, and deal with some Saturday oddities	   c �dd � 	 C r e a t e   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l   w i t h   s o m e   S a t u r d a y   o d d i t i e s 	a efe i     ghg I      ���� "0 create_pagedate create_pageDate�  �  h k    �ii jkj r     
lml J     nn opo m     qq �rr  J a n u a r yp sts m    uu �vv 
 M a r c ht wxw m    yy �zz  M a yx {|{ m    }} �~~  J u l y| � m    �� ���  A u g u s t� ��� m    �� ���  O c t o b e r�  m o      �� (0 thirtyonedaymonths ThirtyOneDayMonthsk ��� r    ��� J    �� ��� m    �� ��� 
 A p r i l� ��� m    �� ���  J u n e� ��� m    �� ���  S e p t e m b e r� ��� m    �� ���  N o v e m b e r�  � o      �� "0 thirtydaymonths ThirtyDayMonths� ��� l   ����  �  �  � ��� Z   ������ >   ��� o    �
�
 0 theday theDay� m    �� ���  S a t u r d a y� l   5���� k    5�� ��� r    3��� l   /��	�� b    /��� b    +��� b    '��� b    #��� b    ��� b    ��� o    �� 0 theday theDay� m    �� ���   � o    �� 0 themonth theMonth� m    "�� ���   � o   # &�� 0 thedate theDate� m   ' *�� ���   � o   + .�� 0 theyear theYear�	  �  � o      �� 0 pagedate pageDate� ��� l  4 4�� ���  �   ��  �  � + % Does the page date for every weekday   � ��� J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a y� ��� F   8 U��� F   8 K��� =  8 =��� o   8 9���� 0 theday theDay� m   9 <�� ���  S a t u r d a y� =  @ G��� o   @ C���� 0 thedate theDate� m   C F�� ���  3 0� E  N Q��� o   N O���� "0 thirtydaymonths ThirtyDayMonths� o   O P���� 0 themonth theMonth� ��� l  X ����� k   X ��� ��� Y   X ��������� l  h ����� Z  h �������� =  h r��� n   h p��� 4   k p���
�� 
cobj� o   n o���� 0 i  � o   h k���� 0 months_list  � o   p q���� 0 themonth theMonth� r   u ���� l  u ������ n   u ��� 4   x ���
�� 
cobj� l  { ~������ [   { ~��� o   { |���� 0 i  � m   | }���� ��  ��  � o   u x���� 0 months_list  ��  ��  � o      ���� 0 secondmonth secondMonth��  ��  � V P This repeat block here grabs the name of the next month to use in the page date   � ��� �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e�� 0 i  � m   [ \���� � I  \ c�����
�� .corecnte****       ****� o   \ _���� 0 months_list  ��  ��  � ��� l  � ����� r   � ���� l  � ������� b   � ���� b   � ���� b   � ���� b   � �� � b   � � m   � � �   S a t u r d a y / S u n d a y   o   � ����� 0 themonth theMonth  m   � � �    3 0 -� o   � ����� 0 secondmonth secondMonth� m   � � �    1  � o   � ����� 0 theyear theYear��  ��  � o      ���� 0 pagedate pageDate� P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"   � �		 �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 "� 
��
 l  � ���������  ��  ��  ��  � I C Deals with Saturdays at the end of 30-day months (uses list above)   � � �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )�  F   � � F   � � =  � � o   � ����� 0 theday theDay m   � � �  S a t u r d a y =  � � o   � ����� 0 thedate theDate m   � � �  3 1 E  � � o   � ����� (0 thirtyonedaymonths ThirtyOneDayMonths o   � ����� 0 themonth theMonth  l  �  k   �!! "#" Y   � �$��%&��$ Z  � �'(����' =  � �)*) n   � �+,+ 4   � ���-
�� 
cobj- o   � ����� 0 i  , o   � ����� 0 months_list  * o   � ����� 0 themonth theMonth( r   � �./. l  � �0����0 n   � �121 4   � ���3
�� 
cobj3 l  � �4����4 [   � �565 o   � ����� 0 i  6 m   � ����� ��  ��  2 o   � ����� 0 months_list  ��  ��  / o      ���� 0 secondmonth secondMonth��  ��  �� 0 i  % m   � ����� & I  � ���7��
�� .corecnte****       ****7 o   � ����� 0 months_list  ��  ��  # 898 r   �:;: l  �<����< b   �=>= b   �	?@? b   �ABA b   �CDC b   � �EFE m   � �GG �HH   S a t u r d a y / S u n d a y  F o   � ����� 0 themonth theMonthD m   �II �JJ    3 1 -B o  ���� 0 secondmonth secondMonth@ m  KK �LL    1  > o  	���� 0 theyear theYear��  ��  ; o      ���� 0 pagedate pageDate9 M��M l ��������  ��  ��  ��   I C Deals with Saturdays at the end of 31-day months (uses list above)     �NN �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e ) OPO F  5QRQ F  )STS = UVU o  ���� 0 theday theDayV m  WW �XX  S a t u r d a yT ? %YZY o  !���� 0 thedate theDateZ m  !$[[ �\\  2 7R = ,1]^] o  ,-���� 0 themonth theMonth^ m  -0__ �``  F e b r u a r yP aba l 8Mcdec k  8Mff ghg r  8Kiji l 8Gk����k b  8Glml b  8Cnon b  8?pqp m  8;rr �ss 2 S a t u r d a y / S u n d a y   F e b r u a r y  q o  ;>���� 0 thedate theDateo m  ?Btt �uu  - M a r c h   1  m o  CF���� 0 theyear theYear��  ��  j o      ���� 0 pagedate pageDateh v��v l LL��������  ��  ��  ��  d { u Deals with Saturdays at the end of February. Fun fact: it�s quite blunt but won�t produce the wrong date until 2032.   e �ww �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   F u n   f a c t :   i t  s   q u i t e   b l u n t   b u t   w o n  t   p r o d u c e   t h e   w r o n g   d a t e   u n t i l   2 0 3 2 .b xyx F  Poz{z F  Pc|}| = PU~~ o  PQ���� 0 theday theDay m  QT�� ���  S a t u r d a y} = X_��� o  X[���� 0 thedate theDate� m  [^�� ���  3 1{ = fk��� o  fg���� 0 themonth theMonth� m  gj�� ���  D e c e m b e ry ��� l r����� k  r��� ��� r  r���� l r������� b  r���� b  r}��� b  ry��� m  ru�� ��� L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  � o  ux���� 0 theyear theYear� m  y|�� ���  -� l }������� [  }���� o  }����� 0 theyear theYear� m  ������ ��  ��  ��  ��  � o      ���� 0 pagedate pageDate� ���� l ����������  ��  ��  ��  � 2 , Deals with Saturdays at the end of December   � ��� X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e r� ��� = ����� o  ������ 0 theday theDay� m  ���� ���  S a t u r d a y� ���� l ������ k  ���� ��� r  ����� l �������� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���   S a t u r d a y / S u n d a y  � o  ������ 0 themonth theMonth� m  ���� ���   � o  ������ 0 thedate theDate� m  ���� ���  -� l �������� [  ����� o  ������ 0 thedate theDate� m  ������ ��  ��  � m  ���� ���   � o  ������ 0 theyear theYear��  ��  � o      ���� 0 pagedate pageDate� ���� l ����������  ��  ��  ��  � 3 - Does the page date for every normal Saturday   � ��� Z   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y��  �  �  f ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � @ :	Create the short date to name the created InDesign files	   � ��� t 	 C r e a t e   t h e   s h o r t   d a t e   t o   n a m e   t h e   c r e a t e d   I n D e s i g n   f i l e s 	� ��� i    ��� I      �������� "0 create_filedate create_fileDate��  ��  � k     [�� ��� Z     ������ A    ��� c     ��� o     ���� 0 thedate theDate� m    ��
�� 
long� m    �� ���  1 0� l   ���� r    ��� l   ����� b    ��� m    	�� ���  0� o   	 
�~�~ 0 thedate theDate��  �  � o      �}�} 0 numdate numDate� L F If the date is 1-10 this adds an initial zero to use in the file name   � ��� �   I f   t h e   d a t e   i s   1 - 1 0   t h i s   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e��  � r    ��� o    �|�| 0 thedate theDate� o      �{�{ 0 numdate numDate� ��� l   �z�y�x�z  �y  �x  � ��� Y    7��w���v� l  " 2���� Z  " 2� �u�t� =  " ( n   " & 4   # &�s
�s 
cobj o   $ %�r�r 0 i   o   " #�q�q 0 months_list   o   & '�p�p 0 themonth theMonth  r   + . o   + ,�o�o 0 i   o      �n�n 0 raw_nummonth raw_numMonth�u  �t  � d ^ This gets the month number and, if less than 10, adds an initial zero to use in the file name   � � �   T h i s   g e t s   t h e   m o n t h   n u m b e r   a n d ,   i f   l e s s   t h a n   1 0 ,   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e�w 0 i  � m    �m�m � I   �l	�k
�l .corecnte****       ****	 o    �j�j 0 months_list  �k  �v  � 

 Z   8 I�i A  8 ; o   8 9�h�h 0 raw_nummonth raw_numMonth m   9 :�g�g 
 r   > C l  > A�f�e b   > A m   > ? �  0 o   ? @�d�d 0 raw_nummonth raw_numMonth�f  �e   o      �c�c 0 nummonth numMonth�i   r   F I o   F G�b�b 0 raw_nummonth raw_numMonth o      �a�a 0 nummonth numMonth  l  J J�`�_�^�`  �_  �^   �] l  J [ r   J [ !  l  J Y"�\�[" b   J Y#$# b   J M%&% o   J K�Z�Z 0 numdate numDate& o   K L�Y�Y 0 nummonth numMonth$ l  M X'�X�W' n   M X()( 7 N X�V*+
�V 
ctxt* m   R T�U�U + m   U W�T�T ) o   M N�S�S 0 theyear theYear�X  �W  �\  �[  ! o      �R�R 0 filedate fileDate Z T This combines the date, month and last two digits of the year to create a file name    �,, �   T h i s   c o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r   t o   c r e a t e   a   f i l e   n a m e�]  � -.- l     �Q�P�O�Q  �P  �O  . /0/ l     �N�M�L�N  �M  �L  0 121 l      �K34�K  3 ` Z	Single page: Apply a master, change the date and override everything on the "Work" layer	   4 �55 � 	 S i n g l e   p a g e :   A p p l y   a   m a s t e r ,   c h a n g e   t h e   d a t e   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	2 676 i    898 I      �J�I�H�J >0 applymaster_changedate_single applyMaster_changeDate_single�I  �H  9 O     c:;: O    b<=< k   
 a>> ?@? r   
 ABA 4   
 �GC
�G 
msprC o    �F�F 0 
mastername 
masterNameB n      DED 1    �E
�E 
pmasE 4    �DF
�D 
pageF m    �C�C @ GHG I   &�BIJ
�B .InESovrrobj         obj I n    KLK 4    �AM
�A 
txtfM m    NN �OO  E d i t i o n   d a t eL 4    �@P
�@ 
msprP o    �?�? 0 
mastername 
masterNameJ �>Q�=
�> 
dPgeQ 4    "�<R
�< 
pageR m     !�;�; �=  H STS r   ' 2UVU o   ' (�:�: 0 pagedate pageDateV l     W�9�8W n      XYX 1   / 1�7
�7 
pcntY n   ( /Z[Z 4   , /�6\
�6 
txtf\ m   - .]] �^^  E d i t i o n   d a t e[ 4   ( ,�5_
�5 
page_ m   * +�4�4 �9  �8  T `�3` Q   3 aab�2a I  6 X�1cd
�1 .InESovrrobj         obj c l  6 Oe�0�/e 6  6 Ofgf n   6 >hih 2   < >�.
�. 
cobji n   6 <jkj 1   : <�-
�- 
mpgsk 4   6 :�,l
�, 
pagel m   8 9�+�+ g =  ? Nmnm n  @ Hopo 1   D H�*
�* 
pnamp 1   @ D�)
�) 
pilrn m   I Mqq �rr  W o r k�0  �/  d �(s�'
�( 
dPges 4   P T�&t
�& 
paget m   R S�%�% �'  b R      �$�#�"
�$ .ascrerr ****      � ****�#  �"  �2  �3  = l   u�!� u 1    �
� 
pacd�!  �   ; m     vv�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  7 wxw l     ����  �  �  x yzy l     ����  �  �  z {|{ l      �}~�  } } w	Spreads: Create a new spread from a master, change the date on both pages and override everything on the "Work" layer	   ~ � � 	 S p r e a d s :   C r e a t e   a   n e w   s p r e a d   f r o m   a   m a s t e r ,   c h a n g e   t h e   d a t e   o n   b o t h   p a g e s   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	| ��� i    ��� I      ���� >0 applymaster_changedate_spread applyMaster_changeDate_spread�  �  � O     ���� O    ���� k   
 ��� ��� I  
 ���
� .corecrel****      � null�  � ���
� 
kocl� m    �
� 
sprd� ���
� 
prdt� K    �� ���
� 
pmas� 4    ��
� 
mspr� o    �� 0 
mastername 
masterName�  �  � ��� I   *�
��
�
 .InESovrrobj         obj � n    !��� 4    !�	�
�	 
txtf� m     �� ���  L - E d i t i o n   d a t e� 4    ��
� 
mspr� o    �� 0 
mastername 
masterName� ���
� 
dPge� 4   " &��
� 
page� m   $ %�� �  � ��� I  + ;���
� .InESovrrobj         obj � n   + 2��� 4   / 2��
� 
txtf� m   0 1�� ���  R - E d i t i o n   d a t e� 4   + /� �
�  
mspr� o   - .���� 0 
mastername 
masterName� �����
�� 
dPge� 4   3 7���
�� 
page� m   5 6���� ��  � ��� r   < M��� o   < ?���� 0 pagedate pageDate� l     ������ n      ��� 1   H L��
�� 
pcnt� n   ? H��� 4   C H���
�� 
txtf� m   D G�� ���  L - E d i t i o n   d a t e� 4   ? C���
�� 
page� m   A B���� ��  ��  � ��� r   N _��� o   N Q���� 0 pagedate pageDate� l     ������ n      ��� 1   Z ^��
�� 
pcnt� n   Q Z��� 4   U Z���
�� 
txtf� m   V Y�� ���  R - E d i t i o n   d a t e� 4   Q U���
�� 
page� m   S T���� ��  ��  � ���� Q   ` ������ k   c ��� ��� I  c �����
�� .InESovrrobj         obj � l  c ������� 6  c ���� n   c o��� 2   k o��
�� 
cobj� n   c k��� 1   g k��
�� 
mpgs� 4   c g���
�� 
page� m   e f���� � =  r ���� n  s {��� 1   w {��
�� 
pnam� 1   s w��
�� 
pilr� m   | ��� ���  W o r k��  ��  � �����
�� 
dPge� 4   � ����
�� 
page� m   � ����� ��  � ���� I  � �����
�� .InESovrrobj         obj � l  � ������� 6  � ���� n   � ���� 2   � ���
�� 
cobj� n   � ���� 1   � ���
�� 
mpgs� 4   � ����
�� 
page� m   � ����� � =  � ���� n  � ���� 1   � ���
�� 
pnam� 1   � ���
�� 
pilr� m   � ��� ���  W o r k��  ��  � �����
�� 
dPge� 4   � ����
�� 
page� m   � ����� ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  � l   ������ 1    ��
�� 
pacd��  ��  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � }	Single page: Change the page number to the one specified in the handler call - e.g. changePageNumber_single("3") for page 3	   � ��� � 	 S i n g l e   p a g e :   C h a n g e   t h e   p a g e   n u m b e r   t o   t h e   o n e   s p e c i f i e d   i n   t h e   h a n d l e r   c a l l   -   e . g .   c h a n g e P a g e N u m b e r _ s i n g l e ( " 3 " )   f o r   p a g e   3 	� ��� i    ��� I      ������� 20 changepagenumber_single changePageNumber_single� ���� o      ���� 0 
pagenumber 
pageNumber��  ��  � O     (   O    ' k   
 &  I  
 ��
�� .InESovrrobj         obj  n   
 	
	 4    ��
�� 
txtf m     �  P a g e   n u m b e r
 4   
 ��
�� 
mspr o    ���� 0 
mastername 
masterName ����
�� 
dPge 4    ��
�� 
page m    ���� ��   �� r    & o    ���� 0 
pagenumber 
pageNumber l     ���� n       1   # %��
�� 
pcnt n    # 4     #��
�� 
txtf m   ! " �  P a g e   n u m b e r 4     ��
�� 
page m    ���� ��  ��  ��   l   ���� 1    ��
�� 
pacd��  ��   m     �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �   l     ��������  ��  ��    !"! l     ��������  ��  ��  " #$# l      ��%&��  % � �	Spreads: Change the page number on both pages. The handler call asks for the left-hand page�s number - e.g. changePageNumber_spread("8") for pages 8 and 9	   & �''8 	 S p r e a d s :   C h a n g e   t h e   p a g e   n u m b e r   o n   b o t h   p a g e s .   T h e   h a n d l e r   c a l l   a s k s   f o r   t h e   l e f t - h a n d   p a g e  s   n u m b e r   -   e . g .   c h a n g e P a g e N u m b e r _ s p r e a d ( " 8 " )   f o r   p a g e s   8   a n d   9 	$ ()( i    *+* I      ��,���� 20 changepagenumber_spread changePageNumber_spread, -��- o      ����  0 leftpagenumber leftPageNumber��  ��  + O     I./. O    H010 k   
 G22 343 I  
 ��56
�� .InESovrrobj         obj 5 n   
 787 4    ��9
�� 
txtf9 m    :: �;;  L - P a g e   n u m b e r8 4   
 ��<
�� 
mspr< o    ���� 0 
mastername 
masterName6 ��=��
�� 
dPge= 4    ��>
�� 
page> m    ���� ��  4 ?@? I   +��AB
�� .InESovrrobj         obj A n    "CDC 4    "��E
�� 
txtfE m     !FF �GG  R - P a g e   n u m b e rD 4    ��H
�� 
msprH o    ���� 0 
mastername 
masterNameB ��I��
�� 
dPgeI 4   # '��J
�� 
pageJ m   % &���� ��  @ KLK r   , 7MNM o   , -����  0 leftpagenumber leftPageNumberN l     O����O n      PQP 1   4 6��
�� 
pcntQ n   - 4RSR 4   1 4��T
�� 
txtfT m   2 3UU �VV  L - P a g e   n u m b e rS 4   - 1��W
�� 
pageW m   / 0���� ��  ��  L X��X r   8 GYZY l  8 =[����[ c   8 =\]\ l  8 ;^����^ [   8 ;_`_ o   8 9����  0 leftpagenumber leftPageNumber` m   9 :���� ��  ��  ] m   ; <��
�� 
TEXT��  ��  Z l     a����a n      bcb 1   D F�
� 
pcntc n   = Dded 4   A D�~f
�~ 
txtff m   B Cgg �hh  R - P a g e   n u m b e re 4   = A�}i
�} 
pagei m   ? @�|�| ��  ��  ��  1 l   j�{�zj 1    �y
�y 
pacd�{  �z  / m     kk�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ) lml l     �x�w�v�x  �w  �v  m non l      �upq�u  p � �	Spreads and left-hand single pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   q �rr� 	 S p r e a d s   a n d   l e f t - h a n d   s i n g l e   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 	o sts i    uvu I      �t�s�r�t 0 clean_save_l clean_save_L�s  �r  v O     >wxw O    =yzy k   
 <{{ |}| r   
 ~~ m   
 �q
�q boovtrue n      ��� 1    �p
�p 
plck� 4    �o�
�o 
layr� m    �� ��� ( D a t e   a n d   p a g e   n u m b e r} ��� r    ��� m    �n
�n boovtrue� n      ��� 1    �m
�m 
plck� 4    �l�
�l 
layr� m    �� ���  F u r n i t u r e� ��� r    !��� m    �� ���  W o r k� 1     �k
�k 
pacl� ��� r   " *��� J   " &�� ��� m   " #�� @.      � ��j� m   # $�� @&      �j  � l     ��i�h� 1   & )�g
�g 
zero�i  �h  � ��f� I  + <�e�d�
�e .CoResavedocu        obj �d  � �c��b
�c 
kfil� b   - 8��� b   - 4��� b   - 2��� b   - 0��� o   - .�a�a $0 freshpagesfolder freshPagesFolder� o   . /�`�` 0 fileslug fileSlug� m   0 1�� ���  _� o   2 3�_�_ 0 filedate fileDate� m   4 7�� ��� 
 . i n d d�b  �f  z l   ��^�]� 1    �\
�\ 
pacd�^  �]  x m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  t ��� l     �[�Z�Y�[  �Z  �Y  � ��� l     �X�W�V�X  �W  �V  � ��� l      �U���U  � � �	Right-hand pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   � ���z 	 R i g h t - h a n d   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 	� ��� i    ��� I      �T�S�R�T 0 clean_save_r clean_save_R�S  �R  � O     >��� O    =��� k   
 <�� ��� r   
 ��� m   
 �Q
�Q boovtrue� n      ��� 1    �P
�P 
plck� 4    �O�
�O 
layr� m    �� ��� ( D a t e   a n d   p a g e   n u m b e r� ��� r    ��� m    �N
�N boovtrue� n      ��� 1    �M
�M 
plck� 4    �L�
�L 
layr� m    �� ���  F u r n i t u r e� ��� r    !��� m    �� ���  W o r k� 1     �K
�K 
pacl� ��� r   " *��� J   " &�� ��� m   " #�� @"      � ��J� m   # $�� @&      �J  � l     ��I�H� 1   & )�G
�G 
zero�I  �H  � ��F� I  + <�E�D�
�E .CoResavedocu        obj �D  � �C��B
�C 
kfil� b   - 8��� b   - 4��� b   - 2��� b   - 0��� o   - .�A�A $0 freshpagesfolder freshPagesFolder� o   . /�@�@ 0 fileslug fileSlug� m   0 1�� ���  _� o   2 3�?�? 0 filedate fileDate� m   4 7�� ��� 
 . i n d d�B  �F  � l   ��>�=� 1    �<
�< 
pacd�>  �=  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     �;�:�9�;  �:  �9  � ��� l     �8�7�6�8  �7  �6  � ��� l      �5���5  � � �	Changes the legal date on the left-hand page of a spread - it�s designed for pages 12-13 (TV), which have the legal date on weekdays.	   � ��� 	 C h a n g e s   t h e   l e g a l   d a t e   o n   t h e   l e f t - h a n d   p a g e   o f   a   s p r e a d   -   i t  s   d e s i g n e d   f o r   p a g e s   1 2 - 1 3   ( T V ) ,   w h i c h   h a v e   t h e   l e g a l   d a t e   o n   w e e k d a y s . 	� ��4� i     #	 		  I      �3�2�1�3 (0 changelegaldate_12 changeLegalDate_12�2  �1  	 O     (			 O    '			 k   
 &		 			 I  
 �0			

�0 .InESovrrobj         obj 		 n   
 			 4    �/	
�/ 
txtf	 m    		 �		  L e g a l   d a t e	 4   
 �.	
�. 
mspr	 o    �-�- 0 
mastername 
masterName	
 �,	�+
�, 
dPge	 4    �*	
�* 
page	 m    �)�) �+  	 	�(	 r    &			 o    �'�' 0 pagedate pageDate	 l     	�&�%	 n      			 1   # %�$
�$ 
pcnt	 n    #			 4     #�#	
�# 
txtf	 m   ! "		 �		  L e g a l   d a t e	 4     �"	
�" 
page	 m    �!�! �&  �%  �(  	 l   	� �	 1    �
� 
pacd�   �  	 m     	 	 �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �4       �	!	"	#	$	%	&	'	(	)	*	+ y �	,	-	.	/	0	1���  	! �����������������
�	��� "0 create_pagedate create_pageDate� "0 create_filedate create_fileDate� >0 applymaster_changedate_single applyMaster_changeDate_single� >0 applymaster_changedate_spread applyMaster_changeDate_spread� 20 changepagenumber_single changePageNumber_single� 20 changepagenumber_spread changePageNumber_spread� 0 clean_save_l clean_save_L� 0 clean_save_r clean_save_R� (0 changelegaldate_12 changeLegalDate_12
� .aevtoappnull  �   � ****� $0 freshpagesfolder freshPagesFolder�  0 masterdocument masterDocument� 0 weekday_pages  � 0 weekend_pages  � 0 ahead_pages  � 0 	days_list  �
 0 months_list  �	 0 theday theDay�  �  	" �h��	2	3�� "0 create_pagedate create_pageDate�  �  	2 ��� ��� (0 thirtyonedaymonths ThirtyOneDayMonths� "0 thirtydaymonths ThirtyDayMonths�  0 i  �� 0 secondmonth secondMonth	3 2quy}����������������������������������GIKW[_rt������������ �� �� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 pagedate pageDate
�� 
bool�� 0 months_list  
�� .corecnte****       ****
�� 
cobj���������vE�O�����vE�O��  ��%�%a %_ %a %_ %E` OPY��a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa �%a %�%a %_ %E` OPY�a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa  �%a !%�%a "%_ %E` OPY ��a # 	 _ a $a &	 �a % a & a &_ %a '%_ %E` OPY o�a ( 	 _ a ) a &	 �a * a & a +_ %a ,%_ k%E` OPY 3�a -  *a .�%a /%_ %a 0%_ k%a 1%_ %E` OPY h	# �������	4	5���� "0 create_filedate create_fileDate��  ��  	4 ���������� 0 numdate numDate�� 0 i  �� 0 raw_nummonth raw_numMonth�� 0 nummonth numMonth	5 �������������������������� 0 thedate theDate
�� 
long�� 0 months_list  
�� .corecnte****       ****
�� 
cobj�� 0 themonth theMonth�� 
�� 0 theyear theYear
�� 
ctxt�� �� 0 filedate fileDate�� \��&� 
��%E�Y �E�O "k�j kh ��/�  �E�Y h[OY��O�� 
�%E�Y �E�O��%�[�\[Zm\Z�2%E�	$ ��9����	6	7���� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  	6  	7 v������������N������]������	8����q����
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
cobj	8  
�� 
pilr
�� 
pnam��  ��  �� d� `*�, Y*��/*�k/�,FO*��/��/�*�k/l 	O�*�k/��/�,FO '*�k/�,�-�[a ,a ,\Za 81�*�k/l 	W X  hUU	% �������	9	:���� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  	9  	: ���������������������������������������	8����������
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
pnam��  ��  �� �� �*�, �*����*��/l� 	O*��/��/�*�l/l O*��/��/�*�m/l O_ *�l/�a /a ,FO_ *�m/�a /a ,FO V*�l/a ,a -a [a ,a ,\Za 81�*�l/l O*�m/a ,a -a [a ,a ,\Za 81�*�m/l W X  hUU	& �������	;	<���� 20 changepagenumber_single changePageNumber_single�� ��	=�� 	=  ���� 0 
pagenumber 
pageNumber��  	; ���� 0 
pagenumber 
pageNumber	< ����������������
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
pcnt�� )� %*�, *��/��/�*�k/l O�*�k/��/�,FUU	' ��+����	>	?���� 20 changepagenumber_spread changePageNumber_spread�� ��	@�� 	@  ����  0 leftpagenumber leftPageNumber��  	> ����  0 leftpagenumber leftPageNumber	? k��������:������FU����g
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
TEXT�� J� F*�, ?*��/��/�*�l/l O*��/��/�*�m/l O�*�l/��/�,FO�k�&*�m/��/�,FUU	( ��v����	A	B���� 0 clean_save_l clean_save_L��  ��  	A  	B ����������������������������
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
�� .CoResavedocu        obj �� ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU	) �������	C	D���� 0 clean_save_r clean_save_R��  ��  	C  	D ��������������~�}�|�{��z��y
�� 
pacd
�� 
layr
�� 
plck
� 
pacl
�~ 
zero
�} 
kfil�| $0 freshpagesfolder freshPagesFolder�{ 0 fileslug fileSlug�z 0 filedate fileDate
�y .CoResavedocu        obj �� ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU	* �x	�w�v	E	F�u�x (0 changelegaldate_12 changeLegalDate_12�w  �v  	E  	F 	 �t�s�r�q	�p�o�n�m	�l
�t 
pacd
�s 
mspr�r 0 
mastername 
masterName
�q 
txtf
�p 
dPge
�o 
page
�n .InESovrrobj         obj �m 0 pagedate pageDate
�l 
pcnt�u )� %*�, *��/��/�*�l/l O�*�l/��/�,FUU	+ �k	G�j�i	H	I�h
�k .aevtoappnull  �   � ****	G k    �	J	J  t	K	K  {	L	L  �	M	M  �	N	N  �	O	O  �	P	P 	Q	Q S	R	R d	S	S o	T	T �	U	U ^	V	V �	W	W �	X	X �	Y	Y $	Z	Z \	[	[ �	\	\ �	]	] 	^	^ B	_	_ �	`	` 	a	a <	b	b H�g�g  �j  �i  	H  	I � y�f ��e � � � � � ��d�c � � � � � ��b � � � � � � � � � ��a�` � � �	�_�^"&*.26:>A�]�\�[_�Zb�Y�X�W�V�Uk�T�Sv���R���Q���P�O�N�����M����L���K�J!/CEIfm�Ir�H�G�F��E�D�C���B���A�@�?��>�=�<�;�:�9���	�8+5<�7cjp������6���%IP\_�5imqux�4�3���2����� �1R�0�f $0 freshpagesfolder freshPagesFolder�e  0 masterdocument masterDocument�d �c 0 weekday_pages  �b 0 weekend_pages  �a 
�` 0 ahead_pages  �_ �^ 0 	days_list  �] �\ 0 months_list  
�[ 
prmp
�Z 
appr�Y 
�X .gtqpchltns    @   @ ns  
�W 
TEXT�V 0 theday theDay
�U 
rslt
�T 
errn�S���R 0 themonth theMonth
�Q 
dtxt
�P .sysodlogaskr        TEXT
�O 
ttxt�N 0 thedate theDate�M 0 theyear theYear
�L 
ret 
�K 
mlsl�J &0 masterstogenerate mastersToGenerate�I 0 pagedate pageDate�H 0 filedate fileDate�G "0 create_pagedate create_pageDate�F "0 create_filedate create_fileDate
�E elnteNvr
�D 
pScr
�C 
UIAc�B 0 
mastername 
masterName�A 0 fileslug fileSlug
�@ .aevtodocnull  �    alis�? >0 applymaster_changedate_spread applyMaster_changeDate_spread�> 20 changepagenumber_spread changePageNumber_spread�= 0 clean_save_l clean_save_L
�< 
pacd
�; 
svop
�: savoyes 
�9 .CoReclosnull���     obj �8 >0 applymaster_changedate_single applyMaster_changeDate_single�7 (0 changelegaldate_12 changeLegalDate_12�6 0 clean_save_r clean_save_R�5 0 p10_days  �4 �3 0 p14_days  �2 20 changepagenumber_single changePageNumber_single
�1 elnteInA
�0 .miscactvnull��� ��� obj �h��E�O�E�O�������vE�O����a a �vE` Oa a a a a a a a a a a vE` Oa a  a !a "a #a $a %a &vE` 'Oa (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4vE` 5O_ 'a 6a 7a 8a 9a : ;a <&E` =O_ >a ?  )a @a AlhY hO_ =a B �_ 5a 6a Ca 8a Da : ;a <&E` EO_ >a F  )a @a AlhY hOa Ga Ha Ia 8a Ja : Ka L,a <&E` MO_ >a N  )a @a AlhY hOa Oa Ha Pa 8a Qa : Ka L,a <&E` RO_ >a S  )a @a AlhY hY hO_ =a T  C_ a 6a U_ V%_ V%a W%a 8a Xa Ye� ;E` ZO_ >f  )a @a AlhY hY �_ =a [ A�a 6a \_ V%_ V%a ]%a 8a ^a Ye� ;E` ZO_ >f  )a @a AlhY hY N_ =a _  C_ a 6a `_ V%_ V%a a%a 8a ba Ye� ;E` ZO_ >f  )a @a AlhY hY hO_ =a c  a dE` eOa fE` gY *j+ hO*j+ iOa j a k*a l,a m,FUO_ Za n �a oE` pO_ =a q  Ca rE` sOa j 1�j tO)j+ uO)a vk+ wO)j+ xO*a y, *a za {l |UUY @a }E` sOa j 1�j tO)j+ uO)a ~k+ wO)j+ xO*a y, *a za {l |UUY hO_ Za  Ba �E` pOa �E` sOa j (�j tO)j+ �O)j+ xO*a y, *a za {l |UUY hO_ Za � Ha �E` pOa �E` sOa j .�j tO)j+ uO)j+ �O)j+ xO*a y, *a za {l |UUY hO_ Za � Ba �E` pOa �E` sOa j (�j tO)j+ uO)j+ xO*a y, *a za {l |UUY hO_ Za � �a �E` pOa �E` sOa j (�j tO)j+ �O)j+ xO*a y, *a za {l |UUOa �E` pOa �E` sOa j (�j tO)j+ �O)j+ �O*a y, *a za {l |UUY hO_ Za � Ba �E` pOa �E` sOa j (�j tO)j+ �O)j+ �O*a y, *a za {l |UUY hO_ Za � Ba �E` pOa �E` sOa j (�j tO)j+ uO)j+ xO*a y, *a za {l |UUY hO_ Za � �a �E` pOa �a �lvE` �Oa �a �a �a �a �a �vE` �O_ �_ = Ea �E` sOa j 1�j tO)j+ �O)a �k+ �O)j+ xO*a y, *a za {l |UUOPY N_ �_ = Ca �E` sOa j 1�j tO)j+ �O)a �k+ �O)j+ xO*a y, *a za {l |UUY hY hO_ Za � Ba �E` pOa �E` sOa j (�j tO)j+ �O)j+ �O*a y, *a za {l |UUY hO_ Za � Ba �E` pOa �E` sOa j (�j tO)j+ uO)j+ xO*a y, *a za {l |UUY hOa j a �*a l,a m,FUOa � *j �O�j tU	, �/	c�/ 	c   � � � � � �	- �.	d�. 	d   � � � � � �	. �-	e�- 
	e 
  � � � � � � � � � �	/ �,	f�, 	f   � � �		0 �+	g�+ 	g  "&*.26:>A	1 �	h	h 
 f a l s e�  �   ascr  ��ޭ