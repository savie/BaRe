#include "sba1_format.h"

#include <algorithm>
#include <cstring>
#include <limits>

namespace sba1 {
namespace {

bool fail(std::string* error, const char* message) {
  if (error != nullptr) *error = message;
  return false;
}

std::uint16_t u16be(const std::uint8_t* p) {
  return static_cast<std::uint16_t>((static_cast<std::uint16_t>(p[0]) << 8) | p[1]);
}

std::uint32_t u32be(const std::uint8_t* p) {
  return (static_cast<std::uint32_t>(p[0]) << 24) |
         (static_cast<std::uint32_t>(p[1]) << 16) |
         (static_cast<std::uint32_t>(p[2]) << 8) |
         static_cast<std::uint32_t>(p[3]);
}

std::uint64_t u64be(const std::uint8_t* p) {
  return (static_cast<std::uint64_t>(u32be(p)) << 32) | u32be(p + 4);
}

bool allZero(const std::uint8_t* p, std::size_t size) {
  for (std::size_t i = 0; i < size; ++i) if (p[i] != 0) return false;
  return true;
}

}  // namespace

std::uint32_t crc32(const std::uint8_t* data, std::size_t size) {
  std::uint32_t crc = 0xffffffffu;
  for (std::size_t i = 0; i < size; ++i) {
    crc ^= data[i];
    for (int bit = 0; bit < 8; ++bit) {
      const std::uint32_t mask = 0u - (crc & 1u);
      crc = (crc >> 1) ^ (0xedb88320u & mask);
    }
  }
  return ~crc;
}

bool parseHeader(const std::uint8_t* data, std::size_t size, Header* out,
                 std::string* error) {
  if (data == nullptr || out == nullptr) return fail(error, "null SBA header argument");
  if (size < 8) return fail(error, "truncated SBA header prefix");
  if (std::memcmp(data, "SBA1", 4) != 0) return fail(error, "invalid SBA header magic");

  Header h{};
  h.version = u16be(data + 4);
  h.header_size = u16be(data + 6);
  const std::size_t expected = h.version == 1 ? 96u : (h.version == 2 ? 144u : 0u);
  if (expected == 0) return fail(error, "unsupported SBA version");
  if (h.header_size != expected || size < expected)
    return fail(error, "invalid or truncated SBA header size");

  h.flags = u32be(data + 8);
  if ((h.flags & ~3u) != 0) return fail(error, "unsupported SBA archive flags");
  h.created_at = u64be(data + 12);
  if ((h.created_at >> 63) != 0) return fail(error, "negative SBA creation time");

  std::size_t p = 20;
  h.compression_method = u16be(data + p); p += 2;
  h.compression_level = u16be(data + p); p += 2;
  h.encryption_method = u16be(data + p); p += 2;
  h.kdf_method = u16be(data + p); p += 2;
  h.kdf_iterations = u16be(data + p); p += 2;
  h.key_check_size = u16be(data + p); p += 2;
  h.salt_size = u16be(data + p); p += 2;
  h.nonce_seed_size = u16be(data + p); p += 2;
  h.mac_method = u16be(data + p); p += 2;
  h.mac_size = u16be(data + p); p += 2;
  p += 48;  // key-check, salt and nonce-seed storage
  h.chunk_size = u32be(data + p); p += 4;

  if (h.version == 1) {
    if (!allZero(data + p, 4)) return fail(error, "non-zero SBA v1 reserved bytes");
  } else {
    // v2 extension: TAR metadata flags/counters policy and reserved extension bytes.
    p += 4;  // extension flags
    p += 8;  // four extension u16 values
    p += 32; // archive metadata digest/extension payload
    if (!allZero(data + p, 8)) return fail(error, "non-zero SBA v2 reserved bytes");
  }

  if (h.compression_method == 0) {
    if (h.compression_level != 0 || (h.flags & 1u) != 0)
      return fail(error, "inconsistent SBA compression fields");
  } else if (h.compression_method == 1) {
    if (h.compression_level < 1 || h.compression_level > 22 || (h.flags & 1u) == 0)
      return fail(error, "invalid SBA Zstandard fields");
  } else {
    return fail(error, "unsupported SBA compression method");
  }

  if (h.encryption_method == 0) {
    if ((h.flags & 2u) != 0 || h.kdf_method != 0 || h.kdf_iterations != 0 ||
        h.key_check_size != 0 || h.salt_size != 0 || h.nonce_seed_size != 0 ||
        h.mac_method != 0 || h.mac_size != 0 || h.chunk_size != 0)
      return fail(error, "inconsistent unencrypted SBA fields");
    if (!allZero(data + 40, 48)) return fail(error, "non-zero unencrypted SBA key material");
  } else if (h.encryption_method == 4 || h.encryption_method == 5) {
    if ((h.flags & 2u) == 0 || h.kdf_method != 1 || h.key_check_size != 16 ||
        h.salt_size != 16 || h.nonce_seed_size != 16 || h.mac_method != 0 ||
        h.mac_size != 0 || h.chunk_size < 4096 || h.chunk_size >= 16777217)
      return fail(error, "invalid SBA AEGIS fields");
    if (h.kdf_iterations < 1 || h.kdf_iterations >= 101)
      return fail(error, "invalid SBA KDF iterations");
  } else {
    return fail(error, "unsupported SBA encryption method");
  }

  *out = h;
  if (error != nullptr) error->clear();
  return true;
}

bool parseFooter(const std::uint8_t* data, std::size_t size,
                 std::uint16_t expected_version, Footer* out,
                 std::string* error) {
  if (data == nullptr || out == nullptr) return fail(error, "null SBA footer argument");
  if (size != 32) return fail(error, "SBA footer must be exactly 32 bytes");
  if (std::memcmp(data, "SAF1", 4) != 0) return fail(error, "invalid SBA footer magic");
  const std::uint32_t stored_crc = u32be(data + 28);
  if (crc32(data, 28) != stored_crc) return fail(error, "SBA footer CRC mismatch");
  if (u16be(data + 4) != 32) return fail(error, "invalid SBA footer size");
  const std::uint16_t version = u16be(data + 6);
  if (version != expected_version) return fail(error, "SBA footer version mismatch");

  Footer f{};
  f.version = version;
  f.index_offset = u64be(data + 8);
  f.index_size = u64be(data + 16);
  f.entry_count = u32be(data + 24);
  if ((f.index_offset >> 63) != 0 || (f.index_size >> 63) != 0)
    return fail(error, "negative SBA index bounds");
  *out = f;
  if (error != nullptr) error->clear();
  return true;
}

}  // namespace sba1
