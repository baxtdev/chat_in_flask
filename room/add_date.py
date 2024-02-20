import random
import string
from django.utils.text import slugify
from .models import Room
def generate_random_string(length=10):
    letters_and_digits = string.ascii_letters + string.digits
    return ''.join(random.choice(letters_and_digits) for i in range(length))

def create_random_rooms():
    for _ in range(25):
        room_slug = slugify(room_name)
        Room.objects.create(name=room_name, slug=room_slug)

        room_name = generate_random_string()