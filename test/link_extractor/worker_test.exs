defmodule LinkExtractor.WorkerTest do
  use ExUnit.Case
  alias LinkExtractor.Link

  @message """
  Link: https://www.google.com
  """

  @expected_link %Link{
    url: "https://www.google.com",
    title: "Google"
  }

  test "extracts links from texts" do
    assert LinkExtractor.Worker.extract_links(@message) == [@expected_link]
  end
end
