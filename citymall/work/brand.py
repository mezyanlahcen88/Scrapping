# scrapSingleProduct(link)
def scrapSingleProduct(link):
    result = requests.get(link)
    src=result.content
    soup = BeautifulSoup(src,'html.parser')
    product_brand = soup.find('span',{'class':'tagged_as'})
    if product_brand:
        product_brand = product_brand.find('a').get_text()
    else :
        product_brand = 'N/A'
    return product_brand

for i in range(start, stop + 1):    
    brands.append(scrapSingleProduct(products_globale[i]))
    print(f"link number : + {i}")


df=pd.DataFrame(brands)
df.to_excel('brands.xlsx')