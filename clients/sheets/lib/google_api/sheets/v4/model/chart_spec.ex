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

defmodule GoogleApi.Sheets.V4.Model.ChartSpec do
  @moduledoc """
  The specifications of a chart.

  ## Attributes

  - altText (String.t): The alternative text that describes the chart.  This is often used for accessibility. Defaults to: `null`.
  - backgroundColor (Color): The background color of the entire chart. Not applicable to Org charts. Defaults to: `null`.
  - basicChart (BasicChartSpec): A basic chart specification, can be one of many kinds of charts. See BasicChartType for the list of all charts this supports. Defaults to: `null`.
  - bubbleChart (BubbleChartSpec): A bubble chart specification. Defaults to: `null`.
  - candlestickChart (CandlestickChartSpec): A candlestick chart specification. Defaults to: `null`.
  - fontName (String.t): The name of the font to use by default for all chart text (e.g. title, axis labels, legend).  If a font is specified for a specific part of the chart it will override this font name. Defaults to: `null`.
  - hiddenDimensionStrategy (String.t): Determines how the charts will use hidden rows or columns. Defaults to: `null`.
    - Enum - one of [CHART_HIDDEN_DIMENSION_STRATEGY_UNSPECIFIED, SKIP_HIDDEN_ROWS_AND_COLUMNS, SKIP_HIDDEN_ROWS, SKIP_HIDDEN_COLUMNS, SHOW_ALL]
  - histogramChart (HistogramChartSpec): A histogram chart specification. Defaults to: `null`.
  - maximized (boolean()): True to make a chart fill the entire space in which it&#39;s rendered with minimum padding.  False to use the default padding. (Not applicable to Geo and Org charts.) Defaults to: `null`.
  - orgChart (OrgChartSpec): An org chart specification. Defaults to: `null`.
  - pieChart (PieChartSpec): A pie chart specification. Defaults to: `null`.
  - subtitle (String.t): The subtitle of the chart. Defaults to: `null`.
  - subtitleTextFormat (TextFormat): The subtitle text format. Strikethrough and underline are not supported. Defaults to: `null`.
  - subtitleTextPosition (TextPosition): The subtitle text position. This field is optional. Defaults to: `null`.
  - title (String.t): The title of the chart. Defaults to: `null`.
  - titleTextFormat (TextFormat): The title text format. Strikethrough and underline are not supported. Defaults to: `null`.
  - titleTextPosition (TextPosition): The title text position. This field is optional. Defaults to: `null`.
  - treemapChart (TreemapChartSpec): A treemap chart specification. Defaults to: `null`.
  - waterfallChart (WaterfallChartSpec): A waterfall chart specification. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          altText: any(),
          backgroundColor: GoogleApi.Sheets.V4.Model.Color.t(),
          basicChart: GoogleApi.Sheets.V4.Model.BasicChartSpec.t(),
          bubbleChart: GoogleApi.Sheets.V4.Model.BubbleChartSpec.t(),
          candlestickChart: GoogleApi.Sheets.V4.Model.CandlestickChartSpec.t(),
          fontName: any(),
          hiddenDimensionStrategy: any(),
          histogramChart: GoogleApi.Sheets.V4.Model.HistogramChartSpec.t(),
          maximized: any(),
          orgChart: GoogleApi.Sheets.V4.Model.OrgChartSpec.t(),
          pieChart: GoogleApi.Sheets.V4.Model.PieChartSpec.t(),
          subtitle: any(),
          subtitleTextFormat: GoogleApi.Sheets.V4.Model.TextFormat.t(),
          subtitleTextPosition: GoogleApi.Sheets.V4.Model.TextPosition.t(),
          title: any(),
          titleTextFormat: GoogleApi.Sheets.V4.Model.TextFormat.t(),
          titleTextPosition: GoogleApi.Sheets.V4.Model.TextPosition.t(),
          treemapChart: GoogleApi.Sheets.V4.Model.TreemapChartSpec.t(),
          waterfallChart: GoogleApi.Sheets.V4.Model.WaterfallChartSpec.t()
        }

  defstruct [
    :altText,
    :backgroundColor,
    :basicChart,
    :bubbleChart,
    :candlestickChart,
    :fontName,
    :hiddenDimensionStrategy,
    :histogramChart,
    :maximized,
    :orgChart,
    :pieChart,
    :subtitle,
    :subtitleTextFormat,
    :subtitleTextPosition,
    :title,
    :titleTextFormat,
    :titleTextPosition,
    :treemapChart,
    :waterfallChart
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.ChartSpec do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:backgroundColor, :struct, GoogleApi.Sheets.V4.Model.Color, options)
    |> deserialize(:basicChart, :struct, GoogleApi.Sheets.V4.Model.BasicChartSpec, options)
    |> deserialize(:bubbleChart, :struct, GoogleApi.Sheets.V4.Model.BubbleChartSpec, options)
    |> deserialize(
      :candlestickChart,
      :struct,
      GoogleApi.Sheets.V4.Model.CandlestickChartSpec,
      options
    )
    |> deserialize(
      :histogramChart,
      :struct,
      GoogleApi.Sheets.V4.Model.HistogramChartSpec,
      options
    )
    |> deserialize(:orgChart, :struct, GoogleApi.Sheets.V4.Model.OrgChartSpec, options)
    |> deserialize(:pieChart, :struct, GoogleApi.Sheets.V4.Model.PieChartSpec, options)
    |> deserialize(:subtitleTextFormat, :struct, GoogleApi.Sheets.V4.Model.TextFormat, options)
    |> deserialize(
      :subtitleTextPosition,
      :struct,
      GoogleApi.Sheets.V4.Model.TextPosition,
      options
    )
    |> deserialize(:titleTextFormat, :struct, GoogleApi.Sheets.V4.Model.TextFormat, options)
    |> deserialize(:titleTextPosition, :struct, GoogleApi.Sheets.V4.Model.TextPosition, options)
    |> deserialize(:treemapChart, :struct, GoogleApi.Sheets.V4.Model.TreemapChartSpec, options)
    |> deserialize(
      :waterfallChart,
      :struct,
      GoogleApi.Sheets.V4.Model.WaterfallChartSpec,
      options
    )
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.ChartSpec do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
