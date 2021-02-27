## API Introduction

Curiefense includes an API with the following namespaces:

* `configs` (for manipulating Configurations)
* `tools` (for publishing, etc.)
* `db` (for accessing persistent key value storage)

Curiefense's data is stored within:

* Configurations
* Documents
* Entries
* Blobs

Try GETting the detailed list of existing configurations:

`curl -XGET https://[[HOST_SUBDOMAIN]]-30000-[[KATACODA_HOST]].environments.katacoda.com/api/v1/configs/ | jq`{{execute}}

Congrats, you now have a terminal full of JSON! Lets continue to Step 2. ⤵️