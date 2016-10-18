#elasticgraph

This is a very simple framework to bind d3.js and leaflet.js visualisations with an elasticsearch data strage
To install simply follow the instructions:
```
git clone https://github.com/jodyphelan/elasticgraph.git
cd elasticgraph
bash cmd
```

I have supplied some dummy data that you can upload.
First you must make some changes to the elasticsearch config file and then start your instance of elasticsearch:
```
echo "http.cors.enabled: true" >> elasticsearch-2.4.1/config/elasticsearch.yml
echo "http.cors.allow-origin: /https?:\/\/localhost(:[0-9]+)?/" >> elasticsearch-2.4.1/config/elasticsearch.yml
./elasticsearch-2.4.1/bin/elasticsearch
```
Keep the instance running in the background. Initialise the database to store geographic points and then load the data:
```
curl -XPOST 'localhost:9200/test' -d'{"mappings": {"nodes": {"properties": {"location": {"type": "geo_point"}}}}}'
curl -XPOST 'localhost:9200/test/nodes/_bulk?pretty' --data-binary "@nodes.json"
curl -XPOST 'localhost:9200/test/edges/_bulk?pretty' --data-binary "@edges.json"
```

Then start a python HTTP server:
```
python -m SimpleHTTPServer
```


##Basic Function
Explore the graph by dynamically querying elasticsearch using the forms.
*Try searching for ```id3``` in the top form.
*Try searching by geographic location in the form of ```latitude,longitude,distance``` (distance is in km)

Once you have found some nodes you can find out if they are connected to other nodes by right clicking on them.

This is it for now! Have fun!
