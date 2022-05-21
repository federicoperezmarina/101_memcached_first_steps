from pymemcache.client import base

# Don't forget to run `memcached' before running this next line:
client = base.Client(('localhost', 11211))

# Once the client is instantiated, you can access the cache:
client.set('key', 'value of the key')

# Retrieve previously set data again:
print(client.get('key'))