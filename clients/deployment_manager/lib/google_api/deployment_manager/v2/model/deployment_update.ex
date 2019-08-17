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

defmodule GoogleApi.DeploymentManager.V2.Model.DeploymentUpdate do
  @moduledoc """


  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Output only. An optional user-provided description of the deployment after the current update has been applied.
  *   `labels` (*type:* `list(GoogleApi.DeploymentManager.V2.Model.DeploymentUpdateLabelEntry.t)`, *default:* `nil`) - Output only. Map of labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: [a-z]([-a-z0-9]*[a-z0-9])? Label values must be between 0 and 63 characters long and must conform to the regular expression ([a-z]([-a-z0-9]*[a-z0-9])?)?
  *   `manifest` (*type:* `String.t`, *default:* `nil`) - Output only. URL of the manifest representing the update configuration of this deployment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :labels => list(GoogleApi.DeploymentManager.V2.Model.DeploymentUpdateLabelEntry.t()),
          :manifest => String.t()
        }

  field(:description)
  field(:labels, as: GoogleApi.DeploymentManager.V2.Model.DeploymentUpdateLabelEntry, type: :list)
  field(:manifest)
end

defimpl Poison.Decoder, for: GoogleApi.DeploymentManager.V2.Model.DeploymentUpdate do
  def decode(value, options) do
    GoogleApi.DeploymentManager.V2.Model.DeploymentUpdate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeploymentManager.V2.Model.DeploymentUpdate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
