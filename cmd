curl https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/zip/elasticsearch/2.4.1/elasticsearch-2.4.1.zip > elasticsearch-2.4.1.zip
curl https://download.elasticsearch.org/elasticsearch/elasticsearch-js/elasticsearch-js-11.0.1.zip > elasticsearch-js-11.0.1.zip
unzip elasticsearch-js-11.0.1.zip
unzip elasticsearch-2.4.1.zip
npm install --save elasticsearch
mv elasticsearch-js/elasticsearch.js node_modules/elasticsearch/src/
