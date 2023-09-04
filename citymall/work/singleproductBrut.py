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



link = 'https://citymall-para.ma/produit/svr-c-ampoule-anti-ox-30-ml/'
product = []

products_inexist_link = []
products = []
start = 1001
stop = len(products_globale)

def scrapSingleProduct(link):
    result = requests.get(link)
    src=result.content
    soup = BeautifulSoup(src,'html.parser')
    product_title = soup.find('h1',{'class':'product-title product_title entry-title'})
    product_unit = 'N/A'
    if product_title:
        product_title = product_title.get_text().strip()
    else :
        "N/A"

    if product_title:
        product_unit = product_title.split(' ')[-1]
    else :
        "N/A"

    product_price = soup.find('p',{'class':'price product-page-price'})
    if product_price:
        product_price = product_price.find('bdi').get_text().split()[0]
    else :
        "N/A"
    product_brand = soup.find('span',{'class':'tagged_as'})
    if product_brand:
        product_brand = product_brand.find('a').get_text()
    else :
        product_brand = 'N/A'

    # check if brand exist
    brand = getBrandId(product_brand) if product_brand else 'N/A'
    product_categories =  soup.find('nav',{'class':'woocommerce-breadcrumb breadcrumbs uppercase'})
    if product_categories:
        links = product_categories.find_all('a')
        product_category = extractCategory(links)
    else :
        product_category = 'N/A'
    item = {
        'title':product_title,
        'price':product_price,
        'brand':product_brand,
        'unit':product_unit,
        's-s-category':product_category,        
    }

    return item

for i in range(start, stop):    
    products.append(scrapSingleProduct(products_globale[i]))
    print(products_globale[i])


df=pd.DataFrame(products)
df.to_excel(f"products_details_{start}_{stop}.xlsx")

