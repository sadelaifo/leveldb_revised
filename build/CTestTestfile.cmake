# CMake generated Testfile for 
# Source directory: /users/mikuru/leveldb_revised
# Build directory: /users/mikuru/leveldb_revised/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(c_test "/users/mikuru/leveldb_revised/build/c_test")
add_test(fault_injection_test "/users/mikuru/leveldb_revised/build/fault_injection_test")
add_test(issue178_test "/users/mikuru/leveldb_revised/build/issue178_test")
add_test(issue200_test "/users/mikuru/leveldb_revised/build/issue200_test")
add_test(issue320_test "/users/mikuru/leveldb_revised/build/issue320_test")
add_test(env_test "/users/mikuru/leveldb_revised/build/env_test")
add_test(status_test "/users/mikuru/leveldb_revised/build/status_test")
add_test(no_destructor_test "/users/mikuru/leveldb_revised/build/no_destructor_test")
add_test(autocompact_test "/users/mikuru/leveldb_revised/build/autocompact_test")
add_test(corruption_test "/users/mikuru/leveldb_revised/build/corruption_test")
add_test(db_test "/users/mikuru/leveldb_revised/build/db_test")
add_test(dbformat_test "/users/mikuru/leveldb_revised/build/dbformat_test")
add_test(filename_test "/users/mikuru/leveldb_revised/build/filename_test")
add_test(log_test "/users/mikuru/leveldb_revised/build/log_test")
add_test(recovery_test "/users/mikuru/leveldb_revised/build/recovery_test")
add_test(skiplist_test "/users/mikuru/leveldb_revised/build/skiplist_test")
add_test(version_edit_test "/users/mikuru/leveldb_revised/build/version_edit_test")
add_test(version_set_test "/users/mikuru/leveldb_revised/build/version_set_test")
add_test(write_batch_test "/users/mikuru/leveldb_revised/build/write_batch_test")
add_test(memenv_test "/users/mikuru/leveldb_revised/build/memenv_test")
add_test(filter_block_test "/users/mikuru/leveldb_revised/build/filter_block_test")
add_test(table_test "/users/mikuru/leveldb_revised/build/table_test")
add_test(arena_test "/users/mikuru/leveldb_revised/build/arena_test")
add_test(bloom_test "/users/mikuru/leveldb_revised/build/bloom_test")
add_test(cache_test "/users/mikuru/leveldb_revised/build/cache_test")
add_test(coding_test "/users/mikuru/leveldb_revised/build/coding_test")
add_test(crc32c_test "/users/mikuru/leveldb_revised/build/crc32c_test")
add_test(hash_test "/users/mikuru/leveldb_revised/build/hash_test")
add_test(logging_test "/users/mikuru/leveldb_revised/build/logging_test")
add_test(env_posix_test "/users/mikuru/leveldb_revised/build/env_posix_test")
subdirs("third_party/googletest")
subdirs("third_party/benchmark")
