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

defmodule GoogleApi.Content.V2.Model.ProductAspect do
  @moduledoc """


  ## Attributes

  *   `aspectName` (*type:* `String.t`, *default:* `nil`) - The name of the aspect.
  *   `destinationName` (*type:* `String.t`, *default:* `nil`) - The name of the destination. Leave out to apply to all destinations.
  *   `intention` (*type:* `String.t`, *default:* `nil`) - Whether the aspect is required, excluded or should be validated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aspectName => String.t(),
          :destinationName => String.t(),
          :intention => String.t()
        }

  field(:aspectName)
  field(:destinationName)
  field(:intention)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.ProductAspect do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.ProductAspect.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.ProductAspect do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
