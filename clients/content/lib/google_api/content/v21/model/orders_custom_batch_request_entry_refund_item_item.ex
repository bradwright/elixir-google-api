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

defmodule GoogleApi.Content.V21.Model.OrdersCustomBatchRequestEntryRefundItemItem do
  @moduledoc """


  ## Attributes

  *   `amount` (*type:* `GoogleApi.Content.V21.Model.MonetaryAmount.t`, *default:* `nil`) - The amount that is refunded. In case of multiple refunds,  
      - If the quantity of refunded items changed, this should contain the total refund per item. 
      - If the quantity of the refunded items remained the same, this should be the newly refunded amount.
  *   `fullRefund` (*type:* `boolean()`, *default:* `nil`) - If true, the full item will be refunded. If this is true, amount should not be provided and will be ignored.
  *   `lineItemId` (*type:* `String.t`, *default:* `nil`) - The ID of the line item. Either lineItemId or productId is required.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The ID of the product. This is the REST ID used in the products service. Either lineItemId or productId is required.
  *   `quantity` (*type:* `integer()`, *default:* `nil`) - The number of products that are refunded.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amount => GoogleApi.Content.V21.Model.MonetaryAmount.t(),
          :fullRefund => boolean(),
          :lineItemId => String.t(),
          :productId => String.t(),
          :quantity => integer()
        }

  field(:amount, as: GoogleApi.Content.V21.Model.MonetaryAmount)
  field(:fullRefund)
  field(:lineItemId)
  field(:productId)
  field(:quantity)
end

defimpl Poison.Decoder,
  for: GoogleApi.Content.V21.Model.OrdersCustomBatchRequestEntryRefundItemItem do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrdersCustomBatchRequestEntryRefundItemItem.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Content.V21.Model.OrdersCustomBatchRequestEntryRefundItemItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
