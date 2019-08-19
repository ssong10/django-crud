from django.shortcuts import render
from .models import Article
# Create your views here.
def index(request):
    articles = Article.objects.all()

    context = {
        'articles' : articles
    }
    for article in articles:
        context[articles] = article
    return render(request, 'articles/index.html',context)