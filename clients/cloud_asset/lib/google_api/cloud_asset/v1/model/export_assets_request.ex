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

defmodule GoogleApi.CloudAsset.V1.Model.ExportAssetsRequest do
  @moduledoc """
  Export asset request.

  ## Attributes

  *   `assetTypes` (*type:* `list(String.t)`, *default:* `nil`) - A list of asset types of which to take a snapshot for. For example:
      "compute.googleapis.com/Disk". If specified, only matching assets will be
      returned. See [Introduction to Cloud Asset
      Inventory](https://cloud.google.com/asset-inventory/docs/overview)
      for all supported asset types.
  *   `contentType` (*type:* `String.t`, *default:* `nil`) - Asset content type. If not specified, no content but the asset name will be
      returned.
  *   `outputConfig` (*type:* `GoogleApi.CloudAsset.V1.Model.OutputConfig.t`, *default:* `nil`) - Required. Output configuration indicating where the results will be output
      to. All results will be in newline delimited JSON format.
  *   `readTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp to take an asset snapshot. This can only be set to a timestamp
      between 2018-10-02 UTC (inclusive) and the current time. If not specified,
      the current time will be used. Due to delays in resource data collection
      and indexing, there is a volatile window during which running the same
      query may get different results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assetTypes => list(String.t()),
          :contentType => String.t(),
          :outputConfig => GoogleApi.CloudAsset.V1.Model.OutputConfig.t(),
          :readTime => DateTime.t()
        }

  field(:assetTypes, type: :list)
  field(:contentType)
  field(:outputConfig, as: GoogleApi.CloudAsset.V1.Model.OutputConfig)
  field(:readTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.ExportAssetsRequest do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.ExportAssetsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.ExportAssetsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end