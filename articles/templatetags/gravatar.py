from django import template
import hashlib

register = template.Library()

@register.filter
def makehash(email):
    return 'https://www.gravatar.com/avater/' + hashlib.md5(email.strip().lower().encode('utf-8')).hexdigest()