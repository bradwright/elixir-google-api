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

defmodule GoogleApi.YouTube.V3.Model.ChannelSectionSnippet do
  @moduledoc """
  Basic details about a channel section, including title, style and position.

  ## Attributes

  *   `channelId` (*type:* `String.t`, *default:* `nil`) - The ID that YouTube uses to uniquely identify the channel that published
      the channel section.
  *   `defaultLanguage` (*type:* `String.t`, *default:* `nil`) - The language of the channel section's default title and description.
  *   `localized` (*type:* `GoogleApi.YouTube.V3.Model.ChannelSectionLocalization.t`, *default:* `nil`) - Localized title, read-only.
  *   `position` (*type:* `integer()`, *default:* `nil`) - The position of the channel section in the channel.
  *   `style` (*type:* `String.t`, *default:* `nil`) - The style of the channel section.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The channel section's title for multiple_playlists and multiple_channels.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the channel section.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :channelId => String.t(),
          :defaultLanguage => String.t(),
          :localized => GoogleApi.YouTube.V3.Model.ChannelSectionLocalization.t(),
          :position => integer(),
          :style => String.t(),
          :title => String.t(),
          :type => String.t()
        }

  field(:channelId)
  field(:defaultLanguage)
  field(:localized, as: GoogleApi.YouTube.V3.Model.ChannelSectionLocalization)
  field(:position)
  field(:style)
  field(:title)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ChannelSectionSnippet do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.ChannelSectionSnippet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ChannelSectionSnippet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
