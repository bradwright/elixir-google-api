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

defmodule GoogleApi.CloudPrivateCatalogProducer.V1beta1.Model.GoogleCloudPrivatecatalogproducerV1beta1Version do
  @moduledoc """
  The producer representation of a version, which is a child resource under a
  `Product` with asset data.

  ## Attributes

  *   `asset` (*type:* `map()`, *default:* `nil`) - Output only. The asset which has been validated and is ready to be
      provisioned. See Version.original_asset for the schema.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the version was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The user-supplied description of the version. Maximum of 256 characters.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the version, in the format
      `catalogs/{catalog_id}/products/{product_id}/versions/a-z*[a-z0-9]'.

      A unique identifier for the version under a product, which can't
      be changed after the version is created. The final segment of the name must
      between 1 and 63 characters in length.
  *   `originalAsset` (*type:* `map()`, *default:* `nil`) - The user-supplied asset payload. The maximum size of the payload is 2MB.
      The JSON schema of the payload is defined as:

      ```
      type: object
      properties:
        mainTemplate:
          type: string
          description: The file name of the main template and name prefix of
          schema file. The content of the main template should be set in the
          imports list. The schema file name is expected to be
          <mainTemplate>.schema in the imports list. required: true
        imports:
          type: array
          description: Import template and schema file contents. Required to have
          both <mainTemplate> and <mainTemplate>.schema files. required: true
          minItems: 2
          items:
            type: object
            properties:
              name:
                type: string
              content:
                type: string
      ```
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the version was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :asset => map(),
          :createTime => DateTime.t(),
          :description => String.t(),
          :name => String.t(),
          :originalAsset => map(),
          :updateTime => DateTime.t()
        }

  field(:asset, type: :map)
  field(:createTime, as: DateTime)
  field(:description)
  field(:name)
  field(:originalAsset, type: :map)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.CloudPrivateCatalogProducer.V1beta1.Model.GoogleCloudPrivatecatalogproducerV1beta1Version do
  def decode(value, options) do
    GoogleApi.CloudPrivateCatalogProducer.V1beta1.Model.GoogleCloudPrivatecatalogproducerV1beta1Version.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.CloudPrivateCatalogProducer.V1beta1.Model.GoogleCloudPrivatecatalogproducerV1beta1Version do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end