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

defmodule GoogleApi.Content.V2.Model.ProductStatusDataQualityIssue do
  @moduledoc """


  ## Attributes

  *   `destination` (*type:* `String.t`, *default:* `nil`) - 
  *   `detail` (*type:* `String.t`, *default:* `nil`) - 
  *   `fetchStatus` (*type:* `String.t`, *default:* `nil`) - 
  *   `id` (*type:* `String.t`, *default:* `nil`) - 
  *   `location` (*type:* `String.t`, *default:* `nil`) - 
  *   `severity` (*type:* `String.t`, *default:* `nil`) - 
  *   `timestamp` (*type:* `String.t`, *default:* `nil`) - 
  *   `valueOnLandingPage` (*type:* `String.t`, *default:* `nil`) - 
  *   `valueProvided` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destination => String.t(),
          :detail => String.t(),
          :fetchStatus => String.t(),
          :id => String.t(),
          :location => String.t(),
          :severity => String.t(),
          :timestamp => String.t(),
          :valueOnLandingPage => String.t(),
          :valueProvided => String.t()
        }

  field(:destination)
  field(:detail)
  field(:fetchStatus)
  field(:id)
  field(:location)
  field(:severity)
  field(:timestamp)
  field(:valueOnLandingPage)
  field(:valueProvided)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.ProductStatusDataQualityIssue do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.ProductStatusDataQualityIssue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.ProductStatusDataQualityIssue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
