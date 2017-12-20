import shutil
import os
from jinja2 import Environment, PackageLoader
from subprocess import call

#adding comment to force new commit

env = Environment(loader=PackageLoader('templates', 'files'))

index_temp = env.get_template('index.html')

files = os.listdir('blogs')

dicts = map(lambda x: {'name':x, 'file':x+'/post.html'}, files)

rendered = index_temp.render({'blog_posts':dicts})

output_name = 'public/index.html'
with open(output_name, "wb") as fh:
    fh.write(rendered.encode('utf8'))

orig_direc = os.getcwd()
for i in files:
    direct = 'blogs/'+i
    call(['htlatex', direct+"/post.tex"])
    os.chdir(orig_direc)
    shutil.copytree('blogs/'+i,'public/'+i)
