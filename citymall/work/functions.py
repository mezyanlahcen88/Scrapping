import requests
from bs4 import BeautifulSoup
import math
# import array of brands
from brands_array import brands
from sub_categories_array import sscats




# functins used in in single product
def extractCategory(product_categories):
    for category in product_categories:
        category_text = category.get_text()
        category_link = category['href']
        if len(category_link.split('/')) == 8:
            break
        # elif len(category_link.split('/')) == 7:
        #     category_text = category_text
    return category_text

def getBrandId(brand):    
    for key, value in brands.items():
        if value == brand:
            return key
    return brand

def getSSCatId(name ,sscats):
    for i in range(0,len(sscats)):
        if sscats[i][1] == name:
            return sscats[i][0]
    return name


def scrapSingleProduct(link):
    result = requests.get(link)
    src=result.content
    soup = BeautifulSoup(src,'html.parser')
    # product_details = []
    # uploads = []
    product_title = soup.find('h1',{'class':'product-title product_title entry-title'}).get_text().strip()
    product_price = soup.find('p',{'class':'price product-page-price'})
    if product_price:
        product_price = product_price.find('bdi').get_text().split()[0]
    else :
        "N/A"
    product_code = soup.find('span',{'class':'stl_codenum'}).get_text()
    product_desc = soup.find('div',{'id':'tab-description'}).get_text()
    product_brand = soup.find('span',{'class':'tagged_as'})
    if product_brand:
        product_brand = product_brand.find('a').get_text()
    else :
        product_brand = 'N/A'

    # check if brand exist
    brand = getBrandId(product_brand) if product_brand else 'N/A'
    product_categories =  soup.find('span',{'class':'posted_in'}).find_all('a')
    product_category = extractCategory(product_categories)
    item = {
        'title':product_title,
        'price':product_price,
        'code':product_code,
        'brand':brand,
        'category':getSSCatId(product_category ,sscats),        
    }
    return item


# functions used in multiple products
# get all links from one link means without paginate its return are link of one page
def multipleProducts(link):
    links = []
    result = requests.get(link)
    src=result.content
    soup = BeautifulSoup(src,'html.parser')
    products = soup.find_all('div',class_='image-fade_in_back')
    for product in products:
        a_element = product.find('a')
        product_link = a_element['href']
        images = product.find_all('img')
        links.append(product_link)
    return links


# other functions
# get the number of pages of sub sub categories link
def pages_number(paginate):
    products_count = int(paginate.split(" ")[-2])
    page_count = products_count / 12
    return math.ceil(page_count)


# get all links from sub sub category link its return is an array of links of many pages
def multipleProductsPagination(link):
    links = []
    result = requests.get(link)
    src=result.content
    soup = BeautifulSoup(src,'html.parser')
    # Find the result count element
    pages_count_element = soup.find(class_="woocommerce-result-count hide-for-medium").get_text().strip()  
    # Print the number of results
    page_count = pages_number(pages_count_element)
    # print(multipleProducts(link))
    for i in range(1,5):
        newLink = f"{link}page/{i}/"
        links = links + multipleProducts(newLink)
    return links


# new link with  pagiantion
# def linkWithPagiantion(page_number):

# check if exist pagination
def existPaginagtion(link):
    result = requests.get(link)
    src=result.content
    soup = BeautifulSoup(src,'html.parser')
    pages_count_element = soup.find(class_="woocommerce-result-count hide-for-medium")
    if pages_count_element:
        position = pages_count_element.get_text().strip().find('sur') 
        if position != -1:
            return True
        else:
            return False  