import requests
from bs4 import BeautifulSoup
import openpyxl
import pandas as pd


result = requests.get('https://citymall-para.ma/')
src=result.content
soup = BeautifulSoup(src,'html.parser')
all_brands = []
id = 0
brands = soup.find('div',class_='tagcloud').find_all('a')
for brand in brands:
    link = brand['href']
    slug = link.split("/")
    id+=1
    # print(brand.get_text())
    item = {
        'id':id,
        'name': brand.get_text(),
        'logo':'uploads/brands/brand.jpg',
        'top': 1,
        'slug': slug[-2],
        'meta_title':brand.get_text(),
        'meta_description':'NULL',
        'created_at':'2023-08-18 21:30:30',
        'updated_at':'2023-08-18 21:30:30',
    }
    all_brands.append(item)
df=pd.DataFrame(all_brands)
df.to_excel('brands.xlsx')  

print("Brand file saved successfully!")