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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog do
  @moduledoc """
  Publish findings of a DlpJob to Cloud Data Catalog. Labels summarizing the
  results of the DlpJob will be applied to the entry for the resource scanned
  in Cloud Data Catalog. Any labels previously written by another DlpJob will
  be deleted. InfoType naming patterns are strictly enforced when using this
  feature. Note that the findings will be persisted in Cloud Data Catalog
  storage and are governed by Data Catalog service-specific policy, see
  https://cloud.google.com/terms/service-terms
  Only a single instance of this action can be specified and only allowed if
  all resources being scanned are BigQuery tables.
  Compatible with: Inspect

  ## Attributes

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end