defmodule MyspaceIPFS.Dht do
  @moduledoc """
  MyspaceIPFS.Api.Dht is where the dht commands of the IPFS API reside.
  """
  import MyspaceIPFS.Api
  import MyspaceIPFS.Utils

  @typep peer_id :: MyspaceIPFS.peer_id()

  @doc """
  Find the closest peers to a given key.

  ## Parameters
  `peer_id` - The peer ID to find the closest peers to.

  ## Options
  https://docs.ipfs.tech/reference/kubo/rpc/#api-v0-dht-query
  ```
  [
    `verbose` - <bool>, # Print extra information.
  ]
  ```
  """
  def query(peer_id) do
    post_query("/dht/query?arg=" <> peer_id)
    |> handle_data_response()
  end
end
