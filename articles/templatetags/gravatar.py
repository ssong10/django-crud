from django import template
import hashlib

register = template.Library()

@register.filter
def makehash(user):
    social_user = user.socialaccount_set.all().first()
    if social_user:
        return social_user.extra_data.get('kakao_account').get('profile').get('thumbnail_image_url')
    else:
        email = user.email
        return 'https://www.gravatar.com/avatar/' + hashlib.md5(email.strip().lower().encode('utf-8')).hexdigest()

