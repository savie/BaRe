#include <aegis.h>

#include <stdint.h>
#include <stdio.h>
#include <string.h>

static int test_aegis256(void) {
  static const uint8_t message[] = "SBA AEGIS chunk smoke test";
  static const uint8_t ad[] = "SBA1-AEGIS256-entry-chunk-aad-v1";
  uint8_t key[aegis256_KEYBYTES] = {0};
  uint8_t nonce[aegis256_NPUBBYTES] = {0};
  uint8_t ciphertext[sizeof(message)] = {0};
  uint8_t plaintext[sizeof(message)] = {0};
  uint8_t tag[16] = {0};

  if (aegis256_encrypt_detached(ciphertext, tag, sizeof(tag), message,
                                sizeof(message), ad, sizeof(ad) - 1, nonce, key) != 0) {
    return 1;
  }
  if (aegis256_decrypt_detached(plaintext, ciphertext, sizeof(message), tag,
                                sizeof(tag), ad, sizeof(ad) - 1, nonce, key) != 0 ||
      memcmp(plaintext, message, sizeof(message)) != 0) {
    return 2;
  }
  tag[0] ^= 1;
  if (aegis256_decrypt_detached(plaintext, ciphertext, sizeof(message), tag,
                                sizeof(tag), ad, sizeof(ad) - 1, nonce, key) == 0) {
    return 3;
  }
  return 0;
}

static int test_aegis128x2(void) {
  static const uint8_t message[] = "SBA AEGIS chunk smoke test";
  static const uint8_t ad[] = "SBA1-AEGIS128X2-entry-chunk-aad-v1";
  uint8_t key[aegis128x2_KEYBYTES] = {0};
  uint8_t nonce[aegis128x2_NPUBBYTES] = {0};
  uint8_t ciphertext[sizeof(message)] = {0};
  uint8_t plaintext[sizeof(message)] = {0};
  uint8_t tag[16] = {0};

  if (aegis128x2_encrypt_detached(ciphertext, tag, sizeof(tag), message,
                                  sizeof(message), ad, sizeof(ad) - 1, nonce, key) != 0) {
    return 1;
  }
  if (aegis128x2_decrypt_detached(plaintext, ciphertext, sizeof(message), tag,
                                  sizeof(tag), ad, sizeof(ad) - 1, nonce, key) != 0 ||
      memcmp(plaintext, message, sizeof(message)) != 0) {
    return 2;
  }
  tag[0] ^= 1;
  if (aegis128x2_decrypt_detached(plaintext, ciphertext, sizeof(message), tag,
                                  sizeof(tag), ad, sizeof(ad) - 1, nonce, key) == 0) {
    return 3;
  }
  return 0;
}

int main(void) {
  (void)aegis_init();
  int ret = test_aegis256();
  if (ret != 0) {
    fprintf(stderr, "AEGIS-256 smoke test failed: %d\n", ret);
    return 10 + ret;
  }
  ret = test_aegis128x2();
  if (ret != 0) {
    fprintf(stderr, "AEGIS-128X2 smoke test failed: %d\n", ret);
    return 20 + ret;
  }
  puts("AEGIS-256 and AEGIS-128X2 encrypt/decrypt/authentication smoke tests passed");
  return 0;
}
