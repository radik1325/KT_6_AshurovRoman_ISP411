   M S B A M L   `   `   `  ����Q  MPet_shop_AshurovISP411, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Pet_shop_AshurovISP411.PagesPet_shop_AshurovISP411.Pages  5      .    (Pet_shop_AshurovISP411.Pages.ProductView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:Pet_shop_AshurovISP411.Pages     5        N� Title$c  ]ИС-Товары для животных, страница клиента/менеджера��5	       N� 
Background
 �����.��5      �  � RowDefinitions 5   
   �� 5      $��20 �6   6*   �� 5      $��50 �6   6*   �� 5      $��* �6   6)   �� 5      $��50 �6   6*   .+�5   
   � $��0��6   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Center=�62   $
��Left=�6M   $��	50,0,00,0q�6h   .+�5      �� -   5         ��Name$ surname��5      6/   �� 5      $�� ��6   6'   �� 5      -   5        $
 name��5      6,   �� 5      $�� ��6   6'   �� 5      -   5        $ 
Patronname��5      62   5      �� 5      $ 
Horizontal=�6   $��Center=�62   $��Right=�6M   $��0,0,50,0q�6i   .+�5      �� -   5        $ CountProductFilter��5      6:   �� 5      $	�� / ��6   6)   �� 5      -   5        $ CountProduct��5      64   5      5      � 5    
   $��1��6   .+�5!      �� $ 
Horizontal=�6   $��Center=�62   $
��Left=�6M   .+�5"      	� -   5         	�Name$ OrderByButton��5"      $��Center=�66   $,��&Цена по возврастанию��6Q   5#   @   	� 5$      -   5        $ OrderBydescButton��5$      $��Center=�6:   $$��Цена по убыванию��6U   $��5q�5%   B   6O   �� 5&      $!��Производитель:��6   $��Center=�62   6P   �� 5'      -   5         ��Name$ ManufactureBox��5'   '   $	��150��6    �� DisplayMemberPath$ ManufactureName��6r   6�   �� 5(      $��Поиск:��6   $��Center=�6*   6H   �� 5)      -	   5         ��Name$ 
SearchText��5)   &   $	��200��6   $��Center=�6:   6�   5*      5+      � 5,   
   $��2��6   .+�5-      �� -
   5        	 ��Name$	 ViewProduct��5-      $��Center=�6,   $��Center=�6G   ��5.      �� 5/      .R�50      � 
 � ColumnDefinitions
 51      �� 52   "   $	��150 �63   6A   �� 53   "   $	��200 �63   6A   �� 54   "   $	��100 �63   6A   �� 55   "   $	��100 �63   6A   �� 56   "   $	��100 �63   6A   .+�58      �� $��0��6$   $��/Resources/picture.png��64   $��10q�6T   �� 5:      $��1��6)   $��Center=�69   .+�5;   "   �� ��6-   �� *Name.NameName+6N   �� 5<   "   $
��Wrap=�6I   ��6,   �� *ProductOpis+6_   �� 5=   "   $
��Wrap=�6|   ��6,   �� *Manufacture.ManufactureName+ �� StringFormat$% Производитель: {0}��6�   �� 5>   "   $
��Wrap=�6c   ��6,   �� *ProductCost+$ Цена: {0}��6y   5?      �� 5@      $��Center=�6(   $��Center=�6C   $
��Wrap=�6�   $��2��6�   ��6`   �� *ProductQuantityInStock+$+ %Наличие на складе: {0}��6�   5A      5B      5D      5E      � 5F   
   $��3��6   .+�5H      �� -   5         ��Name$ 
BackButton��5H   %   $��
Назад��6   $��Right=�6R   $��Center=�6n   $��0,0,70,0q�6�   6�   5I      5K      5L      