from selenium.webdriver.chrome.service import Service
from selenium import webdriver
from selenium.webdriver.common.by import By
import pandas as pd

url ='https://citymall-para.ma/produit/acm-duolys-c-e-serum-intensif-anti-oxydant-15ml/'
driver = webdriver.Firefox()
driver.get(url)
all = []
images = driver.find_elements(By.CLASS_NAME, 'attachment-woocommerce_thumbnail entered lazyloaded')
print(images)