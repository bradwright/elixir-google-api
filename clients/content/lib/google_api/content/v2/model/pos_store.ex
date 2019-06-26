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

defmodule GoogleApi.Content.V2.Model.PosStore do
  @moduledoc """
  Store resource.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `content#posStore`) - Identifies what kind of resource this is. Value: the fixed string "content#posStore".
  *   `storeAddress` (*type:* `String.t`, *default:* `nil`) - The street address of the store.
  *   `storeCode` (*type:* `String.t`, *default:* `nil`) - A store identifier that is unique for the given merchant.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :storeAddress => String.t(),
          :storeCode => String.t()
        }

  field(:kind)
  field(:storeAddress)
  field(:storeCode)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.PosStore do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.PosStore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.PosStore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
