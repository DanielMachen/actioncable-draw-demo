# Be sure to restart your server when you modify this file. Action Cable runs in an EventMachine loop that does not support auto reloading.
class DrawChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def watch( data )
    if data['image_id'].match /\A[a-zA-Z0-9]+\Z/
      stream_from "image:#{data['image_id']}"
    else
      return false
    end
    stop_all_streams
  end

  def stroke( data )
    ActionCable.server.broadcast("image:#{data['image_id']}", 
                                 { start: { x: data['start_x'].to_i, y: data['start_y'].to_i }, end: { x: data['end_x'].to_i, y: data['end_y'].to_i } } )
  end

  def clear( data )
    ActionCable.server.broadcast("image:#{data['image_id'].to_s}", {clear_image: true})
  end
end
