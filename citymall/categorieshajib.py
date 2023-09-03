import requests
from bs4 import BeautifulSoup
import openpyxl
import pandas as pd
import lxml

result = requests.get('https://citymall-para.ma/')
src=result.content
# print(src)
soup = BeautifulSoup(src,'html.parser')
# Find all category elements
# ul_element contain all li for all categories
ul_element = soup.find('ul', class_='nav header-nav header-bottom-nav nav-left nav-size-small nav-spacing-small nav-uppercase')
details = []
category_id = 1
sub_category_id = 1
sub_sub_category_id = 1

li_elements_for_categories = ul_element.find_all('li',class_='menu-item-design-default')
# boucle for find categories
for li_element_for_category in li_elements_for_categories:
    a_element = li_element_for_category.find('a')
    link_category = a_element['href']
    text_category = a_element.get_text() 
    category ={
        'id':category_id,
        'parent_id':0,
        'level':0,
        'name':text_category,
        'slug':text_category.replace(' ','-'),
        'created_at':'2023-08-18 21:30:30',
        'updated_at':'2023-08-18 21:30:30',
    }
    details.append(category) 
    

    ul_for_sub_category = li_element_for_category.find('ul')
    all_li_sub_category = li_element_for_category.find_all('li',class_='nav-dropdown-col')
    # boucle for find sub categories
    sub_category_id = category_id + 1
    for li_sub_category in all_li_sub_category:
        parent_id = category_id
        a_element = li_sub_category.find('a')
        text_sub_category = a_element.get_text()
        link_sub_category = a_element['href']  if  a_element.has_attr('href') else 'N/A'
        sub_category ={
            'id':sub_category_id,
            'parent_id':parent_id,
            'level':1,
            'name':text_sub_category,
            'slug':text_sub_category.replace(' ','-'),
            'created_at':'2023-08-18 21:30:30',
            'updated_at':'2023-08-18 21:30:30',
        }
        details.append(sub_category)   
        # print(f"'sub text:' {text_sub_category}")
        # print(f"'sub link:' {link_sub_category}")
        ul_for_sub_sub_categories = li_sub_category.find('ul','sub-menu').find_all('li')
    # boucle for find sub sub categories
        sub_sub_category_id = sub_category_id + 1
        for li_for_sub_sub_categories in ul_for_sub_sub_categories:
            sub_parent_id = sub_category_id
            a_element = li_for_sub_sub_categories.find('a')
            text_sub_sub_category = a_element.get_text()
            link_sub_sub_category = a_element['href']  if  a_element.has_attr('href') else 'N/A'
            sub_sub_category ={
                'id':sub_sub_category_id,
                'parent_id':sub_parent_id,
                'level':1,
                'name':text_sub_sub_category,
                'slug':text_sub_sub_category.replace(' ','-'),
                'created_at':'2023-08-18 21:30:30',
                'updated_at':'2023-08-18 21:30:30',
            }
            details.append(sub_sub_category)
        sub_sub_category_id += 1
    sub_category_id += 1  
category_id = sub_sub_category_id - 1
print(f"_____end category name ______: {text_category}")


df=pd.DataFrame(details)
df.to_excel('detailshjj.xlsx')  

print("Excel file saved successfully!")