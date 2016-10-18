#elasticgraph

This is a very simple framework bo bind d3.js and leaflet.js visualisations with an elasticsearch data strage
To install simply follow the instructions:
```
git clone https://github.com/jodyphelan/elasticgraph.git
cd elasticgraph
bash cmd
```

I have supplied some dummy data that you can upload.
First you must start your instance of elasticsearch:
```
./elasticsearch-2.4.1/bin/elasticsearch
```
Keep the instance running in the background. Initialise the database to store geographic points and then load the data:
```
curl -XPOST 'localhost:9200/graph' -d'{"mappings": {"nodes": {"properties": {"location": {"type": "geo_point"}}}}}'
curl -XPOST 'localhost:9200/graph/nodes/_bulk?pretty' --data-binary "@nodes.json"
curl -XPOST 'localhost:9200/graph/edges/_bulk?pretty' --data-binary "@edges.json"
```

Then start a python HTTP server:
```
python -m SimpleHTTPServer
```
