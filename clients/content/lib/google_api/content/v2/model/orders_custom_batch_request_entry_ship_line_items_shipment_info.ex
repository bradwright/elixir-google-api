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

defmodule GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo do
  @moduledoc """


  ## Attributes

  *   `carrier` (*type:* `String.t`, *default:* `nil`) - The carrier handling the shipment. See shipments[].carrier in the  Orders resource representation for a list of acceptable values.
  *   `shipmentId` (*type:* `String.t`, *default:* `nil`) - The ID of the shipment. This is assigned by the merchant and is unique to each shipment.
  *   `trackingId` (*type:* `String.t`, *default:* `nil`) - The tracking ID for the shipment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carrier => String.t(),
          :shipmentId => String.t(),
          :trackingId => String.t()
        }

  field(:carrier)
  field(:shipmentId)
  field(:trackingId)
end

defimpl Poison.Decoder,
  for: GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
