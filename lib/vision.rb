require 'base64'
require 'json'
require 'net/https'

module Vision
  class << self
    def image_analysis(image_file)
      # APIのURL作成
      api_url = "https://vision.googleapis.com/v1/images:annotate?key=#{ENV['GOOGLE_API_KEY']}"

      # 画像をbase64にエンコード
      base64_image = Base64.encode64(open("#{Rails.root}/tmp/uploads/cache/#{image_file.id}").read)

      # APIリクエスト用のJSONパラメータ
      params = {
        requests: [{
          image: {
            content: base64_image
          },
          features: [
            {
              type: 'SAFE_SEARCH_DETECTION'
            }
          ]
        }]
      }.to_json

      # Google Cloud Vision APIにリクエスト
      uri = URI.parse(api_url)
      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(uri.request_uri)
      request['Content-Type'] = 'application/json'
      response = https.request(request, params)

      # APIレスポンス出力
      violence = JSON.parse(response.body)['responses'][0]['safeSearchAnnotation']['violence']
      adult = JSON.parse(response.body)['responses'][0]['safeSearchAnnotation']['adult']
      spoof = JSON.parse(response.body)['responses'][0]['safeSearchAnnotation']['spoof']
      medical = JSON.parse(response.body)['responses'][0]['safeSearchAnnotation']['medical']
      racy  = JSON.parse(response.body)['responses'][0]['safeSearchAnnotation']['racy']
      if violence == 'LIKELY' || violence == 'VERY_LIKELY' || adult == 'LIKELY' || adult == 'VERY_LIKELY' || spoof == 'LIKELY' || spoof == 'VERY_LIKELY' || medical == 'LIKELY' || medical == 'VERY_LIKELY' || racy == 'LIKELY' || racy == 'VERY_LIKELY'
        byebug
        return false
      else
        return true
      end
    end
  end
end