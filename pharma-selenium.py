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
    category = driver.find_element(By.XPATH,'/html/body/main/header/div[2]/div/div/div/div/div/div/div/ul/li[2]/a/span')
    sub_categories = driver.find_elements(By.XPATH,'/html/body/main/header/div[2]/div/div/div/div/div/div/div/ul/li[2]/ul/li/ul/li/div[1]/span/a')    
    for sub_category in sub_categories:   
        sub_sub_categories = driver.find_elements(By.XPATH,'/html/body/main/header/div[2]/div/div/div/div/div/div/div/ul/li[2]/ul/li[1]/ul/li/div[1]/div/ul/li/a')  
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
df.to_excel('cat1.xlsx')


driver.quit()    


# categorie
# /html/body/main/header/div[2]/div/div/div/div/div/div/div/ul/li[2]/a/span
# /html/body/main/header/div[2]/div/div/div/div/div/div/div/ul/li[3]/a/span


# sub category 1
# /html/body/main/header/div[2]/div/div/div/div/div/div/div/ul/li[2]/ul/li[1]/ul/li/div[1]/span/a
# /html/body/main/header/div[2]/div/div/div/div/div/div/div/ul/li[2]/ul/li[2]/ul/li/div[1]/span/a

# sub category 2
# /html/body/main/header/div[2]/div/div/div/div/div/div/div/ul/li[3]/ul/li[1]/ul/li/div[1]/span/a
# /html/body/main/header/div[2]/div/div/div/div/div/div/div/ul/li[3]/ul/li[2]/ul/li/div[1]/span/a

# sub sub categorie 1
# /html/body/main/header/div[2]/div/div/div/div/div/div/div/ul/li[2]/ul/li[1]/ul/li/div[1]/div/ul/li[1]/a
# /html/body/main/header/div[2]/div/div/div/div/div/div/div/ul/li[2]/ul/li[1]/ul/li/div[1]/div/ul/li[2]/a
# sub sub categorie 2

# /html/body/main/header/div[2]/div/div/div/div/div/div/div/ul/li[3]/ul/li[2]/ul/li/div[1]/div/ul/li[1]/a
# /html/body/main/header/div[2]/div/div/div/div/div/div/div/ul/li[3]/ul/li[2]/ul/li/div[1]/div/ul/li[2]/a