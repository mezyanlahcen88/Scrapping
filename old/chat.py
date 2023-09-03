import requests
from bs4 import BeautifulSoup

# The URL of the website to scrape
url = "https://parapharma.ma/"

# Send a GET request to the URL
response = requests.get(url)

# Parse the HTML content using BeautifulSoup
soup = BeautifulSoup(response.content, "html.parser")

# Find the elements that correspond to the menu items
menu_items = soup.find_all("li", class_="menu-item")

# Initialize variables to store category information
categories = []

# Iterate through the menu items
for menu_item in menu_items:
    category = {
        "category_name": menu_item.a.text.strip(),
        "subcategories": []
    }

    # Check if the menu item has subcategories
    sub_menu = menu_item.find("ul", class_="sub-menu")
    if sub_menu:
        subcategory_items = sub_menu.find_all("li", class_="menu-item")
        for subcategory_item in subcategory_items:
            subcategory = {
                "subcategory_name": subcategory_item.a.text.strip(),
                "sub_subcategories": []
            }

            # Check if the subcategory has sub-subcategories
            sub_sub_menu = subcategory_item.find("ul", class_="sub-menu")
            if sub_sub_menu:
                sub_subcategory_items = sub_sub_menu.find_all("li", class_="menu-item")
                for sub_subcategory_item in sub_subcategory_items:
                    sub_subcategory = {
                        "sub_subcategory_name": sub_subcategory_item.a.text.strip()
                    }
                    subcategory["sub_subcategories"].append(sub_subcategory)

            category["subcategories"].append(subcategory)

    categories.append(category)

# Print the scraped category information
for category in categories:
    print("Category:", category["category_name"])
    for subcategory in category["subcategories"]:
        print("  Subcategory:", subcategory["subcategory_name"])
        for sub_subcategory in subcategory["sub_subcategories"]:
            print("    Sub-subcategory:", sub_subcategory["sub_subcategory_name"])
