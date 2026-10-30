#include "../src/sba1_format.h"

#include <cassert>
#include <cstdint>
#include <cstring>
#include <string>
#include <vector>

namespace {
void put16(std::vector<std::uint8_t>& b, std::size_t p, std::uint16_t v) {
  b[p] = static_cast<std::uint8_t>(v >> 8);
  b[p + 1] = static_cast<std::uint8_t>(v);
}
void put32(std::vector<std::uint8_t>& b, std::size_t p, std::uint32_t v) {
  b[p] = static_cast<std::uint8_t>(v >> 24);
  b[p + 1] = static_cast<std::uint8_t>(v >> 16);
  b[p + 2] = static_cast<std::uint8_t>(v >> 8);
  b[p + 3] = static_cast<std::uint8_t>(v);
}
void put64(std::vector<std::uint8_t>& b, std::size_t p, std::uint64_t v) {
  put32(b, p, static_cast<std::uint32_t>(v >> 32));
  put32(b, p + 4, static_cast<std::uint32_t>(v));
}
std::vector<std::uint8_t> validV1Header() {
  std::vector<std::uint8_t> b(96, 0);
  std::memcpy(b.data(), "SBA1", 4);
  put16(b, 4, 1); put16(b, 6, 96);
  put64(b, 12, 1234);
  // Uncompressed, unencrypted archive; all method/KDF/material fields remain zero.
  return b;
}
std::vector<std::uint8_t> validFooter(std::uint16_t version) {
  std::vector<std::uint8_t> b(32, 0);
  std::memcpy(b.data(), "SAF1", 4);
  put16(b, 4, 32); put16(b, 6, version);
  put64(b, 8, 96); put64(b, 16, 16); put32(b, 24, 0);
  put32(b, 28, sba1::crc32(b.data(), 28));
  return b;
}
}

int main() {
  std::string error;
  sba1::Header header{};
  auto h = validV1Header();
  assert(sba1::parseHeader(h.data(), h.size(), &header, &error));
  assert(header.version == 1 && header.header_size == 96 && header.created_at == 1234);

  h[0] = 'X';
  assert(!sba1::parseHeader(h.data(), h.size(), &header, &error));
  h = validV1Header();
  put32(h, 8, 4);
  assert(!sba1::parseHeader(h.data(), h.size(), &header, &error));
  h = validV1Header();
  h[95] = 1;
  assert(!sba1::parseHeader(h.data(), h.size(), &header, &error));

  sba1::Footer footer{};
  auto f = validFooter(1);
  assert(sba1::parseFooter(f.data(), f.size(), 1, &footer, &error));
  assert(footer.index_offset == 96 && footer.index_size == 16);
  f[8] ^= 1;
  assert(!sba1::parseFooter(f.data(), f.size(), 1, &footer, &error));
  f = validFooter(1);
  assert(!sba1::parseFooter(f.data(), f.size(), 2, &footer, &error));
  return 0;
}
