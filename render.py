import shutil
import os
from jinja2 import Environment, FileSystemLoader
from subprocess import call

#adding comment to force new commit

shutil.rmtree("dist")
os.mkdir("dist")
env = Environment(loader=FileSystemLoader('templates'))

index_temp = env.get_template('index.html')
blogs_temp = env.get_template('blogs.html')

files = os.listdir('blogs')

rendered = index_temp.render()

output_name = 'dist/index.html'
with open(output_name, "wb") as fh:
    fh.write(rendered.encode('utf8'))

blogs = blogs_temp.render({'blogs': files})

output_name = 'dist/blogs.html'
with open(output_name, "wb") as fh:
    fh.write(blogs.encode('utf8'))

orig_direc = os.getcwd()
for i in files:
    direct = 'blogs/' + i
    call(['htlatex', direct + "/post.tex"])
    os.chdir(orig_direc)
    shutil.copytree('blogs/' + i, 'dist/blogs/' + i)

shutil.copytree('static/', 'dist/static/')
shutil.copy('resume.pdf', 'dist/resume.pdf')
