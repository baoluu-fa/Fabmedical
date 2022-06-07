host="fabmedical-643926.mongo.cosmos.azure.com"
username="fabmedical-643926"
password="BBPRgixRr9lFrYUg4pfbZFVn6cUgIq44Pf6ss17BL0cmmLpHMk5qEkb7dWriMPSaAogbGlZ8meZSz1sqZjDp8Q=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
