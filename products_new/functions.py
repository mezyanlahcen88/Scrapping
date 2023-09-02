import re

def extract_number_from_parentheses(input_string):
    """
    Extracts an integer value from a string containing parentheses and a number.
    ...
    """
    # Remove parentheses and their content using regular expression
    cleaned_text = re.sub(r'\([^)]*\)', '', input_string).strip()    
    # Remove non-digit characters
    cleaned_text = ''.join(filter(str.isdigit, cleaned_text))    
    # Convert the cleaned string to an integer
    number = int(cleaned_text)    
    return number


def extract_product_details(details):
    products_details = []

    a_element = product_box.find('a')
    link = a_element['href']

    # Send a GET request to the link
    product_response = requests.get(link)

    if product_response.status_code != 200:
        print(f"Failed to retrieve product details from {link}")
        return None

    # Parse the linked page using BeautifulSoup
    product_soup = BeautifulSoup(product_response.content, "html.parser")

    # Extract more information from the linked page, for example, product price
    product_image = product_soup.find('div', class_='product-cover').find('img')['src']
    name = product_soup.find('div', class_='manu-ref').find_next('h1').text
    product_description = product_soup.find('div', class_='product-description').get_text(strip=True)

    item = {
        'name': name,
        'image_link': product_image,
        'product_description': product_description
    }
    products_details.append(item)

    return products_details