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

defmodule GoogleApi.Container.V1.Model.SetAddonsConfigRequest do
  @moduledoc """
  SetAddonsConfigRequest sets the addons associated with the cluster.

  ## Attributes

  *   `addonsConfig` (*type:* `GoogleApi.Container.V1.Model.AddonsConfig.t`, *default:* `nil`) - The desired configurations for the various addons available to run in the
      cluster.
  *   `clusterId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the cluster to upgrade.
      This field has been deprecated and replaced by the name field.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name (project, location, cluster) of the cluster to set addons.
      Specified in the format 'projects/*/locations/*/clusters/*'.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The Google Developers Console [project ID or project
      number](https://support.google.com/cloud/answer/6158840).
      This field has been deprecated and replaced by the name field.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the Google Compute Engine
      [zone](/compute/docs/zones#available) in which the cluster
      resides.
      This field has been deprecated and replaced by the name field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addonsConfig => GoogleApi.Container.V1.Model.AddonsConfig.t(),
          :clusterId => String.t(),
          :name => String.t(),
          :projectId => String.t(),
          :zone => String.t()
        }

  field(:addonsConfig, as: GoogleApi.Container.V1.Model.AddonsConfig)
  field(:clusterId)
  field(:name)
  field(:projectId)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.SetAddonsConfigRequest do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.SetAddonsConfigRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.SetAddonsConfigRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
