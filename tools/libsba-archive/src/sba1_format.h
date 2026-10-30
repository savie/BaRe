#pragma once

#include <cstddef>
#include <cstdint>
#include <string>

namespace sba1 {

struct Header {
  std::uint16_t version = 0;
  std::uint16_t header_size = 0;
  std::uint32_t flags = 0;
  std::uint64_t created_at = 0;
  std::uint16_t compression_method = 0;
  std::uint16_t compression_level = 0;
  std::uint16_t encryption_method = 0;
  std::uint16_t kdf_method = 0;
  std::uint16_t kdf_iterations = 0;
  std::uint16_t key_check_size = 0;
  std::uint16_t salt_size = 0;
  std::uint16_t nonce_seed_size = 0;
  std::uint16_t mac_method = 0;
  std::uint16_t mac_size = 0;
  std::uint32_t chunk_size = 0;
};

struct Footer {
  std::uint16_t version = 0;
  std::uint64_t index_offset = 0;
  std::uint64_t index_size = 0;
  std::uint32_t entry_count = 0;
};

bool parseHeader(const std::uint8_t* data, std::size_t size, Header* out,
                 std::string* error);
bool parseFooter(const std::uint8_t* data, std::size_t size,
                 std::uint16_t expected_version, Footer* out,
                 std::string* error);
std::uint32_t crc32(const std::uint8_t* data, std::size_t size);

}  // namespace sba1
