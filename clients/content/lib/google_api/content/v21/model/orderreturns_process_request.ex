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

defmodule GoogleApi.Content.V21.Model.OrderreturnsProcessRequest do
  @moduledoc """


  ## Attributes

  *   `fullChargeReturnShippingCost` (*type:* `boolean()`, *default:* `nil`) - Option to charge the customer return shipping cost.
  *   `operationId` (*type:* `String.t`, *default:* `nil`) - [required] The ID of the operation, unique across all operations for a given order return.
  *   `refundShippingFee` (*type:* `GoogleApi.Content.V21.Model.OrderreturnsRefundOperation.t`, *default:* `nil`) - Refunds for original shipping fee.
  *   `returnItems` (*type:* `list(GoogleApi.Content.V21.Model.OrderreturnsReturnItem.t)`, *default:* `nil`) - The list of items to return.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fullChargeReturnShippingCost => boolean(),
          :operationId => String.t(),
          :refundShippingFee => GoogleApi.Content.V21.Model.OrderreturnsRefundOperation.t(),
          :returnItems => list(GoogleApi.Content.V21.Model.OrderreturnsReturnItem.t())
        }

  field(:fullChargeReturnShippingCost)
  field(:operationId)
  field(:refundShippingFee, as: GoogleApi.Content.V21.Model.OrderreturnsRefundOperation)
  field(:returnItems, as: GoogleApi.Content.V21.Model.OrderreturnsReturnItem, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.OrderreturnsProcessRequest do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrderreturnsProcessRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.OrderreturnsProcessRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
