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

defmodule GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest do
  @moduledoc """
  Request for the `MarkRecommendationFailed` Method.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Fingerprint of the Recommendation. Provides optimistic locking.
  *   `stateMetadata` (*type:* `map()`, *default:* `nil`) - State properties to include with this state. Overwrites any existing
      `state_metadata`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :stateMetadata => map()
        }

  field(:etag)
  field(:stateMetadata, type: :map)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest do
  def decode(value, options) do
    GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end