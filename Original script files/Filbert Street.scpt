FasdUAS 1.101.10   ��   ��    k             l     ��  ��    A ;	Filbert Street, a better Morning Star sport-page generator     � 	 	 v 	 F i l b e r t   S t r e e t ,   a   b e t t e r   M o r n i n g   S t a r   s p o r t - p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��    " 	Created on			June 16th 2012     �   8 	 C r e a t e d   o n 	 	 	 J u n e   1 6 t h   2 0 1 2      l     ��  ��    " 	Last updated		July 7th 2012     �   8 	 L a s t   u p d a t e d 	 	 J u l y   7 t h   2 0 1 2      l     ��������  ��  ��        l      ��   ��    � � Description: This generates the pages needed by the sports desk. It has a different name because it�s written in a very different way to previous scripts and isn�t finished.      � ! !\   D e s c r i p t i o n :   T h i s   g e n e r a t e s   t h e   p a g e s   n e e d e d   b y   t h e   s p o r t s   d e s k .   I t   h a s   a   d i f f e r e n t   n a m e   b e c a u s e   i t  s   w r i t t e n   i n   a   v e r y   d i f f e r e n t   w a y   t o   p r e v i o u s   s c r i p t s   a n d   i s n  t   f i n i s h e d .   " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   & � �	Status: Updated handlers, now stored in St Ann's.scpt, Finder activation at script end, InDesign to ignore dialogs while the script runs.	    ' � ( ( 	 S t a t u s :   U p d a t e d   h a n d l e r s ,   n o w   s t o r e d   i n   S t   A n n ' s . s c p t ,   F i n d e r   a c t i v a t i o n   a t   s c r i p t   e n d ,   I n D e s i g n   t o   i g n o r e   d i a l o g s   w h i l e   t h e   s c r i p t   r u n s . 	 %  ) * ) l     ��������  ��  ��   *  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / D > Global variables that are needed in handlers at some point --    0 � 1 1 |   G l o b a l   v a r i a b l e s   t h a t   a r e   n e e d e d   i n   h a n d l e r s   a t   s o m e   p o i n t   - - .  2 3 2 p       4 4 ������ 0 theday theDay��   3  5 6 5 p       7 7 ������ 0 themonth theMonth��   6  8 9 8 p       : : ������ 0 thedate theDate��   9  ; < ; p       = = ������ 0 theyear theYear��   <  > ? > p       @ @ ������ 0 months_list  ��   ?  A B A l      C D E C p       F F ������ 0 fileslug fileSlug��   D > 8 The short code used at the start of the new file�s name    E � G G p   T h e   s h o r t   c o d e   u s e d   a t   t h e   s t a r t   o f   t h e   n e w   f i l e  s   n a m e B  H I H l      J K L J p       M M ������ 0 filedate fileDate��   K 5 / The short date used to name the InDesign files    L � N N ^   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s I  O P O l      Q R S Q p       T T ������ 0 pagedate pageDate��   R 6 0 The full date used in the InDesign page�s folio    S � U U `   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o P  V W V l      X Y Z X p       [ [ ������ $0 freshpagesfolder freshPagesFolder��   Y . ( Where the newly created files are saved    Z � \ \ P   W h e r e   t h e   n e w l y   c r e a t e d   f i l e s   a r e   s a v e d W  ] ^ ] l      _ ` a _ p       b b ������  0 masterdocument masterDocument��   ` * $ The actual InDesign master document    a � c c H   T h e   a c t u a l   I n D e s i g n   m a s t e r   d o c u m e n t ^  d e d l      f g h f p       i i ������ 0 
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
  l     ��������  ��  ��    l     ����     Generate the pages --    � ,   G e n e r a t e   t h e   p a g e s   - -  l     ��������  ��  ��    l ����� O � r  � m  ����
