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

defmodule GoogleApi.DNS.V1.Model.ManagedZone do
  @moduledoc """


  ## Attributes

  *   `creationTime` (*type:* `String.t`, *default:* `nil`) - 
  *   `description` (*type:* `String.t`, *default:* `nil`) - 
  *   `dnsName` (*type:* `String.t`, *default:* `nil`) - 
  *   `dnssecConfig` (*type:* `GoogleApi.DNS.V1.Model.ManagedZoneDnsSecConfig.t`, *default:* `nil`) - 
  *   `forwardingConfig` (*type:* `GoogleApi.DNS.V1.Model.ManagedZoneForwardingConfig.t`, *default:* `nil`) - 
  *   `id` (*type:* `String.t`, *default:* `nil`) - 
  *   `kind` (*type:* `String.t`, *default:* `dns#managedZone`) - Identifies what kind of resource this is. Value: the fixed string "dns#managedZone".
  *   `labels` (*type:* `map()`, *default:* `nil`) - 
  *   `name` (*type:* `String.t`, *default:* `nil`) - 
  *   `nameServerSet` (*type:* `String.t`, *default:* `nil`) - 
  *   `nameServers` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `peeringConfig` (*type:* `GoogleApi.DNS.V1.Model.ManagedZonePeeringConfig.t`, *default:* `nil`) - 
  *   `privateVisibilityConfig` (*type:* `GoogleApi.DNS.V1.Model.ManagedZonePrivateVisibilityConfig.t`, *default:* `nil`) - 
  *   `reverseLookupConfig` (*type:* `GoogleApi.DNS.V1.Model.ManagedZoneReverseLookupConfig.t`, *default:* `nil`) - 
  *   `visibility` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTime => String.t(),
          :description => String.t(),
          :dnsName => String.t(),
          :dnssecConfig => GoogleApi.DNS.V1.Model.ManagedZoneDnsSecConfig.t(),
          :forwardingConfig => GoogleApi.DNS.V1.Model.ManagedZoneForwardingConfig.t(),
          :id => String.t(),
          :kind => String.t(),
          :labels => map(),
          :name => String.t(),
          :nameServerSet => String.t(),
          :nameServers => list(String.t()),
          :peeringConfig => GoogleApi.DNS.V1.Model.ManagedZonePeeringConfig.t(),
          :privateVisibilityConfig =>
            GoogleApi.DNS.V1.Model.ManagedZonePrivateVisibilityConfig.t(),
          :reverseLookupConfig => GoogleApi.DNS.V1.Model.ManagedZoneReverseLookupConfig.t(),
          :visibility => String.t()
        }

  field(:creationTime)
  field(:description)
  field(:dnsName)
  field(:dnssecConfig, as: GoogleApi.DNS.V1.Model.ManagedZoneDnsSecConfig)
  field(:forwardingConfig, as: GoogleApi.DNS.V1.Model.ManagedZoneForwardingConfig)
  field(:id)
  field(:kind)
  field(:labels, type: :map)
  field(:name)
  field(:nameServerSet)
  field(:nameServers, type: :list)
  field(:peeringConfig, as: GoogleApi.DNS.V1.Model.ManagedZonePeeringConfig)
  field(:privateVisibilityConfig, as: GoogleApi.DNS.V1.Model.ManagedZonePrivateVisibilityConfig)
  field(:reverseLookupConfig, as: GoogleApi.DNS.V1.Model.ManagedZoneReverseLookupConfig)
  field(:visibility)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.ManagedZone do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.ManagedZone.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.ManagedZone do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
