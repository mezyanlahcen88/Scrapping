import requests
from bs4 import BeautifulSoup
import openpyxl
import pandas as pd


from functions import extractCategory
from functions import getBrandId
from functions import getSSCatId
from functions import multipleProducts
from functions import multipleProductsPagination
from functions import pages_number
from functions import scrapSingleProduct
from functions import existPaginagtion
from sub_categories_array import sscats




links = []
link = 'https://citymall-para.ma/categorie/visage/soins-anti-age-anti-rides/soins-eclat/'
multipleProductsPagination(link)
# for sscat_link in sscats:
#     link = sscat_link[2]
#     if existPaginagtion(sscat_link[2]):
#         links = links + multipleProductsPagination(link)
#     else :
#         links = links + multipleProducts(link)

# df=pd.DataFrame(links)
# df.to_excel('all_product.xlsx')


