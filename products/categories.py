import requests
from bs4 import BeautifulSoup
import openpyxl
import pandas as pd


result = requests.get('https://parapharma.ma/')
src=result.content
# print(src)
soup = BeautifulSoup(src,'html.parser')

# Initialize a new Excel workbook
wb = openpyxl.Workbook()
ws = wb.active

# Write headers to the Excel sheet
ws.append(["Category", "Category Link", "Sub Category text", "Sub-Category Link", "Sub-Sub-Categories text"])



# Find all category elements
category_elements = soup.find_all('span', class_='h4')

for category_element in category_elements:
    category_name_element = category_element.find('a')
    if category_name_element:
        category_name = category_name_element.get_text()
        category_link = category_name_element['href']

        sub_categories = category_element.find_next('ul', class_='ets_mm_categories').find_all('a')

        for sub_category in sub_categories:
            sub_category_name = sub_category.get_text()
            sub_category_link = sub_category['href']

            sub_sub_categories = sub_category.find_next('ul', class_='ets_mm_categories')

            if sub_sub_categories:
                sub_sub_categories = sub_sub_categories.find_all('a')
                sub_sub_category_names = [sub_sub_cat.get_text() for sub_sub_cat in sub_sub_categories]
                sub_sub_category_links = [sub_sub_cat['href'] for sub_sub_cat in sub_sub_categories]
                sub_sub_category_names_str = ", ".join(sub_sub_category_names)
                sub_sub_category_links_str = ", ".join(sub_sub_category_links)
            else:
                sub_sub_category_names_str = ""
                sub_sub_category_links_str = ""

            ws.append([category_name, category_link, sub_category_name, sub_category_link, sub_category_name])

# Save the Excel file
wb.save('categories_final.xlsx')
print("Excel file saved successfully!")