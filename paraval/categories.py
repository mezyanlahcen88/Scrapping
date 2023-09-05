import requests
from bs4 import BeautifulSoup
import pandas as pd

result = requests.get('https://paraval.ma/')
src = result.content

soup = BeautifulSoup(src, 'html.parser')

ul_element = soup.find('ul', class_='main-menu dropdown-menu sf-menu')
details = []


li_elements_for_categories = ul_element.find_all('li')
print(len(li_elements_for_categories))
# for li_element_for_category in li_elements_for_categories:    
#     ul_for_sub_category = li_element_for_category.find('ul')
#     all_li_sub_category = li_element_for_category.find_all('li', class_='nav-dropdown-col') 

#     for li_sub_category in all_li_sub_category:   
#         ul_for_sub_sub_categories = li_sub_category.find('ul', 'sub-menu').find_all('li')
#         for li_for_sub_sub_categories in ul_for_sub_sub_categories:
#             a_element = li_for_sub_sub_categories.find('a')
#             text_sub_sub_category = a_element.get_text()
#             link_sub_sub_category = a_element['href'] if a_element.has_attr('href') else 'N/A'
#             slug = link_sub_sub_category.split('/')[-2]
#             sub_sub_category = {
#                 'name': text_sub_sub_category,        
#                 'link': link_sub_sub_category,       

#             }
#             details.append(sub_sub_category)

# # for detail in details:
# #     print(detail)
# df = pd.DataFrame(details)
# df.to_excel('sscat.xlsx')

# print("Excel file saved successfully!")
