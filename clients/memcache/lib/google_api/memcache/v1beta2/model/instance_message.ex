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

defmodule GoogleApi.Memcache.V1beta2.Model.InstanceMessage do
  @moduledoc """


  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - A code that correspond to one type of user-facing message.
  *   `message` (*type:* `String.t`, *default:* `nil`) - Message on memcached instance which will be exposed to users.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t(),
          :message => String.t()
        }

  field(:code)
  field(:message)
end

defimpl Poison.Decoder, for: GoogleApi.Memcache.V1beta2.Model.InstanceMessage do
  def decode(value, options) do
    GoogleApi.Memcache.V1beta2.Model.InstanceMessage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Memcache.V1beta2.Model.InstanceMessage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end