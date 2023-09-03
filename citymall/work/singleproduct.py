import requests
from bs4 import BeautifulSoup
import openpyxl
import pandas as pd
# import array of brands
from functions import extractCategory
from functions import getBrandId
from functions import scrapSingleProduct
from functions import getSSCatId
from sub_categories_array import sscats
from products_array import products_globale



link = 'https://citymall-para.ma/produit/sensilis-skin-delight-creme-de-jour-vit-c-spf15-50ml/'
product = []

brands_inexist = []
products_inexist_link = []
products = []

def scrapSingleProduct(link):
    result = requests.get(link)
    src=result.content
    soup = BeautifulSoup(src,'html.parser')
    product_title = soup.find('h1',{'class':'product-title product_title entry-title'}).get_text().strip()
    product_price = soup.find('p',{'class':'price product-page-price'})
    if product_price:
        product_price = product_price.find('bdi').get_text().split()[0]
    else :
        "N/A"
    product_code = soup.find('span',{'class':'stl_codenum'}).get_text()
    product_desc = soup.find('div',{'id':'tab-description'}).get_text()
    product_short_desc = soup.find('div',{'class':'product-short-description'})
    if product_short_desc:
        product_short_desc = product_short_desc
    else:
        product_short_desc = "N/A"

    product_brand = soup.find('span',{'class':'tagged_as'})
    product_gallery = soup.find_all('div',{'class':'flickity-viewport'})
    product_gallery = soup.find_all('img',{'width':'247','height':'296','class':'attachment-woocommerce_thumbnail entered lazyloaded'})
    if product_brand:
        product_brand = product_brand.find('a').get_text()
    else :
        product_brand = 'N/A'
    print(product_short_desc)

    # # check if brand exist
    # brand = getBrandId(product_brand) if product_brand else 'N/A'
    # product_categories =  soup.find('span',{'class':'posted_in'}).find_all('a')
    # product_category = extractCategory(product_categories)
    # item = {
    #     'title':product_title,
    #     'price':product_price,
    #     'code':product_code,
    #     'brand':brand,
    #     'category':getSSCatId(product_category ,sscats),        
    # }
    # # return item
    # print(item)



scrapSingleProduct(link)
