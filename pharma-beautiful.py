import requests
from bs4 import BeautifulSoup
import csv
from itertools import zip_longest
import pandas as pd



# The URL to scrape
url = "https://parapharma.ma/"

# Send a GET request to the URL
response = requests.get(url)

# Parse the HTML content using BeautifulSoup
soup = BeautifulSoup(response.content, "html.parser")

# Find all menu items
# menu_items = soup.find_all("span", class_="mm_menu_content_title")
menu_items = soup.find_all("li", class_="mm_menus_li")
# print(menu_items[1].find("div", class_="ets_mm_block mm_block_type_category").text)
print(len(menu_items))

all_items = []



for menu_item in menu_items:
    a_element = menu_item.find_next("a", style="font-size:12px;")
    # category_text = a_element.find("span", class_="mm_menu_content_title").get_text(strip=True)
    category_link = a_element["href"]
    category_text = menu_item.text.strip()
    print("Category Text:", category_text)
    print("Category Link:", category_link)
    # div_elements = soup.find_all("div", class_="ets_mm_block mm_block_type_category")
    # print(div_elements)
    # for div_element in div_elements:
    # a_element = div_element.find("a")
    # category_link = a_element["href"]
    # category_text = a_element.text.strip()
    # print("Category:", category_text)
    # print("Link:", category_link)
    
#     # sub_category_elements = menu_item.find_all("class", class_="ets_mm_block mm_block_type_category")
#     sub_category_element = menu_item.find("div", class_="ets_mm_block mm_block_type_category")
#     sub_category_divs = menu_item.find_all("div", class_="ets_mm_block mm_block_type_category")

#     # span_element = sub_category_div.find("span", class_="h4")
#     print(sub_category_element)
#     # for sub_category_element in sub_category_elements:
#           print(sub_category_element.find("a").text.strip())

#         sub_category_link = sub_category_element["href"]
#         sub_category_text = sub_category_element.text.strip()
        
#         sub_sub_category_elements = sub_category_element.find_next("ul", class_="ets_mm_categories").find_all("a")
#         for sub_sub_category_element in sub_sub_category_elements:
#             sub_sub_category_link = sub_sub_category_element["href"]
#             sub_sub_category_text = sub_sub_category_element.text.strip()
            
#             item = {
#                 "category": category_text,
#                 "link sub category": sub_category_link,
#                 "text sub category": sub_category_text,
#                 "link sub sub category": sub_sub_category_link,
#                 "text sub sub category": sub_sub_category_text,
#             }
#             all_items.append(item)

# # Print or process the scraped items as needed
# for item in all_items:
#     print(item)
