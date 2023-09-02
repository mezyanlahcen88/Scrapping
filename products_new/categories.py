import requests
from bs4 import BeautifulSoup
import pandas as pd

result = requests.get('https://citymall-para.ma/')
src = result.content

soup = BeautifulSoup(src, 'html.parser')

ul_element = soup.find('ul', class_='nav header-nav header-bottom-nav nav-left nav-size-small nav-spacing-small nav-uppercase')
details = []
category_id = 1

li_elements_for_categories = ul_element.find_all('li', class_='menu-item-design-default')

for li_element_for_category in li_elements_for_categories:
    a_element = li_element_for_category.find('a')
    text_category = a_element.get_text()
    category = {
        'id': category_id,
        'parent_id': 0,
        'level': 0,  # Add the level column
        'name': text_category,
        'slug': text_category.replace(' ', '-'),
        'created_at': '2023-08-18 21:30:30',
        'updated_at': '2023-08-18 21:30:30',
    }
    details.append(category)

    # Increment the category_id for the second loop
    category_id += 1

    ul_for_sub_category = li_element_for_category.find('ul')
    all_li_sub_category = li_element_for_category.find_all('li', class_='nav-dropdown-col')

    for li_sub_category in all_li_sub_category:
        parent_id = category_id
        a_element = li_sub_category.find('a')
        slug = li_sub_category.find('a').get_text()
        text_sub_category = li_sub_category.find('a').get_text()
        sub_category = {
            'id': category_id,
            'parent_id': parent_id - 1,  # Set parent_id to the previous category_id
            'level': 1,  # Add the level column
            'name': text_sub_category,
            'slug': text_sub_category.replace(' ', '-'),
            'created_at': '2023-08-18 21:30:30',
            'updated_at': '2023-08-18 21:30:30',
        }
        details.append(sub_category)

    # Increment the category_id for the third loop
    category_id += 1

    ul_for_sub_sub_categories = li_sub_category.find('ul','sub-menu').find_all('li')


    for li_for_sub_sub_categories in ul_for_sub_sub_categories:
        sub_sub_category = {
            'id': category_id,
            'parent_id': parent_id,  # Set parent_id to the current category_id
            'level': 2,  # Add the level column
            'name': li_for_sub_sub_categories.find('a').get_text(),
            'slug': text_sub_category.replace(' ', '-'),
            'created_at': '2023-08-18 21:30:30',
            'updated_at': '2023-08-18 21:30:30',
        }
        details.append(sub_sub_category)
        category_id += 1  # Increment the category_id for each record in the third loop

df = pd.DataFrame(details)
df.to_excel('detailsffffff.xlsx', columns=['id', 'parent_id', 'level', 'name', 'slug', 'created_at', 'updated_at'], index=False)

print("Excel file saved successfully!")
