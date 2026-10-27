#include <argon2.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

int main(void) {
  static const uint8_t expected[32] = {
      0x09,0x31,0x61,0x15,0xd5,0xcf,0x24,0xed,0x5a,0x15,0xa3,0x1a,0x3b,0xa3,0x26,0xe5,
      0xcf,0x32,0xed,0xc2,0x47,0x02,0x98,0x7c,0x02,0xb6,0x56,0x6f,0x61,0x91,0x3c,0xf7
  };
  uint8_t actual[sizeof(expected)];
  const int rc = argon2id_hash_raw(2, 1U << 16, 1, "password", 8,
                                   "somesalt", 8, actual, sizeof(actual));
  if (rc != ARGON2_OK) {
    fprintf(stderr, "argon2id_hash_raw failed: %s\n", argon2_error_message(rc));
    return 1;
  }
  if (memcmp(actual, expected, sizeof(expected)) != 0) {
    fputs("Argon2id known-answer mismatch\n", stderr);
    return 2;
  }
  puts("Argon2id known-answer test passed");
  return 0;
}
