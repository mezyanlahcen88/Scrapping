from selenium.webdriver.chrome.service import Service
from selenium import webdriver
from selenium.webdriver.common.by import By
import pandas as pd

url ='https://parapharma.ma/'
driver = webdriver.Firefox()
driver.get(url)
all = []
categories = driver.find_elements(By.XPATH,'//*[@id="header"]/div[2]/div/div/div/div/div/div/div/ul/li/a/span')

for i in range(2,13):
    category = driver.find_element(By.XPATH,'//*[@id="header"]/div[2]/div/div/div/div/div/div/div/ul/li[{}]/a/span'.format(i))
    sub_categories = driver.find_elements(By.XPATH,'//*[@id="header"]/div[2]/div/div/div/div/div/div/div/ul/li[{}]/ul/li/ul/li/div[1]/span/a'.format(i))    
    print(len(sub_categories))
    for sub_category in sub_categories:   
        sub_sub_categories = sub_category.find_elements(By.XPATH,'//*[@id="header"]/div[2]/div/div/div/div/div/div/div/ul/li[{}]/ul/li/ul/li/div[1]/div/ul/li/a'.format(i))  
        for sub_sub_category in sub_sub_categories:      
            item = {
                'category':category.text,
                'link sub category':sub_category.get_attribute("href"),
                'text sub category':sub_category.get_attribute("textContent"),
                'link sub sub category':sub_sub_category.get_attribute("href"),
                'text sub sub category':sub_sub_category.get_attribute("textContent"),
            }
            all.append(item)
df=pd.DataFrame(all)
df.to_excel('resuls-27-02-2023.xlsx')


driver.quit()    
