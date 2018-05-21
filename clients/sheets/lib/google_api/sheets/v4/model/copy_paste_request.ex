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

defmodule GoogleApi.Sheets.V4.Model.CopyPasteRequest do
  @moduledoc """
  Copies data from the source to the destination.

  ## Attributes

  - destination (GridRange): The location to paste to. If the range covers a span that&#39;s a multiple of the source&#39;s height or width, then the data will be repeated to fill in the destination range. If the range is smaller than the source range, the entire source data will still be copied (beyond the end of the destination range). Defaults to: `null`.
  - pasteOrientation (String.t): How that data should be oriented when pasting. Defaults to: `null`.
    - Enum - one of [NORMAL, TRANSPOSE]
  - pasteType (String.t): What kind of data to paste. Defaults to: `null`.
    - Enum - one of [PASTE_NORMAL, PASTE_VALUES, PASTE_FORMAT, PASTE_NO_BORDERS, PASTE_FORMULA, PASTE_DATA_VALIDATION, PASTE_CONDITIONAL_FORMATTING]
  - source (GridRange): The source range to copy. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          destination: GoogleApi.Sheets.V4.Model.GridRange.t(),
          pasteOrientation: any(),
          pasteType: any(),
          source: GoogleApi.Sheets.V4.Model.GridRange.t()
        }

  defstruct [
    :destination,
    :pasteOrientation,
    :pasteType,
    :source
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.CopyPasteRequest do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:destination, :struct, GoogleApi.Sheets.V4.Model.GridRange, options)
    |> deserialize(:source, :struct, GoogleApi.Sheets.V4.Model.GridRange, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.CopyPasteRequest do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
