
add_executable( bip_lock bip_lock.cpp )
target_link_libraries( bip_lock fc )

add_executable( api api.cpp )
target_link_libraries( api fc )

add_executable( ecc_test crypto/ecc_test.cpp )
target_link_libraries( ecc_test fc )

add_executable( log_test crypto/log_test.cpp )
target_link_libraries( log_test fc )

#add_executable( test_aes aes_test.cpp )
#target_link_libraries( test_aes fc ${rt_library} ${pthread_library} )
#add_executable( test_sleep sleep.cpp )
#target_link_libraries( test_sleep fc )
#add_executable( test_rate_limiting rate_limiting.cpp )
#target_link_libraries( test_rate_limiting fc )

add_executable( sha_test sha_test.cpp )
target_link_libraries( sha_test fc )

add_executable( all_tests all_tests.cpp
                          compress/compress.cpp
                          crypto/aes_test.cpp
                          crypto/base_n_tests.cpp
                          crypto/bigint_test.cpp
                          crypto/blind.cpp
                          crypto/blowfish_test.cpp
                          crypto/dh_test.cpp
                          crypto/rand_test.cpp
                          crypto/sha_tests.cpp
                          network/ntp_test.cpp
                          network/http/websocket_test.cpp
                          thread/task_cancel.cpp
                          thread/thread_tests.cpp
                          blinding_test.cpp
                          bloom_test.cpp
                          hmac_test.cpp
                          real128_test.cpp
                          utf8_test.cpp
                          )
target_link_libraries( all_tests fc )
