module Vgm
  class API < Grape::API
    format :json
    prefix :api
    version 'v1', :path

    mount Vgm::V1::Games
  end
end
