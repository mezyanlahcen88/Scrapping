import requests
from bs4 import BeautifulSoup
import csv
from itertools import zip_longest
import pandas as pd
import re
from functions import extract_number_from_parentheses
import math


# The URL to scrape
# url = "https://parapharma.ma/792-anti-chute?page=1"
url = "https://parapharma.ma/1007-accessoires"
# Send a GET request to the URL
response = requests.get(url)
# Parse the HTML content using BeautifulSoup
soup = BeautifulSoup(response.content, "html.parser")


# array to store links and texts
links = []
products_details = []
# get sub sub categorie text and product counts
sub_sub_category = soup.find('div',class_='row products-selection')
sub_sub_category_text = sub_sub_category.find('h1').get_text().split()[0]
sub_sub_category_count_products = extract_number_from_parentheses(sub_sub_category.find('span').get_text().split()[0])

# Find all products in the link of sub sub categories
# if int(sub_sub_category_count_products) > 20 :
#     paginate = math.ceil(int(sub_sub_category_count_products) / 20)
#     url = url + "?page=1"
#     products_box = soup.find_all('div',class_='product-description')
#     print(len(products_box))
#     print(url)
#     print(paginate)
# else :
#     print("under 20")
products_box = soup.find_all('div',class_='product-description')

for product_box in products_box:
    text = a_element = product_box.find('a')
    link = a_element['href']
    # Send a GET request to the link
    product_response = requests.get(link)
    
    # Parse the linked page using BeautifulSoup
    product_soup = BeautifulSoup(product_response.content, "html.parser")
    
    # Extract more information from the linked page, for example, product price
    
    product_image = product_soup.find('div', class_='product-cover').find('img')['src']
    name = product_soup.find('div', class_='manu-ref').find_next('h1').text
    product_description = product_soup.find('div', class_='product-description')
    item = {
        'name': name ,
        'image_link':product_image,
        'product_description':str(product_description)
    }
    products_details.append(item)

df=pd.DataFrame(products_details)
df.to_excel('products_details.xlsx')



