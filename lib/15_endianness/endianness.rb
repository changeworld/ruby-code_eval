def system_endian
  # http://www.ruby-lang.org/ja/old-man/html/pack_A5C6A5F3A5D7A5ECA1BCA5C8CAB8BBFACEF3.html
  # エンディアン非依存
  # n: big endian unsigned 16bit
  # v: little endian unsigned 16bit
  # エンディアン依存、整数サイズ非依存 (C99 の stdint.h にある厳密な幅を持つ整数型に適切)
  # s: int16_t
  system, big, little = %w(s n v).map {|ts| [1,2].pack ts}
  case system
  when big
    :BigEndian
  when little
    :LittleEndian
  end
end

puts system_endian