�� elnteNvr n       1  ���
�� 
UIAc 1  ����
�� 
pScr m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��    l     ��������  ��  ��    !  l �"����" Z  �#$����# E %&% o  ���� &0 masterstogenerate mastersToGenerate& m  '' �((  T w o   p a g e s$ k  �)) *+* r  ,-, m  .. �//  S p r t - B a c k- o      ���� 0 
mastername 
masterName+ 010 r  232 m  44 �55  1 6 _ B a c k3 o      ���� 0 fileslug fileSlug1 676 O  U898 k  %T:: ;<; I %*��=��
�� .aevtodocnull  �    alis= o  %&����  0 masterdocument masterDocument��  < >?> n +0@A@ I  ,0�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  A  f  +,? BCB n 19DED I  29��F���� 20 changepagenumber_single changePageNumber_singleF G��G m  25HH �II  1 6��  ��  E  f  12C JKJ n :?LML I  ;?�������� 0 clean_save_l clean_save_L��  ��  M  f  :;K N��N O @TOPO I HS����Q
�� .CoReclosnull���     obj ��  Q ��R��
�� 
svopR m  LO��
�� savoyes ��  P l @ES����S 1  @E��
�� 
pacd��  ��  ��  9 m  "TT�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  7 UVU l VV��������  ��  ��  V WXW r  V]YZY m  VY[[ �\\  S p r t - R SZ o      ���� 0 
mastername 
masterNameX ]^] r  ^e_`_ m  ^aaa �bb  1 5 _ S p o r t` o      ���� 0 fileslug fileSlug^ c��c O  f�ded k  l�ff ghg I lq��i��
�� .aevtodocnull  �    alisi o  lm����  0 masterdocument masterDocument��  h jkj n rwlml I  sw�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  m  f  rsk non n x�pqp I  y���r���� 20 changepagenumber_single changePageNumber_singler s��s m  y|tt �uu  1 5��  ��  q  f  xyo vwv n ��xyx I  ���������� 0 clean_save_r clean_save_R��  ��  y  f  ��w z��z O ��{|{ I ������}
�� .CoReclosnull���     obj ��  } ��~��
�� 
svop~ m  ����
�� savoyes ��  | l ������ 1  ����
�� 
pacd��  ��  ��  e m  fi���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  ��  ��  ! ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l �������� Z  ��������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  T h r e e   p a g e s� k  ��� ��� r  ����� m  ���� ���  S p r t - B a c k� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  1 6 _ B a c k� o      ���� 0 fileslug fileSlug� ��� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_single changePageNumber_single� ���� m  ���� ���  1 6��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  S p r t - R S� o      ���� 0 
mastername 
masterName� ��� r  ���� m  ���� ���  1 5 _ S p o r t� o      ���� 0 fileslug fileSlug� ��� O  8��� k  7�� ��� I �����
�� .aevtodocnull  �    alis� o  	����  0 masterdocument masterDocument��  � ��� n ��� I  �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  � ��� n ��� I  ������� 20 changepagenumber_single changePageNumber_single� ���� m  �� ���  1 5��  ��  �  f  � ��� n "��� I  "�������� 0 clean_save_r clean_save_R��  ��  �  f  � ��� O #7��� I +6�~�}�
�~ .CoReclosnull���     obj �}  � �|��{
�| 
svop� m  /2�z
�z savoyes �{  � l #(��y�x� 1  #(�w
�w 
pacd�y  �x  �  � m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l 99�v�u�t�v  �u  �t  � ��� r  9@��� m  9<�� ���  S p r t - L S� o      �s�s 0 
mastername 
masterName� ��� r  AH��� m  AD�� ���  1 4 _ S p o r t� o      �r�r 0 fileslug fileSlug� ��q� O  I��� k  O~�� ��� I OT�p��o
�p .aevtodocnull  �    alis� o  OP�n�n  0 masterdocument masterDocument�o  � ��� n UZ��� I  VZ�m�l�k�m >0 applymaster_changedate_single applyMaster_changeDate_single�l  �k  �  f  UV�    n [c I  \c�j�i�j 20 changepagenumber_single changePageNumber_single �h m  \_ �  1 4�h  �i    f  [\ 	 n di

 I  ei�g�f�e�g 0 clean_save_l clean_save_L�f  �e    f  de	 �d O j~ I r}�c�b
�c .CoReclosnull���     obj �b   �a�`
�a 
svop m  vy�_
�_ savoyes �`   l jo�^�] 1  jo�\
�\ 
pacd�^  �]  �d  � m  IL�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �q  ��  ��  ��  ��  �  l     �[�Z�Y�[  �Z  �Y    l     �X�W�V�X  �W  �V    l ��U�T Z  ��S�R E �� o  ���Q�Q &0 masterstogenerate mastersToGenerate m  �� � , T h r e e   p a g e s   w i t h   s p l i t k  �   !"! r  ��#$# m  ��%% �&&  S p r t - B a c k$ o      �P�P 0 
mastername 
masterName" '(' r  ��)*) m  ��++ �,,  1 6 _ B a c k* o      �O�O 0 fileslug fileSlug( -.- O  ��/0/ k  ��11 232 I ���N4�M
�N .aevtodocnull  �    alis4 o  ���L�L  0 masterdocument masterDocument�M  3 565 n ��787 I  ���K�J�I�K >0 applymaster_changedate_single applyMaster_changeDate_single�J  �I  8  f  ��6 9:9 n ��;<; I  ���H=�G�H 20 changepagenumber_single changePageNumber_single= >�F> m  ��?? �@@  1 6�F  �G  <  f  ��: ABA n ��CDC I  ���E�D�C�E 0 clean_save_l clean_save_L�D  �C  D  f  ��B E�BE O ��FGF I ���A�@H
�A .CoReclosnull���     obj �@  H �?I�>
�? 
svopI m  ���=
�= savoyes �>  G l ��J�<�;J 1  ���:
�: 
pacd�<  �;  �B  0 m  ��KK�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  . LML l ���9�8�7�9  �8  �7  M NON r  ��PQP m  ��RR �SS  S p r t - S p l i tQ o      �6�6 0 
mastername 
masterNameO TUT r  ��VWV m  ��XX �YY  1 4 - 1 5 _ S p o r tW o      �5�5 0 fileslug fileSlugU Z�4Z O  �[\[ k  �]] ^_^ I ���3`�2
�3 .aevtodocnull  �    alis` o  ���1�1  0 masterdocument masterDocument�2  _ aba n ��cdc I  ���0�/�.�0 >0 applymaster_changedate_spread applyMaster_changeDate_spread�/  �.  d  f  ��b efe n ��ghg I  ���-i�,�- 20 changepagenumber_spread changePageNumber_spreadi j�+j m  ��kk �ll  1 4�+  �,  h  f  ��f mnm n  opo I  �*�)�(�* 0 clean_save_l clean_save_L�)  �(  p  f   n q�'q O rsr I �&�%t
�& .CoReclosnull���     obj �%  t �$u�#
�$ 
svopu m  �"
�" savoyes �#  s l v�!� v 1  �
� 
pacd�!  �   �'  \ m  ��ww�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �4  �S  �R  �U  �T   xyx l     ����  �  �  y z{z l     ����  �  �  { |}| l  @~��~ Z   @��� E  '��� o   #�� &0 masterstogenerate mastersToGenerate� m  #&�� ���  F o u r   p a g e s� k  *<�� ��� r  *1��� m  *-�� ���  S p r t - B a c k� o      �� 0 
mastername 
masterName� ��� r  29��� m  25�� ���  2 4 _ B a c k� o      �� 0 fileslug fileSlug� ��� O  :p��� k  @o�� ��� I @E���
� .aevtodocnull  �    alis� o  @A��  0 masterdocument masterDocument�  � ��� n FK��� I  GK���� >0 applymaster_changedate_single applyMaster_changeDate_single�  �  �  f  FG� ��� n LT��� I  MT���
� 20 changepagenumber_single changePageNumber_single� ��	� m  MP�� ���  2 4�	  �
  �  f  LM� ��� n UZ��� I  VZ���� 0 clean_save_l clean_save_L�  �  �  f  UV� ��� O [o��� I cn���
� .CoReclosnull���     obj �  � ���
� 
svop� m  gj� 
�  savoyes �  � l [`������ 1  [`��
�� 
pacd��  ��  �  � m  :=���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l qq��������  ��  ��  � ��� r  qx��� m  qt�� ���  S p r t - R S� o      ���� 0 
mastername 
masterName� ��� r  y���� m  y|�� ���  2 3 _ S p o r t� o      ���� 0 fileslug fileSlug� ��� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_single changePageNumber_single� ���� m  ���� ���  2 3��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_r clean_save_R��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  S p r t - L S� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  2 2 _ S p o r t� o      ���� 0 fileslug fileSlug� ��� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_single changePageNumber_single� ���� m  ���� ���  2 2��  ��  �  f  ���    n �� I  ���������� 0 clean_save_l clean_save_L��  ��    f  �� �� O �� I ������
�� .CoReclosnull���     obj ��   ����
�� 
svop m  ����
�� savoyes ��   l ��	����	 1  ����
�� 
pacd��  ��  ��  � m  ��

�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  l ����������  ��  ��    r  � m  � �  S p r t - R a c i n g o      ���� 0 
mastername 
masterName  r   m  
 �  2 1 _ R a c i n g o      ���� 0 fileslug fileSlug �� O  < k  ;  I ����
�� .aevtodocnull  �    alis o  ����  0 masterdocument masterDocument��    !  n  "#" I   �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  #  f  ! $%$ n !&&'& I  "&�������� 0 clean_save_r clean_save_R��  ��  '  f  !"% (��( O ';)*) I /:����+
�� .CoReclosnull���     obj ��  + ��,��
�� 
svop, m  36��
�� savoyes ��  * l ',-����- 1  ',��
�� 
pacd��  ��  ��   m  ..�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  �  �  �  �  } /0/ l     ��������  ��  ��  0 121 l     ��������  ��  ��  2 343 l A5����5 Z  A67����6 E AH898 o  AD���� &0 masterstogenerate mastersToGenerate9 m  DG:: �;; * F o u r   p a g e s   w i t h   s p l i t7 k  K<< =>= r  KR?@? m  KNAA �BB  S p r t - B a c k@ o      ���� 0 
mastername 
masterName> CDC r  SZEFE m  SVGG �HH  2 4 _ B a c kF o      ���� 0 fileslug fileSlugD IJI O  [�KLK k  a�MM NON I af��P��
�� .aevtodocnull  �    alisP o  ab����  0 masterdocument masterDocument��  O QRQ n glSTS I  hl�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  T  f  ghR UVU n muWXW I  nu��Y���� 20 changepagenumber_single changePageNumber_singleY Z��Z m  nq[[ �\\  2 4��  ��  X  f  mnV ]^] n v{_`_ I  w{�������� 0 clean_save_l clean_save_L��  ��  `  f  vw^ a��a O |�bcb I ������d
�� .CoReclosnull���     obj ��  d ��e��
�� 
svope m  ����
�� savoyes ��  c l |�f����f 1  |���
�� 
pacd��  ��  ��  L m  [^gg�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  J hih l ����������  ��  ��  i jkj r  ��lml m  ��nn �oo  S p r t - S p l i tm o      ���� 0 
mastername 
masterNamek pqp r  ��rsr m  ��tt �uu  2 2 - 2 3 _ S p o r ts o      ���� 0 fileslug fileSlugq vwv O  ��xyx k  ��zz {|{ I ����}��
�� .aevtodocnull  �    alis} o  ������  0 masterdocument masterDocument��  | ~~ n ����� I  ���������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  �� ��� n ����� I  ��������� 20 changepagenumber_spread changePageNumber_spread� ���� m  ���� ���  2 2��  ��  �  f  ��� ��� n ����� I  ������~�� 0 clean_save_l clean_save_L�  �~  �  f  ��� ��}� O ����� I ���|�{�
�| .CoReclosnull���     obj �{  � �z��y
�z 
svop� m  ���x
�x savoyes �y  � l ����w�v� 1  ���u
�u 
pacd�w  �v  �}  y m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  w ��� l ���t�s�r�t  �s  �r  � ��� r  ����� m  ���� ���  S p r t - R a c i n g� o      �q�q 0 
mastername 
masterName� ��� r  ����� m  ���� ���  2 1 _ R a c i n g� o      �p�p 0 fileslug fileSlug� ��o� O  ���� k  ��� ��� I ���n��m
�n .aevtodocnull  �    alis� o  ���l�l  0 masterdocument masterDocument�m  � ��� n ����� I  ���k�j�i�k >0 applymaster_changedate_single applyMaster_changeDate_single�j  �i  �  f  ��� ��� n � ��� I  � �h�g�f�h 0 clean_save_r clean_save_R�g  �f  �  f  ��� ��e� O ��� I 	�d�c�
�d .CoReclosnull���     obj �c  � �b��a
�b 
svop� m  �`
�` savoyes �a  � l ��_�^� 1  �]
�] 
pacd�_  �^  �e  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �o  ��  ��  ��  ��  4 ��� l     �\�[�Z�\  �[  �Z  � ��� l     �Y�X�W�Y  �X  �W  � ��� l f��V�U� Z  f���T�S� E "��� o  �R�R &0 masterstogenerate mastersToGenerate� m  !�� ���  R a c i n g   o n l y� k  %b�� ��� r  %,��� m  %(�� ���  S p r t - R a c i n g� o      �Q�Q 0 
mastername 
masterName� ��� r  -4��� m  -0�� ���  2 1 _ R a c i n g� o      �P�P 0 fileslug fileSlug� ��O� O  5b��� k  ;a�� ��� I ;@�N��M
�N .aevtodocnull  �    alis� o  ;<�L�L  0 masterdocument masterDocument�M  � ��� n AF��� I  BF�K�J�I�K >0 applymaster_changedate_single applyMaster_changeDate_single�J  �I  �  f  AB� ��� n GL��� I  HL�H�G�F�H 0 clean_save_r clean_save_R�G  �F  �  f  GH� ��E� O Ma��� I U`�D�C�
�D .CoReclosnull���     obj �C  � �B��A
�B 
svop� m  Y\�@
�@ savoyes �A  � l MR��?�>� 1  MR�=
�= 
pacd�?  �>  �E  � m  58���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �O  �T  �S  �V  �U  � ��� l     �<�;�:�<  �;  �:  � ��� l     �9�8�7�9  �8  �7  � ��� l g���6�5� Z  g����4�3� E gn��� o  gj�2�2 &0 masterstogenerate mastersToGenerate� m  jm�� ���  E x t r a   l e f t   p a g e� k  q��� ��� r  qx��� m  qt�� ���  S p r t - L S� o      �1�1 0 
mastername 
masterName� ��� r  y�� � m  y| �  L _ X X _ S p o r t  o      �0�0 0 fileslug fileSlug� �/ O  �� k  ��  I ���.	�-
�. .aevtodocnull  �    alis	 o  ���,�,  0 masterdocument masterDocument�-   

 n �� I  ���+�*�)�+ >0 applymaster_changedate_single applyMaster_changeDate_single�*  �)    f  ��  n �� I  ���(�'�( 20 changepagenumber_single changePageNumber_single �& m  �� �  X X�&  �'    f  ��  n �� I  ���%�$�#�% 0 clean_save_l clean_save_L�$  �#    f  �� �" O �� I ���!� 
�! .CoReclosnull���     obj �    ��
� 
svop m  ���
� savoyes �   l ���� 1  ���
� 
pacd�  �  �"   m  ��  �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �/  �4  �3  �6  �5  � !"! l     ����  �  �  " #$# l     ����  �  �  $ %&% l �'��' Z  �()��( E ��*+* o  ���� &0 masterstogenerate mastersToGenerate+ m  ��,, �--   E x t r a   r i g h t   p a g e) k  �.. /0/ r  ��121 m  ��33 �44  S p r t - R S2 o      �� 0 
mastername 
masterName0 565 r  ��787 m  ��99 �::  R _ X X _ S p o r t8 o      �� 0 fileslug fileSlug6 ;�; O  �<=< k  �>> ?@? I ���A�

� .aevtodocnull  �    alisA o  ���	�	  0 masterdocument masterDocument�
  @ BCB n ��DED I  ������ >0 applymaster_changedate_single applyMaster_changeDate_single�  �  E  f  ��C FGF n ��HIH I  ���J�� 20 changepagenumber_single changePageNumber_singleJ K�K m  ��LL �MM  X X�  �  I  f  ��G NON n ��PQP I  ����� � 0 clean_save_r clean_save_R�  �   Q  f  ��O R��R O �STS I �
����U
�� .CoReclosnull���     obj ��  U ��V��
�� 
svopV m  ��
�� savoyes ��  T l ��W����W 1  ����
�� 
pacd��  ��  ��  = m  ��XX�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  �  �  �  �  & YZY l     ��������  ��  ��  Z [\[ l     ��������  ��  ��  \ ]^] l e_����_ Z  e`a����` E bcb o  ���� &0 masterstogenerate mastersToGeneratec m  dd �ee  E x t r a   s p l i ta k  aff ghg r  "iji m  kk �ll  S p r t - S p l i tj o      ���� 0 
mastername 
masterNameh mnm r  #*opo m  #&qq �rr " S p l i t _ X X - X X _ S p o r tp o      ���� 0 fileslug fileSlugn s��s O  +atut k  1`vv wxw I 16��y��
�� .aevtodocnull  �    alisy o  12����  0 masterdocument masterDocument��  x z{z n 7<|}| I  8<�������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  }  f  78{ ~~ n =E��� I  >E������� 20 changepagenumber_spread changePageNumber_spread� ���� m  >A�� ���  X X��  ��  �  f  => ��� n FK��� I  GK�������� 0 clean_save_l clean_save_L��  ��  �  f  FG� ���� O L`��� I T_�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  X[��
�� savoyes ��  � l LQ������ 1  LQ��
�� 
pacd��  ��  ��  u m  +.���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  ��  ��  ^ ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l fz������ O fz��� r  ly��� m  lo��
�� elnteInA� n      ��� 1  tx��
�� 
UIAc� 1  ot��
�� 
pScr� m  fi���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l {������� O  {���� k  ���� ��� I ��������
�� .miscactvnull��� ��� obj ��  ��  � ���� I �������
�� .aevtodocnull  �    alis� o  ������ $0 freshpagesfolder freshPagesFolder��  ��  � m  {~���                                                                                  MACS  alis    Z  SSD                        �@��H+     <
Finder.app                                                       ���(��        ����  	                CoreServices    �@��      �(��       <   /   .  -SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   Handler definitions --   � ��� .   H a n d l e r   d e f i n i t i o n s   - -� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � X R	Create the date used on the InDesign pages, and deal with some Saturday oddities	   � ��� � 	 C r e a t e   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l   w i t h   s o m e   S a t u r d a y   o d d i t i e s 	� ��� i     ��� I      �������� "0 create_pagedate create_pageDate��  ��  � k    ��� ��� r     
��� J     �� ��� m     �� ���  J a n u a r y� ��� m    �� ��� 
 M a r c h� ��� m    �� ���  M a y� ��� m    �� ���  J u l y� ��� m    �� ���  A u g u s t� ���� m    �� ���  O c t o b e r��  � o      ���� (0 thirtyonedaymonths ThirtyOneDayMonths� ��� r    ��� J    �� ��� m    �� ��� 
 A p r i l� ��� m    �� ���  J u n e� ��� m    �� ���  S e p t e m b e r� ���� m    �� ���  N o v e m b e r��  � o      ���� "0 thirtydaymonths ThirtyDayMonths� ��� l   ��������  ��  ��  � ���� Z   ������� >   ��� o    ���� 0 theday theDay� m    �� ���  S a t u r d a y� l   5���� k    5    r    3 l   /���� b    / b    +	 b    '

 b    # b     b     o    ���� 0 theday theDay m     �    o    ���� 0 themonth theMonth m    " �    o   # &���� 0 thedate theDate	 m   ' * �    o   + .���� 0 theyear theYear��  ��   o      ���� 0 pagedate pageDate �� l  4 4��������  ��  ��  ��  � + % Does the page date for every weekday   � � J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a y�  F   8 U F   8 K =  8 = !  o   8 9���� 0 theday theDay! m   9 <"" �##  S a t u r d a y =  @ G$%$ o   @ C���� 0 thedate theDate% m   C F&& �''  3 0 E  N Q()( o   N O���� "0 thirtydaymonths ThirtyDayMonths) o   O P���� 0 themonth theMonth *+* l  X �,-., k   X �// 010 Y   X �2��34��2 l  h �5675 Z  h �89����8 =  h r:;: n   h p<=< 4   k p��>
�� 
cobj> o   n o���� 0 i  = o   h k���� 0 months_list  ; o   p q���� 0 themonth theMonth9 r   u �?@? l  u A����A n   u BCB 4   x ��D
�� 
cobjD l  { ~E����E [   { ~FGF o   { |���� 0 i  G m   | }���� ��  ��  C o   u x���� 0 months_list  ��  ��  @ o      ���� 0 secondmonth secondMonth��  ��  6 V P This repeat block here grabs the name of the next month to use in the page date   7 �HH �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e�� 0 i  3 m   [ \���� 4 I  \ c��I�
�� .corecnte****       ****I o   \ _�~�~ 0 months_list  �  ��  1 JKJ l  � �LMNL r   � �OPO l  � �Q�}�|Q b   � �RSR b   � �TUT b   � �VWV b   � �XYX b   � �Z[Z m   � �\\ �]]   S a t u r d a y / S u n d a y  [ o   � ��{�{ 0 themonth theMonthY m   � �^^ �__    3 0 -W o   � ��z�z 0 secondmonth secondMonthU m   � �`` �aa    1  S o   � ��y�y 0 theyear theYear�}  �|  P o      �x�x 0 pagedate pageDateM P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"   N �bb �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 "K c�wc l  � ��v�u�t�v  �u  �t  �w  - I C Deals with Saturdays at the end of 30-day months (uses list above)   . �dd �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )+ efe F   � �ghg F   � �iji =  � �klk o   � ��s�s 0 theday theDayl m   � �mm �nn  S a t u r d a yj =  � �opo o   � ��r�r 0 thedate theDatep m   � �qq �rr  3 1h E  � �sts o   � ��q�q (0 thirtyonedaymonths ThirtyOneDayMonthst o   � ��p�p 0 themonth theMonthf uvu l  �wxyw k   �zz {|{ Y   � �}�o~�n} Z  � ����m�l� =  � ���� n   � ���� 4   � ��k�
�k 
cobj� o   � ��j�j 0 i  � o   � ��i�i 0 months_list  � o   � ��h�h 0 themonth theMonth� r   � ���� l  � ���g�f� n   � ���� 4   � ��e�
�e 
cobj� l  � ���d�c� [   � ���� o   � ��b�b 0 i  � m   � ��a�a �d  �c  � o   � ��`�` 0 months_list  �g  �f  � o      �_�_ 0 secondmonth secondMonth�m  �l  �o 0 i  ~ m   � ��^�^  I  � ��]��\
�] .corecnte****       ****� o   � ��[�[ 0 months_list  �\  �n  | ��� r   ���� l  ���Z�Y� b   ���� b   �	��� b   ���� b   ���� b   � ���� m   � ��� ���   S a t u r d a y / S u n d a y  � o   � ��X�X 0 themonth theMonth� m   ��� ���    3 1 -� o  �W�W 0 secondmonth secondMonth� m  �� ���    1  � o  	�V�V 0 theyear theYear�Z  �Y  � o      �U�U 0 pagedate pageDate� ��T� l �S�R�Q�S  �R  �Q  �T  x I C Deals with Saturdays at the end of 31-day months (uses list above)   y ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )v ��� F  5��� F  )��� = ��� o  �P�P 0 theday theDay� m  �� ���  S a t u r d a y� ? %��� o  !�O�O 0 thedate theDate� m  !$�� ���  2 7� = ,1��� o  ,-�N�N 0 themonth theMonth� m  -0�� ���  F e b r u a r y� ��� l 8M���� k  8M�� ��� r  8K��� l 8G��M�L� b  8G��� b  8C��� b  8?��� m  8;�� ��� 2 S a t u r d a y / S u n d a y   F e b r u a r y  � o  ;>�K�K 0 thedate theDate� m  ?B�� ���  - M a r c h   1  � o  CF�J�J 0 theyear theYear�M  �L  � o      �I�I 0 pagedate pageDate� ��H� l LL�G�F�E�G  �F  �E  �H  � { u Deals with Saturdays at the end of February. Fun fact: it�s quite blunt but won�t produce the wrong date until 2032.   � ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   F u n   f a c t :   i t  s   q u i t e   b l u n t   b u t   w o n  t   p r o d u c e   t h e   w r o n g   d a t e   u n t i l   2 0 3 2 .� ��� F  Po��� F  Pc��� = PU��� o  PQ�D�D 0 theday theDay� m  QT�� ���  S a t u r d a y� = X_��� o  X[�C�C 0 thedate theDate� m  [^�� ���  3 1� = fk��� o  fg�B�B 0 themonth theMonth� m  gj�� ���  D e c e m b e r� ��� l r����� k  r��� ��� r  r���� l r���A�@� b  r���� b  r}��� b  ry��� m  ru�� ��� L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  � o  ux�?�? 0 theyear theYear� m  y|�� ���  -� l }���>�=� [  }���� o  }��<�< 0 theyear theYear� m  ���;�; �>  �=  �A  �@  � o      �:�: 0 pagedate pageDate� ��9� l ���8�7�6�8  �7  �6  �9  � 2 , Deals with Saturdays at the end of December   � ��� X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e r� ��� = ��� � o  ���5�5 0 theday theDay  m  �� �  S a t u r d a y� �4 l �� k  �� 	 r  ��

 l ���3�2 b  �� b  �� b  �� b  �� b  �� b  �� b  �� m  �� �   S a t u r d a y / S u n d a y   o  ���1�1 0 themonth theMonth m  �� �    o  ���0�0 0 thedate theDate m  �� �    - l ��!�/�.! [  ��"#" o  ���-�- 0 thedate theDate# m  ���,�, �/  �.   m  ��$$ �%%    o  ���+�+ 0 theyear theYear�3  �2   o      �*�* 0 pagedate pageDate	 &�)& l ���(�'�&�(  �'  �&  �)   3 - Does the page date for every normal Saturday    �'' Z   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y�4  ��  ��  � ()( l     �%�$�#�%  �$  �#  ) *+* l     �"�!� �"  �!  �   + ,-, l      �./�  . @ :	Create the short date to name the created InDesign files	   / �00 t 	 C r e a t e   t h e   s h o r t   d a t e   t o   n a m e   t h e   c r e a t e d   I n D e s i g n   f i l e s 	- 121 i    343 I      ���� "0 create_filedate create_fileDate�  �  4 k     [55 676 Z     89�:8 A    ;<; c     =>= o     �� 0 thedate theDate> m    �
� 
long< m    ?? �@@  1 09 l   ABCA r    DED l   F��F b    GHG m    	II �JJ  0H o   	 
�� 0 thedate theDate�  �  E o      �� 0 numdate numDateB L F If the date is 1-10 this adds an initial zero to use in the file name   C �KK �   I f   t h e   d a t e   i s   1 - 1 0   t h i s   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e�  : r    LML o    �� 0 thedate theDateM o      �� 0 numdate numDate7 NON l   ����  �  �  O PQP Y    7R�ST�R l  " 2UVWU Z  " 2XY��X =  " (Z[Z n   " &\]\ 4   # &�^
� 
cobj^ o   $ %�
�
 0 i  ] o   " #�	�	 0 months_list  [ o   & '�� 0 themonth theMonthY r   + ._`_ o   + ,�� 0 i  ` o      �� 0 raw_nummonth raw_numMonth�  �  V d ^ This gets the month number and, if less than 10, adds an initial zero to use in the file name   W �aa �   T h i s   g e t s   t h e   m o n t h   n u m b e r   a n d ,   i f   l e s s   t h a n   1 0 ,   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e� 0 i  S m    �� T I   �b�
� .corecnte****       ****b o    �� 0 months_list  �  �  Q cdc Z   8 Ief�ge A  8 ;hih o   8 9� �  0 raw_nummonth raw_numMonthi m   9 :���� 
f r   > Cjkj l  > Al����l b   > Amnm m   > ?oo �pp  0n o   ? @���� 0 raw_nummonth raw_numMonth��  ��  k o      ���� 0 nummonth numMonth�  g r   F Iqrq o   F G���� 0 raw_nummonth raw_numMonthr o      ���� 0 nummonth numMonthd sts l  J J��������  ��  ��  t u��u l  J [vwxv r   J [yzy l  J Y{����{ b   J Y|}| b   J M~~ o   J K���� 0 numdate numDate o   K L���� 0 nummonth numMonth} l  M X������ n   M X��� 7 N X����
�� 
ctxt� m   R T���� � m   U W���� � o   M N���� 0 theyear theYear��  ��  ��  ��  z o      ���� 0 filedate fileDatew Z T This combines the date, month and last two digits of the year to create a file name   x ��� �   T h i s   c o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r   t o   c r e a t e   a   f i l e   n a m e��  2 ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � ` Z	Single page: Apply a master, change the date and override everything on the "Work" layer	   � ��� � 	 S i n g l e   p a g e :   A p p l y   a   m a s t e r ,   c h a n g e   t h e   d a t e   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	� ��� i    ��� I      �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  � O     c��� O    b��� k   
 a�� ��� r   
 ��� 4   
 ���
�� 
mspr� o    ���� 0 
mastername 
masterName� n      ��� 1    ��
�� 
pmas� 4    ���
�� 
page� m    ���� � ��� I   &����
�� .InESovrrobj         obj � n    ��� 4    ���
�� 
txtf� m    �� ���  E d i t i o n   d a t e� 4    ���
�� 
mspr� o    ���� 0 
mastername 
masterName� �����
�� 
dPge� 4    "���
�� 
page� m     !���� ��  � ��� r   ' 2��� o   ' (���� 0 pagedate pageDate� l     ������ n      ��� 1   / 1��
�� 
pcnt� n   ( /��� 4   , /���
�� 
txtf� m   - .�� ���  E d i t i o n   d a t e� 4   ( ,���
�� 
page� m   * +���� ��  ��  � ���� Q   3 a����� I  6 X����
�� .InESovrrobj         obj � l  6 O������ 6  6 O��� n   6 >��� 2   < >��
�� 
cobj� n   6 <��� 1   : <��
�� 
mpgs� 4   6 :���
�� 
page� m   8 9���� � =  ? N��� n  @ H��� 1   D H��
�� 
pnam� 1   @ D��
�� 
pilr� m   I M�� ���  W o r k��  ��  � �����
�� 
dPge� 4   P T���
�� 
page� m   R S���� ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  � l   ������ 1    ��
�� 
pacd��  ��  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � } w	Spreads: Create a new spread from a master, change the date on both pages and override everything on the "Work" layer	   � ��� � 	 S p r e a d s :   C r e a t e   a   n e w   s p r e a d   f r o m   a   m a s t e r ,   c h a n g e   t h e   d a t e   o n   b o t h   p a g e s   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	� ��� i    ��� I      �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  � O     ���� O    ���� k   
 ��� ��� I  
 �����
�� .corecrel****      � null��  � ����
�� 
kocl� m    ��
�� 
sprd� �����
�� 
prdt� K    �� �����
�� 
pmas� 4    ���
�� 
mspr� o    ���� 0 
mastername 
masterName��  ��  � ��� I   *����
�� .InESovrrobj         obj � n    !��� 4    !���
�� 
txtf� m     �� ���  L - E d i t i o n   d a t e� 4    ���
�� 
mspr� o    ���� 0 
mastername 
masterName� �����
�� 
dPge� 4   " &���
�� 
page� m   $ %���� ��  � ��� I  + ;����
�� .InESovrrobj         obj � n   + 2��� 4   / 2���
�� 
txtf� m   0 1�� ���  R - E d i t i o n   d a t e� 4   + /�� 
�� 
mspr  o   - .���� 0 
mastername 
masterName� ����
�� 
dPge 4   3 7��
�� 
page m   5 6���� ��  �  r   < M o   < ?���� 0 pagedate pageDate l     ���� n      	 1   H L��
�� 
pcnt	 n   ? H

 4   C H��
�� 
txtf m   D G �  L - E d i t i o n   d a t e 4   ? C��
�� 
page m   A B���� ��  ��    r   N _ o   N Q���� 0 pagedate pageDate l     ���� n       1   Z ^��
�� 
pcnt n   Q Z 4   U Z��
�� 
txtf m   V Y �  R - E d i t i o n   d a t e 4   Q U��
�� 
page m   S T���� ��  ��   �� Q   ` ��� k   c �   !"! I  c ���#$
�� .InESovrrobj         obj # l  c �%����% 6  c �&'& n   c o()( 2   k o�
� 
cobj) n   c k*+* 1   g k�~
�~ 
mpgs+ 4   c g�},
�} 
page, m   e f�|�| ' =  r �-.- n  s {/0/ 1   w {�{
�{ 
pnam0 1   s w�z
�z 
pilr. m   | �11 �22  W o r k��  ��  $ �y3�x
�y 
dPge3 4   � ��w4
�w 
page4 m   � ��v�v �x  " 5�u5 I  � ��t67
�t .InESovrrobj         obj 6 l  � �8�s�r8 6  � �9:9 n   � �;<; 2   � ��q
�q 
cobj< n   � �=>= 1   � ��p
�p 
mpgs> 4   � ��o?
�o 
page? m   � ��n�n : =  � �@A@ n  � �BCB 1   � ��m
�m 
pnamC 1   � ��l
�l 
pilrA m   � �DD �EE  W o r k�s  �r  7 �kF�j
�k 
dPgeF 4   � ��iG
�i 
pageG m   � ��h�h �j  �u   R      �g�f�e
�g .ascrerr ****      � ****�f  �e  ��  ��  � l   H�d�cH 1    �b
�b 
pacd�d  �c  � m     II�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � JKJ l     �a�`�_�a  �`  �_  K LML l     �^�]�\�^  �]  �\  M NON l      �[PQ�[  P � }	Single page: Change the page number to the one specified in the handler call - e.g. changePageNumber_single("3") for page 3	   Q �RR � 	 S i n g l e   p a g e :   C h a n g e   t h e   p a g e   n u m b e r   t o   t h e   o n e   s p e c i f i e d   i n   t h e   h a n d l e r   c a l l   -   e . g .   c h a n g e P a g e N u m b e r _ s i n g l e ( " 3 " )   f o r   p a g e   3 	O STS i    UVU I      �ZW�Y�Z 20 changepagenumber_single changePageNumber_singleW X�XX o      �W�W 0 
pagenumber 
pageNumber�X  �Y  V O     (YZY O    '[\[ k   
 &]] ^_^ I  
 �V`a
�V .InESovrrobj         obj ` n   
 bcb 4    �Ud
�U 
txtfd m    ee �ff  P a g e   n u m b e rc 4   
 �Tg
�T 
msprg o    �S�S 0 
mastername 
masterNamea �Rh�Q
�R 
dPgeh 4    �Pi
�P 
pagei m    �O�O �Q  _ j�Nj r    &klk o    �M�M 0 
pagenumber 
pageNumberl l     m�L�Km n      non 1   # %�J
�J 
pcnto n    #pqp 4     #�Ir
�I 
txtfr m   ! "ss �tt  P a g e   n u m b e rq 4     �Hu
�H 
pageu m    �G�G �L  �K  �N  \ l   v�F�Ev 1    �D
�D 
pacd�F  �E  Z m     ww�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  T xyx l     �C�B�A�C  �B  �A  y z{z l     �@�?�>�@  �?  �>  { |}| l      �=~�=  ~ � �	Spreads: Change the page number on both pages. The handler call asks for the left-hand page�s number - e.g. changePageNumber_spread("8") for pages 8 and 9	    ���8 	 S p r e a d s :   C h a n g e   t h e   p a g e   n u m b e r   o n   b o t h   p a g e s .   T h e   h a n d l e r   c a l l   a s k s   f o r   t h e   l e f t - h a n d   p a g e  s   n u m b e r   -   e . g .   c h a n g e P a g e N u m b e r _ s p r e a d ( " 8 " )   f o r   p a g e s   8   a n d   9 	} ��� i    ��� I      �<��;�< 20 changepagenumber_spread changePageNumber_spread� ��:� o      �9�9  0 leftpagenumber leftPageNumber�:  �;  � O     I��� O    H��� k   
 G�� ��� I  
 �8��
�8 .InESovrrobj         obj � n   
 ��� 4    �7�
�7 
txtf� m    �� ���  L - P a g e   n u m b e r� 4   
 �6�
�6 
mspr� o    �5�5 0 
mastername 
masterName� �4��3
�4 
dPge� 4    �2�
�2 
page� m    �1�1 �3  � ��� I   +�0��
�0 .InESovrrobj         obj � n    "��� 4    "�/�
�/ 
txtf� m     !�� ���  R - P a g e   n u m b e r� 4    �.�
�. 
mspr� o    �-�- 0 
mastername 
masterName� �,��+
�, 
dPge� 4   # '�*�
�* 
page� m   % &�)�) �+  � ��� r   , 7��� o   , -�(�(  0 leftpagenumber leftPageNumber� l     ��'�&� n      ��� 1   4 6�%
�% 
pcnt� n   - 4��� 4   1 4�$�
�$ 
txtf� m   2 3�� ���  L - P a g e   n u m b e r� 4   - 1�#�
�# 
page� m   / 0�"�" �'  �&  � ��!� r   8 G��� l  8 =�� �� c   8 =��� l  8 ;���� [   8 ;��� o   8 9��  0 leftpagenumber leftPageNumber� m   9 :�� �  �  � m   ; <�
� 
TEXT�   �  � l     ���� n      ��� 1   D F�
� 
pcnt� n   = D��� 4   A D��
� 
txtf� m   B C�� ���  R - P a g e   n u m b e r� 4   = A��
� 
page� m   ? @�� �  �  �!  � l   ���� 1    �
� 
pacd�  �  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     ����  �  �  � ��� l      ����  � � �	Spreads and left-hand single pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   � ���� 	 S p r e a d s   a n d   l e f t - h a n d   s i n g l e   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 	� ��� i    ��� I      ���
� 0 clean_save_l clean_save_L�  �
  � O     >��� O    =��� k   
 <�� ��� r   
 ��� m   
 �	
�	 boovtrue� n      ��� 1    �
� 
plck� 4    ��
� 
layr� m    �� ��� ( D a t e   a n d   p a g e   n u m b e r� ��� r    ��� m    �
� boovtrue� n      ��� 1    �
� 
plck� 4    ��
� 
layr� m    �� ���  F u r n i t u r e� ��� r    !��� m    �� ���  W o r k� 1     �
� 
pacl� ��� r   " *��� J   " &�� ��� m   " #�� @.      � ��� m   # $�� @&      �  � l     ��� � 1   & )��
�� 
zero�  �   � ���� I  + <�����
�� .CoResavedocu        obj ��  � �����
�� 
kfil� b   - 8��� b   - 4��� b   - 2�	 � b   - 0			 o   - .���� $0 freshpagesfolder freshPagesFolder	 o   . /���� 0 fileslug fileSlug	  m   0 1		 �		  _� o   2 3���� 0 filedate fileDate� m   4 7		 �		 
 . i n d d��  ��  � l   	����	 1    ��
�� 
pacd��  ��  � m     		�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 			
		 l     ��������  ��  ��  	
 			 l     ��������  ��  ��  	 			 l      ��		��  	 � �	Right-hand pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   	 �		z 	 R i g h t - h a n d   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 		 	��	 i    			 I      �������� 0 clean_save_r clean_save_R��  ��  	 O     >			 O    =			 k   
 <		 			 r   
 			 m   
 ��
�� boovtrue	 n      			 1    ��
�� 
plck	 4    ��	 
�� 
layr	  m    	!	! �	"	" ( D a t e   a n d   p a g e   n u m b e r	 	#	$	# r    	%	&	% m    ��
�� boovtrue	& n      	'	(	' 1    ��
�� 
plck	( 4    ��	)
�� 
layr	) m    	*	* �	+	+  F u r n i t u r e	$ 	,	-	, r    !	.	/	. m    	0	0 �	1	1  W o r k	/ 1     ��
�� 
pacl	- 	2	3	2 r   " *	4	5	4 J   " &	6	6 	7	8	7 m   " #	9	9 @"      	8 	:��	: m   # $	;	; @&      ��  	5 l     	<����	< 1   & )��
�� 
zero��  ��  	3 	=��	= I  + <����	>
�� .CoResavedocu        obj ��  	> ��	?��
�� 
kfil	? b   - 8	@	A	@ b   - 4	B	C	B b   - 2	D	E	D b   - 0	F	G	F o   - .���� $0 freshpagesfolder freshPagesFolder	G o   . /���� 0 fileslug fileSlug	E m   0 1	H	H �	I	I  _	C o   2 3���� 0 filedate fileDate	A m   4 7	J	J �	K	K 
 . i n d d��  ��  	 l   	L����	L 1    ��
�� 
pacd��  ��  	 m     	M	M�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��       ��	N	O	P	Q	R	S	T	U	V	W��  	N 	�������������������� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate�� >0 applymaster_changedate_single applyMaster_changeDate_single�� >0 applymaster_changedate_spread applyMaster_changeDate_spread�� 20 changepagenumber_single changePageNumber_single�� 20 changepagenumber_spread changePageNumber_spread�� 0 clean_save_l clean_save_L�� 0 clean_save_r clean_save_R
�� .aevtoappnull  �   � ****	O �������	X	Y���� "0 create_pagedate create_pageDate��  ��  	X ���������� (0 thirtyonedaymonths ThirtyOneDayMonths�� "0 thirtydaymonths ThirtyDayMonths�� 0 i  �� 0 secondmonth secondMonth	Y 2�������������������������"&��������\^`mq�������������$�� �� �� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 pagedate pageDate
�� 
bool�� 0 months_list  
�� .corecnte****       ****
�� 
cobj����������vE�O�����vE�O��  ��%�%a %_ %a %_ %E` OPY��a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa �%a %�%a %_ %E` OPY�a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa  �%a !%�%a "%_ %E` OPY ��a # 	 _ a $a &	 �a % a & a &_ %a '%_ %E` OPY o�a ( 	 _ a ) a &	 �a * a & a +_ %a ,%_ k%E` OPY 3�a -  *a .�%a /%_ %a 0%_ k%a 1%_ %E` OPY h	P ��4����	Z	[���� "0 create_filedate create_fileDate��  ��  	Z ���������� 0 numdate numDate�� 0 i  �� 0 raw_nummonth raw_numMonth�� 0 nummonth numMonth	[ ����?I����������o���������� 0 thedate theDate
�� 
long�� 0 months_list  
�� .corecnte****       ****
�� 
cobj�� 0 themonth theMonth�� 
�� 0 theyear theYear
�� 
ctxt�� �� 0 filedate fileDate�� \��&� 
��%E�Y �E�O "k�j kh ��/�  �E�Y h[OY��O�� 
�%E�Y �E�O��%�[�\[Zm\Z�2%E�	Q �������	\	]���� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  	\  	] ���������������������������	^���������
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
cobj	^  
�� 
pilr
�� 
pnam��  ��  �� d� `*�, Y*��/*�k/�,FO*��/��/�*�k/l 	O�*�k/��/�,FO '*�k/�,�-�[a ,a ,\Za 81�*�k/l 	W X  hUU	R �������	_	`���� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  	_  	` I�������������������������~��}�|�{�z	^�y�x1D�w�v
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
� 
page
�~ .InESovrrobj         obj �} 0 pagedate pageDate
�| 
pcnt
�{ 
mpgs
�z 
cobj
�y 
pilr
�x 
pnam�w  �v  �� �� �*�, �*����*��/l� 	O*��/��/�*�l/l O*��/��/�*�m/l O_ *�l/�a /a ,FO_ *�m/�a /a ,FO V*�l/a ,a -a [a ,a ,\Za 81�*�l/l O*�m/a ,a -a [a ,a ,\Za 81�*�m/l W X  hUU	S �uV�t�s	a	b�r�u 20 changepagenumber_single changePageNumber_single�t �q	c�q 	c  �p�p 0 
pagenumber 
pageNumber�s  	a �o�o 0 
pagenumber 
pageNumber	b w�n�m�l�ke�j�i�hs�g
�n 
pacd
�m 
mspr�l 0 
mastername 
masterName
�k 
txtf
�j 
dPge
�i 
page
�h .InESovrrobj         obj 
�g 
pcnt�r )� %*�, *��/��/�*�k/l O�*�k/��/�,FUU	T �f��e�d	d	e�c�f 20 changepagenumber_spread changePageNumber_spread�e �b	f�b 	f  �a�a  0 leftpagenumber leftPageNumber�d  	d �`�`  0 leftpagenumber leftPageNumber	e ��_�^�]�\��[�Z�Y���X�W�
�_ 
pacd
�^ 
mspr�] 0 
mastername 
masterName
�\ 
txtf
�[ 
dPge
�Z 
page
�Y .InESovrrobj         obj 
�X 
pcnt
�W 
TEXT�c J� F*�, ?*��/��/�*�l/l O*��/��/�*�m/l O�*�l/��/�,FO�k�&*�m/��/�,FUU	U �V��U�T	g	h�S�V 0 clean_save_l clean_save_L�U  �T  	g  	h 	�R�Q��P���O���N�M�L�K	�J	�I
�R 
pacd
�Q 
layr
�P 
plck
�O 
pacl
�N 
zero
�M 
kfil�L $0 freshpagesfolder freshPagesFolder�K 0 fileslug fileSlug�J 0 filedate fileDate
�I .CoResavedocu        obj �S ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU	V �H	�G�F	i	j�E�H 0 clean_save_r clean_save_R�G  �F  	i  	j 	M�D�C	!�B	*	0�A	9	;�@�?�>�=	H�<	J�;
�D 
pacd
�C 
layr
�B 
plck
�A 
pacl
�@ 
zero
�? 
kfil�> $0 freshpagesfolder freshPagesFolder�= 0 fileslug fileSlug�< 0 filedate fileDate
�; .CoResavedocu        obj �E ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU	W �:	k�9�8	l	m�7
�: .aevtoappnull  �   � ****	k k    �	n	n  t	o	o  {	p	p  �	q	q  �	r	r  �	s	s  �	t	t "	u	u 3	v	v >	w	w O	x	x Z	y	y p	z	z {	{	{ �	|	| �	}	} 	~	~ 		 	�	�  	�	� �	�	� 	�	� |	�	� 3	�	� �	�	� �	�	� %	�	� ]	�	� �	�	� ��6�6  �9  �8  	l  	m � y�5 ��4 � � � � � ��3�2 � � � � � ��1 � � � � � ��0 � � � � � � �	�/�.�-.�,1�+�*�)�(�':�&�%JM�$Vg�#kn�"�!� w���������������������'.�4���H������[at����������%+?RX�k�
����������:AG[nt��������,39Ldkq��	���5 $0 freshpagesfolder freshPagesFolder�4  0 masterdocument masterDocument�3 �2 0 weekday_pages  �1 0 weekend_pages  �0 0 	days_list  �/ �. 0 months_list  
�- 
prmp
�, 
appr�+ 
�* .gtqpchltns    @   @ ns  
�) 
TEXT�( 0 theday theDay
�' 
rslt
�& 
errn�%���$ 0 themonth theMonth
�# 
dtxt
�" .sysodlogaskr        TEXT
�! 
ttxt�  0 thedate theDate� 0 theyear theYear
� 
ret 
� 
mlsl� &0 masterstogenerate mastersToGenerate� "0 create_pagedate create_pageDate� "0 create_filedate create_fileDate
� elnteNvr
� 
pScr
� 
UIAc� 0 
mastername 
masterName� 0 fileslug fileSlug
� .aevtodocnull  �    alis� >0 applymaster_changedate_single applyMaster_changeDate_single� 20 changepagenumber_single changePageNumber_single� 0 clean_save_l clean_save_L
� 
pacd
� 
svop
� savoyes 
� .CoReclosnull���     obj � 0 clean_save_r clean_save_R� >0 applymaster_changedate_spread applyMaster_changeDate_spread�
 20 changepagenumber_spread changePageNumber_spread
�	 elnteInA
� .miscactvnull��� ��� obj �7��E�O�E�O�������vE�O����a a �vE` Oa a a a a a �vE` Oa a a a a a a  a !a "a #a $a %a &vE` 'O_ a (a )a *a +a , -a .&E` /O_ 0a 1  )a 2a 3lhY hO_ 'a (a 4a *a 5a , -a .&E` 6O_ 0a 7  )a 2a 3lhY hOa 8a 9a :a *a ;a , <a =,a .&E` >O_ 0a ?  )a 2a 3lhY hOa @a 9a Aa *a Ba , <a =,a .&E` CO_ 0a D  )a 2a 3lhY hO_ /a E A�a (a F_ G%_ G%a H%a *a Ia Je� -E` KO_ 0f  )a 2a 3lhY hY N_ /a L  C_ a (a M_ G%_ G%a N%a *a Oa Je� -E` KO_ 0f  )a 2a 3lhY hY hO*j+ PO*j+ QOa R a S*a T,a U,FUO_ Ka V �a WE` XOa YE` ZOa R 1�j [O)j+ \O)a ]k+ ^O)j+ _O*a `, *a aa bl cUUOa dE` XOa eE` ZOa R 1�j [O)j+ \O)a fk+ ^O)j+ gO*a `, *a aa bl cUUY hO_ Ka h �a iE` XOa jE` ZOa R 1�j [O)j+ \O)a kk+ ^O)j+ _O*a `, *a aa bl cUUOa lE` XOa mE` ZOa R 1�j [O)j+ \O)a nk+ ^O)j+ gO*a `, *a aa bl cUUOa oE` XOa pE` ZOa R 1�j [O)j+ \O)a qk+ ^O)j+ _O*a `, *a aa bl cUUY hO_ Ka r �a sE` XOa tE` ZOa R 1�j [O)j+ \O)a uk+ ^O)j+ _O*a `, *a aa bl cUUOa vE` XOa wE` ZOa R 1�j [O)j+ xO)a yk+ zO)j+ _O*a `, *a aa bl cUUY hO_ Ka {a |E` XOa }E` ZOa R 1�j [O)j+ \O)a ~k+ ^O)j+ _O*a `, *a aa bl cUUOa E` XOa �E` ZOa R 1�j [O)j+ \O)a �k+ ^O)j+ gO*a `, *a aa bl cUUOa �E` XOa �E` ZOa R 1�j [O)j+ \O)a �k+ ^O)j+ _O*a `, *a aa bl cUUOa �E` XOa �E` ZOa R (�j [O)j+ \O)j+ gO*a `, *a aa bl cUUY hO_ Ka � �a �E` XOa �E` ZOa R 1�j [O)j+ \O)a �k+ ^O)j+ _O*a `, *a aa bl cUUOa �E` XOa �E` ZOa R 1�j [O)j+ xO)a �k+ zO)j+ _O*a `, *a aa bl cUUOa �E` XOa �E` ZOa R (�j [O)j+ \O)j+ gO*a `, *a aa bl cUUY hO_ Ka � Ba �E` XOa �E` ZOa R (�j [O)j+ \O)j+ gO*a `, *a aa bl cUUY hO_ Ka � Ka �E` XOa �E` ZOa R 1�j [O)j+ \O)a �k+ ^O)j+ _O*a `, *a aa bl cUUY hO_ Ka � Ka �E` XOa �E` ZOa R 1�j [O)j+ \O)a �k+ ^O)j+ gO*a `, *a aa bl cUUY hO_ Ka � Ka �E` XOa �E` ZOa R 1�j [O)j+ xO)a �k+ zO)j+ _O*a `, *a aa bl cUUY hOa R a �*a T,a U,FUOa � *j �O�j [Uascr  ��ޭ