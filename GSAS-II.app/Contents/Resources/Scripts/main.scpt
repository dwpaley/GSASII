FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �   GSAS-II AppleScript by B. Toby (brian.toby@anl.gov)
     It can launch GSAS-II by double clicking or by dropping a data file
     or folder over the app.
     It runs GSAS-II in a terminal window.
     � 	 	�       G S A S - I I   A p p l e S c r i p t   b y   B .   T o b y   ( b r i a n . t o b y @ a n l . g o v ) 
           I t   c a n   l a u n c h   G S A S - I I   b y   d o u b l e   c l i c k i n g   o r   b y   d r o p p i n g   a   d a t a   f i l e 
           o r   f o l d e r   o v e r   t h e   a p p . 
           I t   r u n s   G S A S - I I   i n   a   t e r m i n a l   w i n d o w . 
   
  
 l     ��������  ��  ��        l      ��  ��    N H test if a file is present and exit with an error message if it is not       �   �   t e s t   i f   a   f i l e   i s   p r e s e n t   a n d   e x i t   w i t h   a n   e r r o r   m e s s a g e   i f   i t   i s   n o t          i         I      �� ���� "0 testfilepresent TestFilePresent   ��  o      ���� 0 appwithpath  ��  ��    O     &    Z    % ����   l    ����  I   �� ��
�� .coredoexnull���     ****  4    �� 
�� 
file  o    ���� 0 appwithpath  ��  ��  ��  ��  ��    k    %        I   "�� ! "
�� .sysodlogaskr        TEXT ! b     # $ # b     % & % m     ' ' � ( (  E r r o r :   f i l e   & o    ���� 0 appwithpath   $ m     ) ) � * * �   n o t   f o u n d .   I f   y o u   h a v e   m o v e d   t h i s   f i l e   r e c r e a t e   t h e   A p p l e S c r i p t   w i t h   b o o t s t r a p . p y . " �� + ,
�� 
disp + m    ��
�� stic    , �� -��
�� 
btns - J     . .  /�� / m     0 0 � 1 1  Q u i t��  ��      2�� 2 L   # %����  ��    m      3 3�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��     4 5 4 l     ��������  ��  ��   5  6 7 6 l      �� 8 9��   8 � � 
------------------------------------------------------------------------
this section responds to a double-click. No file is supplied to GSAS-II
------------------------------------------------------------------------ 
    9 � : :�   
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 t h i s   s e c t i o n   r e s p o n d s   t o   a   d o u b l e - c l i c k .   N o   f i l e   i s   s u p p l i e d   t o   G S A S - I I 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
 7  ; < ; i     = > = I     ������
�� .aevtoappnull  �   � ****��  ��   > k     2 ? ?  @ A @ r      B C B m      D D � E E � / U s e r s / D W P a l e y / d i a l s / c o n d a _ b a s e / G S A S I I / G S A S - I I . a p p / C o n t e n t s / M a c O S / G S A S - I I C o      ���� 
0 python   A  F G F r     H I H m     J J � K K b / U s e r s / D W P a l e y / d i a l s / c o n d a _ b a s e / G S A S I I / G S A S - I I . p y I o      ���� 0 appwithpath   G  L M L r     N O N m    	 P P � Q Q   O o      ���� 0 env   M  R S R I    �� T���� "0 testfilepresent TestFilePresent T  U�� U o    ���� 0 appwithpath  ��  ��   S  V W V I    �� X���� "0 testfilepresent TestFilePresent X  Y�� Y o    ���� 
0 python  ��  ��   W  Z�� Z O    2 [ \ [ k    1 ] ]  ^ _ ^ I   #������
�� .miscactvnull��� ��� null��  ��   _  `�� ` I  $ 1�� a��
�� .coredoscnull��� ��� ctxt a b   $ - b c b b   $ + d e d b   $ ) f g f b   $ ' h i h o   $ %���� 0 env   i o   % &���� 
0 python   g m   ' ( j j � k k    e o   ) *���� 0 appwithpath   c m   + , l l � m m  ;   e x i t��  ��   \ m     n n�                                                                                      @ alis    J  Macintosh HD                   BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    M a c i n t o s h   H D  *System/Applications/Utilities/Terminal.app  / ��  ��   <  o p o l     ��������  ��  ��   p  q r q l      �� s t��   s��
-----------------------------------------------------------------------------------------------
this section handles starting with files dragged into the AppleScript
 o it goes through the list of file(s) dragged in
 o then it converts the colon-delimited macintosh file location to a POSIX filename
 o for every non-directory file dragged into the icon, it starts GSAS-II, passing the file name
