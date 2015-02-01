defmodule LinkExtractorTest do
  use ExUnit.Case
  alias LinkExtractor.Link

  @message """
  Augie,
  ctrl+p: https://www.google.com

  This is a link.
  """

  @expected_link %Link{
    url: "https://www.google.com",
    title: "Google"
  }

  test "when text is injected into the system, links are stored" do
    LinkExtractor.inject @message
    :timer.sleep 2000
    assert LinkExtractor.get_links == [@expected_link]
  end

end
