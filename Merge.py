#!/usr/bin/python
# -*- coding:utf-8 -*-
# Created By Sean -- MUST ;
from PIL import Image
# 读取图片
img1 = Image.open( "./Druggability(LR).png")
img2 = Image.open( "./Druggability(CNN).png")
img3 = Image.open( "./Volume.png")
img4 = Image.open( "./Exposure.png")
img5 = Image.open( "./Pos.charged.png")
img6 = Image.open( "./Neg.charged.png")
img7 = Image.open( "./HBdonors.png")
img8 = Image.open( "./HBacceptors.png")
img9 = Image.open( "./Hydrophobic.png")
img10 = Image.open( "./Aromatic.png")
# 垂直合并成一张图片
img11 = Image.new('RGB', (img1.size[0], img1.size[1] + img2.size[1] + img3.size[1] + img4.size[1] + img5.size[1] + img6.size[1] + img7.size[1] + img8.size[1] + img9.size[1] + img10.size[1]))
img11.paste(img1, (0, 0))
img11.paste(img2, (0, img1.size[1]))
img11.paste(img3, (0, img1.size[1] + img2.size[1]))
img11.paste(img4, (0, img1.size[1] + img2.size[1] + img3.size[1]))
img11.paste(img5, (0, img1.size[1] + img2.size[1] + img3.size[1] + img4.size[1]))
img11.paste(img6, (0, img1.size[1] + img2.size[1] + img3.size[1] + img4.size[1] + img5.size[1]))
img11.paste(img7, (0, img1.size[1] + img2.size[1] + img3.size[1] + img4.size[1] + img5.size[1] + img6.size[1]))
img11.paste(img8, (0, img1.size[1] + img2.size[1] + img3.size[1] + img4.size[1] + img5.size[1] + img6.size[1] + img7.size[1]))
img11.paste(img9, (0, img1.size[1] + img2.size[1] + img3.size[1] + img4.size[1] + img5.size[1] + img6.size[1] + img7.size[1] + img8.size[1]))
img11.paste(img10, (0, img1.size[1] + img2.size[1] + img3.size[1] + img4.size[1] + img5.size[1] + img6.size[1] + img7.size[1] + img8.size[1] + img9.size[1]))
# 保存合并后的图片
img11.save("./result_triad.png")



# 查看
#img11.show()













