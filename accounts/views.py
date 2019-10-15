from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
from IPython import embed

# Create your views here.
def signup(request):
    if request.user.is_authenticated:
        return redirect('articles:index')
    if request.method =="POST":
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('articles:index')
    else: 
        form = UserCreationForm()
    context = {
        'form': form
    }
    return render(request,'accounts/signup.html',context)

def login(request):
    if request.method =='POST':
        login_form = AuthenticationForm(request,request.POST)
        if login_form.is_valid():
            user = login_form.get_user()
            auth_login(request, user)
            return redirect(request.GET.get('next') or 'articles:index')
    else:
        login_form = AuthenticationForm()
    context = {
        'login_form' : login_form
    }
    return render(request,'accounts/login.html',context)

def logout(request):
    auth_logout(request)
    return redirect('articles:index')