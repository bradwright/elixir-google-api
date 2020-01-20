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

defmodule GoogleApi.Docs.V1.Model.InsertSectionBreakRequest do
  @moduledoc """
  Inserts a section break at the given location.

  A newline character will be inserted before the section break.

  ## Attributes

  *   `endOfSegmentLocation` (*type:* `GoogleApi.Docs.V1.Model.EndOfSegmentLocation.t`, *default:* `nil`) - Inserts a newline and a section break at the end of the document body.

      Section breaks cannot be inserted inside a footnote, header or footer.
      Because section breaks can only be inserted inside the body, the segment
      ID field must be
      empty.
  *   `location` (*type:* `GoogleApi.Docs.V1.Model.Location.t`, *default:* `nil`) - Inserts a newline and a section break at a specific index in the
      document.

      The section break must be inserted inside the bounds of an existing
      Paragraph. For instance, it cannot be
      inserted at a table's start index (i.e. between the table and its
      preceding paragraph).

      Section breaks cannot be inserted inside a table, equation, footnote,
      header, or footer. Since section breaks can only be inserted inside the
      body, the segment ID field
      must be empty.
  *   `sectionType` (*type:* `String.t`, *default:* `nil`) - The type of section to insert.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endOfSegmentLocation => GoogleApi.Docs.V1.Model.EndOfSegmentLocation.t(),
          :location => GoogleApi.Docs.V1.Model.Location.t(),
          :sectionType => String.t()
        }

  field(:endOfSegmentLocation, as: GoogleApi.Docs.V1.Model.EndOfSegmentLocation)
  field(:location, as: GoogleApi.Docs.V1.Model.Location)
  field(:sectionType)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.InsertSectionBreakRequest do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.InsertSectionBreakRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.InsertSectionBreakRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end