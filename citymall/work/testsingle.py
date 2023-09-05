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



link = 'https://citymall-para.ma/produit/acm-duolys-c-e-serum-intensif-anti-oxydant-15ml/'
product = []

products_inexist_link = []
products = []
start = 300
stop = 1000

def scrapSingleProduct(link):
    result = requests.get(link)
    src=result.content
    soup = BeautifulSoup(src,'html.parser')

    product_title = soup.find('h1',{'class':'product-title product_title entry-title'})
    if product_title:
        product_title = product_title.get_text().strip()
    else :
        product_title = "N/A"

    if product_title:
        product_unit = product_title.split(' ')[-1]
    else :
        product_unit = 'N/A'


    product_price = soup.find('p',{'class':'price product-page-price'})
    if product_price:
        product_price = product_price.find('bdi').get_text().split()[0]
    else :
        product_price = "N/A"
    product_desc = soup.find('div',{'id':'tab-description'})
    if product_desc:
        product_desc = product_desc.text
    else:
        product_desc = "N/A"

    product_short_desc = soup.find('div',{'class':'product-short-description'})
    if product_short_desc:
        product_short_desc = product_short_desc.text
    else:
        product_short_desc = "N/A"

    product_brand = soup.find('span',{'class':'tagged_as'})
    
    if product_brand:
        product_brand = product_brand.find('a').get_text()
    else :
        product_brand = 'N/A'

    # check if brand exist
    brand = getBrandId(product_brand) if product_brand else 'N/A'
    # product_categories =  soup.find('span',{'class':'posted_in'}).find_all('a')
    product_categories =  soup.find('nav',{'class':'woocommerce-breadcrumb breadcrumbs uppercase'})
    if product_categories:
        links = product_categories.find_all('a')
        product_category = extractCategory(links)
    else :
        product_category = 'N/A'
    item = {
        'title':product_title,
        'price':product_price,
        'brand':getBrandId(product_brand),
        'unit':product_unit,
        's-s-category':getSSCatId(product_category ,sscats),        
        'desc':product_desc,        
        's-desc':product_short_desc,        
    }

    return item

# for i in range(start, stop):    
#     products.append(scrapSingleProduct(products_globale[i]))
#     print(products_globale[i])


# df=pd.DataFrame(products)
# df.to_excel(f"products_details_all_{start}_{stop}.xlsx")

print(scrapSingleProduct(link))
# scrapSingleProduct(link)
