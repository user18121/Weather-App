   M S B A M L   `   `   `  ����   Weather report    WeatherApp.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  Weather App��$	��450��$	��600�� � WindowStartupLocation$ CenterScreen=����#34495E � Icon$ weather.png�� � 	Resources  �� 
TargetType �� Property �� Value   HoverButton �� Triggers P� Property	 P� Value��%�  '��       '�� ;     &	  2    '�� �    �� " ��.���  � ��
 �������  � ��$ 16(��� " ��.���  � �� �#1ABC9C��  � ��
 �������  � ��$ 16(���  � ��$	 200����  � ��$ 50����  � ��$ 10q���  � �� �#16A085��  � ��$ 2q���  � ��$
 Bold"���  �@�Cursor$
 Hand����  � ��$ Center=���  � ��$ Center=���  � ��$ 20(���  � ��$
 Bold"���  � �� �#2ECC71��  �@�Cursor$
 Hand����  � �� �#1ABC9C��  � ��$ 1q���  �@�FocusVisualStyle Z� �� " �� P�  �@J�IsMouseOver	 . . ���  � �� �#16A085��  � �� �#1ABC9C�� " ��.���  � ��$	 250����  � ��$ 35����  � ��$ 16(���  � ��$ 10q���  � ��$ Center=���  � �� �#BDC3C7��  � ��
 �������  � ��$ Center=���  � ��$ Light"�.��� .+��� $��Center=�$��Center=����#34495E$��20q�.+��� $��Weather App��$��Center=�$��30(�$
��Bold"�$��0,0,0,20q��� $��Enter a city name:��$��Center=�$
��0,10q�$��18(��� -   $��CityComboBox��$��Center=�$��Center=�$
��10,0q�$��16(�
���   ����#34495E���#2ECC71$��2q�$��Center=�$��Center=�$��Light"�
 �� 
IsEditable
 .  �� IsTextSearchEnabled . �� -   $��GetWeatherButton��$��Get Weather��#��[  ��  �� Orientation$ Vertical=�$��
20,30,20,0q�.+��� -   $��WeatherLabel��$��Center=�$��18(�$
��Bold"�
��������� -   $��TemperatureLabel��$��Center=�
��������� -   $��DescriptionLabel��$��Center=�
��������� -   $��HumidityLabel��$��Center=�
��������� -   $��WindSpeedLabel��$��Center=�
�������