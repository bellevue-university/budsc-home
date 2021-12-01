# BUDSC Home

Homepage for the Bellevue University Data Science Cluster

## Update Docker Image

```shell
docker build -t bellevueuniversity/budsc-home:latest .
docker push bellevueuniversity/budsc-home:latest
```

## Preview Homepage

```shell 
$ cd hugo-site
$ hugo serve
Start building sites … 

                   | EN  
-------------------+-----
  Pages            |  4  
  Paginator pages  |  0  
  Non-page files   |  0  
  Static files     | 48  
  Processed images |  0  
  Aliases          |  0  
  Sitemaps         |  1  
  Cleaned          |  0  

Built in 34 ms
Watching for changes in /home/ubuntu/Workspaces/bellevue-university/budsc-home/hugo-site/{archetypes,content,data,static,themes}
Watching for config changes in /home/ubuntu/Workspaces/Documents/Workspaces/bellevue-university/budsc-home/hugo-site/config.toml
Environment: "development"
Serving pages from memory
Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
Web Server is available at http://localhost:1313/ (bind address 127.0.0.1)
Press Ctrl+C to stop
```