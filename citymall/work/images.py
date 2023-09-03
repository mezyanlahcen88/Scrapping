import requests
from bs4 import BeautifulSoup
import openpyxl
import pandas as pd


result = requests.get('https://citymall-para.ma/product/acm/')
src=result.content
soup = BeautifulSoup(src,'html.parser')
product_details = []
uploads = []

products = soup.find_all('div',class_='image-fade_in_back')
for product in products:
    uploads_product = []
    i = 1
    j = 1
    product_link = product.find('a')
    images = product.find_all('img')
    item_upload = {
        'id':i,
        'name':product_link['href'],

    }
    upload_product = {
        'id':i
    }
    uploads_product.append(upload_product)
    id_thumbname = i
    i+=1

    # print(product_link['href'])
    # print(images[0]['data-lazy-src'])
    result_product = requests.get(product_link['href'])
    src_product=result_product.content
    soup_product = BeautifulSoup(src_product,'html.parser')
    # print('****************')
    # print(soup_product)
    # print('****************')
    product_title = soup_product.find('h1',class_='product-title product_title entry-title').get_text()
    div_contain = soup_product.find('div',class_='flickity-slider')
    product_images = soup_product.find_all('div',class_='woocommerce-product-gallery__image')
    
    for product_image in product_images:
        product_image = product_image.find('img')       
        print(product_image['data-large_image'])
    print('****************')

    # item = {
    #     'image_thumb':images[0]['data-lazy-src'],
    #     'Product Title':product_title,
    # }
    # product_details.append()

    # print('##################')
    