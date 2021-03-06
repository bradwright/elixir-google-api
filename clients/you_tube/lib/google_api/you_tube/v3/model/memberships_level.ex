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

defmodule GoogleApi.YouTube.V3.Model.MembershipsLevel do
  @moduledoc """
  A <code><strong>membershipsLevel</strong></code> resource represents an offer
  made by YouTube creators for their fans. Users can become members of the
  channel by joining one of the available levels. They will provide recurring
  monetary support and receives special benefits.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of this resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID that YouTube assigns to uniquely identify the memberships level.
  *   `kind` (*type:* `String.t`, *default:* `youtube#membershipsLevel`) - Identifies what kind of resource this is. Value: the fixed string
      <code>"youtube#membershipsLevelListResponse"</code>.
  *   `snippet` (*type:* `GoogleApi.YouTube.V3.Model.MembershipsLevelSnippet.t`, *default:* `nil`) - The <code>snippet</code> object contains basic details about the level.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :snippet => GoogleApi.YouTube.V3.Model.MembershipsLevelSnippet.t()
        }

  field(:etag)
  field(:id)
  field(:kind)
  field(:snippet, as: GoogleApi.YouTube.V3.Model.MembershipsLevelSnippet)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.MembershipsLevel do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.MembershipsLevel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.MembershipsLevel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
