# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.RemoteBuildExecution.V2.Api.Blobs do
  @moduledoc """
  API calls for all endpoints tagged `Blobs`.
  """

  alias GoogleApi.RemoteBuildExecution.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Download many blobs at once.

  The server may enforce a limit of the combined total size of blobs
  to be downloaded using this API. This limit may be obtained using the
  Capabilities API.
  Requests exceeding the limit should either be split into smaller
  chunks or downloaded using the
  ByteStream API, as appropriate.

  This request is equivalent to calling a Bytestream `Read` request
  on each individual blob, in parallel. The requests may succeed or fail
  independently.

  Errors:

  * `INVALID_ARGUMENT`: The client attempted to read more than the
    server supported limit.

  Every error on individual read will be returned in the corresponding digest
  status.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.RemoteBuildExecution.V2.Connection.t`) - Connection to server
  *   `instance_name` (*type:* `String.t`) - The instance of the execution system to operate against. A server may
      support multiple instances of the execution system (with their own workers,
      storage, caches, etc.). The server MAY require use of this field to select
      between them in an implementation-defined fashion, otherwise it can be
      omitted.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchReadBlobsRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchReadBlobsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec remotebuildexecution_blobs_batch_read(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchReadBlobsResponse.t()}
          | {:error, Tesla.Env.t()}
  def remotebuildexecution_blobs_batch_read(
        connection,
        instance_name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/{+instanceName}/blobs:batchRead", %{
        "instanceName" => URI.encode(instance_name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchReadBlobsResponse{}
        ]
    )
  end

  @doc """
  Upload many blobs at once.

  The server may enforce a limit of the combined total size of blobs
  to be uploaded using this API. This limit may be obtained using the
  Capabilities API.
  Requests exceeding the limit should either be split into smaller
  chunks or uploaded using the
  ByteStream API, as appropriate.

  This request is equivalent to calling a Bytestream `Write` request
  on each individual blob, in parallel. The requests may succeed or fail
  independently.

  Errors:

  * `INVALID_ARGUMENT`: The client attempted to upload more than the
    server supported limit.

  Individual requests may return the following errors, additionally:

  * `RESOURCE_EXHAUSTED`: There is insufficient disk quota to store the blob.
  * `INVALID_ARGUMENT`: The
  Digest does not match the
  provided data.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.RemoteBuildExecution.V2.Connection.t`) - Connection to server
  *   `instance_name` (*type:* `String.t`) - The instance of the execution system to operate against. A server may
      support multiple instances of the execution system (with their own workers,
      storage, caches, etc.). The server MAY require use of this field to select
      between them in an implementation-defined fashion, otherwise it can be
      omitted.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec remotebuildexecution_blobs_batch_update(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse.t()}
          | {:error, Tesla.Env.t()}
  def remotebuildexecution_blobs_batch_update(
        connection,
        instance_name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/{+instanceName}/blobs:batchUpdate", %{
        "instanceName" => URI.encode(instance_name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse{}
        ]
    )
  end

  @doc """
  Determine if blobs are present in the CAS.

  Clients can use this API before uploading blobs to determine which ones are
  already present in the CAS and do not need to be uploaded again.

  There are no method-specific errors.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.RemoteBuildExecution.V2.Connection.t`) - Connection to server
  *   `instance_name` (*type:* `String.t`) - The instance of the execution system to operate against. A server may
      support multiple instances of the execution system (with their own workers,
      storage, caches, etc.). The server MAY require use of this field to select
      between them in an implementation-defined fashion, otherwise it can be
      omitted.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2FindMissingBlobsRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2FindMissingBlobsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec remotebuildexecution_blobs_find_missing(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2FindMissingBlobsResponse.t()}
          | {:error, Tesla.Env.t()}
  def remotebuildexecution_blobs_find_missing(
        connection,
        instance_name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/{+instanceName}/blobs:findMissing", %{
        "instanceName" => URI.encode(instance_name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2FindMissingBlobsResponse{}
        ]
    )
  end

  @doc """
  Fetch the entire directory tree rooted at a node.

  This request must be targeted at a
  Directory stored in the
  ContentAddressableStorage
  (CAS). The server will enumerate the `Directory` tree recursively and
  return every node descended from the root.

  The GetTreeRequest.page_token parameter can be used to skip ahead in
  the stream (e.g. when retrying a partially completed and aborted request),
  by setting it to a value taken from GetTreeResponse.next_page_token of the
  last successfully processed GetTreeResponse).

  The exact traversal order is unspecified and, unless retrieving subsequent
  pages from an earlier request, is not guaranteed to be stable across
  multiple invocations of `GetTree`.

  If part of the tree is missing from the CAS, the server will return the
  portion present and omit the rest.

  * `NOT_FOUND`: The requested tree root is not present in the CAS.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.RemoteBuildExecution.V2.Connection.t`) - Connection to server
  *   `instance_name` (*type:* `String.t`) - The instance of the execution system to operate against. A server may
      support multiple instances of the execution system (with their own workers,
      storage, caches, etc.). The server MAY require use of this field to select
      between them in an implementation-defined fashion, otherwise it can be
      omitted.
  *   `hash` (*type:* `String.t`) - The hash. In the case of SHA-256, it will always be a lowercase hex string
      exactly 64 characters long.
  *   `size_bytes` (*type:* `String.t`) - The size of the blob, in bytes.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:pageSize` (*type:* `integer()`) - A maximum page size to request. If present, the server will request no more
          than this many items. Regardless of whether a page size is specified, the
          server may place its own limit on the number of items to be returned and
          require the client to retrieve more items using a subsequent request.
      *   `:pageToken` (*type:* `String.t`) - A page token, which must be a value received in a previous
          GetTreeResponse.
          If present, the server will use it to return the following page of results.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2GetTreeResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec remotebuildexecution_blobs_get_tree(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2GetTreeResponse.t()}
          | {:error, Tesla.Env.t()}
  def remotebuildexecution_blobs_get_tree(
        connection,
        instance_name,
        hash,
        size_bytes,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/{+instanceName}/blobs/{hash}/{sizeBytes}:getTree", %{
        "instanceName" => URI.encode(instance_name, &URI.char_unreserved?/1),
        "hash" => URI.encode(hash, &URI.char_unreserved?/1),
        "sizeBytes" => URI.encode(size_bytes, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2GetTreeResponse{}
        ]
    )
  end
end