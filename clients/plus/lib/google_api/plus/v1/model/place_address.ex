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

defmodule GoogleApi.Plus.V1.Model.PlaceAddress do
  @moduledoc """
  The physical address of the place.

  ## Attributes

  *   `formatted` (*type:* `String.t`, *default:* `nil`) - The formatted address for display.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :formatted => String.t()
        }

  field(:formatted)
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.PlaceAddress do
  def decode(value, options) do
    GoogleApi.Plus.V1.Model.PlaceAddress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Plus.V1.Model.PlaceAddress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
