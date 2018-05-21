# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Sheets.V4.Model.PasteDataRequest do
  @moduledoc """
  Inserts data into the spreadsheet starting at the specified coordinate.

  ## Attributes

  - coordinate (GridCoordinate): The coordinate at which the data should start being inserted. Defaults to: `null`.
  - data (String.t): The data to insert. Defaults to: `null`.
  - delimiter (String.t): The delimiter in the data. Defaults to: `null`.
  - html (boolean()): True if the data is HTML. Defaults to: `null`.
  - type (String.t): How the data should be pasted. Defaults to: `null`.
    - Enum - one of [PASTE_NORMAL, PASTE_VALUES, PASTE_FORMAT, PASTE_NO_BORDERS, PASTE_FORMULA, PASTE_DATA_VALIDATION, PASTE_CONDITIONAL_FORMATTING]
  """

  @type t :: %__MODULE__{
          coordinate: GoogleApi.Sheets.V4.Model.GridCoordinate.t(),
          data: any(),
          delimiter: any(),
          html: any(),
          type: any()
        }

  defstruct [
    :coordinate,
    :data,
    :delimiter,
    :html,
    :type
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.PasteDataRequest do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:coordinate, :struct, GoogleApi.Sheets.V4.Model.GridCoordinate, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.PasteDataRequest do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
