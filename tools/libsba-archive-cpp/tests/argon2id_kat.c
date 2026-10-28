#include <argon2.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

static int check_vector(uint32_t iterations, uint32_t memory_kib,
                        uint32_t parallelism, const uint8_t expected[32]) {
  uint8_t actual[32];
  const int rc = argon2id_hash_raw(iterations, memory_kib, parallelism,
                                   "password", 8, "somesalt", 8,
                                   actual, sizeof(actual));
  if (rc != ARGON2_OK) {
    fprintf(stderr, "argon2id_hash_raw failed: %s\n", argon2_error_message(rc));
    return 1;
  }
  if (memcmp(actual, expected, sizeof(actual)) != 0) {
    fprintf(stderr, "Argon2id KAT mismatch (t=%u, m=%u, p=%u)\n",
            iterations, memory_kib, parallelism);
    return 2;
  }
  return 0;
}

int main(void) {
  /* Official upstream Argon2id v=19 vector: t=2, m=65536 KiB, p=1. */
  static const uint8_t expected_p1[32] = {
      0x09,0x31,0x61,0x15,0xd5,0xcf,0x24,0xed,0x5a,0x15,0xa3,0x1a,0x3b,0xa3,0x26,0xe5,
      0xcf,0x32,0xed,0xc2,0x47,0x02,0x98,0x7c,0x02,0xb6,0x56,0x6f,0x61,0x91,0x3c,0xf7
  };
  /* Independent Argon2id v=19 vector exercising two lanes. */
  static const uint8_t expected_p2[32] = {
      0x6f,0x68,0x1a,0xc1,0xc3,0x38,0x4a,0x90,0x11,0x9d,0x27,0x63,0xa6,0x83,0xf9,0xac,
      0x79,0x53,0x2d,0x99,0x9a,0xbf,0xab,0x56,0x44,0xaa,0x8a,0xaf,0xd3,0xd0,0xd2,0x34
  };
  if (check_vector(2, 65536, 1, expected_p1) != 0) return 1;
  if (check_vector(2, 65536, 2, expected_p2) != 0) return 2;
  puts("Argon2id known-answer tests passed (p=1 and p=2)");
  return 0;
}
