from django.shortcuts import render
from .models import Todo

# Create your views here.
def index(request):
    todos = Todo.objects.all()
    context = {
        'todos': todos,
    }
    return render(request, 'index.html', context)

def detail(request, todo_pk):
    todo = Todo.objects.get(pk=todo_pk)
    context = {
        'todo': todo,
    }
    return render(request, 'detail.html', context)

def new(request):
    return render(request, 'new.html')

def create(request):
    title = request.GET.get('title')
    content = request.GET.get('content')
    priority = request.GET.get('priority')
    deadline = request.GET.get('deadline')

    todo = Todo(title=title, content=content, priority=priority, deadline=deadline)
    todo.save()

    return render(request, 'create.html')