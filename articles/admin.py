from django.contrib import admin

# Register your models here.
from .models import Article
from .models import Student

class ArticleAdmin(admin.ModelAdmin):
    list_display = ('id','title','content','created_at','updated_at')
    
admin.site.register(Student)
admin.site.register(Article, ArticleAdmin)
