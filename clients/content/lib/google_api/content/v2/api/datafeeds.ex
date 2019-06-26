# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Content.V2.Api.Datafeeds do
  @moduledoc """
  API calls for all endpoints tagged `Datafeeds`.
  """

  alias GoogleApi.Content.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes, fetches, gets, inserts and updates multiple datafeeds in a single request.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:dryRun` (*type:* `boolean()`) - Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
      *   `:body` (*type:* `GoogleApi.Content.V2.Model.DatafeedsCustomBatchRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V2.Model.DatafeedsCustomBatchResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_datafeeds_custombatch(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.DatafeedsCustomBatchResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_datafeeds_custombatch(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/datafeeds/batch", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V2.Model.DatafeedsCustomBatchResponse{}]
    )
  end

  @doc """
  Deletes a datafeed configuration from your Merchant Center account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the account that manages the datafeed. This account cannot be a multi-client account.
  *   `datafeed_id` (*type:* `String.t`) - The ID of the datafeed.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:dryRun` (*type:* `boolean()`) - Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_datafeeds_delete(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def content_datafeeds_delete(
        connection,
        merchant_id,
        datafeed_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/{merchantId}/datafeeds/{datafeedId}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "datafeedId" => URI.encode(datafeed_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Invokes a fetch for the datafeed in your Merchant Center account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the account that manages the datafeed. This account cannot be a multi-client account.
  *   `datafeed_id` (*type:* `String.t`) - The ID of the datafeed to be fetched.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:dryRun` (*type:* `boolean()`) - Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V2.Model.DatafeedsFetchNowResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_datafeeds_fetchnow(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Content.V2.Model.DatafeedsFetchNowResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_datafeeds_fetchnow(
        connection,
        merchant_id,
        datafeed_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{merchantId}/datafeeds/{datafeedId}/fetchNow", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "datafeedId" => URI.encode(datafeed_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.DatafeedsFetchNowResponse{}])
  end

  @doc """
  Retrieves a datafeed configuration from your Merchant Center account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the account that manages the datafeed. This account cannot be a multi-client account.
  *   `datafeed_id` (*type:* `String.t`) - The ID of the datafeed.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V2.Model.Datafeed{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_datafeeds_get(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.Datafeed.t()} | {:error, Tesla.Env.t()}
  def content_datafeeds_get(
        connection,
        merchant_id,
        datafeed_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/datafeeds/{datafeedId}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "datafeedId" => URI.encode(datafeed_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.Datafeed{}])
  end

  @doc """
  Registers a datafeed configuration with your Merchant Center account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the account that manages the datafeed. This account cannot be a multi-client account.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:dryRun` (*type:* `boolean()`) - Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
      *   `:body` (*type:* `GoogleApi.Content.V2.Model.Datafeed.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V2.Model.Datafeed{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_datafeeds_insert(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.Datafeed.t()} | {:error, Tesla.Env.t()}
  def content_datafeeds_insert(connection, merchant_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{merchantId}/datafeeds", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.Datafeed{}])
  end

  @doc """
  Lists the configurations for datafeeds in your Merchant Center account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the account that manages the datafeeds. This account cannot be a multi-client account.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of products to return in the response, used for paging.
      *   `:pageToken` (*type:* `String.t`) - The token returned by the previous request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V2.Model.DatafeedsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_datafeeds_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.DatafeedsListResponse.t()} | {:error, Tesla.Env.t()}
  def content_datafeeds_list(connection, merchant_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/datafeeds", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.DatafeedsListResponse{}])
  end

  @doc """
  Updates a datafeed configuration of your Merchant Center account. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the account that manages the datafeed. This account cannot be a multi-client account.
  *   `datafeed_id` (*type:* `String.t`) - The ID of the datafeed.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:dryRun` (*type:* `boolean()`) - Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
      *   `:body` (*type:* `GoogleApi.Content.V2.Model.Datafeed.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V2.Model.Datafeed{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_datafeeds_patch(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.Datafeed.t()} | {:error, Tesla.Env.t()}
  def content_datafeeds_patch(
        connection,
        merchant_id,
        datafeed_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/{merchantId}/datafeeds/{datafeedId}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "datafeedId" => URI.encode(datafeed_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.Datafeed{}])
  end

  @doc """
  Updates a datafeed configuration of your Merchant Center account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the account that manages the datafeed. This account cannot be a multi-client account.
  *   `datafeed_id` (*type:* `String.t`) - The ID of the datafeed.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:dryRun` (*type:* `boolean()`) - Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
      *   `:body` (*type:* `GoogleApi.Content.V2.Model.Datafeed.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V2.Model.Datafeed{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_datafeeds_update(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.Datafeed.t()} | {:error, Tesla.Env.t()}
  def content_datafeeds_update(
        connection,
        merchant_id,
        datafeed_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/{merchantId}/datafeeds/{datafeedId}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "datafeedId" => URI.encode(datafeed_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.Datafeed{}])
  end
end
