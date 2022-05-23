# 101_memcached_first_steps
In this repository we want to learn how to use memcache. The programming language used will be python.

## Table of Contents
* [Create and run memcached image](#create-and-run-memcached-image)
* [Memcached examples](#memcached-examples)

## Create and run memcached image
First of all we have to build the Dockerfile with then next command:
```sh
docker build -t memcached .
```

Now we have created the docker image alpine-linux with memcache and python. Run the command to run the container.
```sh
docker run --name my-memcache -d memcached
```

In this step we are going inside the container in order to review if the memcache server is up.
```sh
docker exec -it my-memcache /bin/ash
```

To review if the memcached is up run the next command:
```sh
echo "stats settings" | nc localhost 11211

Output:
STAT maxbytes 67108864
STAT maxconns 1024
STAT tcpport 11211
STAT udpport 0
STAT inter NULL
STAT verbosity 0
STAT oldest 0
STAT evictions on
STAT domain_socket NULL
STAT umask 700
STAT shutdown_command no
STAT growth_factor 1.25
STAT chunk_size 48
STAT num_threads 4
STAT num_threads_per_udp 4
STAT stat_key_prefix :
STAT detail_enabled no
STAT reqs_per_event 20
STAT cas_enabled yes
STAT tcp_backlog 1024
STAT binding_protocol auto-negotiate
STAT auth_enabled_sasl no
STAT auth_enabled_ascii no
STAT item_size_max 1048576
STAT maxconns_fast yes
STAT hashpower_init 0
STAT slab_reassign yes
STAT slab_automove 1
STAT slab_automove_ratio 0.80
STAT slab_automove_window 30
STAT slab_chunk_max 524288
STAT lru_crawler yes
STAT lru_crawler_sleep 100
STAT lru_crawler_tocrawl 0
STAT tail_repair_time 0
STAT flush_enabled yes
STAT dump_enabled yes
STAT hash_algorithm murmur3
STAT lru_maintainer_thread yes
STAT lru_segmented yes
STAT hot_lru_pct 20
STAT warm_lru_pct 40
STAT hot_max_factor 0.20
STAT warm_max_factor 2.00
STAT temp_lru no
STAT temporary_ttl 61
STAT idle_timeout 0
STAT watcher_logbuf_size 262144
STAT worker_logbuf_size 65536
STAT read_buf_mem_limit 0
STAT track_sizes no
STAT inline_ascii_response no
STAT ext_item_size 512
STAT ext_item_age 4294967295
STAT ext_low_ttl 0
STAT ext_recache_rate 2000
STAT ext_wbuf_size 4194304
STAT ext_compact_under 0
STAT ext_drop_under 0
STAT ext_max_sleep 1000000
STAT ext_max_frag 0.80
STAT slab_automove_freeratio 0.010
STAT ext_drop_unread no
STAT ssl_enabled no
STAT ssl_chain_cert (null)
STAT ssl_key (null)
STAT ssl_verify_mode 0
STAT ssl_keyformat 1
STAT ssl_ciphers NULL
STAT ssl_ca_cert NULL
STAT ssl_wbuf_size 16384
STAT ssl_session_cache no
STAT ssl_min_version tlsv1.2
STAT num_napi_ids (null)
STAT memory_file (null)
END
```

## Memcached examples
In this step we are able to start using memcache. It is very easy to use, memcache is a cache service. We are going to do show some examples in order to know how it work and how it performs.

### Example 1
The first example explains how to set & read a cache
```sh
cd /tmp
python3 example_1_memcache.py

output:
b'value of the key'
```

### Example 2
The second example explains how to set the cache & measure the time that it takes
```sh
cd /tmp
python3 example_2_memcache.py

output:
WriteFunction took 0.009439468383789062 seconds to complete its execution.
WriteFunction took 0.0534367561340332 seconds to complete its execution.
WriteFunction took 0.3517634868621826 seconds to complete its execution.
WriteFunction took 3.407031774520874 seconds to complete its execution.
```

### Example 3
The third example explains how to set & read the cache & measure the time that it takes
```sh
cd /tmp
python3 example_3_memcache.py

output:
WriteFunction took 0.0057680606842041016 seconds to complete its execution.
ReadFunction took 0.02287006378173828 seconds to complete its execution.
WriteFunction took 0.025272607803344727 seconds to complete its execution.
ReadFunction took 0.27745509147644043 seconds to complete its execution.
WriteFunction took 0.2707219123840332 seconds to complete its execution.
ReadFunction took 2.3406431674957275 seconds to complete its execution.
WriteFunction took 2.7416086196899414 seconds to complete its execution.
ReadFunction took 11.155537843704224 seconds to complete its execution.
```

### Example 4
The fourth example explains how to create a cache strategy
```sh
cd /tmp
python3 example_4_memcache.py

output:
42
```

### Example 5
The fifth example explains how to set / read & delete the cache measuring the time that it takes
```sh
cd /tmp
python3 example_5_memcache.py

output:
WriteFunction took 0.006361961364746094 seconds to complete its execution.
ReadFunction took 0.02419590950012207 seconds to complete its execution.
DeleteFunction took 0.0018792152404785156 seconds to complete its execution.
WriteFunction took 0.026496171951293945 seconds to complete its execution.
ReadFunction took 0.2660956382751465 seconds to complete its execution.
DeleteFunction took 0.017699241638183594 seconds to complete its execution.
WriteFunction took 0.2690434455871582 seconds to complete its execution.
ReadFunction took 2.1332435607910156 seconds to complete its execution.
DeleteFunction took 0.19340968132019043 seconds to complete its execution.
WriteFunction took 3.488253116607666 seconds to complete its execution.
ReadFunction took 22.048431873321533 seconds to complete its execution.
DeleteFunction took 2.0235681533813477 seconds to complete its execution.
```
