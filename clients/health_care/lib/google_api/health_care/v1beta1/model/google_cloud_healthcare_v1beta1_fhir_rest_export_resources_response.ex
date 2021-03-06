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

defmodule GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse do
  @moduledoc """
  Response when all resources export successfully.
  This structure is included in the
  response to describe the detailed
  outcome after the operation finishes successfully.

  ## Attributes

  *   `fhirStore` (*type:* `String.t`, *default:* `nil`) - The name of the FHIR store where resources have been exported, in the
      format
      `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  *   `resourceCount` (*type:* `String.t`, *default:* `nil`) - The total number of resources exported from the requested FHIR store.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fhirStore => String.t(),
          :resourceCount => String.t()
        }

  field(:fhirStore)
  field(:resourceCount)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
