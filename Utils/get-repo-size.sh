curl https://api.github.com/repos/owner-name/repo-name 2> /dev/null | grep size | tr -dc '[:digit:]'

# web console alternative 
# fetch('https://api.github.com/repos/owner-name/repo-name')
#   .then(v => v.json()).then((v) => {
#      console.log(v['size'] + 'KB')
#   }
# )
