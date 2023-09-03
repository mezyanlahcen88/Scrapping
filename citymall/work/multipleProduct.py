import requests
from bs4 import BeautifulSoup
import openpyxl
import pandas as pd

from functions import multipleProducts

link = 'https://citymall-para.ma/categorie/visage/soins-anti-age-anti-rides/soins-eclat/'
links = []
multipleProducts(link)

def multipleProductsPagination(link):
    result = requests.get(link)
    src=result.content
    soup = BeautifulSoup(src,'html.parser')
    # Find the result count element
    result_count_element = soup.find(class_="woocommerce-result-count hide-for-medium")
    # Extract the number of results
    number_of_results = result_count_element.text.split("")[1]
    # Print the number of results
    print(number_of_results)
    # print(multipleProducts(link))
multipleProductsPagination(link)