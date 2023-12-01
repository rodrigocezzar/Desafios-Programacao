# frozen_string_literal: true

require 'rqrcode'
require 'chunky_png'

def generate_qr_code(data)
  qr = RQRCode::QRCode.new(data, size: 4, level: :h)

  png = qr.as_png(
    bit_depth: 1,
    border_modules: 4,
    color_mode: ChunkyPNG::COLOR_GRAYSCALE,
    color: 'black',
    file: nil
  )

  png.save('qrcode.png')
  puts "QR Code gerado com sucesso e salvo como 'qrcode.png'"
end

print 'Digite a URL ou texto para gerar o QR Code: '
user_input = gets.chomp

generate_qr_code(user_input)
