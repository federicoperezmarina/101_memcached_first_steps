# 101_memcached_first_steps

```sh
docker build -t memcached .
```

```sh
docker run --name my-memcache -d memcached
```

```sh
docker exec -it my-memcache /bin/ash
```

```sh
echo "stats settings" | nc localhost 11211

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