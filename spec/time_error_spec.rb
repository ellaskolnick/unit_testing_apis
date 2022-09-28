require 'time_error'

RSpec.describe TimeError do
  it "returns the difference between the remote clock and local clock" do
    requester = double :requester
    expect(requester).to receive(:get)
    .with(URI("https://worldtimeapi.org/api/ip"))
    .and_return('{"abbreviation":"BST","client_ip":"88.97.51.55","datetime":"2022-09-28T16:55:25.306436+01:00","day_of_week":3,"day_of_year":271,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1664380525,"utc_datetime":"2022-09-28T15:55:25.306436+00:00","utc_offset":"+01:00","week_number":39}')
    time = Time.new(2022, 9, 28, 16, 55, 25)
    time_error = TimeError.new(requester)
    expect(time_error.error(time)).to eq 0.306436
  end
end
