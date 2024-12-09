import os
from customlibb import XmlExtarctor


curr_dir = os.getcwd()
extarctor = XmlExtarctor(f"{curr_dir}/users.xml")

phones = extarctor.get_phones()

print(phones)