------------------------------------------------------------------------------------------------
    t � u u� 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 t h i s   s e c t i o n   h a n d l e s   s t a r t i n g   w i t h   f i l e s   d r a g g e d   i n t o   t h e   A p p l e S c r i p t 
   o   i t   g o e s   t h r o u g h   t h e   l i s t   o f   f i l e ( s )   d r a g g e d   i n 
   o   t h e n   i t   c o n v e r t s   t h e   c o l o n - d e l i m i t e d   m a c i n t o s h   f i l e   l o c a t i o n   t o   a   P O S I X   f i l e n a m e 
   o   f o r   e v e r y   n o n - d i r e c t o r y   f i l e   d r a g g e d   i n t o   t h e   i c o n ,   i t   s t a r t s   G S A S - I I ,   p a s s i n g   t h e   f i l e   n a m e 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 r  v w v l     ��������  ��  ��   w  x y x i     z { z I     �� |��
�� .aevtodocnull  �    alis | o      ���� 	0 names  ��   { k     \ } }  ~  ~ r      � � � m      � � � � � � / U s e r s / D W P a l e y / d i a l s / c o n d a _ b a s e / G S A S I I / G S A S - I I . a p p / C o n t e n t s / M a c O S / G S A S - I I � o      ���� 
0 python     � � � r     � � � m     � � � � � b / U s e r s / D W P a l e y / d i a l s / c o n d a _ b a s e / G S A S I I / G S A S - I I . p y � o      ���� 0 appwithpath   �  � � � r     � � � m    	 � � � � �   � o      ���� 0 env   �  � � � l   ��������  ��  ��   �  � � � I    �� ����� "0 testfilepresent TestFilePresent �  ��� � o    ���� 0 appwithpath  ��  ��   �  ��� � X    \ ��� � � k   # W � �  � � � r   # ( � � � l  # & ����� � c   # & � � � o   # $���� 0 filename   � m   $ %��
�� 
TEXT��  ��   � o      ���� 0 filestr   �  ��� � Z   ) W � ��� � � D   ) , � � � o   ) *���� 0 filestr   � m   * + � � � � �  : � l   / /�� � ���   � + % should not happen, skip directories     � � � � J   s h o u l d   n o t   h a p p e n ,   s k i p   d i r e c t o r i e s  ��   � k   3 W � �  � � � l   3 3�� � ���   � ) # if this is an input file, open it     � � � � F   i f   t h i s   i s   a n   i n p u t   f i l e ,   o p e n   i t   �  � � � r   3 : � � � l  3 8 ����� � n   3 8 � � � 1   6 8��
�� 
strq � l  3 6 ����� � n   3 6 � � � 1   4 6��
�� 
psxp � o   3 4���� 0 filename  ��  ��  ��  ��   � o      ���� 0 filename   �  ��� � O   ; W � � � k   ? V � �  � � � I  ? D������
�� .miscactvnull��� ��� null��  ��   �  ��� � I  E V�� ���
�� .coredoscnull��� ��� ctxt � b   E R � � � b   E P � � � b   E N � � � b   E L � � � b   E J � � � b   E H � � � o   E F���� 0 env   � o   F G���� 
0 python   � m   H I � � � � �    � o   J K���� 0 appwithpath   � m   L M � � � � �    � o   N O���� 0 filename   � m   P Q � � � � �  ;   e x i t��  ��   � m   ; < � ��                                                                                      @ alis    J  Macintosh HD                   BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    M a c i n t o s h   H D  *System/Applications/Utilities/Terminal.app  / ��  ��  ��  �� 0 filename   � o    ���� 	0 names  ��   y  ��� � l     ��������  ��  ��  ��       �� � � � ���   � �������� "0 testfilepresent TestFilePresent
�� .aevtoappnull  �   � ****
�� .aevtodocnull  �    alis � �� ���� � ����� "0 testfilepresent TestFilePresent�� �� ���  �  ���� 0 appwithpath  ��   � ���� 0 appwithpath   �  3���� ' )������ 0���
�� 
file
�� .coredoexnull���     ****
�� 
disp
�� stic   
�� 
btns�� 
� .sysodlogaskr        TEXT�� '� #*�/j  hY �%�%����kv� 
OhU � �~ >�}�| � ��{
�~ .aevtoappnull  �   � ****�}  �|   �   �  D�z J�y P�x�w n�v j l�u�z 
0 python  �y 0 appwithpath  �x 0 env  �w "0 testfilepresent TestFilePresent
�v .miscactvnull��� ��� null
�u .coredoscnull��� ��� ctxt�{ 3�E�O�E�O�E�O*�k+ O*�k+ O� *j O��%�%�%�%j U � �t {�s�r � ��q
�t .aevtodocnull  �    alis�s 	0 names  �r   � �p�o�n�m�l�k�p 	0 names  �o 
0 python  �n 0 appwithpath  �m 0 env  �l 0 filename  �k 0 filestr   �  � � ��j�i�h�g�f ��e�d ��c � � ��b�j "0 testfilepresent TestFilePresent
�i 
kocl
�h 
cobj
�g .corecnte****       ****
�f 
TEXT
�e 
psxp
�d 
strq
�c .miscactvnull��� ��� null
�b .coredoscnull��� ��� ctxt�q ]�E�O�E�O�E�O*�k+ O H�[��l kh ��&E�O�� hY &��,�,E�O� *j O��%�%�%�%�%�%j U[OY��ascr  ��ޭ