defmodule Heroicons.Solid do
  @moduledoc """
  Solid style icons drawn with fills, packaged as Phoenix Components.

  For primary navigation and marketing sections, with a filled appearance,
  designed to be rendered at 24x24.
  """

  use Phoenix.Component

  if function_exported?(Phoenix.Component, :assigns_to_attributes, 2) do
    @assign_mod Phoenix.Component
    @assigns_to_attrs_mod Phoenix.Component
  else
    @assign_mod Phoenix.LiveView
    @assigns_to_attrs_mod Phoenix.LiveView.Helpers
  end
  
  @doc """
  ![](assets/icons/solid/academic-cap.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.academic_cap />

      <.academic_cap class="h-6 w-6 text-gray-500" />

  or as a function

      <%= academic_cap() %>

      <%= academic_cap(class: "h-6 w-6 text-gray-500") %>
  """
  def academic_cap(assigns_or_opts \\ [])

  def academic_cap(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M11.6998 2.80541C11.8912 2.72176 12.1089 2.72176 12.3003 2.80541C16.0192 4.43023 19.5437 6.41649 22.8295 8.71968C23.0673 8.88636 23.1875 9.17532 23.1381 9.46147C23.0887 9.74762 22.8785 9.97953 22.5986 10.0568C21.9137 10.2459 21.2347 10.4495 20.5618 10.6665C17.8307 11.5473 15.2018 12.6555 12.6972 13.9689L12.6939 13.9706C12.5803 14.0302 12.467 14.0902 12.354 14.1506C12.1331 14.2686 11.8679 14.2686 11.6471 14.1506C11.533 14.0896 11.4186 14.029 11.3039 13.9689C10.0655 13.3195 8.79658 12.7202 7.5 12.1738V11.9501C7.5 11.8187 7.56742 11.7022 7.67173 11.639C9.17685 10.7271 10.7294 9.88577 12.3247 9.11948C12.6981 8.94014 12.8554 8.49207 12.6761 8.1187C12.4967 7.74532 12.0486 7.58803 11.6753 7.76737C10.036 8.55475 8.44086 9.41921 6.89449 10.356C6.44111 10.6307 6.13632 11.0803 6.03607 11.5839C5.18115 11.255 4.31499 10.9487 3.43829 10.666C2.76546 10.449 2.08644 10.2458 1.40154 10.0568C1.12162 9.97952 0.911461 9.74761 0.86204 9.46146C0.812619 9.17531 0.932824 8.88634 1.17061 8.71967C4.45645 6.41648 7.98097 4.43023 11.6998 2.80541Z" fill="#0F172A"/>
    <path d="M13.0609 15.4735C15.4997 14.1704 18.0621 13.0688 20.7258 12.1907C20.8601 13.6055 20.9458 15.0344 20.9813 16.4756C20.9889 16.7848 20.8059 17.067 20.5205 17.1862C17.6693 18.3765 14.9574 19.8342 12.4159 21.5278C12.1641 21.6957 11.836 21.6957 11.5841 21.5278C9.04267 19.8342 6.33073 18.3765 3.4796 17.1862C3.19416 17.067 3.01116 16.7848 3.01878 16.4756C3.05429 15.0343 3.14001 13.6053 3.27427 12.1904C4.19527 12.494 5.10415 12.8243 6 13.1804V14.4508C5.55165 14.7102 5.25 15.1949 5.25 15.7501C5.25 16.2454 5.49008 16.6847 5.86022 16.9578C5.7707 17.3385 5.63822 17.7109 5.46277 18.0676C5.91546 18.2813 6.36429 18.5018 6.8091 18.7291C7.06243 18.2138 7.24612 17.673 7.36014 17.1208C7.88449 16.8871 8.25 16.3613 8.25 15.7501C8.25 15.1949 7.94835 14.7102 7.5 14.4508V13.806C8.6714 14.3178 9.81885 14.8744 10.9402 15.4735C11.6028 15.8276 12.3983 15.8276 13.0609 15.4735Z" fill="#0F172A"/>
    <path d="M4.46222 19.4624C4.88136 19.0433 5.21502 18.5712 5.46277 18.0676C5.91546 18.2813 6.36429 18.5018 6.8091 18.7291C6.49055 19.3769 6.06164 19.9843 5.52288 20.5231C5.22999 20.816 4.75512 20.816 4.46222 20.5231C4.16933 20.2302 4.16933 19.7553 4.46222 19.4624Z" fill="#0F172A"/>
    </svg>
    """
  end

  def academic_cap(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M11.6998 2.80541C11.8912 2.72176 12.1089 2.72176 12.3003 2.80541C16.0192 4.43023 19.5437 6.41649 22.8295 8.71968C23.0673 8.88636 23.1875 9.17532 23.1381 9.46147C23.0887 9.74762 22.8785 9.97953 22.5986 10.0568C21.9137 10.2459 21.2347 10.4495 20.5618 10.6665C17.8307 11.5473 15.2018 12.6555 12.6972 13.9689L12.6939 13.9706C12.5803 14.0302 12.467 14.0902 12.354 14.1506C12.1331 14.2686 11.8679 14.2686 11.6471 14.1506C11.533 14.0896 11.4186 14.029 11.3039 13.9689C10.0655 13.3195 8.79658 12.7202 7.5 12.1738V11.9501C7.5 11.8187 7.56742 11.7022 7.67173 11.639C9.17685 10.7271 10.7294 9.88577 12.3247 9.11948C12.6981 8.94014 12.8554 8.49207 12.6761 8.1187C12.4967 7.74532 12.0486 7.58803 11.6753 7.76737C10.036 8.55475 8.44086 9.41921 6.89449 10.356C6.44111 10.6307 6.13632 11.0803 6.03607 11.5839C5.18115 11.255 4.31499 10.9487 3.43829 10.666C2.76546 10.449 2.08644 10.2458 1.40154 10.0568C1.12162 9.97952 0.911461 9.74761 0.86204 9.46146C0.812619 9.17531 0.932824 8.88634 1.17061 8.71967C4.45645 6.41648 7.98097 4.43023 11.6998 2.80541Z\" fill=\"#0F172A\"/>\n<path d=\"M13.0609 15.4735C15.4997 14.1704 18.0621 13.0688 20.7258 12.1907C20.8601 13.6055 20.9458 15.0344 20.9813 16.4756C20.9889 16.7848 20.8059 17.067 20.5205 17.1862C17.6693 18.3765 14.9574 19.8342 12.4159 21.5278C12.1641 21.6957 11.836 21.6957 11.5841 21.5278C9.04267 19.8342 6.33073 18.3765 3.4796 17.1862C3.19416 17.067 3.01116 16.7848 3.01878 16.4756C3.05429 15.0343 3.14001 13.6053 3.27427 12.1904C4.19527 12.494 5.10415 12.8243 6 13.1804V14.4508C5.55165 14.7102 5.25 15.1949 5.25 15.7501C5.25 16.2454 5.49008 16.6847 5.86022 16.9578C5.7707 17.3385 5.63822 17.7109 5.46277 18.0676C5.91546 18.2813 6.36429 18.5018 6.8091 18.7291C7.06243 18.2138 7.24612 17.673 7.36014 17.1208C7.88449 16.8871 8.25 16.3613 8.25 15.7501C8.25 15.1949 7.94835 14.7102 7.5 14.4508V13.806C8.6714 14.3178 9.81885 14.8744 10.9402 15.4735C11.6028 15.8276 12.3983 15.8276 13.0609 15.4735Z\" fill=\"#0F172A\"/>\n<path d=\"M4.46222 19.4624C4.88136 19.0433 5.21502 18.5712 5.46277 18.0676C5.91546 18.2813 6.36429 18.5018 6.8091 18.7291C6.49055 19.3769 6.06164 19.9843 5.52288 20.5231C5.22999 20.816 4.75512 20.816 4.46222 20.5231C4.16933 20.2302 4.16933 19.7553 4.46222 19.4624Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/adjustments-horizontal.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.adjustments_horizontal />

      <.adjustments_horizontal class="h-6 w-6 text-gray-500" />

  or as a function

      <%= adjustments_horizontal() %>

      <%= adjustments_horizontal(class: "h-6 w-6 text-gray-500") %>
  """
  def adjustments_horizontal(assigns_or_opts \\ [])

  def adjustments_horizontal(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M18.75 12.75L20.25 12.75C20.6642 12.75 21 12.4142 21 12C21 11.5858 20.6642 11.25 20.25 11.25L18.75 11.25C18.3358 11.25 18 11.5858 18 12C18 12.4142 18.3358 12.75 18.75 12.75Z" fill="#0F172A"/>
    <path d="M12 6C12 5.58579 12.3358 5.25 12.75 5.25L20.25 5.25002C20.6642 5.25002 21 5.5858 21 6.00002C21 6.41423 20.6642 6.75002 20.25 6.75002L12.75 6.75C12.3358 6.75 12 6.41421 12 6Z" fill="#0F172A"/>
    <path d="M12 18C12 17.5858 12.3358 17.25 12.75 17.25L20.25 17.25C20.6642 17.25 21 17.5858 21 18C21 18.4142 20.6642 18.75 20.25 18.75L12.75 18.75C12.3358 18.75 12 18.4142 12 18Z" fill="#0F172A"/>
    <path d="M3.75001 6.75001L5.25001 6.75C5.66422 6.75 6 6.41421 6 5.99999C6 5.58578 5.66421 5.25 5.24999 5.25L3.74999 5.25001C3.33578 5.25002 3 5.58581 3 6.00002C3 6.41423 3.33579 6.75002 3.75001 6.75001Z" fill="#0F172A"/>
    <path d="M5.25001 18.75L3.75001 18.75C3.33579 18.75 3 18.4142 3 18C3 17.5858 3.33578 17.25 3.74999 17.25L5.24999 17.25C5.66421 17.25 6 17.5858 6 18C6 18.4142 5.66422 18.75 5.25001 18.75Z" fill="#0F172A"/>
    <path d="M3 12C3 11.5858 3.33579 11.25 3.75 11.25H11.25C11.6642 11.25 12 11.5858 12 12C12 12.4142 11.6642 12.75 11.25 12.75H3.75C3.33579 12.75 3 12.4142 3 12Z" fill="#0F172A"/>
    <path d="M9 3.75C7.75736 3.75 6.75 4.75736 6.75 6C6.75 7.24264 7.75736 8.25 9 8.25C10.2426 8.25 11.25 7.24264 11.25 6C11.25 4.75736 10.2426 3.75 9 3.75Z" fill="#0F172A"/>
    <path d="M12.75 12C12.75 10.7574 13.7574 9.75 15 9.75C16.2426 9.75 17.25 10.7574 17.25 12C17.25 13.2426 16.2426 14.25 15 14.25C13.7574 14.25 12.75 13.2426 12.75 12Z" fill="#0F172A"/>
    <path d="M9 15.75C7.75736 15.75 6.75 16.7574 6.75 18C6.75 19.2426 7.75736 20.25 9 20.25C10.2426 20.25 11.25 19.2426 11.25 18C11.25 16.7574 10.2426 15.75 9 15.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def adjustments_horizontal(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M18.75 12.75L20.25 12.75C20.6642 12.75 21 12.4142 21 12C21 11.5858 20.6642 11.25 20.25 11.25L18.75 11.25C18.3358 11.25 18 11.5858 18 12C18 12.4142 18.3358 12.75 18.75 12.75Z\" fill=\"#0F172A\"/>\n<path d=\"M12 6C12 5.58579 12.3358 5.25 12.75 5.25L20.25 5.25002C20.6642 5.25002 21 5.5858 21 6.00002C21 6.41423 20.6642 6.75002 20.25 6.75002L12.75 6.75C12.3358 6.75 12 6.41421 12 6Z\" fill=\"#0F172A\"/>\n<path d=\"M12 18C12 17.5858 12.3358 17.25 12.75 17.25L20.25 17.25C20.6642 17.25 21 17.5858 21 18C21 18.4142 20.6642 18.75 20.25 18.75L12.75 18.75C12.3358 18.75 12 18.4142 12 18Z\" fill=\"#0F172A\"/>\n<path d=\"M3.75001 6.75001L5.25001 6.75C5.66422 6.75 6 6.41421 6 5.99999C6 5.58578 5.66421 5.25 5.24999 5.25L3.74999 5.25001C3.33578 5.25002 3 5.58581 3 6.00002C3 6.41423 3.33579 6.75002 3.75001 6.75001Z\" fill=\"#0F172A\"/>\n<path d=\"M5.25001 18.75L3.75001 18.75C3.33579 18.75 3 18.4142 3 18C3 17.5858 3.33578 17.25 3.74999 17.25L5.24999 17.25C5.66421 17.25 6 17.5858 6 18C6 18.4142 5.66422 18.75 5.25001 18.75Z\" fill=\"#0F172A\"/>\n<path d=\"M3 12C3 11.5858 3.33579 11.25 3.75 11.25H11.25C11.6642 11.25 12 11.5858 12 12C12 12.4142 11.6642 12.75 11.25 12.75H3.75C3.33579 12.75 3 12.4142 3 12Z\" fill=\"#0F172A\"/>\n<path d=\"M9 3.75C7.75736 3.75 6.75 4.75736 6.75 6C6.75 7.24264 7.75736 8.25 9 8.25C10.2426 8.25 11.25 7.24264 11.25 6C11.25 4.75736 10.2426 3.75 9 3.75Z\" fill=\"#0F172A\"/>\n<path d=\"M12.75 12C12.75 10.7574 13.7574 9.75 15 9.75C16.2426 9.75 17.25 10.7574 17.25 12C17.25 13.2426 16.2426 14.25 15 14.25C13.7574 14.25 12.75 13.2426 12.75 12Z\" fill=\"#0F172A\"/>\n<path d=\"M9 15.75C7.75736 15.75 6.75 16.7574 6.75 18C6.75 19.2426 7.75736 20.25 9 20.25C10.2426 20.25 11.25 19.2426 11.25 18C11.25 16.7574 10.2426 15.75 9 15.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/adjustments-vertical.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.adjustments_vertical />

      <.adjustments_vertical class="h-6 w-6 text-gray-500" />

  or as a function

      <%= adjustments_vertical() %>

      <%= adjustments_vertical(class: "h-6 w-6 text-gray-500") %>
  """
  def adjustments_vertical(assigns_or_opts \\ [])

  def adjustments_vertical(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M6 12C5.58579 12 5.25 11.6642 5.25 11.25L5.25002 3.75C5.25002 3.33578 5.5858 3 6.00002 3C6.41423 3 6.75002 3.33579 6.75002 3.75L6.75 11.25C6.75 11.6642 6.41421 12 6 12Z" fill="#0F172A"/>
    <path d="M18 12C17.5858 12 17.25 11.6642 17.25 11.25L17.25 3.75C17.25 3.33578 17.5858 3 18 3C18.4142 3 18.75 3.33579 18.75 3.75L18.75 11.25C18.75 11.6642 18.4142 12 18 12Z" fill="#0F172A"/>
    <path d="M6.75001 20.25L6.75 18.75C6.75 18.3358 6.41421 18 5.99999 18C5.58578 18 5.25 18.3358 5.25 18.75L5.25001 20.25C5.25002 20.6642 5.58581 21 6.00002 21C6.41424 21 6.75002 20.6642 6.75001 20.25Z" fill="#0F172A"/>
    <path d="M18.75 18.75L18.75 20.25C18.75 20.6642 18.4142 21 18 21C17.5858 21 17.25 20.6642 17.25 20.25L17.25 18.75C17.25 18.3358 17.5858 18 18 18C18.4142 18 18.75 18.3358 18.75 18.75Z" fill="#0F172A"/>
    <path d="M12.75 5.24999L12.75 3.74999C12.75 3.33578 12.4142 3 12 3C11.5858 3 11.25 3.33579 11.25 3.75001L11.25 5.25001C11.25 5.66422 11.5858 6 12 6C12.4142 6 12.75 5.66421 12.75 5.24999Z" fill="#0F172A"/>
    <path d="M12 21C11.5858 21 11.25 20.6642 11.25 20.25V12.75C11.25 12.3358 11.5858 12 12 12C12.4142 12 12.75 12.3358 12.75 12.75V20.25C12.75 20.6642 12.4142 21 12 21Z" fill="#0F172A"/>
    <path d="M3.75 15C3.75 16.2426 4.75736 17.25 6 17.25C7.24264 17.25 8.25 16.2426 8.25 15C8.25 13.7574 7.24264 12.75 6 12.75C4.75736 12.75 3.75 13.7574 3.75 15Z" fill="#0F172A"/>
    <path d="M12 11.25C10.7574 11.25 9.75 10.2426 9.75 9C9.75 7.75736 10.7574 6.75 12 6.75C13.2426 6.75 14.25 7.75736 14.25 9C14.25 10.2426 13.2426 11.25 12 11.25Z" fill="#0F172A"/>
    <path d="M15.75 15C15.75 16.2426 16.7574 17.25 18 17.25C19.2426 17.25 20.25 16.2426 20.25 15C20.25 13.7574 19.2426 12.75 18 12.75C16.7574 12.75 15.75 13.7574 15.75 15Z" fill="#0F172A"/>
    </svg>
    """
  end

  def adjustments_vertical(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M6 12C5.58579 12 5.25 11.6642 5.25 11.25L5.25002 3.75C5.25002 3.33578 5.5858 3 6.00002 3C6.41423 3 6.75002 3.33579 6.75002 3.75L6.75 11.25C6.75 11.6642 6.41421 12 6 12Z\" fill=\"#0F172A\"/>\n<path d=\"M18 12C17.5858 12 17.25 11.6642 17.25 11.25L17.25 3.75C17.25 3.33578 17.5858 3 18 3C18.4142 3 18.75 3.33579 18.75 3.75L18.75 11.25C18.75 11.6642 18.4142 12 18 12Z\" fill=\"#0F172A\"/>\n<path d=\"M6.75001 20.25L6.75 18.75C6.75 18.3358 6.41421 18 5.99999 18C5.58578 18 5.25 18.3358 5.25 18.75L5.25001 20.25C5.25002 20.6642 5.58581 21 6.00002 21C6.41424 21 6.75002 20.6642 6.75001 20.25Z\" fill=\"#0F172A\"/>\n<path d=\"M18.75 18.75L18.75 20.25C18.75 20.6642 18.4142 21 18 21C17.5858 21 17.25 20.6642 17.25 20.25L17.25 18.75C17.25 18.3358 17.5858 18 18 18C18.4142 18 18.75 18.3358 18.75 18.75Z\" fill=\"#0F172A\"/>\n<path d=\"M12.75 5.24999L12.75 3.74999C12.75 3.33578 12.4142 3 12 3C11.5858 3 11.25 3.33579 11.25 3.75001L11.25 5.25001C11.25 5.66422 11.5858 6 12 6C12.4142 6 12.75 5.66421 12.75 5.24999Z\" fill=\"#0F172A\"/>\n<path d=\"M12 21C11.5858 21 11.25 20.6642 11.25 20.25V12.75C11.25 12.3358 11.5858 12 12 12C12.4142 12 12.75 12.3358 12.75 12.75V20.25C12.75 20.6642 12.4142 21 12 21Z\" fill=\"#0F172A\"/>\n<path d=\"M3.75 15C3.75 16.2426 4.75736 17.25 6 17.25C7.24264 17.25 8.25 16.2426 8.25 15C8.25 13.7574 7.24264 12.75 6 12.75C4.75736 12.75 3.75 13.7574 3.75 15Z\" fill=\"#0F172A\"/>\n<path d=\"M12 11.25C10.7574 11.25 9.75 10.2426 9.75 9C9.75 7.75736 10.7574 6.75 12 6.75C13.2426 6.75 14.25 7.75736 14.25 9C14.25 10.2426 13.2426 11.25 12 11.25Z\" fill=\"#0F172A\"/>\n<path d=\"M15.75 15C15.75 16.2426 16.7574 17.25 18 17.25C19.2426 17.25 20.25 16.2426 20.25 15C20.25 13.7574 19.2426 12.75 18 12.75C16.7574 12.75 15.75 13.7574 15.75 15Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/archive-box-arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.archive_box_arrow_down />

      <.archive_box_arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= archive_box_arrow_down() %>

      <%= archive_box_arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def archive_box_arrow_down(assigns_or_opts \\ [])

  def archive_box_arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.375 3C2.33947 3 1.5 3.83947 1.5 4.875V5.625C1.5 6.66053 2.33947 7.5 3.375 7.5H20.625C21.6605 7.5 22.5 6.66053 22.5 5.625V4.875C22.5 3.83947 21.6605 3 20.625 3H3.375Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.08679 9L3.62657 18.1762C3.71984 19.7619 5.03296 21 6.62139 21H17.3783C18.9667 21 20.2799 19.7619 20.3731 18.1762L20.9129 9H3.08679ZM12 10.5C12.4142 10.5 12.75 10.8358 12.75 11.25V16.1893L14.4697 14.4697C14.7626 14.1768 15.2374 14.1768 15.5303 14.4697C15.8232 14.7626 15.8232 15.2374 15.5303 15.5303L12.5303 18.5303C12.2374 18.8232 11.7626 18.8232 11.4697 18.5303L8.46967 15.5303C8.17678 15.2374 8.17678 14.7626 8.46967 14.4697C8.76256 14.1768 9.23744 14.1768 9.53033 14.4697L11.25 16.1893V11.25C11.25 10.8358 11.5858 10.5 12 10.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def archive_box_arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.375 3C2.33947 3 1.5 3.83947 1.5 4.875V5.625C1.5 6.66053 2.33947 7.5 3.375 7.5H20.625C21.6605 7.5 22.5 6.66053 22.5 5.625V4.875C22.5 3.83947 21.6605 3 20.625 3H3.375Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.08679 9L3.62657 18.1762C3.71984 19.7619 5.03296 21 6.62139 21H17.3783C18.9667 21 20.2799 19.7619 20.3731 18.1762L20.9129 9H3.08679ZM12 10.5C12.4142 10.5 12.75 10.8358 12.75 11.25V16.1893L14.4697 14.4697C14.7626 14.1768 15.2374 14.1768 15.5303 14.4697C15.8232 14.7626 15.8232 15.2374 15.5303 15.5303L12.5303 18.5303C12.2374 18.8232 11.7626 18.8232 11.4697 18.5303L8.46967 15.5303C8.17678 15.2374 8.17678 14.7626 8.46967 14.4697C8.76256 14.1768 9.23744 14.1768 9.53033 14.4697L11.25 16.1893V11.25C11.25 10.8358 11.5858 10.5 12 10.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/archive-box-x-mark.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.archive_box_x_mark />

      <.archive_box_x_mark class="h-6 w-6 text-gray-500" />

  or as a function

      <%= archive_box_x_mark() %>

      <%= archive_box_x_mark(class: "h-6 w-6 text-gray-500") %>
  """
  def archive_box_x_mark(assigns_or_opts \\ [])

  def archive_box_x_mark(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.375 3C2.33947 3 1.5 3.83947 1.5 4.875V5.625C1.5 6.66053 2.33947 7.5 3.375 7.5H20.625C21.6605 7.5 22.5 6.66053 22.5 5.625V4.875C22.5 3.83947 21.6605 3 20.625 3H3.375Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.08679 9L3.62657 18.1762C3.71984 19.7619 5.03296 21 6.62139 21H17.3783C18.9667 21 20.2799 19.7619 20.3731 18.1762L20.9129 9H3.08679ZM9.21967 11.8447C9.51256 11.5518 9.98744 11.5518 10.2803 11.8447L12 13.5643L13.7197 11.8447C14.0126 11.5518 14.4874 11.5518 14.7803 11.8447C15.0732 12.1376 15.0732 12.6124 14.7803 12.9053L13.0607 14.625L14.7803 16.3447C15.0732 16.6376 15.0732 17.1124 14.7803 17.4053C14.4874 17.6982 14.0126 17.6982 13.7197 17.4053L12 15.6857L10.2803 17.4053C9.98744 17.6982 9.51256 17.6982 9.21967 17.4053C8.92678 17.1124 8.92678 16.6376 9.21967 16.3447L10.9393 14.625L9.21967 12.9053C8.92678 12.6124 8.92678 12.1376 9.21967 11.8447Z" fill="#0F172A"/>
    </svg>
    """
  end

  def archive_box_x_mark(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.375 3C2.33947 3 1.5 3.83947 1.5 4.875V5.625C1.5 6.66053 2.33947 7.5 3.375 7.5H20.625C21.6605 7.5 22.5 6.66053 22.5 5.625V4.875C22.5 3.83947 21.6605 3 20.625 3H3.375Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.08679 9L3.62657 18.1762C3.71984 19.7619 5.03296 21 6.62139 21H17.3783C18.9667 21 20.2799 19.7619 20.3731 18.1762L20.9129 9H3.08679ZM9.21967 11.8447C9.51256 11.5518 9.98744 11.5518 10.2803 11.8447L12 13.5643L13.7197 11.8447C14.0126 11.5518 14.4874 11.5518 14.7803 11.8447C15.0732 12.1376 15.0732 12.6124 14.7803 12.9053L13.0607 14.625L14.7803 16.3447C15.0732 16.6376 15.0732 17.1124 14.7803 17.4053C14.4874 17.6982 14.0126 17.6982 13.7197 17.4053L12 15.6857L10.2803 17.4053C9.98744 17.6982 9.51256 17.6982 9.21967 17.4053C8.92678 17.1124 8.92678 16.6376 9.21967 16.3447L10.9393 14.625L9.21967 12.9053C8.92678 12.6124 8.92678 12.1376 9.21967 11.8447Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/archive-box.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.archive_box />

      <.archive_box class="h-6 w-6 text-gray-500" />

  or as a function

      <%= archive_box() %>

      <%= archive_box(class: "h-6 w-6 text-gray-500") %>
  """
  def archive_box(assigns_or_opts \\ [])

  def archive_box(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.375 3C2.33947 3 1.5 3.83947 1.5 4.875V5.625C1.5 6.66053 2.33947 7.5 3.375 7.5H20.625C21.6605 7.5 22.5 6.66053 22.5 5.625V4.875C22.5 3.83947 21.6605 3 20.625 3H3.375Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.08679 9L3.62657 18.1762C3.71984 19.7619 5.03296 21 6.62139 21H17.3783C18.9667 21 20.2799 19.7619 20.3731 18.1762L20.9129 9H3.08679ZM9.24976 12.75C9.24976 12.3358 9.58554 12 9.99976 12H13.9998C14.414 12 14.7498 12.3358 14.7498 12.75C14.7498 13.1642 14.414 13.5 13.9998 13.5H9.99976C9.58554 13.5 9.24976 13.1642 9.24976 12.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def archive_box(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.375 3C2.33947 3 1.5 3.83947 1.5 4.875V5.625C1.5 6.66053 2.33947 7.5 3.375 7.5H20.625C21.6605 7.5 22.5 6.66053 22.5 5.625V4.875C22.5 3.83947 21.6605 3 20.625 3H3.375Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.08679 9L3.62657 18.1762C3.71984 19.7619 5.03296 21 6.62139 21H17.3783C18.9667 21 20.2799 19.7619 20.3731 18.1762L20.9129 9H3.08679ZM9.24976 12.75C9.24976 12.3358 9.58554 12 9.99976 12H13.9998C14.414 12 14.7498 12.3358 14.7498 12.75C14.7498 13.1642 14.414 13.5 13.9998 13.5H9.99976C9.58554 13.5 9.24976 13.1642 9.24976 12.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down_circle />

      <.arrow_down_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down_circle() %>

      <%= arrow_down_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down_circle(assigns_or_opts \\ [])

  def arrow_down_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM11.4697 16.2803C11.6103 16.421 11.8011 16.5 12 16.5C12.1989 16.5 12.3897 16.421 12.5303 16.2803L15.5303 13.2803C15.8232 12.9874 15.8232 12.5126 15.5303 12.2197C15.2374 11.9268 14.7626 11.9268 14.4697 12.2197L12.75 13.9393L12.75 8.25C12.75 7.83579 12.4142 7.5 12 7.5C11.5858 7.5 11.25 7.83579 11.25 8.25L11.25 13.9393L9.53033 12.2197C9.23744 11.9268 8.76256 11.9268 8.46967 12.2197C8.17678 12.5126 8.17678 12.9874 8.46967 13.2803L11.4697 16.2803Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_down_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM11.4697 16.2803C11.6103 16.421 11.8011 16.5 12 16.5C12.1989 16.5 12.3897 16.421 12.5303 16.2803L15.5303 13.2803C15.8232 12.9874 15.8232 12.5126 15.5303 12.2197C15.2374 11.9268 14.7626 11.9268 14.4697 12.2197L12.75 13.9393L12.75 8.25C12.75 7.83579 12.4142 7.5 12 7.5C11.5858 7.5 11.25 7.83579 11.25 8.25L11.25 13.9393L9.53033 12.2197C9.23744 11.9268 8.76256 11.9268 8.46967 12.2197C8.17678 12.5126 8.17678 12.9874 8.46967 13.2803L11.4697 16.2803Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down_left />

      <.arrow_down_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down_left() %>

      <%= arrow_down_left(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down_left(assigns_or_opts \\ [])

  def arrow_down_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M20.0303 3.96967C20.3232 4.26256 20.3232 4.73744 20.0303 5.03033L6.31066 18.75L15.75 18.75C16.1642 18.75 16.5 19.0858 16.5 19.5C16.5 19.9142 16.1642 20.25 15.75 20.25L4.5 20.25C4.08579 20.25 3.75 19.9142 3.75 19.5L3.75 8.25C3.75 7.83579 4.08579 7.5 4.5 7.5C4.91421 7.5 5.25 7.83579 5.25 8.25L5.25 17.6893L18.9697 3.96967C19.2626 3.67678 19.7374 3.67678 20.0303 3.96967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_down_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M20.0303 3.96967C20.3232 4.26256 20.3232 4.73744 20.0303 5.03033L6.31066 18.75L15.75 18.75C16.1642 18.75 16.5 19.0858 16.5 19.5C16.5 19.9142 16.1642 20.25 15.75 20.25L4.5 20.25C4.08579 20.25 3.75 19.9142 3.75 19.5L3.75 8.25C3.75 7.83579 4.08579 7.5 4.5 7.5C4.91421 7.5 5.25 7.83579 5.25 8.25L5.25 17.6893L18.9697 3.96967C19.2626 3.67678 19.7374 3.67678 20.0303 3.96967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down-on-square-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down_on_square_stack />

      <.arrow_down_on_square_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down_on_square_stack() %>

      <%= arrow_down_on_square_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down_on_square_stack(assigns_or_opts \\ [])

  def arrow_down_on_square_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.75 6.75H6.75C5.09315 6.75 3.75 8.09315 3.75 9.75V17.25C3.75 18.9069 5.09315 20.25 6.75 20.25H14.25C15.9069 20.25 17.25 18.9069 17.25 17.25V9.75C17.25 8.09315 15.9069 6.75 14.25 6.75H11.25L11.25 1.5C11.25 1.08579 10.9142 0.75 10.5 0.75C10.0858 0.75 9.75 1.08579 9.75 1.5V6.75ZM9.75 6.75H11.25V12.4393L12.9697 10.7197C13.2626 10.4268 13.7374 10.4268 14.0303 10.7197C14.3232 11.0126 14.3232 11.4874 14.0303 11.7803L11.0303 14.7803C10.7374 15.0732 10.2626 15.0732 9.96967 14.7803L6.96967 11.7803C6.67678 11.4874 6.67678 11.0126 6.96967 10.7197C7.26256 10.4268 7.73744 10.4268 8.03033 10.7197L9.75 12.4393V6.75Z" fill="#0F172A"/>
    <path d="M7.15137 21.75C7.67008 22.6467 8.6396 23.25 9.75002 23.25H17.25C18.9069 23.25 20.25 21.9069 20.25 20.25V12.75C20.25 11.6396 19.6467 10.6701 18.75 10.1514V17.25C18.75 19.7353 16.7353 21.75 14.25 21.75H7.15137Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_down_on_square_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.75 6.75H6.75C5.09315 6.75 3.75 8.09315 3.75 9.75V17.25C3.75 18.9069 5.09315 20.25 6.75 20.25H14.25C15.9069 20.25 17.25 18.9069 17.25 17.25V9.75C17.25 8.09315 15.9069 6.75 14.25 6.75H11.25L11.25 1.5C11.25 1.08579 10.9142 0.75 10.5 0.75C10.0858 0.75 9.75 1.08579 9.75 1.5V6.75ZM9.75 6.75H11.25V12.4393L12.9697 10.7197C13.2626 10.4268 13.7374 10.4268 14.0303 10.7197C14.3232 11.0126 14.3232 11.4874 14.0303 11.7803L11.0303 14.7803C10.7374 15.0732 10.2626 15.0732 9.96967 14.7803L6.96967 11.7803C6.67678 11.4874 6.67678 11.0126 6.96967 10.7197C7.26256 10.4268 7.73744 10.4268 8.03033 10.7197L9.75 12.4393V6.75Z\" fill=\"#0F172A\"/>\n<path d=\"M7.15137 21.75C7.67008 22.6467 8.6396 23.25 9.75002 23.25H17.25C18.9069 23.25 20.25 21.9069 20.25 20.25V12.75C20.25 11.6396 19.6467 10.6701 18.75 10.1514V17.25C18.75 19.7353 16.7353 21.75 14.25 21.75H7.15137Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down-on-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down_on_square />

      <.arrow_down_on_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down_on_square() %>

      <%= arrow_down_on_square(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down_on_square(assigns_or_opts \\ [])

  def arrow_down_on_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M12 1.5C12.4142 1.5 12.75 1.83579 12.75 2.25L12.75 7.5H11.25V2.25C11.25 1.83579 11.5858 1.5 12 1.5Z" fill="#0F172A"/>
    <path d="M11.25 7.5L11.25 13.1893L9.53033 11.4697C9.23744 11.1768 8.76256 11.1768 8.46967 11.4697C8.17678 11.7626 8.17678 12.2374 8.46967 12.5303L11.4697 15.5303C11.6103 15.671 11.8011 15.75 12 15.75C12.1989 15.75 12.3897 15.671 12.5303 15.5303L15.5303 12.5303C15.8232 12.2374 15.8232 11.7626 15.5303 11.4697C15.2374 11.1768 14.7626 11.1768 14.4697 11.4697L12.75 13.1893V7.5H16.5C18.1569 7.5 19.5 8.84315 19.5 10.5V19.5C19.5 21.1569 18.1569 22.5 16.5 22.5H7.5C5.84315 22.5 4.5 21.1569 4.5 19.5V10.5C4.5 8.84315 5.84315 7.5 7.5 7.5H11.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_down_on_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M12 1.5C12.4142 1.5 12.75 1.83579 12.75 2.25L12.75 7.5H11.25V2.25C11.25 1.83579 11.5858 1.5 12 1.5Z\" fill=\"#0F172A\"/>\n<path d=\"M11.25 7.5L11.25 13.1893L9.53033 11.4697C9.23744 11.1768 8.76256 11.1768 8.46967 11.4697C8.17678 11.7626 8.17678 12.2374 8.46967 12.5303L11.4697 15.5303C11.6103 15.671 11.8011 15.75 12 15.75C12.1989 15.75 12.3897 15.671 12.5303 15.5303L15.5303 12.5303C15.8232 12.2374 15.8232 11.7626 15.5303 11.4697C15.2374 11.1768 14.7626 11.1768 14.4697 11.4697L12.75 13.1893V7.5H16.5C18.1569 7.5 19.5 8.84315 19.5 10.5V19.5C19.5 21.1569 18.1569 22.5 16.5 22.5H7.5C5.84315 22.5 4.5 21.1569 4.5 19.5V10.5C4.5 8.84315 5.84315 7.5 7.5 7.5H11.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down_right />

      <.arrow_down_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down_right() %>

      <%= arrow_down_right(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down_right(assigns_or_opts \\ [])

  def arrow_down_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.96967 3.96967C4.26256 3.67678 4.73744 3.67678 5.03033 3.96967L18.75 17.6893V8.25C18.75 7.83579 19.0858 7.5 19.5 7.5C19.9142 7.5 20.25 7.83579 20.25 8.25V19.5C20.25 19.9142 19.9142 20.25 19.5 20.25H8.25C7.83579 20.25 7.5 19.9142 7.5 19.5C7.5 19.0858 7.83579 18.75 8.25 18.75H17.6893L3.96967 5.03033C3.67678 4.73744 3.67678 4.26256 3.96967 3.96967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_down_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.96967 3.96967C4.26256 3.67678 4.73744 3.67678 5.03033 3.96967L18.75 17.6893V8.25C18.75 7.83579 19.0858 7.5 19.5 7.5C19.9142 7.5 20.25 7.83579 20.25 8.25V19.5C20.25 19.9142 19.9142 20.25 19.5 20.25H8.25C7.83579 20.25 7.5 19.9142 7.5 19.5C7.5 19.0858 7.83579 18.75 8.25 18.75H17.6893L3.96967 5.03033C3.67678 4.73744 3.67678 4.26256 3.96967 3.96967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down-tray.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down_tray />

      <.arrow_down_tray class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down_tray() %>

      <%= arrow_down_tray(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down_tray(assigns_or_opts \\ [])

  def arrow_down_tray(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C12.4142 2.25 12.75 2.58579 12.75 3V14.6893L15.9697 11.4697C16.2626 11.1768 16.7374 11.1768 17.0303 11.4697C17.3232 11.7626 17.3232 12.2374 17.0303 12.5303L12.5303 17.0303C12.2374 17.3232 11.7626 17.3232 11.4697 17.0303L6.96967 12.5303C6.67678 12.2374 6.67678 11.7626 6.96967 11.4697C7.26256 11.1768 7.73744 11.1768 8.03033 11.4697L11.25 14.6893V3C11.25 2.58579 11.5858 2.25 12 2.25ZM3 15.75C3.41421 15.75 3.75 16.0858 3.75 16.5V18.75C3.75 19.5784 4.42157 20.25 5.25 20.25H18.75C19.5784 20.25 20.25 19.5784 20.25 18.75V16.5C20.25 16.0858 20.5858 15.75 21 15.75C21.4142 15.75 21.75 16.0858 21.75 16.5V18.75C21.75 20.4069 20.4069 21.75 18.75 21.75H5.25C3.59315 21.75 2.25 20.4069 2.25 18.75V16.5C2.25 16.0858 2.58579 15.75 3 15.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_down_tray(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C12.4142 2.25 12.75 2.58579 12.75 3V14.6893L15.9697 11.4697C16.2626 11.1768 16.7374 11.1768 17.0303 11.4697C17.3232 11.7626 17.3232 12.2374 17.0303 12.5303L12.5303 17.0303C12.2374 17.3232 11.7626 17.3232 11.4697 17.0303L6.96967 12.5303C6.67678 12.2374 6.67678 11.7626 6.96967 11.4697C7.26256 11.1768 7.73744 11.1768 8.03033 11.4697L11.25 14.6893V3C11.25 2.58579 11.5858 2.25 12 2.25ZM3 15.75C3.41421 15.75 3.75 16.0858 3.75 16.5V18.75C3.75 19.5784 4.42157 20.25 5.25 20.25H18.75C19.5784 20.25 20.25 19.5784 20.25 18.75V16.5C20.25 16.0858 20.5858 15.75 21 15.75C21.4142 15.75 21.75 16.0858 21.75 16.5V18.75C21.75 20.4069 20.4069 21.75 18.75 21.75H5.25C3.59315 21.75 2.25 20.4069 2.25 18.75V16.5C2.25 16.0858 2.58579 15.75 3 15.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_down />

      <.arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_down() %>

      <%= arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_down(assigns_or_opts \\ [])

  def arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C12.4142 2.25 12.75 2.58579 12.75 3L12.75 19.1893L18.9697 12.9697C19.2626 12.6768 19.7374 12.6768 20.0303 12.9697C20.3232 13.2626 20.3232 13.7374 20.0303 14.0303L12.5303 21.5303C12.2374 21.8232 11.7626 21.8232 11.4697 21.5303L3.96967 14.0303C3.67678 13.7374 3.67678 13.2626 3.96967 12.9697C4.26256 12.6768 4.73744 12.6768 5.03033 12.9697L11.25 19.1893L11.25 3C11.25 2.58579 11.5858 2.25 12 2.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C12.4142 2.25 12.75 2.58579 12.75 3L12.75 19.1893L18.9697 12.9697C19.2626 12.6768 19.7374 12.6768 20.0303 12.9697C20.3232 13.2626 20.3232 13.7374 20.0303 14.0303L12.5303 21.5303C12.2374 21.8232 11.7626 21.8232 11.4697 21.5303L3.96967 14.0303C3.67678 13.7374 3.67678 13.2626 3.96967 12.9697C4.26256 12.6768 4.73744 12.6768 5.03033 12.9697L11.25 19.1893L11.25 3C11.25 2.58579 11.5858 2.25 12 2.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-left-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_left_circle />

      <.arrow_left_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_left_circle() %>

      <%= arrow_left_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_left_circle(assigns_or_opts \\ [])

  def arrow_left_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM7.71967 11.4697C7.57902 11.6103 7.5 11.8011 7.5 12C7.5 12.1989 7.57902 12.3897 7.71967 12.5303L10.7197 15.5303C11.0126 15.8232 11.4874 15.8232 11.7803 15.5303C12.0732 15.2374 12.0732 14.7626 11.7803 14.4697L10.0607 12.75H15.75C16.1642 12.75 16.5 12.4142 16.5 12C16.5 11.5858 16.1642 11.25 15.75 11.25L10.0607 11.25L11.7803 9.53033C12.0732 9.23744 12.0732 8.76256 11.7803 8.46967C11.4874 8.17678 11.0126 8.17678 10.7197 8.46967L7.71967 11.4697Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_left_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM7.71967 11.4697C7.57902 11.6103 7.5 11.8011 7.5 12C7.5 12.1989 7.57902 12.3897 7.71967 12.5303L10.7197 15.5303C11.0126 15.8232 11.4874 15.8232 11.7803 15.5303C12.0732 15.2374 12.0732 14.7626 11.7803 14.4697L10.0607 12.75H15.75C16.1642 12.75 16.5 12.4142 16.5 12C16.5 11.5858 16.1642 11.25 15.75 11.25L10.0607 11.25L11.7803 9.53033C12.0732 9.23744 12.0732 8.76256 11.7803 8.46967C11.4874 8.17678 11.0126 8.17678 10.7197 8.46967L7.71967 11.4697Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-left-on-rectangle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_left_on_rectangle />

      <.arrow_left_on_rectangle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_left_on_rectangle() %>

      <%= arrow_left_on_rectangle(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_left_on_rectangle(assigns_or_opts \\ [])

  def arrow_left_on_rectangle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.5 3.75C6.67157 3.75 6 4.42157 6 5.25L6 18.75C6 19.5784 6.67157 20.25 7.5 20.25H13.5C14.3284 20.25 15 19.5784 15 18.75V15C15 14.5858 15.3358 14.25 15.75 14.25C16.1642 14.25 16.5 14.5858 16.5 15V18.75C16.5 20.4069 15.1569 21.75 13.5 21.75H7.5C5.84315 21.75 4.5 20.4069 4.5 18.75L4.5 5.25C4.5 3.59315 5.84315 2.25 7.5 2.25L13.5 2.25C15.1569 2.25 16.5 3.59315 16.5 5.25V9C16.5 9.41421 16.1642 9.75 15.75 9.75C15.3358 9.75 15 9.41421 15 9V5.25C15 4.42157 14.3284 3.75 13.5 3.75L7.5 3.75ZM12.5303 8.46967C12.8232 8.76256 12.8232 9.23744 12.5303 9.53033L10.8107 11.25L21.75 11.25C22.1642 11.25 22.5 11.5858 22.5 12C22.5 12.4142 22.1642 12.75 21.75 12.75L10.8107 12.75L12.5303 14.4697C12.8232 14.7626 12.8232 15.2374 12.5303 15.5303C12.2374 15.8232 11.7626 15.8232 11.4697 15.5303L8.46967 12.5303C8.17678 12.2374 8.17678 11.7626 8.46967 11.4697L11.4697 8.46967C11.7626 8.17678 12.2374 8.17678 12.5303 8.46967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_left_on_rectangle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.5 3.75C6.67157 3.75 6 4.42157 6 5.25L6 18.75C6 19.5784 6.67157 20.25 7.5 20.25H13.5C14.3284 20.25 15 19.5784 15 18.75V15C15 14.5858 15.3358 14.25 15.75 14.25C16.1642 14.25 16.5 14.5858 16.5 15V18.75C16.5 20.4069 15.1569 21.75 13.5 21.75H7.5C5.84315 21.75 4.5 20.4069 4.5 18.75L4.5 5.25C4.5 3.59315 5.84315 2.25 7.5 2.25L13.5 2.25C15.1569 2.25 16.5 3.59315 16.5 5.25V9C16.5 9.41421 16.1642 9.75 15.75 9.75C15.3358 9.75 15 9.41421 15 9V5.25C15 4.42157 14.3284 3.75 13.5 3.75L7.5 3.75ZM12.5303 8.46967C12.8232 8.76256 12.8232 9.23744 12.5303 9.53033L10.8107 11.25L21.75 11.25C22.1642 11.25 22.5 11.5858 22.5 12C22.5 12.4142 22.1642 12.75 21.75 12.75L10.8107 12.75L12.5303 14.4697C12.8232 14.7626 12.8232 15.2374 12.5303 15.5303C12.2374 15.8232 11.7626 15.8232 11.4697 15.5303L8.46967 12.5303C8.17678 12.2374 8.17678 11.7626 8.46967 11.4697L11.4697 8.46967C11.7626 8.17678 12.2374 8.17678 12.5303 8.46967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_left />

      <.arrow_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_left() %>

      <%= arrow_left(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_left(assigns_or_opts \\ [])

  def arrow_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.0303 3.96967C11.3232 4.26256 11.3232 4.73744 11.0303 5.03033L4.81066 11.25H21C21.4142 11.25 21.75 11.5858 21.75 12C21.75 12.4142 21.4142 12.75 21 12.75H4.81066L11.0303 18.9697C11.3232 19.2626 11.3232 19.7374 11.0303 20.0303C10.7374 20.3232 10.2626 20.3232 9.96967 20.0303L2.46967 12.5303C2.17678 12.2374 2.17678 11.7626 2.46967 11.4697L9.96967 3.96967C10.2626 3.67678 10.7374 3.67678 11.0303 3.96967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.0303 3.96967C11.3232 4.26256 11.3232 4.73744 11.0303 5.03033L4.81066 11.25H21C21.4142 11.25 21.75 11.5858 21.75 12C21.75 12.4142 21.4142 12.75 21 12.75H4.81066L11.0303 18.9697C11.3232 19.2626 11.3232 19.7374 11.0303 20.0303C10.7374 20.3232 10.2626 20.3232 9.96967 20.0303L2.46967 12.5303C2.17678 12.2374 2.17678 11.7626 2.46967 11.4697L9.96967 3.96967C10.2626 3.67678 10.7374 3.67678 11.0303 3.96967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-long-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_long_down />

      <.arrow_long_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_long_down() %>

      <%= arrow_long_down(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_long_down(assigns_or_opts \\ [])

  def arrow_long_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C12.4142 2.25 12.75 2.58579 12.75 3L12.75 19.1893L15.2197 16.7197C15.5126 16.4268 15.9874 16.4268 16.2803 16.7197C16.5732 17.0126 16.5732 17.4874 16.2803 17.7803L12.5303 21.5303C12.2374 21.8232 11.7626 21.8232 11.4697 21.5303L7.71967 17.7803C7.42678 17.4874 7.42678 17.0126 7.71967 16.7197C8.01256 16.4268 8.48744 16.4268 8.78033 16.7197L11.25 19.1893L11.25 3C11.25 2.58579 11.5858 2.25 12 2.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_long_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C12.4142 2.25 12.75 2.58579 12.75 3L12.75 19.1893L15.2197 16.7197C15.5126 16.4268 15.9874 16.4268 16.2803 16.7197C16.5732 17.0126 16.5732 17.4874 16.2803 17.7803L12.5303 21.5303C12.2374 21.8232 11.7626 21.8232 11.4697 21.5303L7.71967 17.7803C7.42678 17.4874 7.42678 17.0126 7.71967 16.7197C8.01256 16.4268 8.48744 16.4268 8.78033 16.7197L11.25 19.1893L11.25 3C11.25 2.58579 11.5858 2.25 12 2.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-long-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_long_left />

      <.arrow_long_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_long_left() %>

      <%= arrow_long_left(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_long_left(assigns_or_opts \\ [])

  def arrow_long_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.28033 7.71967C7.57322 8.01256 7.57322 8.48744 7.28033 8.78033L4.81066 11.25H21C21.4142 11.25 21.75 11.5858 21.75 12C21.75 12.4142 21.4142 12.75 21 12.75H4.81066L7.28033 15.2197C7.57322 15.5126 7.57322 15.9874 7.28033 16.2803C6.98744 16.5732 6.51256 16.5732 6.21967 16.2803L2.46967 12.5303C2.17678 12.2374 2.17678 11.7626 2.46967 11.4697L6.21967 7.71967C6.51256 7.42678 6.98744 7.42678 7.28033 7.71967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_long_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.28033 7.71967C7.57322 8.01256 7.57322 8.48744 7.28033 8.78033L4.81066 11.25H21C21.4142 11.25 21.75 11.5858 21.75 12C21.75 12.4142 21.4142 12.75 21 12.75H4.81066L7.28033 15.2197C7.57322 15.5126 7.57322 15.9874 7.28033 16.2803C6.98744 16.5732 6.51256 16.5732 6.21967 16.2803L2.46967 12.5303C2.17678 12.2374 2.17678 11.7626 2.46967 11.4697L6.21967 7.71967C6.51256 7.42678 6.98744 7.42678 7.28033 7.71967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-long-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_long_right />

      <.arrow_long_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_long_right() %>

      <%= arrow_long_right(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_long_right(assigns_or_opts \\ [])

  def arrow_long_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M16.7197 7.71967C17.0126 7.42678 17.4874 7.42678 17.7803 7.71967L21.5303 11.4697C21.8232 11.7626 21.8232 12.2374 21.5303 12.5303L17.7803 16.2803C17.4874 16.5732 17.0126 16.5732 16.7197 16.2803C16.4268 15.9874 16.4268 15.5126 16.7197 15.2197L19.1893 12.75H3C2.58579 12.75 2.25 12.4142 2.25 12C2.25 11.5858 2.58579 11.25 3 11.25H19.1893L16.7197 8.78033C16.4268 8.48744 16.4268 8.01256 16.7197 7.71967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_long_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M16.7197 7.71967C17.0126 7.42678 17.4874 7.42678 17.7803 7.71967L21.5303 11.4697C21.8232 11.7626 21.8232 12.2374 21.5303 12.5303L17.7803 16.2803C17.4874 16.5732 17.0126 16.5732 16.7197 16.2803C16.4268 15.9874 16.4268 15.5126 16.7197 15.2197L19.1893 12.75H3C2.58579 12.75 2.25 12.4142 2.25 12C2.25 11.5858 2.58579 11.25 3 11.25H19.1893L16.7197 8.78033C16.4268 8.48744 16.4268 8.01256 16.7197 7.71967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-long-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_long_up />

      <.arrow_long_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_long_up() %>

      <%= arrow_long_up(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_long_up(assigns_or_opts \\ [])

  def arrow_long_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.4697 2.46967C11.7626 2.17678 12.2374 2.17678 12.5303 2.46967L16.2803 6.21967C16.5732 6.51256 16.5732 6.98744 16.2803 7.28033C15.9874 7.57322 15.5126 7.57322 15.2197 7.28033L12.75 4.81066V21C12.75 21.4142 12.4142 21.75 12 21.75C11.5858 21.75 11.25 21.4142 11.25 21V4.81066L8.78033 7.28033C8.48744 7.57322 8.01256 7.57322 7.71967 7.28033C7.42678 6.98744 7.42678 6.51256 7.71967 6.21967L11.4697 2.46967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_long_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.4697 2.46967C11.7626 2.17678 12.2374 2.17678 12.5303 2.46967L16.2803 6.21967C16.5732 6.51256 16.5732 6.98744 16.2803 7.28033C15.9874 7.57322 15.5126 7.57322 15.2197 7.28033L12.75 4.81066V21C12.75 21.4142 12.4142 21.75 12 21.75C11.5858 21.75 11.25 21.4142 11.25 21V4.81066L8.78033 7.28033C8.48744 7.57322 8.01256 7.57322 7.71967 7.28033C7.42678 6.98744 7.42678 6.51256 7.71967 6.21967L11.4697 2.46967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-path.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_path />

      <.arrow_path class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_path() %>

      <%= arrow_path(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_path(assigns_or_opts \\ [])

  def arrow_path(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 5.25C10.7869 5.25 9.58465 5.2957 8.39481 5.38545C6.78038 5.50723 5.50723 6.78038 5.38545 8.39481C5.34144 8.97827 5.30802 9.56471 5.28539 10.1539L6.96967 8.46967C7.26256 8.17678 7.73744 8.17678 8.03033 8.46967C8.32322 8.76256 8.32322 9.23744 8.03033 9.53033L5.03033 12.5303C4.73744 12.8232 4.26256 12.8232 3.96967 12.5303L0.96967 9.53033C0.676777 9.23744 0.676777 8.76256 0.96967 8.46967C1.26256 8.17678 1.73744 8.17678 2.03033 8.46967L3.78186 10.2212C3.80517 9.57151 3.84119 8.92503 3.8897 8.28199C4.06725 5.92812 5.92812 4.06725 8.28199 3.8897C9.50933 3.79712 10.7492 3.75 12 3.75C13.2508 3.75 14.4907 3.79712 15.718 3.8897C18.0719 4.06725 19.9327 5.92812 20.1103 8.28199C20.1272 8.50552 20.1425 8.72948 20.1564 8.95384C20.1818 9.36727 19.8674 9.72308 19.4539 9.74858C19.0405 9.77407 18.6847 9.45959 18.6592 9.04616C18.6458 8.82864 18.6309 8.61152 18.6146 8.39481C18.4928 6.78038 17.2196 5.50723 15.6052 5.38545C14.4153 5.2957 13.2131 5.25 12 5.25ZM18.9697 11.4697C19.2626 11.1768 19.7374 11.1768 20.0303 11.4697L23.0303 14.4697C23.3232 14.7626 23.3232 15.2374 23.0303 15.5303C22.7374 15.8232 22.2626 15.8232 21.9697 15.5303L20.2181 13.7788C20.1948 14.4285 20.1588 15.075 20.1103 15.718C19.9327 18.0719 18.0719 19.9327 15.718 20.1103C14.4907 20.2029 13.2508 20.25 12 20.25C10.7492 20.25 9.50933 20.2029 8.28199 20.1103C5.92812 19.9327 4.06725 18.0719 3.8897 15.718C3.87284 15.4945 3.85748 15.2705 3.84365 15.0462C3.81815 14.6327 4.13264 14.2769 4.54606 14.2514C4.95949 14.2259 5.31531 14.5404 5.3408 14.9538C5.35422 15.1714 5.3691 15.3885 5.38545 15.6052C5.50723 17.2196 6.78038 18.4928 8.39481 18.6146C9.58465 18.7043 10.7869 18.75 12 18.75C13.2131 18.75 14.4153 18.7043 15.6052 18.6146C17.2196 18.4928 18.4928 17.2196 18.6146 15.6052C18.6586 15.0217 18.692 14.4353 18.7146 13.8461L17.0303 15.5303C16.7374 15.8232 16.2626 15.8232 15.9697 15.5303C15.6768 15.2374 15.6768 14.7626 15.9697 14.4697L18.9697 11.4697Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_path(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 5.25C10.7869 5.25 9.58465 5.2957 8.39481 5.38545C6.78038 5.50723 5.50723 6.78038 5.38545 8.39481C5.34144 8.97827 5.30802 9.56471 5.28539 10.1539L6.96967 8.46967C7.26256 8.17678 7.73744 8.17678 8.03033 8.46967C8.32322 8.76256 8.32322 9.23744 8.03033 9.53033L5.03033 12.5303C4.73744 12.8232 4.26256 12.8232 3.96967 12.5303L0.96967 9.53033C0.676777 9.23744 0.676777 8.76256 0.96967 8.46967C1.26256 8.17678 1.73744 8.17678 2.03033 8.46967L3.78186 10.2212C3.80517 9.57151 3.84119 8.92503 3.8897 8.28199C4.06725 5.92812 5.92812 4.06725 8.28199 3.8897C9.50933 3.79712 10.7492 3.75 12 3.75C13.2508 3.75 14.4907 3.79712 15.718 3.8897C18.0719 4.06725 19.9327 5.92812 20.1103 8.28199C20.1272 8.50552 20.1425 8.72948 20.1564 8.95384C20.1818 9.36727 19.8674 9.72308 19.4539 9.74858C19.0405 9.77407 18.6847 9.45959 18.6592 9.04616C18.6458 8.82864 18.6309 8.61152 18.6146 8.39481C18.4928 6.78038 17.2196 5.50723 15.6052 5.38545C14.4153 5.2957 13.2131 5.25 12 5.25ZM18.9697 11.4697C19.2626 11.1768 19.7374 11.1768 20.0303 11.4697L23.0303 14.4697C23.3232 14.7626 23.3232 15.2374 23.0303 15.5303C22.7374 15.8232 22.2626 15.8232 21.9697 15.5303L20.2181 13.7788C20.1948 14.4285 20.1588 15.075 20.1103 15.718C19.9327 18.0719 18.0719 19.9327 15.718 20.1103C14.4907 20.2029 13.2508 20.25 12 20.25C10.7492 20.25 9.50933 20.2029 8.28199 20.1103C5.92812 19.9327 4.06725 18.0719 3.8897 15.718C3.87284 15.4945 3.85748 15.2705 3.84365 15.0462C3.81815 14.6327 4.13264 14.2769 4.54606 14.2514C4.95949 14.2259 5.31531 14.5404 5.3408 14.9538C5.35422 15.1714 5.3691 15.3885 5.38545 15.6052C5.50723 17.2196 6.78038 18.4928 8.39481 18.6146C9.58465 18.7043 10.7869 18.75 12 18.75C13.2131 18.75 14.4153 18.7043 15.6052 18.6146C17.2196 18.4928 18.4928 17.2196 18.6146 15.6052C18.6586 15.0217 18.692 14.4353 18.7146 13.8461L17.0303 15.5303C16.7374 15.8232 16.2626 15.8232 15.9697 15.5303C15.6768 15.2374 15.6768 14.7626 15.9697 14.4697L18.9697 11.4697Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-right-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_right_circle />

      <.arrow_right_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_right_circle() %>

      <%= arrow_right_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_right_circle(assigns_or_opts \\ [])

  def arrow_right_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM16.2803 12.5303C16.421 12.3897 16.5 12.1989 16.5 12C16.5 11.8011 16.421 11.6103 16.2803 11.4697L13.2803 8.46967C12.9874 8.17678 12.5126 8.17678 12.2197 8.46967C11.9268 8.76256 11.9268 9.23744 12.2197 9.53033L13.9393 11.25L8.25 11.25C7.83579 11.25 7.5 11.5858 7.5 12C7.5 12.4142 7.83579 12.75 8.25 12.75L13.9393 12.75L12.2197 14.4697C11.9268 14.7626 11.9268 15.2374 12.2197 15.5303C12.5126 15.8232 12.9874 15.8232 13.2803 15.5303L16.2803 12.5303Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_right_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM16.2803 12.5303C16.421 12.3897 16.5 12.1989 16.5 12C16.5 11.8011 16.421 11.6103 16.2803 11.4697L13.2803 8.46967C12.9874 8.17678 12.5126 8.17678 12.2197 8.46967C11.9268 8.76256 11.9268 9.23744 12.2197 9.53033L13.9393 11.25L8.25 11.25C7.83579 11.25 7.5 11.5858 7.5 12C7.5 12.4142 7.83579 12.75 8.25 12.75L13.9393 12.75L12.2197 14.4697C11.9268 14.7626 11.9268 15.2374 12.2197 15.5303C12.5126 15.8232 12.9874 15.8232 13.2803 15.5303L16.2803 12.5303Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-right-on-rectangle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_right_on_rectangle />

      <.arrow_right_on_rectangle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_right_on_rectangle() %>

      <%= arrow_right_on_rectangle(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_right_on_rectangle(assigns_or_opts \\ [])

  def arrow_right_on_rectangle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.5 3.75C6.67157 3.75 6 4.42157 6 5.25L6 18.75C6 19.5784 6.67157 20.25 7.5 20.25H13.5C14.3284 20.25 15 19.5784 15 18.75V15C15 14.5858 15.3358 14.25 15.75 14.25C16.1642 14.25 16.5 14.5858 16.5 15V18.75C16.5 20.4069 15.1569 21.75 13.5 21.75H7.5C5.84315 21.75 4.5 20.4069 4.5 18.75L4.5 5.25C4.5 3.59315 5.84315 2.25 7.5 2.25L13.5 2.25C15.1569 2.25 16.5 3.59315 16.5 5.25V9C16.5 9.41421 16.1642 9.75 15.75 9.75C15.3358 9.75 15 9.41421 15 9V5.25C15 4.42157 14.3284 3.75 13.5 3.75L7.5 3.75ZM18.2197 8.46967C18.5126 8.17678 18.9874 8.17678 19.2803 8.46967L22.2803 11.4697C22.5732 11.7626 22.5732 12.2374 22.2803 12.5303L19.2803 15.5303C18.9874 15.8232 18.5126 15.8232 18.2197 15.5303C17.9268 15.2374 17.9268 14.7626 18.2197 14.4697L19.9393 12.75L9 12.75C8.58579 12.75 8.25 12.4142 8.25 12C8.25 11.5858 8.58579 11.25 9 11.25L19.9393 11.25L18.2197 9.53033C17.9268 9.23744 17.9268 8.76256 18.2197 8.46967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_right_on_rectangle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.5 3.75C6.67157 3.75 6 4.42157 6 5.25L6 18.75C6 19.5784 6.67157 20.25 7.5 20.25H13.5C14.3284 20.25 15 19.5784 15 18.75V15C15 14.5858 15.3358 14.25 15.75 14.25C16.1642 14.25 16.5 14.5858 16.5 15V18.75C16.5 20.4069 15.1569 21.75 13.5 21.75H7.5C5.84315 21.75 4.5 20.4069 4.5 18.75L4.5 5.25C4.5 3.59315 5.84315 2.25 7.5 2.25L13.5 2.25C15.1569 2.25 16.5 3.59315 16.5 5.25V9C16.5 9.41421 16.1642 9.75 15.75 9.75C15.3358 9.75 15 9.41421 15 9V5.25C15 4.42157 14.3284 3.75 13.5 3.75L7.5 3.75ZM18.2197 8.46967C18.5126 8.17678 18.9874 8.17678 19.2803 8.46967L22.2803 11.4697C22.5732 11.7626 22.5732 12.2374 22.2803 12.5303L19.2803 15.5303C18.9874 15.8232 18.5126 15.8232 18.2197 15.5303C17.9268 15.2374 17.9268 14.7626 18.2197 14.4697L19.9393 12.75L9 12.75C8.58579 12.75 8.25 12.4142 8.25 12C8.25 11.5858 8.58579 11.25 9 11.25L19.9393 11.25L18.2197 9.53033C17.9268 9.23744 17.9268 8.76256 18.2197 8.46967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_right />

      <.arrow_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_right() %>

      <%= arrow_right(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_right(assigns_or_opts \\ [])

  def arrow_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.9697 3.96967C13.2626 3.67678 13.7374 3.67678 14.0303 3.96967L21.5303 11.4697C21.671 11.6103 21.75 11.8011 21.75 12C21.75 12.1989 21.671 12.3897 21.5303 12.5303L14.0303 20.0303C13.7374 20.3232 13.2626 20.3232 12.9697 20.0303C12.6768 19.7374 12.6768 19.2626 12.9697 18.9697L19.1893 12.75H3C2.58579 12.75 2.25 12.4142 2.25 12C2.25 11.5858 2.58579 11.25 3 11.25H19.1893L12.9697 5.03033C12.6768 4.73744 12.6768 4.26256 12.9697 3.96967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12.9697 3.96967C13.2626 3.67678 13.7374 3.67678 14.0303 3.96967L21.5303 11.4697C21.671 11.6103 21.75 11.8011 21.75 12C21.75 12.1989 21.671 12.3897 21.5303 12.5303L14.0303 20.0303C13.7374 20.3232 13.2626 20.3232 12.9697 20.0303C12.6768 19.7374 12.6768 19.2626 12.9697 18.9697L19.1893 12.75H3C2.58579 12.75 2.25 12.4142 2.25 12C2.25 11.5858 2.58579 11.25 3 11.25H19.1893L12.9697 5.03033C12.6768 4.73744 12.6768 4.26256 12.9697 3.96967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-top-right-on-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_top_right_on_square />

      <.arrow_top_right_on_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_top_right_on_square() %>

      <%= arrow_top_right_on_square(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_top_right_on_square(assigns_or_opts \\ [])

  def arrow_top_right_on_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15.75 2.25L21 2.25C21.1989 2.25 21.3897 2.32902 21.5303 2.46967C21.671 2.61032 21.75 2.80109 21.75 3V8.25C21.75 8.66421 21.4142 9 21 9C20.5858 9 20.25 8.66421 20.25 8.25V4.81066L8.03033 17.0303C7.73744 17.3232 7.26256 17.3232 6.96967 17.0303C6.67678 16.7374 6.67678 16.2626 6.96967 15.9697L19.1893 3.75L15.75 3.75C15.3358 3.75 15 3.41421 15 3C15 2.58579 15.3358 2.25 15.75 2.25ZM5.25 6.75C4.42157 6.75 3.75 7.42157 3.75 8.25V18.75C3.75 19.5784 4.42157 20.25 5.25 20.25H15.75C16.5784 20.25 17.25 19.5784 17.25 18.75V10.5C17.25 10.0858 17.5858 9.75 18 9.75C18.4142 9.75 18.75 10.0858 18.75 10.5V18.75C18.75 20.4069 17.4069 21.75 15.75 21.75H5.25C3.59315 21.75 2.25 20.4069 2.25 18.75V8.25C2.25 6.59315 3.59315 5.25 5.25 5.25H13.5C13.9142 5.25 14.25 5.58579 14.25 6C14.25 6.41421 13.9142 6.75 13.5 6.75H5.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_top_right_on_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15.75 2.25L21 2.25C21.1989 2.25 21.3897 2.32902 21.5303 2.46967C21.671 2.61032 21.75 2.80109 21.75 3V8.25C21.75 8.66421 21.4142 9 21 9C20.5858 9 20.25 8.66421 20.25 8.25V4.81066L8.03033 17.0303C7.73744 17.3232 7.26256 17.3232 6.96967 17.0303C6.67678 16.7374 6.67678 16.2626 6.96967 15.9697L19.1893 3.75L15.75 3.75C15.3358 3.75 15 3.41421 15 3C15 2.58579 15.3358 2.25 15.75 2.25ZM5.25 6.75C4.42157 6.75 3.75 7.42157 3.75 8.25V18.75C3.75 19.5784 4.42157 20.25 5.25 20.25H15.75C16.5784 20.25 17.25 19.5784 17.25 18.75V10.5C17.25 10.0858 17.5858 9.75 18 9.75C18.4142 9.75 18.75 10.0858 18.75 10.5V18.75C18.75 20.4069 17.4069 21.75 15.75 21.75H5.25C3.59315 21.75 2.25 20.4069 2.25 18.75V8.25C2.25 6.59315 3.59315 5.25 5.25 5.25H13.5C13.9142 5.25 14.25 5.58579 14.25 6C14.25 6.41421 13.9142 6.75 13.5 6.75H5.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-trending-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_trending_down />

      <.arrow_trending_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_trending_down() %>

      <%= arrow_trending_down(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_trending_down(assigns_or_opts \\ [])

  def arrow_trending_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.71967 5.46967C2.01256 5.17678 2.48744 5.17678 2.78033 5.46967L9 11.6893L12.7558 7.9335C13.0214 7.66793 13.4425 7.63974 13.7411 7.86752C15.9037 9.51731 17.5581 11.8701 18.3164 14.7L18.6242 15.8488L20.9009 11.9056C21.108 11.5468 21.5667 11.4239 21.9254 11.631C22.2841 11.8381 22.407 12.2968 22.1999 12.6556L19.0179 18.1669C18.9185 18.3392 18.7546 18.4649 18.5625 18.5164C18.3704 18.5678 18.1657 18.5409 17.9934 18.4414L12.482 15.2595C12.1233 15.0523 12.0004 14.5937 12.2075 14.2349C12.4146 13.8762 12.8733 13.7533 13.232 13.9604L17.1753 16.2371L16.8675 15.0882C16.2588 12.8165 14.9977 10.8956 13.3392 9.47141L9.53033 13.2803C9.23744 13.5732 8.76256 13.5732 8.46967 13.2803L1.71967 6.53033C1.42678 6.23744 1.42678 5.76256 1.71967 5.46967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_trending_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.71967 5.46967C2.01256 5.17678 2.48744 5.17678 2.78033 5.46967L9 11.6893L12.7558 7.9335C13.0214 7.66793 13.4425 7.63974 13.7411 7.86752C15.9037 9.51731 17.5581 11.8701 18.3164 14.7L18.6242 15.8488L20.9009 11.9056C21.108 11.5468 21.5667 11.4239 21.9254 11.631C22.2841 11.8381 22.407 12.2968 22.1999 12.6556L19.0179 18.1669C18.9185 18.3392 18.7546 18.4649 18.5625 18.5164C18.3704 18.5678 18.1657 18.5409 17.9934 18.4414L12.482 15.2595C12.1233 15.0523 12.0004 14.5937 12.2075 14.2349C12.4146 13.8762 12.8733 13.7533 13.232 13.9604L17.1753 16.2371L16.8675 15.0882C16.2588 12.8165 14.9977 10.8956 13.3392 9.47141L9.53033 13.2803C9.23744 13.5732 8.76256 13.5732 8.46967 13.2803L1.71967 6.53033C1.42678 6.23744 1.42678 5.76256 1.71967 5.46967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-trending-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_trending_up />

      <.arrow_trending_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_trending_up() %>

      <%= arrow_trending_up(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_trending_up(assigns_or_opts \\ [])

  def arrow_trending_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15.2194 6.26756C15.3679 5.88086 15.8017 5.68771 16.1884 5.83615L22.1297 8.11679C22.3154 8.18807 22.4651 8.33021 22.546 8.51192C22.627 8.69364 22.6324 8.90005 22.5611 9.08575L20.2804 15.027C20.132 15.4137 19.6982 15.6069 19.3115 15.4584C18.9248 15.31 18.7316 14.8762 18.8801 14.4895L20.5118 10.2386L19.4253 10.7223C16.9721 11.8146 15.1036 13.6754 13.975 15.8959C13.8662 16.11 13.6614 16.2591 13.4241 16.2968C13.1869 16.3345 12.946 16.2563 12.7761 16.0864L9 12.3103L2.78033 18.53C2.48744 18.8229 2.01256 18.8229 1.71967 18.53C1.42678 18.2371 1.42678 17.7622 1.71967 17.4693L8.46967 10.7193C8.61032 10.5787 8.80109 10.4996 9 10.4996C9.19891 10.4996 9.38968 10.5787 9.53033 10.7193L13.1363 14.3253C14.4369 12.2042 16.3711 10.4402 18.8152 9.35203L19.9017 8.86828L15.6508 7.23652C15.2641 7.08808 15.071 6.65426 15.2194 6.26756Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_trending_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15.2194 6.26756C15.3679 5.88086 15.8017 5.68771 16.1884 5.83615L22.1297 8.11679C22.3154 8.18807 22.4651 8.33021 22.546 8.51192C22.627 8.69364 22.6324 8.90005 22.5611 9.08575L20.2804 15.027C20.132 15.4137 19.6982 15.6069 19.3115 15.4584C18.9248 15.31 18.7316 14.8762 18.8801 14.4895L20.5118 10.2386L19.4253 10.7223C16.9721 11.8146 15.1036 13.6754 13.975 15.8959C13.8662 16.11 13.6614 16.2591 13.4241 16.2968C13.1869 16.3345 12.946 16.2563 12.7761 16.0864L9 12.3103L2.78033 18.53C2.48744 18.8229 2.01256 18.8229 1.71967 18.53C1.42678 18.2371 1.42678 17.7622 1.71967 17.4693L8.46967 10.7193C8.61032 10.5787 8.80109 10.4996 9 10.4996C9.19891 10.4996 9.38968 10.5787 9.53033 10.7193L13.1363 14.3253C14.4369 12.2042 16.3711 10.4402 18.8152 9.35203L19.9017 8.86828L15.6508 7.23652C15.2641 7.08808 15.071 6.65426 15.2194 6.26756Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up_circle />

      <.arrow_up_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up_circle() %>

      <%= arrow_up_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up_circle(assigns_or_opts \\ [])

  def arrow_up_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM12.5303 7.71967C12.3897 7.57902 12.1989 7.5 12 7.5C11.8011 7.5 11.6103 7.57902 11.4697 7.71967L8.46967 10.7197C8.17678 11.0126 8.17678 11.4874 8.46967 11.7803C8.76256 12.0732 9.23744 12.0732 9.53033 11.7803L11.25 10.0607L11.25 15.75C11.25 16.1642 11.5858 16.5 12 16.5C12.4142 16.5 12.75 16.1642 12.75 15.75L12.75 10.0607L14.4697 11.7803C14.7626 12.0732 15.2374 12.0732 15.5303 11.7803C15.8232 11.4874 15.8232 11.0126 15.5303 10.7197L12.5303 7.71967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_up_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM12.5303 7.71967C12.3897 7.57902 12.1989 7.5 12 7.5C11.8011 7.5 11.6103 7.57902 11.4697 7.71967L8.46967 10.7197C8.17678 11.0126 8.17678 11.4874 8.46967 11.7803C8.76256 12.0732 9.23744 12.0732 9.53033 11.7803L11.25 10.0607L11.25 15.75C11.25 16.1642 11.5858 16.5 12 16.5C12.4142 16.5 12.75 16.1642 12.75 15.75L12.75 10.0607L14.4697 11.7803C14.7626 12.0732 15.2374 12.0732 15.5303 11.7803C15.8232 11.4874 15.8232 11.0126 15.5303 10.7197L12.5303 7.71967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up_left />

      <.arrow_up_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up_left() %>

      <%= arrow_up_left(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up_left(assigns_or_opts \\ [])

  def arrow_up_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.25 6.31066L5.25 15.75C5.25 16.1642 4.91421 16.5 4.5 16.5C4.08579 16.5 3.75 16.1642 3.75 15.75L3.75 4.5C3.75 4.30109 3.82902 4.11032 3.96967 3.96967C4.11032 3.82902 4.30109 3.75 4.5 3.75L15.75 3.75C16.1642 3.75 16.5 4.08579 16.5 4.5C16.5 4.91421 16.1642 5.25 15.75 5.25L6.31066 5.25L20.0303 18.9697C20.3232 19.2626 20.3232 19.7374 20.0303 20.0303C19.7374 20.3232 19.2626 20.3232 18.9697 20.0303L5.25 6.31066Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_up_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.25 6.31066L5.25 15.75C5.25 16.1642 4.91421 16.5 4.5 16.5C4.08579 16.5 3.75 16.1642 3.75 15.75L3.75 4.5C3.75 4.30109 3.82902 4.11032 3.96967 3.96967C4.11032 3.82902 4.30109 3.75 4.5 3.75L15.75 3.75C16.1642 3.75 16.5 4.08579 16.5 4.5C16.5 4.91421 16.1642 5.25 15.75 5.25L6.31066 5.25L20.0303 18.9697C20.3232 19.2626 20.3232 19.7374 20.0303 20.0303C19.7374 20.3232 19.2626 20.3232 18.9697 20.0303L5.25 6.31066Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up-on-square-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up_on_square_stack />

      <.arrow_up_on_square_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up_on_square_stack() %>

      <%= arrow_up_on_square_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up_on_square_stack(assigns_or_opts \\ [])

  def arrow_up_on_square_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M9.96967 0.96967C10.2626 0.676777 10.7374 0.676777 11.0303 0.96967L14.0303 3.96967C14.3232 4.26256 14.3232 4.73744 14.0303 5.03033C13.7374 5.32322 13.2626 5.32322 12.9697 5.03033L11.25 3.31066V6.75H9.75V3.31066L8.03033 5.03033C7.73744 5.32322 7.26256 5.32322 6.96967 5.03033C6.67678 4.73744 6.67678 4.26256 6.96967 3.96967L9.96967 0.96967Z" fill="#0F172A"/>
    <path d="M9.75 6.75V12.75C9.75 13.1642 10.0858 13.5 10.5 13.5C10.9142 13.5 11.25 13.1642 11.25 12.75V6.75H14.25C15.9069 6.75 17.25 8.09315 17.25 9.75V17.25C17.25 18.9069 15.9069 20.25 14.25 20.25H6.75C5.09315 20.25 3.75 18.9069 3.75 17.25V9.75C3.75 8.09315 5.09315 6.75 6.75 6.75H9.75Z" fill="#0F172A"/>
    <path d="M7.15137 21.75C7.67008 22.6467 8.6396 23.25 9.75002 23.25H17.25C18.9069 23.25 20.25 21.9069 20.25 20.25V12.75C20.25 11.6396 19.6467 10.6701 18.75 10.1514V17.25C18.75 19.7353 16.7353 21.75 14.25 21.75H7.15137Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_up_on_square_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M9.96967 0.96967C10.2626 0.676777 10.7374 0.676777 11.0303 0.96967L14.0303 3.96967C14.3232 4.26256 14.3232 4.73744 14.0303 5.03033C13.7374 5.32322 13.2626 5.32322 12.9697 5.03033L11.25 3.31066V6.75H9.75V3.31066L8.03033 5.03033C7.73744 5.32322 7.26256 5.32322 6.96967 5.03033C6.67678 4.73744 6.67678 4.26256 6.96967 3.96967L9.96967 0.96967Z\" fill=\"#0F172A\"/>\n<path d=\"M9.75 6.75V12.75C9.75 13.1642 10.0858 13.5 10.5 13.5C10.9142 13.5 11.25 13.1642 11.25 12.75V6.75H14.25C15.9069 6.75 17.25 8.09315 17.25 9.75V17.25C17.25 18.9069 15.9069 20.25 14.25 20.25H6.75C5.09315 20.25 3.75 18.9069 3.75 17.25V9.75C3.75 8.09315 5.09315 6.75 6.75 6.75H9.75Z\" fill=\"#0F172A\"/>\n<path d=\"M7.15137 21.75C7.67008 22.6467 8.6396 23.25 9.75002 23.25H17.25C18.9069 23.25 20.25 21.9069 20.25 20.25V12.75C20.25 11.6396 19.6467 10.6701 18.75 10.1514V17.25C18.75 19.7353 16.7353 21.75 14.25 21.75H7.15137Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up-on-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up_on_square />

      <.arrow_up_on_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up_on_square() %>

      <%= arrow_up_on_square(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up_on_square(assigns_or_opts \\ [])

  def arrow_up_on_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M11.4697 1.71967C11.7626 1.42678 12.2374 1.42678 12.5303 1.71967L15.5303 4.71967C15.8232 5.01256 15.8232 5.48744 15.5303 5.78033C15.2374 6.07322 14.7626 6.07322 14.4697 5.78033L12.75 4.06066L12.75 7.5H11.25V4.06066L9.53033 5.78033C9.23744 6.07322 8.76256 6.07322 8.46967 5.78033C8.17678 5.48744 8.17678 5.01256 8.46967 4.71967L11.4697 1.71967Z" fill="#0F172A"/>
    <path d="M11.25 7.5L11.25 15C11.25 15.4142 11.5858 15.75 12 15.75C12.4142 15.75 12.75 15.4142 12.75 15V7.5H16.5C18.1569 7.5 19.5 8.84315 19.5 10.5V19.5C19.5 21.1569 18.1569 22.5 16.5 22.5H7.5C5.84315 22.5 4.5 21.1569 4.5 19.5V10.5C4.5 8.84315 5.84315 7.5 7.5 7.5H11.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_up_on_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M11.4697 1.71967C11.7626 1.42678 12.2374 1.42678 12.5303 1.71967L15.5303 4.71967C15.8232 5.01256 15.8232 5.48744 15.5303 5.78033C15.2374 6.07322 14.7626 6.07322 14.4697 5.78033L12.75 4.06066L12.75 7.5H11.25V4.06066L9.53033 5.78033C9.23744 6.07322 8.76256 6.07322 8.46967 5.78033C8.17678 5.48744 8.17678 5.01256 8.46967 4.71967L11.4697 1.71967Z\" fill=\"#0F172A\"/>\n<path d=\"M11.25 7.5L11.25 15C11.25 15.4142 11.5858 15.75 12 15.75C12.4142 15.75 12.75 15.4142 12.75 15V7.5H16.5C18.1569 7.5 19.5 8.84315 19.5 10.5V19.5C19.5 21.1569 18.1569 22.5 16.5 22.5H7.5C5.84315 22.5 4.5 21.1569 4.5 19.5V10.5C4.5 8.84315 5.84315 7.5 7.5 7.5H11.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up_right />

      <.arrow_up_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up_right() %>

      <%= arrow_up_right(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up_right(assigns_or_opts \\ [])

  def arrow_up_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8.25 3.75L19.5 3.75C19.6989 3.75 19.8897 3.82902 20.0303 3.96967C20.171 4.11032 20.25 4.30109 20.25 4.5V15.75C20.25 16.1642 19.9142 16.5 19.5 16.5C19.0858 16.5 18.75 16.1642 18.75 15.75V6.31066L5.03033 20.0303C4.73744 20.3232 4.26256 20.3232 3.96967 20.0303C3.67678 19.7374 3.67678 19.2626 3.96967 18.9697L17.6893 5.25L8.25 5.25C7.83579 5.25 7.5 4.91421 7.5 4.5C7.5 4.08579 7.83579 3.75 8.25 3.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_up_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8.25 3.75L19.5 3.75C19.6989 3.75 19.8897 3.82902 20.0303 3.96967C20.171 4.11032 20.25 4.30109 20.25 4.5V15.75C20.25 16.1642 19.9142 16.5 19.5 16.5C19.0858 16.5 18.75 16.1642 18.75 15.75V6.31066L5.03033 20.0303C4.73744 20.3232 4.26256 20.3232 3.96967 20.0303C3.67678 19.7374 3.67678 19.2626 3.96967 18.9697L17.6893 5.25L8.25 5.25C7.83579 5.25 7.5 4.91421 7.5 4.5C7.5 4.08579 7.83579 3.75 8.25 3.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up-tray.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up_tray />

      <.arrow_up_tray class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up_tray() %>

      <%= arrow_up_tray(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up_tray(assigns_or_opts \\ [])

  def arrow_up_tray(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.4697 2.46967C11.7626 2.17678 12.2374 2.17678 12.5303 2.46967L17.0303 6.96967C17.3232 7.26256 17.3232 7.73744 17.0303 8.03033C16.7374 8.32322 16.2626 8.32322 15.9697 8.03033L12.75 4.81066L12.75 16.5C12.75 16.9142 12.4142 17.25 12 17.25C11.5858 17.25 11.25 16.9142 11.25 16.5L11.25 4.81066L8.03033 8.03033C7.73744 8.32322 7.26256 8.32322 6.96967 8.03033C6.67678 7.73744 6.67678 7.26256 6.96967 6.96967L11.4697 2.46967ZM3 15.75C3.41421 15.75 3.75 16.0858 3.75 16.5V18.75C3.75 19.5784 4.42157 20.25 5.25 20.25H18.75C19.5784 20.25 20.25 19.5784 20.25 18.75V16.5C20.25 16.0858 20.5858 15.75 21 15.75C21.4142 15.75 21.75 16.0858 21.75 16.5V18.75C21.75 20.4069 20.4069 21.75 18.75 21.75H5.25C3.59315 21.75 2.25 20.4069 2.25 18.75V16.5C2.25 16.0858 2.58579 15.75 3 15.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_up_tray(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.4697 2.46967C11.7626 2.17678 12.2374 2.17678 12.5303 2.46967L17.0303 6.96967C17.3232 7.26256 17.3232 7.73744 17.0303 8.03033C16.7374 8.32322 16.2626 8.32322 15.9697 8.03033L12.75 4.81066L12.75 16.5C12.75 16.9142 12.4142 17.25 12 17.25C11.5858 17.25 11.25 16.9142 11.25 16.5L11.25 4.81066L8.03033 8.03033C7.73744 8.32322 7.26256 8.32322 6.96967 8.03033C6.67678 7.73744 6.67678 7.26256 6.96967 6.96967L11.4697 2.46967ZM3 15.75C3.41421 15.75 3.75 16.0858 3.75 16.5V18.75C3.75 19.5784 4.42157 20.25 5.25 20.25H18.75C19.5784 20.25 20.25 19.5784 20.25 18.75V16.5C20.25 16.0858 20.5858 15.75 21 15.75C21.4142 15.75 21.75 16.0858 21.75 16.5V18.75C21.75 20.4069 20.4069 21.75 18.75 21.75H5.25C3.59315 21.75 2.25 20.4069 2.25 18.75V16.5C2.25 16.0858 2.58579 15.75 3 15.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_up />

      <.arrow_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_up() %>

      <%= arrow_up(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_up(assigns_or_opts \\ [])

  def arrow_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.4697 2.46967C11.7626 2.17678 12.2374 2.17678 12.5303 2.46967L20.0303 9.96967C20.3232 10.2626 20.3232 10.7374 20.0303 11.0303C19.7374 11.3232 19.2626 11.3232 18.9697 11.0303L12.75 4.81066V21C12.75 21.4142 12.4142 21.75 12 21.75C11.5858 21.75 11.25 21.4142 11.25 21V4.81066L5.03033 11.0303C4.73744 11.3232 4.26256 11.3232 3.96967 11.0303C3.67678 10.7374 3.67678 10.2626 3.96967 9.96967L11.4697 2.46967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.4697 2.46967C11.7626 2.17678 12.2374 2.17678 12.5303 2.46967L20.0303 9.96967C20.3232 10.2626 20.3232 10.7374 20.0303 11.0303C19.7374 11.3232 19.2626 11.3232 18.9697 11.0303L12.75 4.81066V21C12.75 21.4142 12.4142 21.75 12 21.75C11.5858 21.75 11.25 21.4142 11.25 21V4.81066L5.03033 11.0303C4.73744 11.3232 4.26256 11.3232 3.96967 11.0303C3.67678 10.7374 3.67678 10.2626 3.96967 9.96967L11.4697 2.46967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-uturn-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_uturn_down />

      <.arrow_uturn_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_uturn_down() %>

      <%= arrow_uturn_down(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_uturn_down(assigns_or_opts \\ [])

  def arrow_uturn_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15 3.75C12.1005 3.75 9.75 6.10051 9.75 9L9.75 19.1893L14.4697 14.4697C14.7626 14.1768 15.2374 14.1768 15.5303 14.4697C15.8232 14.7626 15.8232 15.2374 15.5303 15.5303L9.53033 21.5303C9.38968 21.671 9.19891 21.75 9 21.75C8.80109 21.75 8.61032 21.671 8.46967 21.5303L2.46967 15.5303C2.17678 15.2374 2.17678 14.7626 2.46967 14.4697C2.76256 14.1768 3.23744 14.1768 3.53033 14.4697L8.25 19.1893V9C8.25 5.27208 11.2721 2.25 15 2.25C18.7279 2.25 21.75 5.27208 21.75 9V12C21.75 12.4142 21.4142 12.75 21 12.75C20.5858 12.75 20.25 12.4142 20.25 12V9C20.25 6.10051 17.8995 3.75 15 3.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_uturn_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15 3.75C12.1005 3.75 9.75 6.10051 9.75 9L9.75 19.1893L14.4697 14.4697C14.7626 14.1768 15.2374 14.1768 15.5303 14.4697C15.8232 14.7626 15.8232 15.2374 15.5303 15.5303L9.53033 21.5303C9.38968 21.671 9.19891 21.75 9 21.75C8.80109 21.75 8.61032 21.671 8.46967 21.5303L2.46967 15.5303C2.17678 15.2374 2.17678 14.7626 2.46967 14.4697C2.76256 14.1768 3.23744 14.1768 3.53033 14.4697L8.25 19.1893V9C8.25 5.27208 11.2721 2.25 15 2.25C18.7279 2.25 21.75 5.27208 21.75 9V12C21.75 12.4142 21.4142 12.75 21 12.75C20.5858 12.75 20.25 12.4142 20.25 12V9C20.25 6.10051 17.8995 3.75 15 3.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-uturn-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_uturn_left />

      <.arrow_uturn_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_uturn_left() %>

      <%= arrow_uturn_left(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_uturn_left(assigns_or_opts \\ [])

  def arrow_uturn_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.53033 2.46967C9.82322 2.76256 9.82322 3.23744 9.53033 3.53033L4.81066 8.25H15C18.7279 8.25 21.75 11.2721 21.75 15C21.75 18.7279 18.7279 21.75 15 21.75H12C11.5858 21.75 11.25 21.4142 11.25 21C11.25 20.5858 11.5858 20.25 12 20.25H15C17.8995 20.25 20.25 17.8995 20.25 15C20.25 12.1005 17.8995 9.75 15 9.75H4.81066L9.53033 14.4697C9.82322 14.7626 9.82322 15.2374 9.53033 15.5303C9.23744 15.8232 8.76256 15.8232 8.46967 15.5303L2.46967 9.53033C2.17678 9.23744 2.17678 8.76256 2.46967 8.46967L8.46967 2.46967C8.76256 2.17678 9.23744 2.17678 9.53033 2.46967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_uturn_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.53033 2.46967C9.82322 2.76256 9.82322 3.23744 9.53033 3.53033L4.81066 8.25H15C18.7279 8.25 21.75 11.2721 21.75 15C21.75 18.7279 18.7279 21.75 15 21.75H12C11.5858 21.75 11.25 21.4142 11.25 21C11.25 20.5858 11.5858 20.25 12 20.25H15C17.8995 20.25 20.25 17.8995 20.25 15C20.25 12.1005 17.8995 9.75 15 9.75H4.81066L9.53033 14.4697C9.82322 14.7626 9.82322 15.2374 9.53033 15.5303C9.23744 15.8232 8.76256 15.8232 8.46967 15.5303L2.46967 9.53033C2.17678 9.23744 2.17678 8.76256 2.46967 8.46967L8.46967 2.46967C8.76256 2.17678 9.23744 2.17678 9.53033 2.46967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-uturn-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_uturn_right />

      <.arrow_uturn_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_uturn_right() %>

      <%= arrow_uturn_right(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_uturn_right(assigns_or_opts \\ [])

  def arrow_uturn_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.4697 2.46967C14.7626 2.17678 15.2374 2.17678 15.5303 2.46967L21.5303 8.46967C21.8232 8.76256 21.8232 9.23744 21.5303 9.53033L15.5303 15.5303C15.2374 15.8232 14.7626 15.8232 14.4697 15.5303C14.1768 15.2374 14.1768 14.7626 14.4697 14.4697L19.1893 9.75H9C6.10051 9.75 3.75 12.1005 3.75 15C3.75 17.8995 6.10051 20.25 9 20.25H12C12.4142 20.25 12.75 20.5858 12.75 21C12.75 21.4142 12.4142 21.75 12 21.75H9C5.27208 21.75 2.25 18.7279 2.25 15C2.25 11.2721 5.27208 8.25 9 8.25H19.1893L14.4697 3.53033C14.1768 3.23744 14.1768 2.76256 14.4697 2.46967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_uturn_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M14.4697 2.46967C14.7626 2.17678 15.2374 2.17678 15.5303 2.46967L21.5303 8.46967C21.8232 8.76256 21.8232 9.23744 21.5303 9.53033L15.5303 15.5303C15.2374 15.8232 14.7626 15.8232 14.4697 15.5303C14.1768 15.2374 14.1768 14.7626 14.4697 14.4697L19.1893 9.75H9C6.10051 9.75 3.75 12.1005 3.75 15C3.75 17.8995 6.10051 20.25 9 20.25H12C12.4142 20.25 12.75 20.5858 12.75 21C12.75 21.4142 12.4142 21.75 12 21.75H9C5.27208 21.75 2.25 18.7279 2.25 15C2.25 11.2721 5.27208 8.25 9 8.25H19.1893L14.4697 3.53033C14.1768 3.23744 14.1768 2.76256 14.4697 2.46967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrow-uturn-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrow_uturn_up />

      <.arrow_uturn_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrow_uturn_up() %>

      <%= arrow_uturn_up(class: "h-6 w-6 text-gray-500") %>
  """
  def arrow_uturn_up(assigns_or_opts \\ [])

  def arrow_uturn_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M21.5303 9.53033C21.2374 9.82322 20.7626 9.82322 20.4697 9.53033L15.75 4.81066V15C15.75 18.7279 12.7279 21.75 9 21.75C5.27208 21.75 2.25 18.7279 2.25 15L2.25 12C2.25 11.5858 2.58579 11.25 3 11.25C3.41421 11.25 3.75 11.5858 3.75 12L3.75 15C3.75 17.8995 6.10051 20.25 9 20.25C11.8995 20.25 14.25 17.8995 14.25 15V4.81066L9.53033 9.53033C9.23744 9.82322 8.76256 9.82322 8.46967 9.53033C8.17678 9.23744 8.17678 8.76256 8.46967 8.46967L14.4697 2.46967C14.7626 2.17678 15.2374 2.17678 15.5303 2.46967L21.5303 8.46967C21.8232 8.76256 21.8232 9.23744 21.5303 9.53033Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrow_uturn_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M21.5303 9.53033C21.2374 9.82322 20.7626 9.82322 20.4697 9.53033L15.75 4.81066V15C15.75 18.7279 12.7279 21.75 9 21.75C5.27208 21.75 2.25 18.7279 2.25 15L2.25 12C2.25 11.5858 2.58579 11.25 3 11.25C3.41421 11.25 3.75 11.5858 3.75 12L3.75 15C3.75 17.8995 6.10051 20.25 9 20.25C11.8995 20.25 14.25 17.8995 14.25 15V4.81066L9.53033 9.53033C9.23744 9.82322 8.76256 9.82322 8.46967 9.53033C8.17678 9.23744 8.17678 8.76256 8.46967 8.46967L14.4697 2.46967C14.7626 2.17678 15.2374 2.17678 15.5303 2.46967L21.5303 8.46967C21.8232 8.76256 21.8232 9.23744 21.5303 9.53033Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrows-pointing-in.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrows_pointing_in />

      <.arrows_pointing_in class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrows_pointing_in() %>

      <%= arrows_pointing_in(class: "h-6 w-6 text-gray-500") %>
  """
  def arrows_pointing_in(assigns_or_opts \\ [])

  def arrows_pointing_in(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.21967 3.21967C3.51256 2.92678 3.98744 2.92678 4.28033 3.21967L8.25 7.18934L8.25 4.5C8.25 4.08579 8.58579 3.75 9 3.75C9.41421 3.75 9.75 4.08579 9.75 4.5L9.75 9C9.75 9.41421 9.41421 9.75 9 9.75H4.5C4.08579 9.75 3.75 9.41421 3.75 9C3.75 8.58579 4.08579 8.25 4.5 8.25L7.18934 8.25L3.21967 4.28033C2.92678 3.98744 2.92678 3.51256 3.21967 3.21967ZM20.7803 3.21967C21.0732 3.51256 21.0732 3.98744 20.7803 4.28033L16.8107 8.25H19.5C19.9142 8.25 20.25 8.58579 20.25 9C20.25 9.41421 19.9142 9.75 19.5 9.75H15C14.5858 9.75 14.25 9.41421 14.25 9V4.5C14.25 4.08579 14.5858 3.75 15 3.75C15.4142 3.75 15.75 4.08579 15.75 4.5V7.18934L19.7197 3.21967C20.0126 2.92678 20.4874 2.92678 20.7803 3.21967ZM3.75 15C3.75 14.5858 4.08579 14.25 4.5 14.25L9 14.25C9.41421 14.25 9.75 14.5858 9.75 15V19.5C9.75 19.9142 9.41421 20.25 9 20.25C8.58579 20.25 8.25 19.9142 8.25 19.5L8.25 16.8107L4.28033 20.7803C3.98744 21.0732 3.51256 21.0732 3.21967 20.7803C2.92678 20.4874 2.92678 20.0126 3.21967 19.7197L7.18934 15.75H4.5C4.08579 15.75 3.75 15.4142 3.75 15ZM14.25 15C14.25 14.5858 14.5858 14.25 15 14.25H19.5C19.9142 14.25 20.25 14.5858 20.25 15C20.25 15.4142 19.9142 15.75 19.5 15.75H16.8107L20.7803 19.7197C21.0732 20.0126 21.0732 20.4874 20.7803 20.7803C20.4874 21.0732 20.0126 21.0732 19.7197 20.7803L15.75 16.8107V19.5C15.75 19.9142 15.4142 20.25 15 20.25C14.5858 20.25 14.25 19.9142 14.25 19.5L14.25 15Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrows_pointing_in(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.21967 3.21967C3.51256 2.92678 3.98744 2.92678 4.28033 3.21967L8.25 7.18934L8.25 4.5C8.25 4.08579 8.58579 3.75 9 3.75C9.41421 3.75 9.75 4.08579 9.75 4.5L9.75 9C9.75 9.41421 9.41421 9.75 9 9.75H4.5C4.08579 9.75 3.75 9.41421 3.75 9C3.75 8.58579 4.08579 8.25 4.5 8.25L7.18934 8.25L3.21967 4.28033C2.92678 3.98744 2.92678 3.51256 3.21967 3.21967ZM20.7803 3.21967C21.0732 3.51256 21.0732 3.98744 20.7803 4.28033L16.8107 8.25H19.5C19.9142 8.25 20.25 8.58579 20.25 9C20.25 9.41421 19.9142 9.75 19.5 9.75H15C14.5858 9.75 14.25 9.41421 14.25 9V4.5C14.25 4.08579 14.5858 3.75 15 3.75C15.4142 3.75 15.75 4.08579 15.75 4.5V7.18934L19.7197 3.21967C20.0126 2.92678 20.4874 2.92678 20.7803 3.21967ZM3.75 15C3.75 14.5858 4.08579 14.25 4.5 14.25L9 14.25C9.41421 14.25 9.75 14.5858 9.75 15V19.5C9.75 19.9142 9.41421 20.25 9 20.25C8.58579 20.25 8.25 19.9142 8.25 19.5L8.25 16.8107L4.28033 20.7803C3.98744 21.0732 3.51256 21.0732 3.21967 20.7803C2.92678 20.4874 2.92678 20.0126 3.21967 19.7197L7.18934 15.75H4.5C4.08579 15.75 3.75 15.4142 3.75 15ZM14.25 15C14.25 14.5858 14.5858 14.25 15 14.25H19.5C19.9142 14.25 20.25 14.5858 20.25 15C20.25 15.4142 19.9142 15.75 19.5 15.75H16.8107L20.7803 19.7197C21.0732 20.0126 21.0732 20.4874 20.7803 20.7803C20.4874 21.0732 20.0126 21.0732 19.7197 20.7803L15.75 16.8107V19.5C15.75 19.9142 15.4142 20.25 15 20.25C14.5858 20.25 14.25 19.9142 14.25 19.5L14.25 15Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrows-pointing-out.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrows_pointing_out />

      <.arrows_pointing_out class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrows_pointing_out() %>

      <%= arrows_pointing_out(class: "h-6 w-6 text-gray-500") %>
  """
  def arrows_pointing_out(assigns_or_opts \\ [])

  def arrows_pointing_out(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15 3.75C15 3.33579 15.3358 3 15.75 3L20.25 3C20.6642 3 21 3.33579 21 3.75V8.25C21 8.66421 20.6642 9 20.25 9C19.8358 9 19.5 8.66421 19.5 8.25V5.56066L15.5303 9.53033C15.2374 9.82322 14.7626 9.82322 14.4697 9.53033C14.1768 9.23744 14.1768 8.76256 14.4697 8.46967L18.4393 4.5H15.75C15.3358 4.5 15 4.16421 15 3.75ZM3 3.75C3 3.33579 3.33579 3 3.75 3H8.25C8.66421 3 9 3.33579 9 3.75C9 4.16421 8.66421 4.5 8.25 4.5H5.56066L9.53033 8.46967C9.82322 8.76256 9.82322 9.23744 9.53033 9.53033C9.23744 9.82322 8.76256 9.82322 8.46967 9.53033L4.5 5.56066V8.25C4.5 8.66421 4.16421 9 3.75 9C3.33579 9 3 8.66421 3 8.25V3.75ZM14.4697 15.5303C14.1768 15.2374 14.1768 14.7626 14.4697 14.4697C14.7626 14.1768 15.2374 14.1768 15.5303 14.4697L19.5 18.4393V15.75C19.5 15.3358 19.8358 15 20.25 15C20.6642 15 21 15.3358 21 15.75V20.25C21 20.6642 20.6642 21 20.25 21H15.75C15.3358 21 15 20.6642 15 20.25C15 19.8358 15.3358 19.5 15.75 19.5H18.4393L14.4697 15.5303ZM9.53033 14.4697C9.82322 14.7626 9.82322 15.2374 9.53033 15.5303L5.56066 19.5H8.25C8.66421 19.5 9 19.8358 9 20.25C9 20.6642 8.66421 21 8.25 21H3.75C3.33579 21 3 20.6642 3 20.25V15.75C3 15.3358 3.33579 15 3.75 15C4.16421 15 4.5 15.3358 4.5 15.75V18.4393L8.46967 14.4697C8.76256 14.1768 9.23744 14.1768 9.53033 14.4697Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrows_pointing_out(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15 3.75C15 3.33579 15.3358 3 15.75 3L20.25 3C20.6642 3 21 3.33579 21 3.75V8.25C21 8.66421 20.6642 9 20.25 9C19.8358 9 19.5 8.66421 19.5 8.25V5.56066L15.5303 9.53033C15.2374 9.82322 14.7626 9.82322 14.4697 9.53033C14.1768 9.23744 14.1768 8.76256 14.4697 8.46967L18.4393 4.5H15.75C15.3358 4.5 15 4.16421 15 3.75ZM3 3.75C3 3.33579 3.33579 3 3.75 3H8.25C8.66421 3 9 3.33579 9 3.75C9 4.16421 8.66421 4.5 8.25 4.5H5.56066L9.53033 8.46967C9.82322 8.76256 9.82322 9.23744 9.53033 9.53033C9.23744 9.82322 8.76256 9.82322 8.46967 9.53033L4.5 5.56066V8.25C4.5 8.66421 4.16421 9 3.75 9C3.33579 9 3 8.66421 3 8.25V3.75ZM14.4697 15.5303C14.1768 15.2374 14.1768 14.7626 14.4697 14.4697C14.7626 14.1768 15.2374 14.1768 15.5303 14.4697L19.5 18.4393V15.75C19.5 15.3358 19.8358 15 20.25 15C20.6642 15 21 15.3358 21 15.75V20.25C21 20.6642 20.6642 21 20.25 21H15.75C15.3358 21 15 20.6642 15 20.25C15 19.8358 15.3358 19.5 15.75 19.5H18.4393L14.4697 15.5303ZM9.53033 14.4697C9.82322 14.7626 9.82322 15.2374 9.53033 15.5303L5.56066 19.5H8.25C8.66421 19.5 9 19.8358 9 20.25C9 20.6642 8.66421 21 8.25 21H3.75C3.33579 21 3 20.6642 3 20.25V15.75C3 15.3358 3.33579 15 3.75 15C4.16421 15 4.5 15.3358 4.5 15.75V18.4393L8.46967 14.4697C8.76256 14.1768 9.23744 14.1768 9.53033 14.4697Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrows-right-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrows_right_left />

      <.arrows_right_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrows_right_left() %>

      <%= arrows_right_left(class: "h-6 w-6 text-gray-500") %>
  """
  def arrows_right_left(assigns_or_opts \\ [])

  def arrows_right_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15.9697 2.46967C16.2626 2.17678 16.7374 2.17678 17.0303 2.46967L21.5303 6.96967C21.671 7.11032 21.75 7.30109 21.75 7.5C21.75 7.69891 21.671 7.88968 21.5303 8.03033L17.0303 12.5303C16.7374 12.8232 16.2626 12.8232 15.9697 12.5303C15.6768 12.2374 15.6768 11.7626 15.9697 11.4697L19.1893 8.25L7.5 8.25C7.08579 8.25 6.75 7.91421 6.75 7.5C6.75 7.08579 7.08579 6.75 7.5 6.75L19.1893 6.75L15.9697 3.53033C15.6768 3.23744 15.6768 2.76256 15.9697 2.46967ZM8.03033 11.4697C8.32322 11.7626 8.32322 12.2374 8.03033 12.5303L4.81066 15.75H16.5C16.9142 15.75 17.25 16.0858 17.25 16.5C17.25 16.9142 16.9142 17.25 16.5 17.25H4.81066L8.03033 20.4697C8.32322 20.7626 8.32322 21.2374 8.03033 21.5303C7.73744 21.8232 7.26256 21.8232 6.96967 21.5303L2.46967 17.0303C2.17678 16.7374 2.17678 16.2626 2.46967 15.9697L6.96967 11.4697C7.26256 11.1768 7.73744 11.1768 8.03033 11.4697Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrows_right_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15.9697 2.46967C16.2626 2.17678 16.7374 2.17678 17.0303 2.46967L21.5303 6.96967C21.671 7.11032 21.75 7.30109 21.75 7.5C21.75 7.69891 21.671 7.88968 21.5303 8.03033L17.0303 12.5303C16.7374 12.8232 16.2626 12.8232 15.9697 12.5303C15.6768 12.2374 15.6768 11.7626 15.9697 11.4697L19.1893 8.25L7.5 8.25C7.08579 8.25 6.75 7.91421 6.75 7.5C6.75 7.08579 7.08579 6.75 7.5 6.75L19.1893 6.75L15.9697 3.53033C15.6768 3.23744 15.6768 2.76256 15.9697 2.46967ZM8.03033 11.4697C8.32322 11.7626 8.32322 12.2374 8.03033 12.5303L4.81066 15.75H16.5C16.9142 15.75 17.25 16.0858 17.25 16.5C17.25 16.9142 16.9142 17.25 16.5 17.25H4.81066L8.03033 20.4697C8.32322 20.7626 8.32322 21.2374 8.03033 21.5303C7.73744 21.8232 7.26256 21.8232 6.96967 21.5303L2.46967 17.0303C2.17678 16.7374 2.17678 16.2626 2.46967 15.9697L6.96967 11.4697C7.26256 11.1768 7.73744 11.1768 8.03033 11.4697Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/arrows-up-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.arrows_up_down />

      <.arrows_up_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= arrows_up_down() %>

      <%= arrows_up_down(class: "h-6 w-6 text-gray-500") %>
  """
  def arrows_up_down(assigns_or_opts \\ [])

  def arrows_up_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6.96967 2.46967C7.26256 2.17678 7.73744 2.17678 8.03033 2.46967L12.5303 6.96967C12.8232 7.26256 12.8232 7.73744 12.5303 8.03033C12.2374 8.32322 11.7626 8.32322 11.4697 8.03033L8.25 4.81066V16.5C8.25 16.9142 7.91421 17.25 7.5 17.25C7.08579 17.25 6.75 16.9142 6.75 16.5V4.81066L3.53033 8.03033C3.23744 8.32322 2.76256 8.32322 2.46967 8.03033C2.17678 7.73744 2.17678 7.26256 2.46967 6.96967L6.96967 2.46967ZM16.5 6.75C16.9142 6.75 17.25 7.08579 17.25 7.5L17.25 19.1893L20.4697 15.9697C20.7626 15.6768 21.2374 15.6768 21.5303 15.9697C21.8232 16.2626 21.8232 16.7374 21.5303 17.0303L17.0303 21.5303C16.8897 21.671 16.6989 21.75 16.5 21.75C16.3011 21.75 16.1103 21.671 15.9697 21.5303L11.4697 17.0303C11.1768 16.7374 11.1768 16.2626 11.4697 15.9697C11.7626 15.6768 12.2374 15.6768 12.5303 15.9697L15.75 19.1893L15.75 7.5C15.75 7.08579 16.0858 6.75 16.5 6.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def arrows_up_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6.96967 2.46967C7.26256 2.17678 7.73744 2.17678 8.03033 2.46967L12.5303 6.96967C12.8232 7.26256 12.8232 7.73744 12.5303 8.03033C12.2374 8.32322 11.7626 8.32322 11.4697 8.03033L8.25 4.81066V16.5C8.25 16.9142 7.91421 17.25 7.5 17.25C7.08579 17.25 6.75 16.9142 6.75 16.5V4.81066L3.53033 8.03033C3.23744 8.32322 2.76256 8.32322 2.46967 8.03033C2.17678 7.73744 2.17678 7.26256 2.46967 6.96967L6.96967 2.46967ZM16.5 6.75C16.9142 6.75 17.25 7.08579 17.25 7.5L17.25 19.1893L20.4697 15.9697C20.7626 15.6768 21.2374 15.6768 21.5303 15.9697C21.8232 16.2626 21.8232 16.7374 21.5303 17.0303L17.0303 21.5303C16.8897 21.671 16.6989 21.75 16.5 21.75C16.3011 21.75 16.1103 21.671 15.9697 21.5303L11.4697 17.0303C11.1768 16.7374 11.1768 16.2626 11.4697 15.9697C11.7626 15.6768 12.2374 15.6768 12.5303 15.9697L15.75 19.1893L15.75 7.5C15.75 7.08579 16.0858 6.75 16.5 6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/at-symbol.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.at_symbol />

      <.at_symbol class="h-6 w-6 text-gray-500" />

  or as a function

      <%= at_symbol() %>

      <%= at_symbol(class: "h-6 w-6 text-gray-500") %>
  """
  def at_symbol(assigns_or_opts \\ [])

  def at_symbol(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M17.8336 6.16637C14.6118 2.94454 9.38819 2.94454 6.16637 6.16637C2.94454 9.38819 2.94454 14.6118 6.16637 17.8336C9.38819 21.0555 14.6118 21.0555 17.8336 17.8336C18.1265 17.5407 18.6014 17.5407 18.8943 17.8336C19.1872 18.1265 19.1872 18.6014 18.8943 18.8943C15.0867 22.7019 8.91332 22.7019 5.10571 18.8943C1.2981 15.0867 1.2981 8.91332 5.10571 5.10571C8.91332 1.2981 15.0867 1.2981 18.8943 5.10571C20.798 7.00937 21.75 9.50593 21.75 12C21.75 12.975 21.4545 13.8866 20.941 14.5713C20.4273 15.2563 19.6603 15.75 18.75 15.75C17.8462 15.75 17.0837 15.2633 16.57 14.5859C15.668 16.1767 13.9593 17.25 12 17.25C9.1005 17.25 6.75 14.8995 6.75 12C6.75 9.1005 9.1005 6.75 12 6.75C13.469 6.75 14.7971 7.35335 15.75 8.32576V8.25C15.75 7.83579 16.0858 7.5 16.5 7.5C16.9142 7.5 17.25 7.83579 17.25 8.25V12C17.25 12.6818 17.4582 13.2703 17.759 13.6713C18.0596 14.0721 18.4177 14.25 18.75 14.25C19.0823 14.25 19.4404 14.0721 19.741 13.6713C20.0418 13.2703 20.25 12.6819 20.25 12C20.25 9.88749 19.4447 7.77743 17.8336 6.16637ZM15.75 12C15.75 9.92893 14.0711 8.25 12 8.25C9.92893 8.25 8.25 9.92893 8.25 12C8.25 14.0711 9.92893 15.75 12 15.75C14.0711 15.75 15.75 14.0711 15.75 12Z" fill="#0F172A"/>
    </svg>
    """
  end

  def at_symbol(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M17.8336 6.16637C14.6118 2.94454 9.38819 2.94454 6.16637 6.16637C2.94454 9.38819 2.94454 14.6118 6.16637 17.8336C9.38819 21.0555 14.6118 21.0555 17.8336 17.8336C18.1265 17.5407 18.6014 17.5407 18.8943 17.8336C19.1872 18.1265 19.1872 18.6014 18.8943 18.8943C15.0867 22.7019 8.91332 22.7019 5.10571 18.8943C1.2981 15.0867 1.2981 8.91332 5.10571 5.10571C8.91332 1.2981 15.0867 1.2981 18.8943 5.10571C20.798 7.00937 21.75 9.50593 21.75 12C21.75 12.975 21.4545 13.8866 20.941 14.5713C20.4273 15.2563 19.6603 15.75 18.75 15.75C17.8462 15.75 17.0837 15.2633 16.57 14.5859C15.668 16.1767 13.9593 17.25 12 17.25C9.1005 17.25 6.75 14.8995 6.75 12C6.75 9.1005 9.1005 6.75 12 6.75C13.469 6.75 14.7971 7.35335 15.75 8.32576V8.25C15.75 7.83579 16.0858 7.5 16.5 7.5C16.9142 7.5 17.25 7.83579 17.25 8.25V12C17.25 12.6818 17.4582 13.2703 17.759 13.6713C18.0596 14.0721 18.4177 14.25 18.75 14.25C19.0823 14.25 19.4404 14.0721 19.741 13.6713C20.0418 13.2703 20.25 12.6819 20.25 12C20.25 9.88749 19.4447 7.77743 17.8336 6.16637ZM15.75 12C15.75 9.92893 14.0711 8.25 12 8.25C9.92893 8.25 8.25 9.92893 8.25 12C8.25 14.0711 9.92893 15.75 12 15.75C14.0711 15.75 15.75 14.0711 15.75 12Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/backspace.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.backspace />

      <.backspace class="h-6 w-6 text-gray-500" />

  or as a function

      <%= backspace() %>

      <%= backspace(class: "h-6 w-6 text-gray-500") %>
  """
  def backspace(assigns_or_opts \\ [])

  def backspace(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.515 10.6742C1.78276 11.4064 1.78276 12.5936 2.51499 13.3258L8.89 19.7008C9.24163 20.0525 9.71854 20.25 10.2158 20.25H19.4998C21.1567 20.25 22.4998 18.9069 22.4998 17.25V6.75C22.4998 5.09315 21.1567 3.75 19.4998 3.75L10.2158 3.75C9.71854 3.75 9.24163 3.94754 8.89 4.29917L2.515 10.6742ZM12.5303 9.21967C12.2374 8.92678 11.7626 8.92678 11.4697 9.21967C11.1768 9.51256 11.1768 9.98744 11.4697 10.2803L13.1893 12L11.4697 13.7197C11.1768 14.0126 11.1768 14.4874 11.4697 14.7803C11.7626 15.0732 12.2374 15.0732 12.5303 14.7803L14.25 13.0607L15.9697 14.7803C16.2626 15.0732 16.7374 15.0732 17.0303 14.7803C17.3232 14.4874 17.3232 14.0126 17.0303 13.7197L15.3107 12L17.0303 10.2803C17.3232 9.98744 17.3232 9.51256 17.0303 9.21967C16.7374 8.92678 16.2626 8.92678 15.9697 9.21967L14.25 10.9393L12.5303 9.21967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def backspace(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.515 10.6742C1.78276 11.4064 1.78276 12.5936 2.51499 13.3258L8.89 19.7008C9.24163 20.0525 9.71854 20.25 10.2158 20.25H19.4998C21.1567 20.25 22.4998 18.9069 22.4998 17.25V6.75C22.4998 5.09315 21.1567 3.75 19.4998 3.75L10.2158 3.75C9.71854 3.75 9.24163 3.94754 8.89 4.29917L2.515 10.6742ZM12.5303 9.21967C12.2374 8.92678 11.7626 8.92678 11.4697 9.21967C11.1768 9.51256 11.1768 9.98744 11.4697 10.2803L13.1893 12L11.4697 13.7197C11.1768 14.0126 11.1768 14.4874 11.4697 14.7803C11.7626 15.0732 12.2374 15.0732 12.5303 14.7803L14.25 13.0607L15.9697 14.7803C16.2626 15.0732 16.7374 15.0732 17.0303 14.7803C17.3232 14.4874 17.3232 14.0126 17.0303 13.7197L15.3107 12L17.0303 10.2803C17.3232 9.98744 17.3232 9.51256 17.0303 9.21967C16.7374 8.92678 16.2626 8.92678 15.9697 9.21967L14.25 10.9393L12.5303 9.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/backward.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.backward />

      <.backward class="h-6 w-6 text-gray-500" />

  or as a function

      <%= backward() %>

      <%= backward(class: "h-6 w-6 text-gray-500") %>
  """
  def backward(assigns_or_opts \\ [])

  def backward(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M9.19474 18.4391C10.4447 19.1534 12 18.2508 12 16.8112V14.4707L18.9447 18.4391C20.1947 19.1534 21.75 18.2508 21.75 16.8112L21.75 8.68832C21.75 7.24865 20.1947 6.34609 18.9447 7.06036L12 11.0288V8.68832C12 7.24865 10.4447 6.34609 9.19474 7.06036L2.08725 11.1218C0.827597 11.8416 0.827596 13.6579 2.08725 14.3777L9.19474 18.4391Z" fill="#0F172A"/>
    </svg>
    """
  end

  def backward(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M9.19474 18.4391C10.4447 19.1534 12 18.2508 12 16.8112V14.4707L18.9447 18.4391C20.1947 19.1534 21.75 18.2508 21.75 16.8112L21.75 8.68832C21.75 7.24865 20.1947 6.34609 18.9447 7.06036L12 11.0288V8.68832C12 7.24865 10.4447 6.34609 9.19474 7.06036L2.08725 11.1218C0.827597 11.8416 0.827596 13.6579 2.08725 14.3777L9.19474 18.4391Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/banknotes.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.banknotes />

      <.banknotes class="h-6 w-6 text-gray-500" />

  or as a function

      <%= banknotes() %>

      <%= banknotes(class: "h-6 w-6 text-gray-500") %>
  """
  def banknotes(assigns_or_opts \\ [])

  def banknotes(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M12 7.5C10.7574 7.5 9.75 8.50736 9.75 9.75C9.75 10.9926 10.7574 12 12 12C13.2426 12 14.25 10.9926 14.25 9.75C14.25 8.50736 13.2426 7.5 12 7.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.5 4.875C1.5 3.83947 2.33947 3 3.375 3H20.625C21.6605 3 22.5 3.83947 22.5 4.875V14.625C22.5 15.6605 21.6605 16.5 20.625 16.5H3.375C2.33947 16.5 1.5 15.6605 1.5 14.625V4.875ZM8.25 9.75C8.25 7.67893 9.92893 6 12 6C14.0711 6 15.75 7.67893 15.75 9.75C15.75 11.8211 14.0711 13.5 12 13.5C9.92893 13.5 8.25 11.8211 8.25 9.75ZM18.75 9C18.3358 9 18 9.33579 18 9.75V9.7575C18 10.1717 18.3358 10.5075 18.75 10.5075H18.7575C19.1717 10.5075 19.5075 10.1717 19.5075 9.7575V9.75C19.5075 9.33579 19.1717 9 18.7575 9H18.75ZM4.5 9.75C4.5 9.33579 4.83579 9 5.25 9H5.2575C5.67171 9 6.0075 9.33579 6.0075 9.75V9.7575C6.0075 10.1717 5.67171 10.5075 5.2575 10.5075H5.25C4.83579 10.5075 4.5 10.1717 4.5 9.7575V9.75Z" fill="#0F172A"/>
    <path d="M2.25 18C1.83579 18 1.5 18.3358 1.5 18.75C1.5 19.1642 1.83579 19.5 2.25 19.5C7.65005 19.5 12.8802 20.2222 17.8498 21.5749C19.0404 21.899 20.25 21.0168 20.25 19.7551V18.75C20.25 18.3358 19.9142 18 19.5 18H2.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def banknotes(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M12 7.5C10.7574 7.5 9.75 8.50736 9.75 9.75C9.75 10.9926 10.7574 12 12 12C13.2426 12 14.25 10.9926 14.25 9.75C14.25 8.50736 13.2426 7.5 12 7.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.5 4.875C1.5 3.83947 2.33947 3 3.375 3H20.625C21.6605 3 22.5 3.83947 22.5 4.875V14.625C22.5 15.6605 21.6605 16.5 20.625 16.5H3.375C2.33947 16.5 1.5 15.6605 1.5 14.625V4.875ZM8.25 9.75C8.25 7.67893 9.92893 6 12 6C14.0711 6 15.75 7.67893 15.75 9.75C15.75 11.8211 14.0711 13.5 12 13.5C9.92893 13.5 8.25 11.8211 8.25 9.75ZM18.75 9C18.3358 9 18 9.33579 18 9.75V9.7575C18 10.1717 18.3358 10.5075 18.75 10.5075H18.7575C19.1717 10.5075 19.5075 10.1717 19.5075 9.7575V9.75C19.5075 9.33579 19.1717 9 18.7575 9H18.75ZM4.5 9.75C4.5 9.33579 4.83579 9 5.25 9H5.2575C5.67171 9 6.0075 9.33579 6.0075 9.75V9.7575C6.0075 10.1717 5.67171 10.5075 5.2575 10.5075H5.25C4.83579 10.5075 4.5 10.1717 4.5 9.7575V9.75Z\" fill=\"#0F172A\"/>\n<path d=\"M2.25 18C1.83579 18 1.5 18.3358 1.5 18.75C1.5 19.1642 1.83579 19.5 2.25 19.5C7.65005 19.5 12.8802 20.2222 17.8498 21.5749C19.0404 21.899 20.25 21.0168 20.25 19.7551V18.75C20.25 18.3358 19.9142 18 19.5 18H2.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-2.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_2 />

      <.bars_2 class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_2() %>

      <%= bars_2(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_2(assigns_or_opts \\ [])

  def bars_2(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 9C3 8.58579 3.33579 8.25 3.75 8.25H20.25C20.6642 8.25 21 8.58579 21 9C21 9.41421 20.6642 9.75 20.25 9.75H3.75C3.33579 9.75 3 9.41421 3 9ZM3 15.75C3 15.3358 3.33579 15 3.75 15H20.25C20.6642 15 21 15.3358 21 15.75C21 16.1642 20.6642 16.5 20.25 16.5H3.75C3.33579 16.5 3 16.1642 3 15.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bars_2(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 9C3 8.58579 3.33579 8.25 3.75 8.25H20.25C20.6642 8.25 21 8.58579 21 9C21 9.41421 20.6642 9.75 20.25 9.75H3.75C3.33579 9.75 3 9.41421 3 9ZM3 15.75C3 15.3358 3.33579 15 3.75 15H20.25C20.6642 15 21 15.3358 21 15.75C21 16.1642 20.6642 16.5 20.25 16.5H3.75C3.33579 16.5 3 16.1642 3 15.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-3-bottom-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_3_bottom_left />

      <.bars_3_bottom_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_3_bottom_left() %>

      <%= bars_3_bottom_left(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_3_bottom_left(assigns_or_opts \\ [])

  def bars_3_bottom_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 6.75C3 6.33579 3.33579 6 3.75 6H20.25C20.6642 6 21 6.33579 21 6.75C21 7.16421 20.6642 7.5 20.25 7.5H3.75C3.33579 7.5 3 7.16421 3 6.75ZM3 12C3 11.5858 3.33579 11.25 3.75 11.25H20.25C20.6642 11.25 21 11.5858 21 12C21 12.4142 20.6642 12.75 20.25 12.75H3.75C3.33579 12.75 3 12.4142 3 12ZM3 17.25C3 16.8358 3.33579 16.5 3.75 16.5H12C12.4142 16.5 12.75 16.8358 12.75 17.25C12.75 17.6642 12.4142 18 12 18H3.75C3.33579 18 3 17.6642 3 17.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bars_3_bottom_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 6.75C3 6.33579 3.33579 6 3.75 6H20.25C20.6642 6 21 6.33579 21 6.75C21 7.16421 20.6642 7.5 20.25 7.5H3.75C3.33579 7.5 3 7.16421 3 6.75ZM3 12C3 11.5858 3.33579 11.25 3.75 11.25H20.25C20.6642 11.25 21 11.5858 21 12C21 12.4142 20.6642 12.75 20.25 12.75H3.75C3.33579 12.75 3 12.4142 3 12ZM3 17.25C3 16.8358 3.33579 16.5 3.75 16.5H12C12.4142 16.5 12.75 16.8358 12.75 17.25C12.75 17.6642 12.4142 18 12 18H3.75C3.33579 18 3 17.6642 3 17.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-3-bottom-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_3_bottom_right />

      <.bars_3_bottom_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_3_bottom_right() %>

      <%= bars_3_bottom_right(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_3_bottom_right(assigns_or_opts \\ [])

  def bars_3_bottom_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 6.75C3 6.33579 3.33579 6 3.75 6H20.25C20.6642 6 21 6.33579 21 6.75C21 7.16421 20.6642 7.5 20.25 7.5H3.75C3.33579 7.5 3 7.16421 3 6.75ZM3 12C3 11.5858 3.33579 11.25 3.75 11.25H20.25C20.6642 11.25 21 11.5858 21 12C21 12.4142 20.6642 12.75 20.25 12.75H3.75C3.33579 12.75 3 12.4142 3 12ZM11.25 17.25C11.25 16.8358 11.5858 16.5 12 16.5H20.25C20.6642 16.5 21 16.8358 21 17.25C21 17.6642 20.6642 18 20.25 18H12C11.5858 18 11.25 17.6642 11.25 17.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bars_3_bottom_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 6.75C3 6.33579 3.33579 6 3.75 6H20.25C20.6642 6 21 6.33579 21 6.75C21 7.16421 20.6642 7.5 20.25 7.5H3.75C3.33579 7.5 3 7.16421 3 6.75ZM3 12C3 11.5858 3.33579 11.25 3.75 11.25H20.25C20.6642 11.25 21 11.5858 21 12C21 12.4142 20.6642 12.75 20.25 12.75H3.75C3.33579 12.75 3 12.4142 3 12ZM11.25 17.25C11.25 16.8358 11.5858 16.5 12 16.5H20.25C20.6642 16.5 21 16.8358 21 17.25C21 17.6642 20.6642 18 20.25 18H12C11.5858 18 11.25 17.6642 11.25 17.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-3-center-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_3_center_left />

      <.bars_3_center_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_3_center_left() %>

      <%= bars_3_center_left(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_3_center_left(assigns_or_opts \\ [])

  def bars_3_center_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 6.75C3 6.33579 3.33579 6 3.75 6H20.25C20.6642 6 21 6.33579 21 6.75C21 7.16421 20.6642 7.5 20.25 7.5H3.75C3.33579 7.5 3 7.16421 3 6.75ZM3 12C3 11.5858 3.33579 11.25 3.75 11.25H12C12.4142 11.25 12.75 11.5858 12.75 12C12.75 12.4142 12.4142 12.75 12 12.75H3.75C3.33579 12.75 3 12.4142 3 12ZM3 17.25C3 16.8358 3.33579 16.5 3.75 16.5H20.25C20.6642 16.5 21 16.8358 21 17.25C21 17.6642 20.6642 18 20.25 18H3.75C3.33579 18 3 17.6642 3 17.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bars_3_center_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 6.75C3 6.33579 3.33579 6 3.75 6H20.25C20.6642 6 21 6.33579 21 6.75C21 7.16421 20.6642 7.5 20.25 7.5H3.75C3.33579 7.5 3 7.16421 3 6.75ZM3 12C3 11.5858 3.33579 11.25 3.75 11.25H12C12.4142 11.25 12.75 11.5858 12.75 12C12.75 12.4142 12.4142 12.75 12 12.75H3.75C3.33579 12.75 3 12.4142 3 12ZM3 17.25C3 16.8358 3.33579 16.5 3.75 16.5H20.25C20.6642 16.5 21 16.8358 21 17.25C21 17.6642 20.6642 18 20.25 18H3.75C3.33579 18 3 17.6642 3 17.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-3.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_3 />

      <.bars_3 class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_3() %>

      <%= bars_3(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_3(assigns_or_opts \\ [])

  def bars_3(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 6.75C3 6.33579 3.33579 6 3.75 6H20.25C20.6642 6 21 6.33579 21 6.75C21 7.16421 20.6642 7.5 20.25 7.5H3.75C3.33579 7.5 3 7.16421 3 6.75ZM3 12C3 11.5858 3.33579 11.25 3.75 11.25H20.25C20.6642 11.25 21 11.5858 21 12C21 12.4142 20.6642 12.75 20.25 12.75H3.75C3.33579 12.75 3 12.4142 3 12ZM3 17.25C3 16.8358 3.33579 16.5 3.75 16.5H20.25C20.6642 16.5 21 16.8358 21 17.25C21 17.6642 20.6642 18 20.25 18H3.75C3.33579 18 3 17.6642 3 17.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bars_3(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 6.75C3 6.33579 3.33579 6 3.75 6H20.25C20.6642 6 21 6.33579 21 6.75C21 7.16421 20.6642 7.5 20.25 7.5H3.75C3.33579 7.5 3 7.16421 3 6.75ZM3 12C3 11.5858 3.33579 11.25 3.75 11.25H20.25C20.6642 11.25 21 11.5858 21 12C21 12.4142 20.6642 12.75 20.25 12.75H3.75C3.33579 12.75 3 12.4142 3 12ZM3 17.25C3 16.8358 3.33579 16.5 3.75 16.5H20.25C20.6642 16.5 21 16.8358 21 17.25C21 17.6642 20.6642 18 20.25 18H3.75C3.33579 18 3 17.6642 3 17.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-4.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_4 />

      <.bars_4 class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_4() %>

      <%= bars_4(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_4(assigns_or_opts \\ [])

  def bars_4(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 5.25C3 4.83579 3.33579 4.5 3.75 4.5H20.25C20.6642 4.5 21 4.83579 21 5.25C21 5.66421 20.6642 6 20.25 6H3.75C3.33579 6 3 5.66421 3 5.25ZM3 9.75C3 9.33579 3.33579 9 3.75 9H20.25C20.6642 9 21 9.33579 21 9.75C21 10.1642 20.6642 10.5 20.25 10.5H3.75C3.33579 10.5 3 10.1642 3 9.75ZM3 14.25C3 13.8358 3.33579 13.5 3.75 13.5H20.25C20.6642 13.5 21 13.8358 21 14.25C21 14.6642 20.6642 15 20.25 15H3.75C3.33579 15 3 14.6642 3 14.25ZM3 18.75C3 18.3358 3.33579 18 3.75 18H20.25C20.6642 18 21 18.3358 21 18.75C21 19.1642 20.6642 19.5 20.25 19.5H3.75C3.33579 19.5 3 19.1642 3 18.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bars_4(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 5.25C3 4.83579 3.33579 4.5 3.75 4.5H20.25C20.6642 4.5 21 4.83579 21 5.25C21 5.66421 20.6642 6 20.25 6H3.75C3.33579 6 3 5.66421 3 5.25ZM3 9.75C3 9.33579 3.33579 9 3.75 9H20.25C20.6642 9 21 9.33579 21 9.75C21 10.1642 20.6642 10.5 20.25 10.5H3.75C3.33579 10.5 3 10.1642 3 9.75ZM3 14.25C3 13.8358 3.33579 13.5 3.75 13.5H20.25C20.6642 13.5 21 13.8358 21 14.25C21 14.6642 20.6642 15 20.25 15H3.75C3.33579 15 3 14.6642 3 14.25ZM3 18.75C3 18.3358 3.33579 18 3.75 18H20.25C20.6642 18 21 18.3358 21 18.75C21 19.1642 20.6642 19.5 20.25 19.5H3.75C3.33579 19.5 3 19.1642 3 18.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_arrow_down />

      <.bars_arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_arrow_down() %>

      <%= bars_arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_arrow_down(assigns_or_opts \\ [])

  def bars_arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 4.5C2.25 4.08579 2.58579 3.75 3 3.75H17.25C17.6642 3.75 18 4.08579 18 4.5C18 4.91421 17.6642 5.25 17.25 5.25H3C2.58579 5.25 2.25 4.91421 2.25 4.5ZM2.25 9C2.25 8.58579 2.58579 8.25 3 8.25H12.75C13.1642 8.25 13.5 8.58579 13.5 9C13.5 9.41421 13.1642 9.75 12.75 9.75H3C2.58579 9.75 2.25 9.41421 2.25 9ZM17.25 8.25C17.6642 8.25 18 8.58579 18 9V19.1893L20.4697 16.7197C20.7626 16.4268 21.2374 16.4268 21.5303 16.7197C21.8232 17.0126 21.8232 17.4874 21.5303 17.7803L17.7803 21.5303C17.4874 21.8232 17.0126 21.8232 16.7197 21.5303L12.9697 17.7803C12.6768 17.4874 12.6768 17.0126 12.9697 16.7197C13.2626 16.4268 13.7374 16.4268 14.0303 16.7197L16.5 19.1893V9C16.5 8.58579 16.8358 8.25 17.25 8.25ZM2.25 13.5C2.25 13.0858 2.58579 12.75 3 12.75H12.75C13.1642 12.75 13.5 13.0858 13.5 13.5C13.5 13.9142 13.1642 14.25 12.75 14.25H3C2.58579 14.25 2.25 13.9142 2.25 13.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bars_arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.25 4.5C2.25 4.08579 2.58579 3.75 3 3.75H17.25C17.6642 3.75 18 4.08579 18 4.5C18 4.91421 17.6642 5.25 17.25 5.25H3C2.58579 5.25 2.25 4.91421 2.25 4.5ZM2.25 9C2.25 8.58579 2.58579 8.25 3 8.25H12.75C13.1642 8.25 13.5 8.58579 13.5 9C13.5 9.41421 13.1642 9.75 12.75 9.75H3C2.58579 9.75 2.25 9.41421 2.25 9ZM17.25 8.25C17.6642 8.25 18 8.58579 18 9V19.1893L20.4697 16.7197C20.7626 16.4268 21.2374 16.4268 21.5303 16.7197C21.8232 17.0126 21.8232 17.4874 21.5303 17.7803L17.7803 21.5303C17.4874 21.8232 17.0126 21.8232 16.7197 21.5303L12.9697 17.7803C12.6768 17.4874 12.6768 17.0126 12.9697 16.7197C13.2626 16.4268 13.7374 16.4268 14.0303 16.7197L16.5 19.1893V9C16.5 8.58579 16.8358 8.25 17.25 8.25ZM2.25 13.5C2.25 13.0858 2.58579 12.75 3 12.75H12.75C13.1642 12.75 13.5 13.0858 13.5 13.5C13.5 13.9142 13.1642 14.25 12.75 14.25H3C2.58579 14.25 2.25 13.9142 2.25 13.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bars-arrow-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bars_arrow_up />

      <.bars_arrow_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bars_arrow_up() %>

      <%= bars_arrow_up(class: "h-6 w-6 text-gray-500") %>
  """
  def bars_arrow_up(assigns_or_opts \\ [])

  def bars_arrow_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 4.5C2.25 4.08579 2.58579 3.75 3 3.75H17.25C17.6642 3.75 18 4.08579 18 4.5C18 4.91421 17.6642 5.25 17.25 5.25H3C2.58579 5.25 2.25 4.91421 2.25 4.5ZM16.7197 8.46967C17.0126 8.17678 17.4874 8.17678 17.7803 8.46967L21.5303 12.2197C21.8232 12.5126 21.8232 12.9874 21.5303 13.2803C21.2374 13.5732 20.7626 13.5732 20.4697 13.2803L18 10.8107L18 21C18 21.4142 17.6642 21.75 17.25 21.75C16.8358 21.75 16.5 21.4142 16.5 21L16.5 10.8107L14.0303 13.2803C13.7374 13.5732 13.2626 13.5732 12.9697 13.2803C12.6768 12.9874 12.6768 12.5126 12.9697 12.2197L16.7197 8.46967ZM2.25 9C2.25 8.58579 2.58579 8.25 3 8.25H12.75C13.1642 8.25 13.5 8.58579 13.5 9C13.5 9.41421 13.1642 9.75 12.75 9.75H3C2.58579 9.75 2.25 9.41421 2.25 9ZM2.25 13.5C2.25 13.0858 2.58579 12.75 3 12.75H8.25C8.66421 12.75 9 13.0858 9 13.5C9 13.9142 8.66421 14.25 8.25 14.25H3C2.58579 14.25 2.25 13.9142 2.25 13.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bars_arrow_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.25 4.5C2.25 4.08579 2.58579 3.75 3 3.75H17.25C17.6642 3.75 18 4.08579 18 4.5C18 4.91421 17.6642 5.25 17.25 5.25H3C2.58579 5.25 2.25 4.91421 2.25 4.5ZM16.7197 8.46967C17.0126 8.17678 17.4874 8.17678 17.7803 8.46967L21.5303 12.2197C21.8232 12.5126 21.8232 12.9874 21.5303 13.2803C21.2374 13.5732 20.7626 13.5732 20.4697 13.2803L18 10.8107L18 21C18 21.4142 17.6642 21.75 17.25 21.75C16.8358 21.75 16.5 21.4142 16.5 21L16.5 10.8107L14.0303 13.2803C13.7374 13.5732 13.2626 13.5732 12.9697 13.2803C12.6768 12.9874 12.6768 12.5126 12.9697 12.2197L16.7197 8.46967ZM2.25 9C2.25 8.58579 2.58579 8.25 3 8.25H12.75C13.1642 8.25 13.5 8.58579 13.5 9C13.5 9.41421 13.1642 9.75 12.75 9.75H3C2.58579 9.75 2.25 9.41421 2.25 9ZM2.25 13.5C2.25 13.0858 2.58579 12.75 3 12.75H8.25C8.66421 12.75 9 13.0858 9 13.5C9 13.9142 8.66421 14.25 8.25 14.25H3C2.58579 14.25 2.25 13.9142 2.25 13.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/beaker.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.beaker />

      <.beaker class="h-6 w-6 text-gray-500" />

  or as a function

      <%= beaker() %>

      <%= beaker(class: "h-6 w-6 text-gray-500") %>
  """
  def beaker(assigns_or_opts \\ [])

  def beaker(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.5 3.79758V8.81802C10.5 9.61367 10.1839 10.3767 9.62131 10.9393L7.24427 13.3164C8.99161 13.192 10.7578 13.5404 12.3354 14.3292C14.0988 15.2109 16.1395 15.442 18.048 14.9649L18.333 14.8937L14.3787 10.9393C13.8161 10.3767 13.5 9.61367 13.5 8.81802V3.79758C13.0041 3.76602 12.504 3.75 12 3.75C11.496 3.75 10.9958 3.76602 10.5 3.79758ZM15 3.93576C15.3732 3.93623 15.6969 3.65833 15.7442 3.27849C15.7955 2.86745 15.5038 2.4927 15.0928 2.44144C14.8362 2.40945 14.5784 2.38138 14.3194 2.3573C13.5556 2.28628 12.7819 2.25 12 2.25C11.218 2.25 10.4444 2.28628 9.68055 2.3573C9.4216 2.38138 9.16378 2.40945 8.90718 2.44144C8.49615 2.4927 8.2045 2.86746 8.25575 3.27849C8.30312 3.65833 8.62676 3.93623 8.99999 3.93576V8.81802C8.99999 9.21584 8.84195 9.59738 8.56065 9.87868L2.26745 16.1719C0.646313 17.793 1.36446 20.6474 3.73836 21.0527C6.42419 21.5112 9.1845 21.75 12 21.75C14.8155 21.75 17.5758 21.5112 20.2616 21.0527C22.6355 20.6474 23.3537 17.793 21.7325 16.1719L15.4393 9.87868C15.158 9.59738 15 9.21584 15 8.81802V3.93576Z" fill="#0F172A"/>
    </svg>
    """
  end

  def beaker(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.5 3.79758V8.81802C10.5 9.61367 10.1839 10.3767 9.62131 10.9393L7.24427 13.3164C8.99161 13.192 10.7578 13.5404 12.3354 14.3292C14.0988 15.2109 16.1395 15.442 18.048 14.9649L18.333 14.8937L14.3787 10.9393C13.8161 10.3767 13.5 9.61367 13.5 8.81802V3.79758C13.0041 3.76602 12.504 3.75 12 3.75C11.496 3.75 10.9958 3.76602 10.5 3.79758ZM15 3.93576C15.3732 3.93623 15.6969 3.65833 15.7442 3.27849C15.7955 2.86745 15.5038 2.4927 15.0928 2.44144C14.8362 2.40945 14.5784 2.38138 14.3194 2.3573C13.5556 2.28628 12.7819 2.25 12 2.25C11.218 2.25 10.4444 2.28628 9.68055 2.3573C9.4216 2.38138 9.16378 2.40945 8.90718 2.44144C8.49615 2.4927 8.2045 2.86746 8.25575 3.27849C8.30312 3.65833 8.62676 3.93623 8.99999 3.93576V8.81802C8.99999 9.21584 8.84195 9.59738 8.56065 9.87868L2.26745 16.1719C0.646313 17.793 1.36446 20.6474 3.73836 21.0527C6.42419 21.5112 9.1845 21.75 12 21.75C14.8155 21.75 17.5758 21.5112 20.2616 21.0527C22.6355 20.6474 23.3537 17.793 21.7325 16.1719L15.4393 9.87868C15.158 9.59738 15 9.21584 15 8.81802V3.93576Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bell-alert.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bell_alert />

      <.bell_alert class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bell_alert() %>

      <%= bell_alert(class: "h-6 w-6 text-gray-500") %>
  """
  def bell_alert(assigns_or_opts \\ [])

  def bell_alert(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M5.85036 3.50019C6.1266 3.19155 6.10034 2.7174 5.79169 2.44116C5.48305 2.16491 5.0089 2.19118 4.73266 2.49982C3.5317 3.84163 2.69605 5.51948 2.3846 7.37592C2.31607 7.78442 2.59167 8.17114 3.00017 8.23967C3.40868 8.3082 3.79539 8.0326 3.86393 7.6241C4.12704 6.05581 4.83301 4.63686 5.85036 3.50019Z" fill="#0F172A"/>
    <path d="M19.267 2.49982C18.9908 2.19118 18.5166 2.16491 18.208 2.44116C17.8993 2.7174 17.873 3.19155 18.1493 3.50019C19.1666 4.63686 19.8726 6.05581 20.1357 7.6241C20.2043 8.0326 20.591 8.3082 20.9995 8.23967C21.408 8.17114 21.6836 7.78442 21.6151 7.37592C21.3036 5.51948 20.4679 3.84163 19.267 2.49982Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C8.27216 2.25 5.25012 5.27197 5.25001 8.9998L5.24981 9.75C5.24981 11.8731 4.4488 13.8074 3.13126 15.2699C2.96476 15.4547 2.90073 15.71 2.96033 15.9516C3.01992 16.1931 3.19539 16.3893 3.42875 16.4755C4.97287 17.0455 6.58934 17.4659 8.2604 17.7192C8.25351 17.812 8.25001 17.9056 8.25001 18C8.25001 20.0711 9.92894 21.75 12 21.75C14.0711 21.75 15.75 20.0711 15.75 18C15.75 17.9056 15.7465 17.812 15.7396 17.7192C17.4105 17.4659 19.0269 17.0455 20.5709 16.4755C20.8042 16.3893 20.9797 16.1931 21.0393 15.9516C21.0989 15.71 21.0349 15.4547 20.8684 15.2699C19.5508 13.8074 18.7498 11.8731 18.7498 9.75V9.04919L18.75 9C18.75 5.27208 15.7279 2.25 12 2.25ZM9.75001 18C9.75001 17.9662 9.75075 17.9326 9.75221 17.8993C10.4927 17.966 11.2424 18 11.9998 18C12.7574 18 13.5072 17.9659 14.2478 17.8992C14.2493 17.9326 14.25 17.9662 14.25 18C14.25 19.2426 13.2427 20.25 12 20.25C10.7574 20.25 9.75001 19.2426 9.75001 18Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bell_alert(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.85036 3.50019C6.1266 3.19155 6.10034 2.7174 5.79169 2.44116C5.48305 2.16491 5.0089 2.19118 4.73266 2.49982C3.5317 3.84163 2.69605 5.51948 2.3846 7.37592C2.31607 7.78442 2.59167 8.17114 3.00017 8.23967C3.40868 8.3082 3.79539 8.0326 3.86393 7.6241C4.12704 6.05581 4.83301 4.63686 5.85036 3.50019Z\" fill=\"#0F172A\"/>\n<path d=\"M19.267 2.49982C18.9908 2.19118 18.5166 2.16491 18.208 2.44116C17.8993 2.7174 17.873 3.19155 18.1493 3.50019C19.1666 4.63686 19.8726 6.05581 20.1357 7.6241C20.2043 8.0326 20.591 8.3082 20.9995 8.23967C21.408 8.17114 21.6836 7.78442 21.6151 7.37592C21.3036 5.51948 20.4679 3.84163 19.267 2.49982Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C8.27216 2.25 5.25012 5.27197 5.25001 8.9998L5.24981 9.75C5.24981 11.8731 4.4488 13.8074 3.13126 15.2699C2.96476 15.4547 2.90073 15.71 2.96033 15.9516C3.01992 16.1931 3.19539 16.3893 3.42875 16.4755C4.97287 17.0455 6.58934 17.4659 8.2604 17.7192C8.25351 17.812 8.25001 17.9056 8.25001 18C8.25001 20.0711 9.92894 21.75 12 21.75C14.0711 21.75 15.75 20.0711 15.75 18C15.75 17.9056 15.7465 17.812 15.7396 17.7192C17.4105 17.4659 19.0269 17.0455 20.5709 16.4755C20.8042 16.3893 20.9797 16.1931 21.0393 15.9516C21.0989 15.71 21.0349 15.4547 20.8684 15.2699C19.5508 13.8074 18.7498 11.8731 18.7498 9.75V9.04919L18.75 9C18.75 5.27208 15.7279 2.25 12 2.25ZM9.75001 18C9.75001 17.9662 9.75075 17.9326 9.75221 17.8993C10.4927 17.966 11.2424 18 11.9998 18C12.7574 18 13.5072 17.9659 14.2478 17.8992C14.2493 17.9326 14.25 17.9662 14.25 18C14.25 19.2426 13.2427 20.25 12 20.25C10.7574 20.25 9.75001 19.2426 9.75001 18Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bell-slash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bell_slash />

      <.bell_slash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bell_slash() %>

      <%= bell_slash(class: "h-6 w-6 text-gray-500") %>
  """
  def bell_slash(assigns_or_opts \\ [])

  def bell_slash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.53033 2.46967C3.23744 2.17678 2.76256 2.17678 2.46967 2.46967C2.17678 2.76256 2.17678 3.23744 2.46967 3.53033L20.4697 21.5303C20.7626 21.8232 21.2374 21.8232 21.5303 21.5303C21.8232 21.2374 21.8232 20.7626 21.5303 20.4697L3.53033 2.46967Z" fill="#0F172A"/>
    <path d="M20.5709 16.4755C20.3473 16.558 20.1222 16.6374 19.8956 16.7136L7.31889 4.13691C8.53246 2.96847 10.1823 2.25 12 2.25C15.7279 2.25 18.75 5.27208 18.75 9L18.7498 9.04919V9.75C18.7498 11.8731 19.5508 13.8074 20.8684 15.2699C21.0349 15.4547 21.0989 15.71 21.0393 15.9516C20.9797 16.1931 20.8042 16.3893 20.5709 16.4755Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.25001 8.9998C5.25002 8.81598 5.25737 8.63388 5.27179 8.45377L15.656 18.838C15.2754 20.5056 13.783 21.75 12 21.75C9.92894 21.75 8.25001 20.0711 8.25001 18C8.25001 17.9056 8.25351 17.812 8.2604 17.7192C6.58934 17.4659 4.97287 17.0455 3.42875 16.4755C3.19539 16.3893 3.01992 16.1931 2.96033 15.9516C2.90073 15.71 2.96476 15.4547 3.13126 15.2699C4.4488 13.8074 5.24981 11.8731 5.24981 9.75L5.25001 8.9998ZM9.75221 17.8993C9.75075 17.9326 9.75001 17.9662 9.75001 18C9.75001 19.2426 10.7574 20.25 12 20.25C13.2427 20.25 14.25 19.2426 14.25 18C14.25 17.9662 14.2493 17.9326 14.2478 17.8992C13.5072 17.9659 12.7574 18 11.9998 18C11.2424 18 10.4927 17.966 9.75221 17.8993Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bell_slash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.53033 2.46967C3.23744 2.17678 2.76256 2.17678 2.46967 2.46967C2.17678 2.76256 2.17678 3.23744 2.46967 3.53033L20.4697 21.5303C20.7626 21.8232 21.2374 21.8232 21.5303 21.5303C21.8232 21.2374 21.8232 20.7626 21.5303 20.4697L3.53033 2.46967Z\" fill=\"#0F172A\"/>\n<path d=\"M20.5709 16.4755C20.3473 16.558 20.1222 16.6374 19.8956 16.7136L7.31889 4.13691C8.53246 2.96847 10.1823 2.25 12 2.25C15.7279 2.25 18.75 5.27208 18.75 9L18.7498 9.04919V9.75C18.7498 11.8731 19.5508 13.8074 20.8684 15.2699C21.0349 15.4547 21.0989 15.71 21.0393 15.9516C20.9797 16.1931 20.8042 16.3893 20.5709 16.4755Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.25001 8.9998C5.25002 8.81598 5.25737 8.63388 5.27179 8.45377L15.656 18.838C15.2754 20.5056 13.783 21.75 12 21.75C9.92894 21.75 8.25001 20.0711 8.25001 18C8.25001 17.9056 8.25351 17.812 8.2604 17.7192C6.58934 17.4659 4.97287 17.0455 3.42875 16.4755C3.19539 16.3893 3.01992 16.1931 2.96033 15.9516C2.90073 15.71 2.96476 15.4547 3.13126 15.2699C4.4488 13.8074 5.24981 11.8731 5.24981 9.75L5.25001 8.9998ZM9.75221 17.8993C9.75075 17.9326 9.75001 17.9662 9.75001 18C9.75001 19.2426 10.7574 20.25 12 20.25C13.2427 20.25 14.25 19.2426 14.25 18C14.25 17.9662 14.2493 17.9326 14.2478 17.8992C13.5072 17.9659 12.7574 18 11.9998 18C11.2424 18 10.4927 17.966 9.75221 17.8993Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bell-snooze.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bell_snooze />

      <.bell_snooze class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bell_snooze() %>

      <%= bell_snooze(class: "h-6 w-6 text-gray-500") %>
  """
  def bell_snooze(assigns_or_opts \\ [])

  def bell_snooze(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C8.27216 2.25 5.25012 5.27197 5.25001 8.9998L5.24981 9.75C5.24981 11.8731 4.44879 13.8074 3.13126 15.2699C2.96476 15.4547 2.90073 15.71 2.96033 15.9516C3.01992 16.1931 3.19539 16.3893 3.42875 16.4755C4.97287 17.0455 6.58934 17.4659 8.2604 17.7192C8.25351 17.812 8.25001 17.9056 8.25001 18C8.25001 20.0711 9.92894 21.75 12 21.75C14.0711 21.75 15.75 20.0711 15.75 18C15.75 17.9056 15.7465 17.812 15.7396 17.7192C17.4105 17.4659 19.0269 17.0455 20.5709 16.4755C20.8042 16.3893 20.9797 16.1931 21.0393 15.9516C21.0989 15.71 21.0349 15.4547 20.8684 15.2699C19.5508 13.8074 18.7498 11.8731 18.7498 9.75V9.04919L18.75 9C18.75 5.27208 15.7279 2.25 12 2.25ZM9.75001 18C9.75001 17.9662 9.75075 17.9326 9.75221 17.8993C10.4927 17.966 11.2424 18 11.9998 18C12.7574 18 13.5072 17.9659 14.2478 17.8992C14.2493 17.9326 14.25 17.9662 14.25 18C14.25 19.2426 13.2427 20.25 12 20.25C10.7574 20.25 9.75001 19.2426 9.75001 18ZM10.5 7.5C10.0858 7.5 9.75 7.83579 9.75 8.25C9.75 8.66421 10.0858 9 10.5 9H12.0986L9.87596 12.334C9.72253 12.5641 9.70823 12.86 9.83874 13.1039C9.96926 13.3478 10.2234 13.5 10.5 13.5H13.5C13.9142 13.5 14.25 13.1642 14.25 12.75C14.25 12.3358 13.9142 12 13.5 12H11.9014L14.124 8.66602C14.2775 8.43588 14.2918 8.13997 14.1613 7.89611C14.0307 7.65224 13.7766 7.5 13.5 7.5H10.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bell_snooze(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C8.27216 2.25 5.25012 5.27197 5.25001 8.9998L5.24981 9.75C5.24981 11.8731 4.44879 13.8074 3.13126 15.2699C2.96476 15.4547 2.90073 15.71 2.96033 15.9516C3.01992 16.1931 3.19539 16.3893 3.42875 16.4755C4.97287 17.0455 6.58934 17.4659 8.2604 17.7192C8.25351 17.812 8.25001 17.9056 8.25001 18C8.25001 20.0711 9.92894 21.75 12 21.75C14.0711 21.75 15.75 20.0711 15.75 18C15.75 17.9056 15.7465 17.812 15.7396 17.7192C17.4105 17.4659 19.0269 17.0455 20.5709 16.4755C20.8042 16.3893 20.9797 16.1931 21.0393 15.9516C21.0989 15.71 21.0349 15.4547 20.8684 15.2699C19.5508 13.8074 18.7498 11.8731 18.7498 9.75V9.04919L18.75 9C18.75 5.27208 15.7279 2.25 12 2.25ZM9.75001 18C9.75001 17.9662 9.75075 17.9326 9.75221 17.8993C10.4927 17.966 11.2424 18 11.9998 18C12.7574 18 13.5072 17.9659 14.2478 17.8992C14.2493 17.9326 14.25 17.9662 14.25 18C14.25 19.2426 13.2427 20.25 12 20.25C10.7574 20.25 9.75001 19.2426 9.75001 18ZM10.5 7.5C10.0858 7.5 9.75 7.83579 9.75 8.25C9.75 8.66421 10.0858 9 10.5 9H12.0986L9.87596 12.334C9.72253 12.5641 9.70823 12.86 9.83874 13.1039C9.96926 13.3478 10.2234 13.5 10.5 13.5H13.5C13.9142 13.5 14.25 13.1642 14.25 12.75C14.25 12.3358 13.9142 12 13.5 12H11.9014L14.124 8.66602C14.2775 8.43588 14.2918 8.13997 14.1613 7.89611C14.0307 7.65224 13.7766 7.5 13.5 7.5H10.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bell.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bell />

      <.bell class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bell() %>

      <%= bell(class: "h-6 w-6 text-gray-500") %>
  """
  def bell(assigns_or_opts \\ [])

  def bell(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.25001 8.9998C5.25012 5.27197 8.27216 2.25 12 2.25C15.7279 2.25 18.75 5.27208 18.75 9L18.7498 9.04919V9.75C18.7498 11.8731 19.5508 13.8074 20.8684 15.2699C21.0349 15.4547 21.0989 15.71 21.0393 15.9516C20.9797 16.1931 20.8042 16.3893 20.5709 16.4755C19.0269 17.0455 17.4105 17.4659 15.7396 17.7192C15.7465 17.812 15.75 17.9056 15.75 18C15.75 20.0711 14.0711 21.75 12 21.75C9.92894 21.75 8.25001 20.0711 8.25001 18C8.25001 17.9056 8.25351 17.812 8.2604 17.7192C6.58934 17.4659 4.97287 17.0455 3.42875 16.4755C3.19539 16.3893 3.01992 16.1931 2.96033 15.9516C2.90073 15.71 2.96476 15.4547 3.13126 15.2699C4.44879 13.8074 5.24981 11.8731 5.24981 9.75L5.25001 8.9998ZM9.75221 17.8993C9.75075 17.9326 9.75001 17.9662 9.75001 18C9.75001 19.2426 10.7574 20.25 12 20.25C13.2427 20.25 14.25 19.2426 14.25 18C14.25 17.9662 14.2493 17.9326 14.2478 17.8992C13.5072 17.9659 12.7574 18 11.9998 18C11.2424 18 10.4927 17.966 9.75221 17.8993Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bell(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.25001 8.9998C5.25012 5.27197 8.27216 2.25 12 2.25C15.7279 2.25 18.75 5.27208 18.75 9L18.7498 9.04919V9.75C18.7498 11.8731 19.5508 13.8074 20.8684 15.2699C21.0349 15.4547 21.0989 15.71 21.0393 15.9516C20.9797 16.1931 20.8042 16.3893 20.5709 16.4755C19.0269 17.0455 17.4105 17.4659 15.7396 17.7192C15.7465 17.812 15.75 17.9056 15.75 18C15.75 20.0711 14.0711 21.75 12 21.75C9.92894 21.75 8.25001 20.0711 8.25001 18C8.25001 17.9056 8.25351 17.812 8.2604 17.7192C6.58934 17.4659 4.97287 17.0455 3.42875 16.4755C3.19539 16.3893 3.01992 16.1931 2.96033 15.9516C2.90073 15.71 2.96476 15.4547 3.13126 15.2699C4.44879 13.8074 5.24981 11.8731 5.24981 9.75L5.25001 8.9998ZM9.75221 17.8993C9.75075 17.9326 9.75001 17.9662 9.75001 18C9.75001 19.2426 10.7574 20.25 12 20.25C13.2427 20.25 14.25 19.2426 14.25 18C14.25 17.9662 14.2493 17.9326 14.2478 17.8992C13.5072 17.9659 12.7574 18 11.9998 18C11.2424 18 10.4927 17.966 9.75221 17.8993Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bolt-slash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bolt_slash />

      <.bolt_slash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bolt_slash() %>

      <%= bolt_slash(class: "h-6 w-6 text-gray-500") %>
  """
  def bolt_slash(assigns_or_opts \\ [])

  def bolt_slash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M20.7983 11.0118L17.6099 14.4279L9.4624 6.28042L13.7017 1.73829C13.937 1.48615 14.314 1.42701 14.6152 1.59495C14.9165 1.76289 15.0643 2.11463 14.9736 2.44736L12.982 9.75003H20.25C20.5487 9.75003 20.8189 9.92721 20.9379 10.2011C21.0569 10.475 21.0021 10.7934 20.7983 11.0118Z" fill="#0F172A"/>
    <path d="M3.20173 12.9883L6.39014 9.57212L14.5376 17.7196L10.2983 22.2618C10.063 22.5139 9.68604 22.573 9.38481 22.4051C9.08357 22.2372 8.9357 21.8854 9.02644 21.5527L11.0181 14.25H3.75002C3.45137 14.25 3.18118 14.0728 3.06216 13.7989C2.94313 13.525 2.99795 13.2066 3.20173 12.9883Z" fill="#0F172A"/>
    <path d="M3.53033 2.46967C3.23744 2.17678 2.76256 2.17678 2.46967 2.46967C2.17678 2.76256 2.17678 3.23744 2.46967 3.53033L20.4697 21.5303C20.7626 21.8232 21.2374 21.8232 21.5303 21.5303C21.8232 21.2374 21.8232 20.7626 21.5303 20.4697L3.53033 2.46967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bolt_slash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M20.7983 11.0118L17.6099 14.4279L9.4624 6.28042L13.7017 1.73829C13.937 1.48615 14.314 1.42701 14.6152 1.59495C14.9165 1.76289 15.0643 2.11463 14.9736 2.44736L12.982 9.75003H20.25C20.5487 9.75003 20.8189 9.92721 20.9379 10.2011C21.0569 10.475 21.0021 10.7934 20.7983 11.0118Z\" fill=\"#0F172A\"/>\n<path d=\"M3.20173 12.9883L6.39014 9.57212L14.5376 17.7196L10.2983 22.2618C10.063 22.5139 9.68604 22.573 9.38481 22.4051C9.08357 22.2372 8.9357 21.8854 9.02644 21.5527L11.0181 14.25H3.75002C3.45137 14.25 3.18118 14.0728 3.06216 13.7989C2.94313 13.525 2.99795 13.2066 3.20173 12.9883Z\" fill=\"#0F172A\"/>\n<path d=\"M3.53033 2.46967C3.23744 2.17678 2.76256 2.17678 2.46967 2.46967C2.17678 2.76256 2.17678 3.23744 2.46967 3.53033L20.4697 21.5303C20.7626 21.8232 21.2374 21.8232 21.5303 21.5303C21.8232 21.2374 21.8232 20.7626 21.5303 20.4697L3.53033 2.46967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bolt.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bolt />

      <.bolt class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bolt() %>

      <%= bolt(class: "h-6 w-6 text-gray-500") %>
  """
  def bolt(assigns_or_opts \\ [])

  def bolt(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.6152 1.59495C14.9164 1.76289 15.0643 2.11463 14.9736 2.44736L12.9819 9.75003H20.25C20.5486 9.75003 20.8188 9.92721 20.9378 10.2011C21.0569 10.475 21.0021 10.7934 20.7983 11.0118L10.2983 22.2618C10.063 22.5139 9.68601 22.573 9.38478 22.4051C9.08354 22.2372 8.93567 21.8854 9.02641 21.5527L11.018 14.25H3.74999C3.45134 14.25 3.18115 14.0728 3.06213 13.7989C2.9431 13.525 2.99792 13.2066 3.20169 12.9883L13.7017 1.73829C13.937 1.48615 14.314 1.42701 14.6152 1.59495Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bolt(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M14.6152 1.59495C14.9164 1.76289 15.0643 2.11463 14.9736 2.44736L12.9819 9.75003H20.25C20.5486 9.75003 20.8188 9.92721 20.9378 10.2011C21.0569 10.475 21.0021 10.7934 20.7983 11.0118L10.2983 22.2618C10.063 22.5139 9.68601 22.573 9.38478 22.4051C9.08354 22.2372 8.93567 21.8854 9.02641 21.5527L11.018 14.25H3.74999C3.45134 14.25 3.18115 14.0728 3.06213 13.7989C2.9431 13.525 2.99792 13.2066 3.20169 12.9883L13.7017 1.73829C13.937 1.48615 14.314 1.42701 14.6152 1.59495Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/book-open.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.book_open />

      <.book_open class="h-6 w-6 text-gray-500" />

  or as a function

      <%= book_open() %>

      <%= book_open(class: "h-6 w-6 text-gray-500") %>
  """
  def book_open(assigns_or_opts \\ [])

  def book_open(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M11.25 4.53286C9.73455 3.56279 7.93246 3 6 3C4.86178 3 3.76756 3.19535 2.75007 3.55499C2.45037 3.66091 2.25 3.94425 2.25 4.26212V18.5121C2.25 18.7556 2.36818 18.9839 2.56696 19.1245C2.76574 19.265 3.02039 19.3004 3.24993 19.2192C4.10911 18.9156 5.03441 18.75 6 18.75C7.99501 18.75 9.82325 19.4573 11.25 20.6357V4.53286Z" fill="#0F172A"/>
    <path d="M12.75 20.6357C14.1768 19.4573 16.005 18.75 18 18.75C18.9656 18.75 19.8909 18.9156 20.7501 19.2192C20.9796 19.3004 21.2343 19.265 21.433 19.1245C21.6318 18.9839 21.75 18.7556 21.75 18.5121V4.26212C21.75 3.94425 21.5496 3.66091 21.2499 3.55499C20.2324 3.19535 19.1382 3 18 3C16.0675 3 14.2655 3.56279 12.75 4.53286V20.6357Z" fill="#0F172A"/>
    </svg>
    """
  end

  def book_open(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M11.25 4.53286C9.73455 3.56279 7.93246 3 6 3C4.86178 3 3.76756 3.19535 2.75007 3.55499C2.45037 3.66091 2.25 3.94425 2.25 4.26212V18.5121C2.25 18.7556 2.36818 18.9839 2.56696 19.1245C2.76574 19.265 3.02039 19.3004 3.24993 19.2192C4.10911 18.9156 5.03441 18.75 6 18.75C7.99501 18.75 9.82325 19.4573 11.25 20.6357V4.53286Z\" fill=\"#0F172A\"/>\n<path d=\"M12.75 20.6357C14.1768 19.4573 16.005 18.75 18 18.75C18.9656 18.75 19.8909 18.9156 20.7501 19.2192C20.9796 19.3004 21.2343 19.265 21.433 19.1245C21.6318 18.9839 21.75 18.7556 21.75 18.5121V4.26212C21.75 3.94425 21.5496 3.66091 21.2499 3.55499C20.2324 3.19535 19.1382 3 18 3C16.0675 3 14.2655 3.56279 12.75 4.53286V20.6357Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bookmark-slash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bookmark_slash />

      <.bookmark_slash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bookmark_slash() %>

      <%= bookmark_slash(class: "h-6 w-6 text-gray-500") %>
  """
  def bookmark_slash(assigns_or_opts \\ [])

  def bookmark_slash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.53033 2.46967C3.23744 2.17678 2.76256 2.17678 2.46967 2.46967C2.17678 2.76256 2.17678 3.23744 2.46967 3.53033L20.4697 21.5303C20.7626 21.8232 21.2374 21.8232 21.5303 21.5303C21.8232 21.2374 21.8232 20.7626 21.5303 20.4697L3.53033 2.46967Z" fill="#0F172A"/>
    <path d="M20.25 5.50699V17.068L5.85284 2.67086C6.00319 2.62762 6.15925 2.59609 6.32022 2.57741C8.18374 2.36114 10.079 2.25 12 2.25C13.921 2.25 15.8163 2.36114 17.6798 2.57741C19.1772 2.75119 20.25 4.03722 20.25 5.50699Z" fill="#0F172A"/>
    <path d="M3.75 21V6.93198L17.8131 20.9951L12 18.0885L4.83541 21.6708C4.60292 21.7871 4.32681 21.7746 4.1057 21.638C3.88459 21.5013 3.75 21.2599 3.75 21Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bookmark_slash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.53033 2.46967C3.23744 2.17678 2.76256 2.17678 2.46967 2.46967C2.17678 2.76256 2.17678 3.23744 2.46967 3.53033L20.4697 21.5303C20.7626 21.8232 21.2374 21.8232 21.5303 21.5303C21.8232 21.2374 21.8232 20.7626 21.5303 20.4697L3.53033 2.46967Z\" fill=\"#0F172A\"/>\n<path d=\"M20.25 5.50699V17.068L5.85284 2.67086C6.00319 2.62762 6.15925 2.59609 6.32022 2.57741C8.18374 2.36114 10.079 2.25 12 2.25C13.921 2.25 15.8163 2.36114 17.6798 2.57741C19.1772 2.75119 20.25 4.03722 20.25 5.50699Z\" fill=\"#0F172A\"/>\n<path d=\"M3.75 21V6.93198L17.8131 20.9951L12 18.0885L4.83541 21.6708C4.60292 21.7871 4.32681 21.7746 4.1057 21.638C3.88459 21.5013 3.75 21.2599 3.75 21Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bookmark-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bookmark_square />

      <.bookmark_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bookmark_square() %>

      <%= bookmark_square(class: "h-6 w-6 text-gray-500") %>
  """
  def bookmark_square(assigns_or_opts \\ [])

  def bookmark_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM7.5 4.5C7.08579 4.5 6.75 4.83579 6.75 5.25V16.5C6.75 16.7599 6.88459 17.0013 7.1057 17.138C7.32681 17.2746 7.60292 17.2871 7.83541 17.1708L12 15.0885L16.1646 17.1708C16.3971 17.2871 16.6732 17.2746 16.8943 17.138C17.1154 17.0013 17.25 16.7599 17.25 16.5V5.25C17.25 4.83579 16.9142 4.5 16.5 4.5H7.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bookmark_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM7.5 4.5C7.08579 4.5 6.75 4.83579 6.75 5.25V16.5C6.75 16.7599 6.88459 17.0013 7.1057 17.138C7.32681 17.2746 7.60292 17.2871 7.83541 17.1708L12 15.0885L16.1646 17.1708C16.3971 17.2871 16.6732 17.2746 16.8943 17.138C17.1154 17.0013 17.25 16.7599 17.25 16.5V5.25C17.25 4.83579 16.9142 4.5 16.5 4.5H7.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/bookmark.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.bookmark />

      <.bookmark class="h-6 w-6 text-gray-500" />

  or as a function

      <%= bookmark() %>

      <%= bookmark(class: "h-6 w-6 text-gray-500") %>
  """
  def bookmark(assigns_or_opts \\ [])

  def bookmark(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6.32022 2.57741C8.18374 2.36114 10.079 2.25 12 2.25C13.921 2.25 15.8163 2.36114 17.6798 2.57741C19.1772 2.75119 20.25 4.03722 20.25 5.50699V21C20.25 21.2599 20.1154 21.5013 19.8943 21.638C19.6732 21.7746 19.3971 21.7871 19.1646 21.6708L12 18.0885L4.83541 21.6708C4.60292 21.7871 4.32681 21.7746 4.1057 21.638C3.88459 21.5013 3.75 21.2599 3.75 21V5.50699C3.75 4.03722 4.82283 2.75119 6.32022 2.57741Z" fill="#0F172A"/>
    </svg>
    """
  end

  def bookmark(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6.32022 2.57741C8.18374 2.36114 10.079 2.25 12 2.25C13.921 2.25 15.8163 2.36114 17.6798 2.57741C19.1772 2.75119 20.25 4.03722 20.25 5.50699V21C20.25 21.2599 20.1154 21.5013 19.8943 21.638C19.6732 21.7746 19.3971 21.7871 19.1646 21.6708L12 18.0885L4.83541 21.6708C4.60292 21.7871 4.32681 21.7746 4.1057 21.638C3.88459 21.5013 3.75 21.2599 3.75 21V5.50699C3.75 4.03722 4.82283 2.75119 6.32022 2.57741Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/briefcase.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.briefcase />

      <.briefcase class="h-6 w-6 text-gray-500" />

  or as a function

      <%= briefcase() %>

      <%= briefcase(class: "h-6 w-6 text-gray-500") %>
  """
  def briefcase(assigns_or_opts \\ [])

  def briefcase(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.5 5.25C7.5 3.59315 8.84315 2.25 10.5 2.25H13.5C15.1569 2.25 16.5 3.59315 16.5 5.25V5.45498C17.4325 5.54034 18.3574 5.65196 19.274 5.78912C20.7281 6.00668 21.75 7.27163 21.75 8.70569V11.7389C21.75 12.95 21.0164 14.0913 19.8137 14.4911C17.3566 15.308 14.7292 15.75 12 15.75C9.27087 15.75 6.64342 15.308 4.18627 14.4911C2.98364 14.0912 2.25 12.95 2.25 11.7389V8.70569C2.25 7.27163 3.27191 6.00668 4.72596 5.78912C5.6426 5.65196 6.56753 5.54034 7.5 5.45498V5.25ZM15 5.25V5.34082C14.0077 5.28056 13.0074 5.25 12 5.25C10.9927 5.25 9.99235 5.28056 9 5.34082V5.25C9 4.42157 9.67157 3.75 10.5 3.75H13.5C14.3284 3.75 15 4.42157 15 5.25ZM12 13.5C12.4142 13.5 12.75 13.1642 12.75 12.75C12.75 12.3358 12.4142 12 12 12C11.5858 12 11.25 12.3358 11.25 12.75C11.25 13.1642 11.5858 13.5 12 13.5Z" fill="#0F172A"/>
    <path d="M3 18.4V15.6039C3.22304 15.7263 3.46097 15.8307 3.71303 15.9145C6.32087 16.7815 9.10801 17.25 12 17.25C14.892 17.25 17.6791 16.7815 20.287 15.9145C20.539 15.8307 20.777 15.7263 21 15.604V18.4C21 19.8519 19.9528 21.1275 18.4769 21.3234C16.3575 21.6048 14.1955 21.75 12 21.75C9.80447 21.75 7.64246 21.6048 5.52314 21.3234C4.04724 21.1275 3 19.8519 3 18.4Z" fill="#0F172A"/>
    </svg>
    """
  end

  def briefcase(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.5 5.25C7.5 3.59315 8.84315 2.25 10.5 2.25H13.5C15.1569 2.25 16.5 3.59315 16.5 5.25V5.45498C17.4325 5.54034 18.3574 5.65196 19.274 5.78912C20.7281 6.00668 21.75 7.27163 21.75 8.70569V11.7389C21.75 12.95 21.0164 14.0913 19.8137 14.4911C17.3566 15.308 14.7292 15.75 12 15.75C9.27087 15.75 6.64342 15.308 4.18627 14.4911C2.98364 14.0912 2.25 12.95 2.25 11.7389V8.70569C2.25 7.27163 3.27191 6.00668 4.72596 5.78912C5.6426 5.65196 6.56753 5.54034 7.5 5.45498V5.25ZM15 5.25V5.34082C14.0077 5.28056 13.0074 5.25 12 5.25C10.9927 5.25 9.99235 5.28056 9 5.34082V5.25C9 4.42157 9.67157 3.75 10.5 3.75H13.5C14.3284 3.75 15 4.42157 15 5.25ZM12 13.5C12.4142 13.5 12.75 13.1642 12.75 12.75C12.75 12.3358 12.4142 12 12 12C11.5858 12 11.25 12.3358 11.25 12.75C11.25 13.1642 11.5858 13.5 12 13.5Z\" fill=\"#0F172A\"/>\n<path d=\"M3 18.4V15.6039C3.22304 15.7263 3.46097 15.8307 3.71303 15.9145C6.32087 16.7815 9.10801 17.25 12 17.25C14.892 17.25 17.6791 16.7815 20.287 15.9145C20.539 15.8307 20.777 15.7263 21 15.604V18.4C21 19.8519 19.9528 21.1275 18.4769 21.3234C16.3575 21.6048 14.1955 21.75 12 21.75C9.80447 21.75 7.64246 21.6048 5.52314 21.3234C4.04724 21.1275 3 19.8519 3 18.4Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/building-library.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.building_library />

      <.building_library class="h-6 w-6 text-gray-500" />

  or as a function

      <%= building_library() %>

      <%= building_library(class: "h-6 w-6 text-gray-500") %>
  """
  def building_library(assigns_or_opts \\ [])

  def building_library(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M11.5841 2.37596C11.836 2.20801 12.1642 2.20801 12.4161 2.37596L21.4161 8.37596C21.7608 8.60573 21.8539 9.07138 21.6241 9.41602C21.3944 9.76067 20.9287 9.8538 20.5841 9.62404L12.0001 3.90139L3.4161 9.62404C3.07146 9.8538 2.60581 9.76067 2.37604 9.41602C2.14628 9.07138 2.23941 8.60573 2.58405 8.37596L11.5841 2.37596Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M20.25 10.3325V20.25H21C21.4142 20.25 21.75 20.5858 21.75 21C21.75 21.4142 21.4142 21.75 21 21.75H3C2.58579 21.75 2.25 21.4142 2.25 21C2.25 20.5858 2.58579 20.25 3 20.25H3.75V10.3325C3.75 9.96317 4.01888 9.64882 4.38374 9.59157C6.86578 9.20211 9.40954 9 12 9C14.5905 9 17.1342 9.20211 19.6163 9.59157C19.9811 9.64882 20.25 9.96317 20.25 10.3325ZM12.75 12.75C12.75 12.3358 12.4142 12 12 12C11.5858 12 11.25 12.3358 11.25 12.75V19.5C11.25 19.9142 11.5858 20.25 12 20.25C12.4142 20.25 12.75 19.9142 12.75 19.5V12.75ZM15.75 12C16.1642 12 16.5 12.3358 16.5 12.75V19.5C16.5 19.9142 16.1642 20.25 15.75 20.25C15.3358 20.25 15 19.9142 15 19.5V12.75C15 12.3358 15.3358 12 15.75 12ZM9 12.75C9 12.3358 8.66421 12 8.25 12C7.83579 12 7.5 12.3358 7.5 12.75V19.5C7.5 19.9142 7.83579 20.25 8.25 20.25C8.66421 20.25 9 19.9142 9 19.5V12.75Z" fill="#0F172A"/>
    <path d="M12 7.875C12.6213 7.875 13.125 7.37132 13.125 6.75C13.125 6.12868 12.6213 5.625 12 5.625C11.3787 5.625 10.875 6.12868 10.875 6.75C10.875 7.37132 11.3787 7.875 12 7.875Z" fill="#0F172A"/>
    </svg>
    """
  end

  def building_library(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M11.5841 2.37596C11.836 2.20801 12.1642 2.20801 12.4161 2.37596L21.4161 8.37596C21.7608 8.60573 21.8539 9.07138 21.6241 9.41602C21.3944 9.76067 20.9287 9.8538 20.5841 9.62404L12.0001 3.90139L3.4161 9.62404C3.07146 9.8538 2.60581 9.76067 2.37604 9.41602C2.14628 9.07138 2.23941 8.60573 2.58405 8.37596L11.5841 2.37596Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M20.25 10.3325V20.25H21C21.4142 20.25 21.75 20.5858 21.75 21C21.75 21.4142 21.4142 21.75 21 21.75H3C2.58579 21.75 2.25 21.4142 2.25 21C2.25 20.5858 2.58579 20.25 3 20.25H3.75V10.3325C3.75 9.96317 4.01888 9.64882 4.38374 9.59157C6.86578 9.20211 9.40954 9 12 9C14.5905 9 17.1342 9.20211 19.6163 9.59157C19.9811 9.64882 20.25 9.96317 20.25 10.3325ZM12.75 12.75C12.75 12.3358 12.4142 12 12 12C11.5858 12 11.25 12.3358 11.25 12.75V19.5C11.25 19.9142 11.5858 20.25 12 20.25C12.4142 20.25 12.75 19.9142 12.75 19.5V12.75ZM15.75 12C16.1642 12 16.5 12.3358 16.5 12.75V19.5C16.5 19.9142 16.1642 20.25 15.75 20.25C15.3358 20.25 15 19.9142 15 19.5V12.75C15 12.3358 15.3358 12 15.75 12ZM9 12.75C9 12.3358 8.66421 12 8.25 12C7.83579 12 7.5 12.3358 7.5 12.75V19.5C7.5 19.9142 7.83579 20.25 8.25 20.25C8.66421 20.25 9 19.9142 9 19.5V12.75Z\" fill=\"#0F172A\"/>\n<path d=\"M12 7.875C12.6213 7.875 13.125 7.37132 13.125 6.75C13.125 6.12868 12.6213 5.625 12 5.625C11.3787 5.625 10.875 6.12868 10.875 6.75C10.875 7.37132 11.3787 7.875 12 7.875Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/building-office-2.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.building_office_2 />

      <.building_office_2 class="h-6 w-6 text-gray-500" />

  or as a function

      <%= building_office_2() %>

      <%= building_office_2(class: "h-6 w-6 text-gray-500") %>
  """
  def building_office_2(assigns_or_opts \\ [])

  def building_office_2(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 2.25C2.58579 2.25 2.25 2.58579 2.25 3C2.25 3.41421 2.58579 3.75 3 3.75V20.25H2.25C1.83579 20.25 1.5 20.5858 1.5 21C1.5 21.4142 1.83579 21.75 2.25 21.75H15V3.75C15.4142 3.75 15.75 3.41421 15.75 3C15.75 2.58579 15.4142 2.25 15 2.25H3ZM6.75 19.5V17.25C6.75 16.8358 7.08579 16.5 7.5 16.5H10.5C10.9142 16.5 11.25 16.8358 11.25 17.25V19.5C11.25 19.9142 10.9142 20.25 10.5 20.25H7.5C7.08579 20.25 6.75 19.9142 6.75 19.5ZM6 6.75C6 6.33579 6.33579 6 6.75 6H7.5C7.91421 6 8.25 6.33579 8.25 6.75C8.25 7.16421 7.91421 7.5 7.5 7.5H6.75C6.33579 7.5 6 7.16421 6 6.75ZM6.75 9C6.33579 9 6 9.33579 6 9.75C6 10.1642 6.33579 10.5 6.75 10.5H7.5C7.91421 10.5 8.25 10.1642 8.25 9.75C8.25 9.33579 7.91421 9 7.5 9H6.75ZM6 12.75C6 12.3358 6.33579 12 6.75 12H7.5C7.91421 12 8.25 12.3358 8.25 12.75C8.25 13.1642 7.91421 13.5 7.5 13.5H6.75C6.33579 13.5 6 13.1642 6 12.75ZM10.5 6C10.0858 6 9.75 6.33579 9.75 6.75C9.75 7.16421 10.0858 7.5 10.5 7.5H11.25C11.6642 7.5 12 7.16421 12 6.75C12 6.33579 11.6642 6 11.25 6H10.5ZM9.75 9.75C9.75 9.33579 10.0858 9 10.5 9H11.25C11.6642 9 12 9.33579 12 9.75C12 10.1642 11.6642 10.5 11.25 10.5H10.5C10.0858 10.5 9.75 10.1642 9.75 9.75ZM10.5 12C10.0858 12 9.75 12.3358 9.75 12.75C9.75 13.1642 10.0858 13.5 10.5 13.5H11.25C11.6642 13.5 12 13.1642 12 12.75C12 12.3358 11.6642 12 11.25 12H10.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M16.5 6.75V21.75H21.75C22.1642 21.75 22.5 21.4142 22.5 21C22.5 20.5858 22.1642 20.25 21.75 20.25H21V8.25C21.4142 8.25 21.75 7.91421 21.75 7.5C21.75 7.08579 21.4142 6.75 21 6.75H16.5ZM18 11.25C18 10.8358 18.3358 10.5 18.75 10.5H18.7575C19.1717 10.5 19.5075 10.8358 19.5075 11.25V11.2575C19.5075 11.6717 19.1717 12.0075 18.7575 12.0075H18.75C18.3358 12.0075 18 11.6717 18 11.2575V11.25ZM18.75 13.5C18.3358 13.5 18 13.8358 18 14.25V14.2575C18 14.6717 18.3358 15.0075 18.75 15.0075H18.7575C19.1717 15.0075 19.5075 14.6717 19.5075 14.2575V14.25C19.5075 13.8358 19.1717 13.5 18.7575 13.5H18.75ZM18 17.25C18 16.8358 18.3358 16.5 18.75 16.5H18.7575C19.1717 16.5 19.5075 16.8358 19.5075 17.25V17.2575C19.5075 17.6717 19.1717 18.0075 18.7575 18.0075H18.75C18.3358 18.0075 18 17.6717 18 17.2575V17.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def building_office_2(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 2.25C2.58579 2.25 2.25 2.58579 2.25 3C2.25 3.41421 2.58579 3.75 3 3.75V20.25H2.25C1.83579 20.25 1.5 20.5858 1.5 21C1.5 21.4142 1.83579 21.75 2.25 21.75H15V3.75C15.4142 3.75 15.75 3.41421 15.75 3C15.75 2.58579 15.4142 2.25 15 2.25H3ZM6.75 19.5V17.25C6.75 16.8358 7.08579 16.5 7.5 16.5H10.5C10.9142 16.5 11.25 16.8358 11.25 17.25V19.5C11.25 19.9142 10.9142 20.25 10.5 20.25H7.5C7.08579 20.25 6.75 19.9142 6.75 19.5ZM6 6.75C6 6.33579 6.33579 6 6.75 6H7.5C7.91421 6 8.25 6.33579 8.25 6.75C8.25 7.16421 7.91421 7.5 7.5 7.5H6.75C6.33579 7.5 6 7.16421 6 6.75ZM6.75 9C6.33579 9 6 9.33579 6 9.75C6 10.1642 6.33579 10.5 6.75 10.5H7.5C7.91421 10.5 8.25 10.1642 8.25 9.75C8.25 9.33579 7.91421 9 7.5 9H6.75ZM6 12.75C6 12.3358 6.33579 12 6.75 12H7.5C7.91421 12 8.25 12.3358 8.25 12.75C8.25 13.1642 7.91421 13.5 7.5 13.5H6.75C6.33579 13.5 6 13.1642 6 12.75ZM10.5 6C10.0858 6 9.75 6.33579 9.75 6.75C9.75 7.16421 10.0858 7.5 10.5 7.5H11.25C11.6642 7.5 12 7.16421 12 6.75C12 6.33579 11.6642 6 11.25 6H10.5ZM9.75 9.75C9.75 9.33579 10.0858 9 10.5 9H11.25C11.6642 9 12 9.33579 12 9.75C12 10.1642 11.6642 10.5 11.25 10.5H10.5C10.0858 10.5 9.75 10.1642 9.75 9.75ZM10.5 12C10.0858 12 9.75 12.3358 9.75 12.75C9.75 13.1642 10.0858 13.5 10.5 13.5H11.25C11.6642 13.5 12 13.1642 12 12.75C12 12.3358 11.6642 12 11.25 12H10.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M16.5 6.75V21.75H21.75C22.1642 21.75 22.5 21.4142 22.5 21C22.5 20.5858 22.1642 20.25 21.75 20.25H21V8.25C21.4142 8.25 21.75 7.91421 21.75 7.5C21.75 7.08579 21.4142 6.75 21 6.75H16.5ZM18 11.25C18 10.8358 18.3358 10.5 18.75 10.5H18.7575C19.1717 10.5 19.5075 10.8358 19.5075 11.25V11.2575C19.5075 11.6717 19.1717 12.0075 18.7575 12.0075H18.75C18.3358 12.0075 18 11.6717 18 11.2575V11.25ZM18.75 13.5C18.3358 13.5 18 13.8358 18 14.25V14.2575C18 14.6717 18.3358 15.0075 18.75 15.0075H18.7575C19.1717 15.0075 19.5075 14.6717 19.5075 14.2575V14.25C19.5075 13.8358 19.1717 13.5 18.7575 13.5H18.75ZM18 17.25C18 16.8358 18.3358 16.5 18.75 16.5H18.7575C19.1717 16.5 19.5075 16.8358 19.5075 17.25V17.2575C19.5075 17.6717 19.1717 18.0075 18.7575 18.0075H18.75C18.3358 18.0075 18 17.6717 18 17.2575V17.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/building-office.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.building_office />

      <.building_office class="h-6 w-6 text-gray-500" />

  or as a function

      <%= building_office() %>

      <%= building_office(class: "h-6 w-6 text-gray-500") %>
  """
  def building_office(assigns_or_opts \\ [])

  def building_office(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 2.25C4.08579 2.25 3.75 2.58579 3.75 3C3.75 3.41421 4.08579 3.75 4.5 3.75V20.25H3.75C3.33579 20.25 3 20.5858 3 21C3 21.4142 3.33579 21.75 3.75 21.75H20.25C20.6642 21.75 21 21.4142 21 21C21 20.5858 20.6642 20.25 20.25 20.25H19.5V3.75C19.9142 3.75 20.25 3.41421 20.25 3C20.25 2.58579 19.9142 2.25 19.5 2.25H4.5ZM9 6C8.58579 6 8.25 6.33579 8.25 6.75C8.25 7.16421 8.58579 7.5 9 7.5H10.5C10.9142 7.5 11.25 7.16421 11.25 6.75C11.25 6.33579 10.9142 6 10.5 6H9ZM8.25 9.75C8.25 9.33579 8.58579 9 9 9H10.5C10.9142 9 11.25 9.33579 11.25 9.75C11.25 10.1642 10.9142 10.5 10.5 10.5H9C8.58579 10.5 8.25 10.1642 8.25 9.75ZM9 12C8.58579 12 8.25 12.3358 8.25 12.75C8.25 13.1642 8.58579 13.5 9 13.5H10.5C10.9142 13.5 11.25 13.1642 11.25 12.75C11.25 12.3358 10.9142 12 10.5 12H9ZM12.75 6.75C12.75 6.33579 13.0858 6 13.5 6H15C15.4142 6 15.75 6.33579 15.75 6.75C15.75 7.16421 15.4142 7.5 15 7.5H13.5C13.0858 7.5 12.75 7.16421 12.75 6.75ZM13.5 9C13.0858 9 12.75 9.33579 12.75 9.75C12.75 10.1642 13.0858 10.5 13.5 10.5H15C15.4142 10.5 15.75 10.1642 15.75 9.75C15.75 9.33579 15.4142 9 15 9H13.5ZM12.75 12.75C12.75 12.3358 13.0858 12 13.5 12H15C15.4142 12 15.75 12.3358 15.75 12.75C15.75 13.1642 15.4142 13.5 15 13.5H13.5C13.0858 13.5 12.75 13.1642 12.75 12.75ZM9 19.5V17.25C9 16.8358 9.33579 16.5 9.75 16.5H14.25C14.6642 16.5 15 16.8358 15 17.25V19.5C15 19.9142 14.6642 20.25 14.25 20.25H9.75C9.33579 20.25 9 19.9142 9 19.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def building_office(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 2.25C4.08579 2.25 3.75 2.58579 3.75 3C3.75 3.41421 4.08579 3.75 4.5 3.75V20.25H3.75C3.33579 20.25 3 20.5858 3 21C3 21.4142 3.33579 21.75 3.75 21.75H20.25C20.6642 21.75 21 21.4142 21 21C21 20.5858 20.6642 20.25 20.25 20.25H19.5V3.75C19.9142 3.75 20.25 3.41421 20.25 3C20.25 2.58579 19.9142 2.25 19.5 2.25H4.5ZM9 6C8.58579 6 8.25 6.33579 8.25 6.75C8.25 7.16421 8.58579 7.5 9 7.5H10.5C10.9142 7.5 11.25 7.16421 11.25 6.75C11.25 6.33579 10.9142 6 10.5 6H9ZM8.25 9.75C8.25 9.33579 8.58579 9 9 9H10.5C10.9142 9 11.25 9.33579 11.25 9.75C11.25 10.1642 10.9142 10.5 10.5 10.5H9C8.58579 10.5 8.25 10.1642 8.25 9.75ZM9 12C8.58579 12 8.25 12.3358 8.25 12.75C8.25 13.1642 8.58579 13.5 9 13.5H10.5C10.9142 13.5 11.25 13.1642 11.25 12.75C11.25 12.3358 10.9142 12 10.5 12H9ZM12.75 6.75C12.75 6.33579 13.0858 6 13.5 6H15C15.4142 6 15.75 6.33579 15.75 6.75C15.75 7.16421 15.4142 7.5 15 7.5H13.5C13.0858 7.5 12.75 7.16421 12.75 6.75ZM13.5 9C13.0858 9 12.75 9.33579 12.75 9.75C12.75 10.1642 13.0858 10.5 13.5 10.5H15C15.4142 10.5 15.75 10.1642 15.75 9.75C15.75 9.33579 15.4142 9 15 9H13.5ZM12.75 12.75C12.75 12.3358 13.0858 12 13.5 12H15C15.4142 12 15.75 12.3358 15.75 12.75C15.75 13.1642 15.4142 13.5 15 13.5H13.5C13.0858 13.5 12.75 13.1642 12.75 12.75ZM9 19.5V17.25C9 16.8358 9.33579 16.5 9.75 16.5H14.25C14.6642 16.5 15 16.8358 15 17.25V19.5C15 19.9142 14.6642 20.25 14.25 20.25H9.75C9.33579 20.25 9 19.9142 9 19.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/building-storefront.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.building_storefront />

      <.building_storefront class="h-6 w-6 text-gray-500" />

  or as a function

      <%= building_storefront() %>

      <%= building_storefront(class: "h-6 w-6 text-gray-500") %>
  """
  def building_storefront(assigns_or_opts \\ [])

  def building_storefront(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M5.22335 2.25C4.72607 2.25 4.24916 2.44754 3.89752 2.79917L2.59835 4.09835C1.13388 5.56282 1.13388 7.93718 2.59835 9.40165C3.93551 10.7388 6.03124 10.8551 7.50029 9.75038C8.12669 10.2206 8.90598 10.5 9.75 10.5C10.5941 10.5 11.3736 10.2205 12 9.75016C12.6264 10.2205 13.4059 10.5 14.25 10.5C15.094 10.5 15.8733 10.2206 16.4997 9.75038C17.9688 10.8551 20.0645 10.7388 21.4017 9.40165C22.8661 7.93718 22.8661 5.56282 21.4017 4.09835L20.1025 2.79918C19.7508 2.44755 19.2739 2.25 18.7767 2.25L5.22335 2.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 20.25V11.4951C4.42021 12.1686 6.07989 12.1681 7.50044 11.4944C8.18265 11.8183 8.94611 12 9.75 12C10.5541 12 11.3177 11.8182 12 11.4942C12.6823 11.8182 13.4459 12 14.25 12C15.0539 12 15.8173 11.8183 16.4996 11.4944C17.9201 12.1681 19.5798 12.1686 21 11.4951V20.25H21.75C22.1642 20.25 22.5 20.5858 22.5 21C22.5 21.4142 22.1642 21.75 21.75 21.75H2.25C1.83579 21.75 1.5 21.4142 1.5 21C1.5 20.5858 1.83579 20.25 2.25 20.25H3ZM6 14.25C6 13.8358 6.33579 13.5 6.75 13.5H9.75C10.1642 13.5 10.5 13.8358 10.5 14.25V17.25C10.5 17.6642 10.1642 18 9.75 18H6.75C6.33579 18 6 17.6642 6 17.25V14.25ZM14.25 13.5C13.8358 13.5 13.5 13.8358 13.5 14.25V19.5C13.5 19.9142 13.8358 20.25 14.25 20.25H17.25C17.6642 20.25 18 19.9142 18 19.5V14.25C18 13.8358 17.6642 13.5 17.25 13.5H14.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def building_storefront(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.22335 2.25C4.72607 2.25 4.24916 2.44754 3.89752 2.79917L2.59835 4.09835C1.13388 5.56282 1.13388 7.93718 2.59835 9.40165C3.93551 10.7388 6.03124 10.8551 7.50029 9.75038C8.12669 10.2206 8.90598 10.5 9.75 10.5C10.5941 10.5 11.3736 10.2205 12 9.75016C12.6264 10.2205 13.4059 10.5 14.25 10.5C15.094 10.5 15.8733 10.2206 16.4997 9.75038C17.9688 10.8551 20.0645 10.7388 21.4017 9.40165C22.8661 7.93718 22.8661 5.56282 21.4017 4.09835L20.1025 2.79918C19.7508 2.44755 19.2739 2.25 18.7767 2.25L5.22335 2.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 20.25V11.4951C4.42021 12.1686 6.07989 12.1681 7.50044 11.4944C8.18265 11.8183 8.94611 12 9.75 12C10.5541 12 11.3177 11.8182 12 11.4942C12.6823 11.8182 13.4459 12 14.25 12C15.0539 12 15.8173 11.8183 16.4996 11.4944C17.9201 12.1681 19.5798 12.1686 21 11.4951V20.25H21.75C22.1642 20.25 22.5 20.5858 22.5 21C22.5 21.4142 22.1642 21.75 21.75 21.75H2.25C1.83579 21.75 1.5 21.4142 1.5 21C1.5 20.5858 1.83579 20.25 2.25 20.25H3ZM6 14.25C6 13.8358 6.33579 13.5 6.75 13.5H9.75C10.1642 13.5 10.5 13.8358 10.5 14.25V17.25C10.5 17.6642 10.1642 18 9.75 18H6.75C6.33579 18 6 17.6642 6 17.25V14.25ZM14.25 13.5C13.8358 13.5 13.5 13.8358 13.5 14.25V19.5C13.5 19.9142 13.8358 20.25 14.25 20.25H17.25C17.6642 20.25 18 19.9142 18 19.5V14.25C18 13.8358 17.6642 13.5 17.25 13.5H14.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cake.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cake />

      <.cake class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cake() %>

      <%= cake(class: "h-6 w-6 text-gray-500") %>
  """
  def cake(assigns_or_opts \\ [])

  def cake(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M15 1.78418L14.2045 2.57969C13.7652 3.01903 13.7652 3.73134 14.2045 4.17068C14.6438 4.61002 15.3562 4.61002 15.7955 4.17068C16.2348 3.73134 16.2348 3.01903 15.7955 2.57969L15 1.78418Z" fill="#0F172A"/>
    <path d="M12 1.78418L11.2045 2.57969C10.7652 3.01903 10.7652 3.73134 11.2045 4.17068C11.6438 4.61002 12.3562 4.61002 12.7955 4.17068C13.2348 3.73134 13.2348 3.01903 12.7955 2.57969L12 1.78418Z" fill="#0F172A"/>
    <path d="M8.99999 1.78418L8.2045 2.57969C7.76516 3.01903 7.76516 3.73134 8.2045 4.17068C8.64384 4.61002 9.35616 4.61002 9.7955 4.17068C10.2348 3.73134 10.2348 3.01903 9.7955 2.57969L8.99999 1.78418Z" fill="#0F172A"/>
    <path d="M9.75 7.54687C10.2483 7.52615 10.7483 7.51229 11.25 7.50536V6.75018C11.25 6.33597 11.5858 6.00018 12 6.00018C12.4142 6.00018 12.75 6.33597 12.75 6.75018V7.50536C13.2517 7.51229 13.7517 7.52615 14.25 7.54687V6.75018C14.25 6.33597 14.5858 6.00018 15 6.00018C15.4142 6.00018 15.75 6.33597 15.75 6.75018V7.63021C15.8524 7.63733 15.9547 7.64474 16.0569 7.65245C17.6071 7.76925 18.75 9.0795 18.75 10.5978V11.6164C16.5333 11.3744 14.2811 11.2502 12 11.2502C9.71886 11.2502 7.46673 11.3744 5.25 11.6164V10.5978C5.25 9.0795 6.39295 7.76925 7.94314 7.65245C8.04534 7.64474 8.14763 7.63733 8.25 7.63021V6.75018C8.25 6.33597 8.58579 6.00018 9 6.00018C9.41421 6.00018 9.75 6.33597 9.75 6.75018V7.54687Z" fill="#0F172A"/>
    <path d="M12 12.7502C9.52847 12.7502 7.09944 12.9342 4.72596 13.2893C3.27191 13.5069 2.25 14.7718 2.25 16.2059V16.5902C3.11853 16.4288 4.02704 16.5502 4.83541 16.9544C5.56854 17.3209 6.43146 17.3209 7.16459 16.9544C8.32001 16.3767 9.67999 16.3767 10.8354 16.9544C11.5685 17.3209 12.4315 17.3209 13.1646 16.9544C14.32 16.3767 15.68 16.3767 16.8354 16.9544C17.5685 17.3209 18.4315 17.3209 19.1646 16.9544C19.973 16.5502 20.8815 16.4288 21.75 16.5902V16.2059C21.75 14.7718 20.7281 13.5069 19.274 13.2893C16.9006 12.9342 14.4715 12.7502 12 12.7502Z" fill="#0F172A"/>
    <path d="M21.75 18.1314C21.1195 17.9418 20.4342 17.9966 19.8354 18.296C18.68 18.8737 17.32 18.8737 16.1646 18.296C15.4315 17.9294 14.5685 17.9294 13.8354 18.296C12.68 18.8737 11.32 18.8737 10.1646 18.296C9.43146 17.9294 8.56854 17.9294 7.83541 18.296C6.67999 18.8737 5.32001 18.8737 4.16459 18.296C3.56583 17.9966 2.88049 17.9418 2.25 18.1314V20.6252C2.25 21.6607 3.08947 22.5002 4.125 22.5002H19.875C20.9105 22.5002 21.75 21.6607 21.75 20.6252V18.1314Z" fill="#0F172A"/>
    </svg>
    """
  end

  def cake(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M15 1.78418L14.2045 2.57969C13.7652 3.01903 13.7652 3.73134 14.2045 4.17068C14.6438 4.61002 15.3562 4.61002 15.7955 4.17068C16.2348 3.73134 16.2348 3.01903 15.7955 2.57969L15 1.78418Z\" fill=\"#0F172A\"/>\n<path d=\"M12 1.78418L11.2045 2.57969C10.7652 3.01903 10.7652 3.73134 11.2045 4.17068C11.6438 4.61002 12.3562 4.61002 12.7955 4.17068C13.2348 3.73134 13.2348 3.01903 12.7955 2.57969L12 1.78418Z\" fill=\"#0F172A\"/>\n<path d=\"M8.99999 1.78418L8.2045 2.57969C7.76516 3.01903 7.76516 3.73134 8.2045 4.17068C8.64384 4.61002 9.35616 4.61002 9.7955 4.17068C10.2348 3.73134 10.2348 3.01903 9.7955 2.57969L8.99999 1.78418Z\" fill=\"#0F172A\"/>\n<path d=\"M9.75 7.54687C10.2483 7.52615 10.7483 7.51229 11.25 7.50536V6.75018C11.25 6.33597 11.5858 6.00018 12 6.00018C12.4142 6.00018 12.75 6.33597 12.75 6.75018V7.50536C13.2517 7.51229 13.7517 7.52615 14.25 7.54687V6.75018C14.25 6.33597 14.5858 6.00018 15 6.00018C15.4142 6.00018 15.75 6.33597 15.75 6.75018V7.63021C15.8524 7.63733 15.9547 7.64474 16.0569 7.65245C17.6071 7.76925 18.75 9.0795 18.75 10.5978V11.6164C16.5333 11.3744 14.2811 11.2502 12 11.2502C9.71886 11.2502 7.46673 11.3744 5.25 11.6164V10.5978C5.25 9.0795 6.39295 7.76925 7.94314 7.65245C8.04534 7.64474 8.14763 7.63733 8.25 7.63021V6.75018C8.25 6.33597 8.58579 6.00018 9 6.00018C9.41421 6.00018 9.75 6.33597 9.75 6.75018V7.54687Z\" fill=\"#0F172A\"/>\n<path d=\"M12 12.7502C9.52847 12.7502 7.09944 12.9342 4.72596 13.2893C3.27191 13.5069 2.25 14.7718 2.25 16.2059V16.5902C3.11853 16.4288 4.02704 16.5502 4.83541 16.9544C5.56854 17.3209 6.43146 17.3209 7.16459 16.9544C8.32001 16.3767 9.67999 16.3767 10.8354 16.9544C11.5685 17.3209 12.4315 17.3209 13.1646 16.9544C14.32 16.3767 15.68 16.3767 16.8354 16.9544C17.5685 17.3209 18.4315 17.3209 19.1646 16.9544C19.973 16.5502 20.8815 16.4288 21.75 16.5902V16.2059C21.75 14.7718 20.7281 13.5069 19.274 13.2893C16.9006 12.9342 14.4715 12.7502 12 12.7502Z\" fill=\"#0F172A\"/>\n<path d=\"M21.75 18.1314C21.1195 17.9418 20.4342 17.9966 19.8354 18.296C18.68 18.8737 17.32 18.8737 16.1646 18.296C15.4315 17.9294 14.5685 17.9294 13.8354 18.296C12.68 18.8737 11.32 18.8737 10.1646 18.296C9.43146 17.9294 8.56854 17.9294 7.83541 18.296C6.67999 18.8737 5.32001 18.8737 4.16459 18.296C3.56583 17.9966 2.88049 17.9418 2.25 18.1314V20.6252C2.25 21.6607 3.08947 22.5002 4.125 22.5002H19.875C20.9105 22.5002 21.75 21.6607 21.75 20.6252V18.1314Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/calculator.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.calculator />

      <.calculator class="h-6 w-6 text-gray-500" />

  or as a function

      <%= calculator() %>

      <%= calculator(class: "h-6 w-6 text-gray-500") %>
  """
  def calculator(assigns_or_opts \\ [])

  def calculator(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6.32022 1.82741C8.18374 1.61114 10.079 1.5 12 1.5C13.921 1.5 15.8163 1.61114 17.6798 1.82741C19.1772 2.00119 20.25 3.28722 20.25 4.75699V19.5C20.25 21.1569 18.9069 22.5 17.25 22.5H6.75C5.09315 22.5 3.75 21.1569 3.75 19.5V4.75699C3.75 3.28722 4.82283 2.00119 6.32022 1.82741ZM7.5 11.25C7.5 10.8358 7.83579 10.5 8.25 10.5H8.2575C8.67171 10.5 9.0075 10.8358 9.0075 11.25V11.2575C9.0075 11.6717 8.67171 12.0075 8.2575 12.0075H8.25C7.83579 12.0075 7.5 11.6717 7.5 11.2575V11.25ZM8.25 12.75C7.83579 12.75 7.5 13.0858 7.5 13.5V13.5075C7.5 13.9217 7.83579 14.2575 8.25 14.2575H8.2575C8.67171 14.2575 9.0075 13.9217 9.0075 13.5075V13.5C9.0075 13.0858 8.67171 12.75 8.2575 12.75H8.25ZM7.5 15.75C7.5 15.3358 7.83579 15 8.25 15H8.2575C8.67171 15 9.0075 15.3358 9.0075 15.75V15.7575C9.0075 16.1717 8.67171 16.5075 8.2575 16.5075H8.25C7.83579 16.5075 7.5 16.1717 7.5 15.7575V15.75ZM8.25 17.25C7.83579 17.25 7.5 17.5858 7.5 18V18.0075C7.5 18.4217 7.83579 18.7575 8.25 18.7575H8.2575C8.67171 18.7575 9.0075 18.4217 9.0075 18.0075V18C9.0075 17.5858 8.67171 17.25 8.2575 17.25H8.25ZM9.99756 11.25C9.99756 10.8358 10.3333 10.5 10.7476 10.5H10.7551C11.1693 10.5 11.5051 10.8358 11.5051 11.25V11.2575C11.5051 11.6717 11.1693 12.0075 10.7551 12.0075H10.7476C10.3333 12.0075 9.99756 11.6717 9.99756 11.2575V11.25ZM10.7476 12.75C10.3333 12.75 9.99756 13.0858 9.99756 13.5V13.5075C9.99756 13.9217 10.3333 14.2575 10.7476 14.2575H10.7551C11.1693 14.2575 11.5051 13.9217 11.5051 13.5075V13.5C11.5051 13.0858 11.1693 12.75 10.7551 12.75H10.7476ZM9.99756 15.75C9.99756 15.3358 10.3333 15 10.7476 15H10.7551C11.1693 15 11.5051 15.3358 11.5051 15.75V15.7575C11.5051 16.1717 11.1693 16.5075 10.7551 16.5075H10.7476C10.3333 16.5075 9.99756 16.1717 9.99756 15.7575V15.75ZM10.7476 17.25C10.3333 17.25 9.99756 17.5858 9.99756 18V18.0075C9.99756 18.4217 10.3333 18.7575 10.7476 18.7575H10.7551C11.1693 18.7575 11.5051 18.4217 11.5051 18.0075V18C11.5051 17.5858 11.1693 17.25 10.7551 17.25H10.7476ZM12.5024 11.25C12.5024 10.8358 12.8382 10.5 13.2524 10.5H13.2599C13.6742 10.5 14.0099 10.8358 14.0099 11.25V11.2575C14.0099 11.6717 13.6742 12.0075 13.2599 12.0075H13.2524C12.8382 12.0075 12.5024 11.6717 12.5024 11.2575V11.25ZM13.2524 12.75C12.8382 12.75 12.5024 13.0858 12.5024 13.5V13.5075C12.5024 13.9217 12.8382 14.2575 13.2524 14.2575H13.2599C13.6742 14.2575 14.0099 13.9217 14.0099 13.5075V13.5C14.0099 13.0858 13.6742 12.75 13.2599 12.75H13.2524ZM12.5024 15.75C12.5024 15.3358 12.8382 15 13.2524 15H13.2599C13.6742 15 14.0099 15.3358 14.0099 15.75V15.7575C14.0099 16.1717 13.6742 16.5075 13.2599 16.5075H13.2524C12.8382 16.5075 12.5024 16.1717 12.5024 15.7575V15.75ZM13.2524 17.25C12.8382 17.25 12.5024 17.5858 12.5024 18V18.0075C12.5024 18.4217 12.8382 18.7575 13.2524 18.7575H13.2599C13.6742 18.7575 14.0099 18.4217 14.0099 18.0075V18C14.0099 17.5858 13.6742 17.25 13.2599 17.25H13.2524ZM15 11.25C15 10.8358 15.3358 10.5 15.75 10.5H15.7575C16.1717 10.5 16.5075 10.8358 16.5075 11.25V11.2575C16.5075 11.6717 16.1717 12.0075 15.7575 12.0075H15.75C15.3358 12.0075 15 11.6717 15 11.2575V11.25ZM15.75 12.75C15.3358 12.75 15 13.0858 15 13.5V13.5075C15 13.9217 15.3358 14.2575 15.75 14.2575H15.7575C16.1717 14.2575 16.5075 13.9217 16.5075 13.5075V13.5C16.5075 13.0858 16.1717 12.75 15.7575 12.75H15.75ZM7.5 6.75C7.5 6.33579 7.83579 6 8.25 6H15.75C16.1642 6 16.5 6.33579 16.5 6.75V7.5C16.5 7.91421 16.1642 8.25 15.75 8.25H8.25C7.83579 8.25 7.5 7.91421 7.5 7.5V6.75ZM16.5 15.75C16.5 15.3358 16.1642 15 15.75 15C15.3358 15 15 15.3358 15 15.75V18C15 18.4142 15.3358 18.75 15.75 18.75C16.1642 18.75 16.5 18.4142 16.5 18V15.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def calculator(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6.32022 1.82741C8.18374 1.61114 10.079 1.5 12 1.5C13.921 1.5 15.8163 1.61114 17.6798 1.82741C19.1772 2.00119 20.25 3.28722 20.25 4.75699V19.5C20.25 21.1569 18.9069 22.5 17.25 22.5H6.75C5.09315 22.5 3.75 21.1569 3.75 19.5V4.75699C3.75 3.28722 4.82283 2.00119 6.32022 1.82741ZM7.5 11.25C7.5 10.8358 7.83579 10.5 8.25 10.5H8.2575C8.67171 10.5 9.0075 10.8358 9.0075 11.25V11.2575C9.0075 11.6717 8.67171 12.0075 8.2575 12.0075H8.25C7.83579 12.0075 7.5 11.6717 7.5 11.2575V11.25ZM8.25 12.75C7.83579 12.75 7.5 13.0858 7.5 13.5V13.5075C7.5 13.9217 7.83579 14.2575 8.25 14.2575H8.2575C8.67171 14.2575 9.0075 13.9217 9.0075 13.5075V13.5C9.0075 13.0858 8.67171 12.75 8.2575 12.75H8.25ZM7.5 15.75C7.5 15.3358 7.83579 15 8.25 15H8.2575C8.67171 15 9.0075 15.3358 9.0075 15.75V15.7575C9.0075 16.1717 8.67171 16.5075 8.2575 16.5075H8.25C7.83579 16.5075 7.5 16.1717 7.5 15.7575V15.75ZM8.25 17.25C7.83579 17.25 7.5 17.5858 7.5 18V18.0075C7.5 18.4217 7.83579 18.7575 8.25 18.7575H8.2575C8.67171 18.7575 9.0075 18.4217 9.0075 18.0075V18C9.0075 17.5858 8.67171 17.25 8.2575 17.25H8.25ZM9.99756 11.25C9.99756 10.8358 10.3333 10.5 10.7476 10.5H10.7551C11.1693 10.5 11.5051 10.8358 11.5051 11.25V11.2575C11.5051 11.6717 11.1693 12.0075 10.7551 12.0075H10.7476C10.3333 12.0075 9.99756 11.6717 9.99756 11.2575V11.25ZM10.7476 12.75C10.3333 12.75 9.99756 13.0858 9.99756 13.5V13.5075C9.99756 13.9217 10.3333 14.2575 10.7476 14.2575H10.7551C11.1693 14.2575 11.5051 13.9217 11.5051 13.5075V13.5C11.5051 13.0858 11.1693 12.75 10.7551 12.75H10.7476ZM9.99756 15.75C9.99756 15.3358 10.3333 15 10.7476 15H10.7551C11.1693 15 11.5051 15.3358 11.5051 15.75V15.7575C11.5051 16.1717 11.1693 16.5075 10.7551 16.5075H10.7476C10.3333 16.5075 9.99756 16.1717 9.99756 15.7575V15.75ZM10.7476 17.25C10.3333 17.25 9.99756 17.5858 9.99756 18V18.0075C9.99756 18.4217 10.3333 18.7575 10.7476 18.7575H10.7551C11.1693 18.7575 11.5051 18.4217 11.5051 18.0075V18C11.5051 17.5858 11.1693 17.25 10.7551 17.25H10.7476ZM12.5024 11.25C12.5024 10.8358 12.8382 10.5 13.2524 10.5H13.2599C13.6742 10.5 14.0099 10.8358 14.0099 11.25V11.2575C14.0099 11.6717 13.6742 12.0075 13.2599 12.0075H13.2524C12.8382 12.0075 12.5024 11.6717 12.5024 11.2575V11.25ZM13.2524 12.75C12.8382 12.75 12.5024 13.0858 12.5024 13.5V13.5075C12.5024 13.9217 12.8382 14.2575 13.2524 14.2575H13.2599C13.6742 14.2575 14.0099 13.9217 14.0099 13.5075V13.5C14.0099 13.0858 13.6742 12.75 13.2599 12.75H13.2524ZM12.5024 15.75C12.5024 15.3358 12.8382 15 13.2524 15H13.2599C13.6742 15 14.0099 15.3358 14.0099 15.75V15.7575C14.0099 16.1717 13.6742 16.5075 13.2599 16.5075H13.2524C12.8382 16.5075 12.5024 16.1717 12.5024 15.7575V15.75ZM13.2524 17.25C12.8382 17.25 12.5024 17.5858 12.5024 18V18.0075C12.5024 18.4217 12.8382 18.7575 13.2524 18.7575H13.2599C13.6742 18.7575 14.0099 18.4217 14.0099 18.0075V18C14.0099 17.5858 13.6742 17.25 13.2599 17.25H13.2524ZM15 11.25C15 10.8358 15.3358 10.5 15.75 10.5H15.7575C16.1717 10.5 16.5075 10.8358 16.5075 11.25V11.2575C16.5075 11.6717 16.1717 12.0075 15.7575 12.0075H15.75C15.3358 12.0075 15 11.6717 15 11.2575V11.25ZM15.75 12.75C15.3358 12.75 15 13.0858 15 13.5V13.5075C15 13.9217 15.3358 14.2575 15.75 14.2575H15.7575C16.1717 14.2575 16.5075 13.9217 16.5075 13.5075V13.5C16.5075 13.0858 16.1717 12.75 15.7575 12.75H15.75ZM7.5 6.75C7.5 6.33579 7.83579 6 8.25 6H15.75C16.1642 6 16.5 6.33579 16.5 6.75V7.5C16.5 7.91421 16.1642 8.25 15.75 8.25H8.25C7.83579 8.25 7.5 7.91421 7.5 7.5V6.75ZM16.5 15.75C16.5 15.3358 16.1642 15 15.75 15C15.3358 15 15 15.3358 15 15.75V18C15 18.4142 15.3358 18.75 15.75 18.75C16.1642 18.75 16.5 18.4142 16.5 18V15.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/calendar-days.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.calendar_days />

      <.calendar_days class="h-6 w-6 text-gray-500" />

  or as a function

      <%= calendar_days() %>

      <%= calendar_days(class: "h-6 w-6 text-gray-500") %>
  """
  def calendar_days(assigns_or_opts \\ [])

  def calendar_days(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M12.75 12.75C12.75 13.1642 12.4142 13.5 12 13.5C11.5858 13.5 11.25 13.1642 11.25 12.75C11.25 12.3358 11.5858 12 12 12C12.4142 12 12.75 12.3358 12.75 12.75Z" fill="#0F172A"/>
    <path d="M7.5 15.75C7.91421 15.75 8.25 15.4142 8.25 15C8.25 14.5858 7.91421 14.25 7.5 14.25C7.08579 14.25 6.75 14.5858 6.75 15C6.75 15.4142 7.08579 15.75 7.5 15.75Z" fill="#0F172A"/>
    <path d="M8.25 17.25C8.25 17.6642 7.91421 18 7.5 18C7.08579 18 6.75 17.6642 6.75 17.25C6.75 16.8358 7.08579 16.5 7.5 16.5C7.91421 16.5 8.25 16.8358 8.25 17.25Z" fill="#0F172A"/>
    <path d="M9.75 15.75C10.1642 15.75 10.5 15.4142 10.5 15C10.5 14.5858 10.1642 14.25 9.75 14.25C9.33579 14.25 9 14.5858 9 15C9 15.4142 9.33579 15.75 9.75 15.75Z" fill="#0F172A"/>
    <path d="M10.5 17.25C10.5 17.6642 10.1642 18 9.75 18C9.33579 18 9 17.6642 9 17.25C9 16.8358 9.33579 16.5 9.75 16.5C10.1642 16.5 10.5 16.8358 10.5 17.25Z" fill="#0F172A"/>
    <path d="M12 15.75C12.4142 15.75 12.75 15.4142 12.75 15C12.75 14.5858 12.4142 14.25 12 14.25C11.5858 14.25 11.25 14.5858 11.25 15C11.25 15.4142 11.5858 15.75 12 15.75Z" fill="#0F172A"/>
    <path d="M12.75 17.25C12.75 17.6642 12.4142 18 12 18C11.5858 18 11.25 17.6642 11.25 17.25C11.25 16.8358 11.5858 16.5 12 16.5C12.4142 16.5 12.75 16.8358 12.75 17.25Z" fill="#0F172A"/>
    <path d="M14.25 15.75C14.6642 15.75 15 15.4142 15 15C15 14.5858 14.6642 14.25 14.25 14.25C13.8358 14.25 13.5 14.5858 13.5 15C13.5 15.4142 13.8358 15.75 14.25 15.75Z" fill="#0F172A"/>
    <path d="M15 17.25C15 17.6642 14.6642 18 14.25 18C13.8358 18 13.5 17.6642 13.5 17.25C13.5 16.8358 13.8358 16.5 14.25 16.5C14.6642 16.5 15 16.8358 15 17.25Z" fill="#0F172A"/>
    <path d="M16.5 15.75C16.9142 15.75 17.25 15.4142 17.25 15C17.25 14.5858 16.9142 14.25 16.5 14.25C16.0858 14.25 15.75 14.5858 15.75 15C15.75 15.4142 16.0858 15.75 16.5 15.75Z" fill="#0F172A"/>
    <path d="M15 12.75C15 13.1642 14.6642 13.5 14.25 13.5C13.8358 13.5 13.5 13.1642 13.5 12.75C13.5 12.3358 13.8358 12 14.25 12C14.6642 12 15 12.3358 15 12.75Z" fill="#0F172A"/>
    <path d="M16.5 13.5C16.9142 13.5 17.25 13.1642 17.25 12.75C17.25 12.3358 16.9142 12 16.5 12C16.0858 12 15.75 12.3358 15.75 12.75C15.75 13.1642 16.0858 13.5 16.5 13.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6.75 2.25C7.16421 2.25 7.5 2.58579 7.5 3V4.5H16.5V3C16.5 2.58579 16.8358 2.25 17.25 2.25C17.6642 2.25 18 2.58579 18 3V4.5H18.75C20.4069 4.5 21.75 5.84315 21.75 7.5V18.75C21.75 20.4069 20.4069 21.75 18.75 21.75H5.25C3.59315 21.75 2.25 20.4069 2.25 18.75V7.5C2.25 5.84315 3.59315 4.5 5.25 4.5H6V3C6 2.58579 6.33579 2.25 6.75 2.25ZM20.25 11.25C20.25 10.4216 19.5784 9.75 18.75 9.75H5.25C4.42157 9.75 3.75 10.4216 3.75 11.25V18.75C3.75 19.5784 4.42157 20.25 5.25 20.25H18.75C19.5784 20.25 20.25 19.5784 20.25 18.75V11.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def calendar_days(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M12.75 12.75C12.75 13.1642 12.4142 13.5 12 13.5C11.5858 13.5 11.25 13.1642 11.25 12.75C11.25 12.3358 11.5858 12 12 12C12.4142 12 12.75 12.3358 12.75 12.75Z\" fill=\"#0F172A\"/>\n<path d=\"M7.5 15.75C7.91421 15.75 8.25 15.4142 8.25 15C8.25 14.5858 7.91421 14.25 7.5 14.25C7.08579 14.25 6.75 14.5858 6.75 15C6.75 15.4142 7.08579 15.75 7.5 15.75Z\" fill=\"#0F172A\"/>\n<path d=\"M8.25 17.25C8.25 17.6642 7.91421 18 7.5 18C7.08579 18 6.75 17.6642 6.75 17.25C6.75 16.8358 7.08579 16.5 7.5 16.5C7.91421 16.5 8.25 16.8358 8.25 17.25Z\" fill=\"#0F172A\"/>\n<path d=\"M9.75 15.75C10.1642 15.75 10.5 15.4142 10.5 15C10.5 14.5858 10.1642 14.25 9.75 14.25C9.33579 14.25 9 14.5858 9 15C9 15.4142 9.33579 15.75 9.75 15.75Z\" fill=\"#0F172A\"/>\n<path d=\"M10.5 17.25C10.5 17.6642 10.1642 18 9.75 18C9.33579 18 9 17.6642 9 17.25C9 16.8358 9.33579 16.5 9.75 16.5C10.1642 16.5 10.5 16.8358 10.5 17.25Z\" fill=\"#0F172A\"/>\n<path d=\"M12 15.75C12.4142 15.75 12.75 15.4142 12.75 15C12.75 14.5858 12.4142 14.25 12 14.25C11.5858 14.25 11.25 14.5858 11.25 15C11.25 15.4142 11.5858 15.75 12 15.75Z\" fill=\"#0F172A\"/>\n<path d=\"M12.75 17.25C12.75 17.6642 12.4142 18 12 18C11.5858 18 11.25 17.6642 11.25 17.25C11.25 16.8358 11.5858 16.5 12 16.5C12.4142 16.5 12.75 16.8358 12.75 17.25Z\" fill=\"#0F172A\"/>\n<path d=\"M14.25 15.75C14.6642 15.75 15 15.4142 15 15C15 14.5858 14.6642 14.25 14.25 14.25C13.8358 14.25 13.5 14.5858 13.5 15C13.5 15.4142 13.8358 15.75 14.25 15.75Z\" fill=\"#0F172A\"/>\n<path d=\"M15 17.25C15 17.6642 14.6642 18 14.25 18C13.8358 18 13.5 17.6642 13.5 17.25C13.5 16.8358 13.8358 16.5 14.25 16.5C14.6642 16.5 15 16.8358 15 17.25Z\" fill=\"#0F172A\"/>\n<path d=\"M16.5 15.75C16.9142 15.75 17.25 15.4142 17.25 15C17.25 14.5858 16.9142 14.25 16.5 14.25C16.0858 14.25 15.75 14.5858 15.75 15C15.75 15.4142 16.0858 15.75 16.5 15.75Z\" fill=\"#0F172A\"/>\n<path d=\"M15 12.75C15 13.1642 14.6642 13.5 14.25 13.5C13.8358 13.5 13.5 13.1642 13.5 12.75C13.5 12.3358 13.8358 12 14.25 12C14.6642 12 15 12.3358 15 12.75Z\" fill=\"#0F172A\"/>\n<path d=\"M16.5 13.5C16.9142 13.5 17.25 13.1642 17.25 12.75C17.25 12.3358 16.9142 12 16.5 12C16.0858 12 15.75 12.3358 15.75 12.75C15.75 13.1642 16.0858 13.5 16.5 13.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6.75 2.25C7.16421 2.25 7.5 2.58579 7.5 3V4.5H16.5V3C16.5 2.58579 16.8358 2.25 17.25 2.25C17.6642 2.25 18 2.58579 18 3V4.5H18.75C20.4069 4.5 21.75 5.84315 21.75 7.5V18.75C21.75 20.4069 20.4069 21.75 18.75 21.75H5.25C3.59315 21.75 2.25 20.4069 2.25 18.75V7.5C2.25 5.84315 3.59315 4.5 5.25 4.5H6V3C6 2.58579 6.33579 2.25 6.75 2.25ZM20.25 11.25C20.25 10.4216 19.5784 9.75 18.75 9.75H5.25C4.42157 9.75 3.75 10.4216 3.75 11.25V18.75C3.75 19.5784 4.42157 20.25 5.25 20.25H18.75C19.5784 20.25 20.25 19.5784 20.25 18.75V11.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/calendar.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.calendar />

      <.calendar class="h-6 w-6 text-gray-500" />

  or as a function

      <%= calendar() %>

      <%= calendar(class: "h-6 w-6 text-gray-500") %>
  """
  def calendar(assigns_or_opts \\ [])

  def calendar(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6.75 2.25C7.16421 2.25 7.5 2.58579 7.5 3V4.5H16.5V3C16.5 2.58579 16.8358 2.25 17.25 2.25C17.6642 2.25 18 2.58579 18 3V4.5H18.75C20.4069 4.5 21.75 5.84315 21.75 7.5V18.75C21.75 20.4069 20.4069 21.75 18.75 21.75H5.25C3.59315 21.75 2.25 20.4069 2.25 18.75V7.5C2.25 5.84315 3.59315 4.5 5.25 4.5H6V3C6 2.58579 6.33579 2.25 6.75 2.25ZM20.25 11.25C20.25 10.4216 19.5784 9.75 18.75 9.75H5.25C4.42157 9.75 3.75 10.4216 3.75 11.25V18.75C3.75 19.5784 4.42157 20.25 5.25 20.25H18.75C19.5784 20.25 20.25 19.5784 20.25 18.75V11.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def calendar(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6.75 2.25C7.16421 2.25 7.5 2.58579 7.5 3V4.5H16.5V3C16.5 2.58579 16.8358 2.25 17.25 2.25C17.6642 2.25 18 2.58579 18 3V4.5H18.75C20.4069 4.5 21.75 5.84315 21.75 7.5V18.75C21.75 20.4069 20.4069 21.75 18.75 21.75H5.25C3.59315 21.75 2.25 20.4069 2.25 18.75V7.5C2.25 5.84315 3.59315 4.5 5.25 4.5H6V3C6 2.58579 6.33579 2.25 6.75 2.25ZM20.25 11.25C20.25 10.4216 19.5784 9.75 18.75 9.75H5.25C4.42157 9.75 3.75 10.4216 3.75 11.25V18.75C3.75 19.5784 4.42157 20.25 5.25 20.25H18.75C19.5784 20.25 20.25 19.5784 20.25 18.75V11.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/camera.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.camera />

      <.camera class="h-6 w-6 text-gray-500" />

  or as a function

      <%= camera() %>

      <%= camera(class: "h-6 w-6 text-gray-500") %>
  """
  def camera(assigns_or_opts \\ [])

  def camera(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M12 9C9.92893 9 8.25 10.6789 8.25 12.75C8.25 14.8211 9.92893 16.5 12 16.5C14.0711 16.5 15.75 14.8211 15.75 12.75C15.75 10.6789 14.0711 9 12 9Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.34429 3.07113C10.2236 3.02391 11.109 3 12 3C12.891 3 13.7764 3.02391 14.6557 3.07113C15.6233 3.12309 16.4854 3.65612 16.9882 4.46184L17.8094 5.77786C18.0485 6.16099 18.4544 6.42131 18.9195 6.48741C19.3049 6.54218 19.6888 6.60145 20.0713 6.66518C21.5031 6.90378 22.5 8.15785 22.5 9.57403V18C22.5 19.6569 21.1569 21 19.5 21H4.5C2.84315 21 1.5 19.6569 1.5 18V9.57402C1.5 8.15784 2.49686 6.90377 3.92872 6.66517C4.31116 6.60144 4.6951 6.54217 5.08048 6.4874C5.54556 6.42131 5.95152 6.16099 6.19061 5.77785L7.01181 4.46184C7.5146 3.65612 8.37667 3.12309 9.34429 3.07113ZM6.75 12.75C6.75 9.8505 9.1005 7.5 12 7.5C14.8995 7.5 17.25 9.8505 17.25 12.75C17.25 15.6495 14.8995 18 12 18C9.1005 18 6.75 15.6495 6.75 12.75ZM18.75 11.25C19.1642 11.25 19.5 10.9142 19.5 10.5C19.5 10.0858 19.1642 9.75 18.75 9.75C18.3358 9.75 18 10.0858 18 10.5C18 10.9142 18.3358 11.25 18.75 11.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def camera(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M12 9C9.92893 9 8.25 10.6789 8.25 12.75C8.25 14.8211 9.92893 16.5 12 16.5C14.0711 16.5 15.75 14.8211 15.75 12.75C15.75 10.6789 14.0711 9 12 9Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.34429 3.07113C10.2236 3.02391 11.109 3 12 3C12.891 3 13.7764 3.02391 14.6557 3.07113C15.6233 3.12309 16.4854 3.65612 16.9882 4.46184L17.8094 5.77786C18.0485 6.16099 18.4544 6.42131 18.9195 6.48741C19.3049 6.54218 19.6888 6.60145 20.0713 6.66518C21.5031 6.90378 22.5 8.15785 22.5 9.57403V18C22.5 19.6569 21.1569 21 19.5 21H4.5C2.84315 21 1.5 19.6569 1.5 18V9.57402C1.5 8.15784 2.49686 6.90377 3.92872 6.66517C4.31116 6.60144 4.6951 6.54217 5.08048 6.4874C5.54556 6.42131 5.95152 6.16099 6.19061 5.77785L7.01181 4.46184C7.5146 3.65612 8.37667 3.12309 9.34429 3.07113ZM6.75 12.75C6.75 9.8505 9.1005 7.5 12 7.5C14.8995 7.5 17.25 9.8505 17.25 12.75C17.25 15.6495 14.8995 18 12 18C9.1005 18 6.75 15.6495 6.75 12.75ZM18.75 11.25C19.1642 11.25 19.5 10.9142 19.5 10.5C19.5 10.0858 19.1642 9.75 18.75 9.75C18.3358 9.75 18 10.0858 18 10.5C18 10.9142 18.3358 11.25 18.75 11.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chart-bar-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chart_bar_square />

      <.chart_bar_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chart_bar_square() %>

      <%= chart_bar_square(class: "h-6 w-6 text-gray-500") %>
  """
  def chart_bar_square(assigns_or_opts \\ [])

  def chart_bar_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 6C3 4.34315 4.34315 3 6 3H18C19.6569 3 21 4.34315 21 6V18C21 19.6569 19.6569 21 18 21H6C4.34315 21 3 19.6569 3 18V6ZM7.5 13.5C7.91421 13.5 8.25 13.8358 8.25 14.25V16.5C8.25 16.9142 7.91421 17.25 7.5 17.25C7.08579 17.25 6.75 16.9142 6.75 16.5V14.25C6.75 13.8358 7.08579 13.5 7.5 13.5ZM11.25 12C11.25 11.5858 10.9142 11.25 10.5 11.25C10.0858 11.25 9.75 11.5858 9.75 12V16.5C9.75 16.9142 10.0858 17.25 10.5 17.25C10.9142 17.25 11.25 16.9142 11.25 16.5V12ZM13.5 9C13.9142 9 14.25 9.33579 14.25 9.75V16.5C14.25 16.9142 13.9142 17.25 13.5 17.25C13.0858 17.25 12.75 16.9142 12.75 16.5V9.75C12.75 9.33579 13.0858 9 13.5 9ZM17.25 7.5C17.25 7.08579 16.9142 6.75 16.5 6.75C16.0858 6.75 15.75 7.08579 15.75 7.5V16.5C15.75 16.9142 16.0858 17.25 16.5 17.25C16.9142 17.25 17.25 16.9142 17.25 16.5V7.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chart_bar_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 6C3 4.34315 4.34315 3 6 3H18C19.6569 3 21 4.34315 21 6V18C21 19.6569 19.6569 21 18 21H6C4.34315 21 3 19.6569 3 18V6ZM7.5 13.5C7.91421 13.5 8.25 13.8358 8.25 14.25V16.5C8.25 16.9142 7.91421 17.25 7.5 17.25C7.08579 17.25 6.75 16.9142 6.75 16.5V14.25C6.75 13.8358 7.08579 13.5 7.5 13.5ZM11.25 12C11.25 11.5858 10.9142 11.25 10.5 11.25C10.0858 11.25 9.75 11.5858 9.75 12V16.5C9.75 16.9142 10.0858 17.25 10.5 17.25C10.9142 17.25 11.25 16.9142 11.25 16.5V12ZM13.5 9C13.9142 9 14.25 9.33579 14.25 9.75V16.5C14.25 16.9142 13.9142 17.25 13.5 17.25C13.0858 17.25 12.75 16.9142 12.75 16.5V9.75C12.75 9.33579 13.0858 9 13.5 9ZM17.25 7.5C17.25 7.08579 16.9142 6.75 16.5 6.75C16.0858 6.75 15.75 7.08579 15.75 7.5V16.5C15.75 16.9142 16.0858 17.25 16.5 17.25C16.9142 17.25 17.25 16.9142 17.25 16.5V7.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chart-bar.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chart_bar />

      <.chart_bar class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chart_bar() %>

      <%= chart_bar(class: "h-6 w-6 text-gray-500") %>
  """
  def chart_bar(assigns_or_opts \\ [])

  def chart_bar(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M18.375 2.25C17.3395 2.25 16.5 3.08947 16.5 4.125V19.875C16.5 20.9105 17.3395 21.75 18.375 21.75H19.125C20.1605 21.75 21 20.9105 21 19.875V4.125C21 3.08947 20.1605 2.25 19.125 2.25H18.375Z" fill="#0F172A"/>
    <path d="M9.75 8.625C9.75 7.58947 10.5895 6.75 11.625 6.75H12.375C13.4105 6.75 14.25 7.58947 14.25 8.625V19.875C14.25 20.9105 13.4105 21.75 12.375 21.75H11.625C10.5895 21.75 9.75 20.9105 9.75 19.875V8.625Z" fill="#0F172A"/>
    <path d="M3 13.125C3 12.0895 3.83947 11.25 4.875 11.25H5.625C6.66053 11.25 7.5 12.0895 7.5 13.125V19.875C7.5 20.9105 6.66053 21.75 5.625 21.75H4.875C3.83947 21.75 3 20.9105 3 19.875V13.125Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chart_bar(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M18.375 2.25C17.3395 2.25 16.5 3.08947 16.5 4.125V19.875C16.5 20.9105 17.3395 21.75 18.375 21.75H19.125C20.1605 21.75 21 20.9105 21 19.875V4.125C21 3.08947 20.1605 2.25 19.125 2.25H18.375Z\" fill=\"#0F172A\"/>\n<path d=\"M9.75 8.625C9.75 7.58947 10.5895 6.75 11.625 6.75H12.375C13.4105 6.75 14.25 7.58947 14.25 8.625V19.875C14.25 20.9105 13.4105 21.75 12.375 21.75H11.625C10.5895 21.75 9.75 20.9105 9.75 19.875V8.625Z\" fill=\"#0F172A\"/>\n<path d=\"M3 13.125C3 12.0895 3.83947 11.25 4.875 11.25H5.625C6.66053 11.25 7.5 12.0895 7.5 13.125V19.875C7.5 20.9105 6.66053 21.75 5.625 21.75H4.875C3.83947 21.75 3 20.9105 3 19.875V13.125Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chart-pie.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chart_pie />

      <.chart_pie class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chart_pie() %>

      <%= chart_pie(class: "h-6 w-6 text-gray-500") %>
  """
  def chart_pie(assigns_or_opts \\ [])

  def chart_pie(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 13.5C2.25 8.94365 5.94365 5.25 10.5 5.25C10.9142 5.25 11.25 5.58579 11.25 6V12.75H18C18.4142 12.75 18.75 13.0858 18.75 13.5C18.75 18.0563 15.0563 21.75 10.5 21.75C5.94365 21.75 2.25 18.0563 2.25 13.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.75 3C12.75 2.58579 13.0858 2.25 13.5 2.25C18.0563 2.25 21.75 5.94365 21.75 10.5C21.75 10.9142 21.4142 11.25 21 11.25H13.5C13.0858 11.25 12.75 10.9142 12.75 10.5V3Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chart_pie(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.25 13.5C2.25 8.94365 5.94365 5.25 10.5 5.25C10.9142 5.25 11.25 5.58579 11.25 6V12.75H18C18.4142 12.75 18.75 13.0858 18.75 13.5C18.75 18.0563 15.0563 21.75 10.5 21.75C5.94365 21.75 2.25 18.0563 2.25 13.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12.75 3C12.75 2.58579 13.0858 2.25 13.5 2.25C18.0563 2.25 21.75 5.94365 21.75 10.5C21.75 10.9142 21.4142 11.25 21 11.25H13.5C13.0858 11.25 12.75 10.9142 12.75 10.5V3Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-bottom-center-text.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_bottom_center_text />

      <.chat_bubble_bottom_center_text class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_bottom_center_text() %>

      <%= chat_bubble_bottom_center_text(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_bottom_center_text(assigns_or_opts \\ [])

  def chat_bubble_bottom_center_text(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.84836 2.771C7.18302 2.42773 9.57113 2.25 12.0003 2.25C14.4292 2.25 16.8171 2.4277 19.1516 2.77091C21.1299 3.06177 22.5 4.79445 22.5 6.74056V12.7595C22.5 14.7056 21.1299 16.4382 19.1516 16.7291C18.0054 16.8976 16.8464 17.0262 15.6759 17.1135C15.5514 17.1228 15.4431 17.1875 15.379 17.2835L12.624 21.416C12.4849 21.6247 12.2508 21.75 12 21.75C11.7492 21.75 11.5151 21.6247 11.376 21.416L8.62092 17.2835C8.5569 17.1874 8.44853 17.1227 8.32408 17.1134C7.15358 17.0261 5.99452 16.8975 4.84836 16.729C2.87004 16.4381 1.5 14.7054 1.5 12.7593V6.74064C1.5 4.79455 2.87004 3.06188 4.84836 2.771ZM6.75 8.25C6.75 7.83579 7.08579 7.5 7.5 7.5H16.5C16.9142 7.5 17.25 7.83579 17.25 8.25C17.25 8.66421 16.9142 9 16.5 9H7.5C7.08579 9 6.75 8.66421 6.75 8.25ZM7.5 10.5C7.08579 10.5 6.75 10.8358 6.75 11.25C6.75 11.6642 7.08579 12 7.5 12H12C12.4142 12 12.75 11.6642 12.75 11.25C12.75 10.8358 12.4142 10.5 12 10.5H7.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chat_bubble_bottom_center_text(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.84836 2.771C7.18302 2.42773 9.57113 2.25 12.0003 2.25C14.4292 2.25 16.8171 2.4277 19.1516 2.77091C21.1299 3.06177 22.5 4.79445 22.5 6.74056V12.7595C22.5 14.7056 21.1299 16.4382 19.1516 16.7291C18.0054 16.8976 16.8464 17.0262 15.6759 17.1135C15.5514 17.1228 15.4431 17.1875 15.379 17.2835L12.624 21.416C12.4849 21.6247 12.2508 21.75 12 21.75C11.7492 21.75 11.5151 21.6247 11.376 21.416L8.62092 17.2835C8.5569 17.1874 8.44853 17.1227 8.32408 17.1134C7.15358 17.0261 5.99452 16.8975 4.84836 16.729C2.87004 16.4381 1.5 14.7054 1.5 12.7593V6.74064C1.5 4.79455 2.87004 3.06188 4.84836 2.771ZM6.75 8.25C6.75 7.83579 7.08579 7.5 7.5 7.5H16.5C16.9142 7.5 17.25 7.83579 17.25 8.25C17.25 8.66421 16.9142 9 16.5 9H7.5C7.08579 9 6.75 8.66421 6.75 8.25ZM7.5 10.5C7.08579 10.5 6.75 10.8358 6.75 11.25C6.75 11.6642 7.08579 12 7.5 12H12C12.4142 12 12.75 11.6642 12.75 11.25C12.75 10.8358 12.4142 10.5 12 10.5H7.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-bottom-center.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_bottom_center />

      <.chat_bubble_bottom_center class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_bottom_center() %>

      <%= chat_bubble_bottom_center(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_bottom_center(assigns_or_opts \\ [])

  def chat_bubble_bottom_center(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.84836 2.771C7.18302 2.42773 9.57113 2.25 12.0003 2.25C14.4292 2.25 16.8171 2.4277 19.1516 2.77091C21.1299 3.06177 22.5 4.79445 22.5 6.74056V12.7595C22.5 14.7056 21.1299 16.4382 19.1516 16.7291C18.0054 16.8976 16.8464 17.0262 15.6759 17.1135C15.5514 17.1228 15.4431 17.1875 15.379 17.2835L12.624 21.416C12.4849 21.6247 12.2508 21.75 12 21.75C11.7492 21.75 11.5151 21.6247 11.376 21.416L8.62092 17.2835C8.5569 17.1874 8.44853 17.1227 8.32408 17.1134C7.15358 17.0261 5.99452 16.8975 4.84836 16.729C2.87004 16.4381 1.5 14.7054 1.5 12.7593V6.74064C1.5 4.79455 2.87004 3.06188 4.84836 2.771Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chat_bubble_bottom_center(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.84836 2.771C7.18302 2.42773 9.57113 2.25 12.0003 2.25C14.4292 2.25 16.8171 2.4277 19.1516 2.77091C21.1299 3.06177 22.5 4.79445 22.5 6.74056V12.7595C22.5 14.7056 21.1299 16.4382 19.1516 16.7291C18.0054 16.8976 16.8464 17.0262 15.6759 17.1135C15.5514 17.1228 15.4431 17.1875 15.379 17.2835L12.624 21.416C12.4849 21.6247 12.2508 21.75 12 21.75C11.7492 21.75 11.5151 21.6247 11.376 21.416L8.62092 17.2835C8.5569 17.1874 8.44853 17.1227 8.32408 17.1134C7.15358 17.0261 5.99452 16.8975 4.84836 16.729C2.87004 16.4381 1.5 14.7054 1.5 12.7593V6.74064C1.5 4.79455 2.87004 3.06188 4.84836 2.771Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-left-ellipsis.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_left_ellipsis />

      <.chat_bubble_left_ellipsis class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_left_ellipsis() %>

      <%= chat_bubble_left_ellipsis(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_left_ellipsis(assigns_or_opts \\ [])

  def chat_bubble_left_ellipsis(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.0003 2.25C9.57113 2.25 7.18302 2.42773 4.84836 2.771C2.87004 3.06188 1.5 4.79455 1.5 6.74064V12.7593C1.5 14.7054 2.87004 16.4381 4.84836 16.729C5.72491 16.8579 6.60901 16.9634 7.5 17.045V21C7.5 21.3033 7.68273 21.5768 7.96299 21.6929C8.24324 21.809 8.56583 21.7448 8.78033 21.5303L12.9638 17.3468C13.0318 17.2788 13.1266 17.2374 13.2302 17.2348C15.2361 17.1851 17.2123 17.0142 19.1516 16.7291C21.1299 16.4382 22.5 14.7056 22.5 12.7595V6.74056C22.5 4.79445 21.1299 3.06177 19.1516 2.77091C16.8171 2.4277 14.4292 2.25 12.0003 2.25ZM8.25 8.625C7.62868 8.625 7.125 9.12868 7.125 9.75C7.125 10.3713 7.62868 10.875 8.25 10.875C8.87132 10.875 9.375 10.3713 9.375 9.75C9.375 9.12868 8.87132 8.625 8.25 8.625ZM10.875 9.75C10.875 9.12868 11.3787 8.625 12 8.625C12.6213 8.625 13.125 9.12868 13.125 9.75C13.125 10.3713 12.6213 10.875 12 10.875C11.3787 10.875 10.875 10.3713 10.875 9.75ZM15.75 8.625C15.1287 8.625 14.625 9.12868 14.625 9.75C14.625 10.3713 15.1287 10.875 15.75 10.875C16.3713 10.875 16.875 10.3713 16.875 9.75C16.875 9.12868 16.3713 8.625 15.75 8.625Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chat_bubble_left_ellipsis(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12.0003 2.25C9.57113 2.25 7.18302 2.42773 4.84836 2.771C2.87004 3.06188 1.5 4.79455 1.5 6.74064V12.7593C1.5 14.7054 2.87004 16.4381 4.84836 16.729C5.72491 16.8579 6.60901 16.9634 7.5 17.045V21C7.5 21.3033 7.68273 21.5768 7.96299 21.6929C8.24324 21.809 8.56583 21.7448 8.78033 21.5303L12.9638 17.3468C13.0318 17.2788 13.1266 17.2374 13.2302 17.2348C15.2361 17.1851 17.2123 17.0142 19.1516 16.7291C21.1299 16.4382 22.5 14.7056 22.5 12.7595V6.74056C22.5 4.79445 21.1299 3.06177 19.1516 2.77091C16.8171 2.4277 14.4292 2.25 12.0003 2.25ZM8.25 8.625C7.62868 8.625 7.125 9.12868 7.125 9.75C7.125 10.3713 7.62868 10.875 8.25 10.875C8.87132 10.875 9.375 10.3713 9.375 9.75C9.375 9.12868 8.87132 8.625 8.25 8.625ZM10.875 9.75C10.875 9.12868 11.3787 8.625 12 8.625C12.6213 8.625 13.125 9.12868 13.125 9.75C13.125 10.3713 12.6213 10.875 12 10.875C11.3787 10.875 10.875 10.3713 10.875 9.75ZM15.75 8.625C15.1287 8.625 14.625 9.12868 14.625 9.75C14.625 10.3713 15.1287 10.875 15.75 10.875C16.3713 10.875 16.875 10.3713 16.875 9.75C16.875 9.12868 16.3713 8.625 15.75 8.625Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-left-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_left_right />

      <.chat_bubble_left_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_left_right() %>

      <%= chat_bubble_left_right(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_left_right(assigns_or_opts \\ [])

  def chat_bubble_left_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M4.91307 2.65823C6.9877 2.38888 9.10296 2.25 11.2503 2.25C13.3974 2.25 15.5124 2.38885 17.5869 2.65815C19.5091 2.90769 20.8783 4.51937 20.9923 6.38495C20.6665 6.27614 20.3212 6.20396 19.96 6.17399C18.5715 6.05874 17.1673 6 15.75 6C14.3326 6 12.9285 6.05874 11.54 6.17398C9.1817 6.36971 7.5 8.36467 7.5 10.6082V14.8937C7.5 16.5844 8.45468 18.1326 9.9328 18.8779L7.28033 21.5303C7.06583 21.7448 6.74324 21.809 6.46299 21.6929C6.18273 21.5768 6 21.3033 6 21V16.9705C5.63649 16.9316 5.27417 16.8887 4.91308 16.8418C2.90466 16.581 1.5 14.8333 1.5 12.8626V6.63738C1.5 4.66672 2.90466 2.91899 4.91307 2.65823Z" fill="#0F172A"/>
    <path d="M15.75 7.5C14.3741 7.5 13.0114 7.55702 11.6641 7.66884C10.1248 7.7966 9 9.10282 9 10.6082V14.8937C9 16.4014 10.128 17.7083 11.6692 17.8341C12.9131 17.9357 14.17 17.9912 15.4384 17.999L18.2197 20.7803C18.4342 20.9948 18.7568 21.059 19.037 20.9429C19.3173 20.8268 19.5 20.5533 19.5 20.25V17.8601C19.6103 17.8518 19.7206 17.8432 19.8307 17.8342C21.372 17.7085 22.5 16.4015 22.5 14.8938V10.6082C22.5 9.10283 21.3752 7.79661 19.836 7.66885C18.4886 7.55702 17.1259 7.5 15.75 7.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chat_bubble_left_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M4.91307 2.65823C6.9877 2.38888 9.10296 2.25 11.2503 2.25C13.3974 2.25 15.5124 2.38885 17.5869 2.65815C19.5091 2.90769 20.8783 4.51937 20.9923 6.38495C20.6665 6.27614 20.3212 6.20396 19.96 6.17399C18.5715 6.05874 17.1673 6 15.75 6C14.3326 6 12.9285 6.05874 11.54 6.17398C9.1817 6.36971 7.5 8.36467 7.5 10.6082V14.8937C7.5 16.5844 8.45468 18.1326 9.9328 18.8779L7.28033 21.5303C7.06583 21.7448 6.74324 21.809 6.46299 21.6929C6.18273 21.5768 6 21.3033 6 21V16.9705C5.63649 16.9316 5.27417 16.8887 4.91308 16.8418C2.90466 16.581 1.5 14.8333 1.5 12.8626V6.63738C1.5 4.66672 2.90466 2.91899 4.91307 2.65823Z\" fill=\"#0F172A\"/>\n<path d=\"M15.75 7.5C14.3741 7.5 13.0114 7.55702 11.6641 7.66884C10.1248 7.7966 9 9.10282 9 10.6082V14.8937C9 16.4014 10.128 17.7083 11.6692 17.8341C12.9131 17.9357 14.17 17.9912 15.4384 17.999L18.2197 20.7803C18.4342 20.9948 18.7568 21.059 19.037 20.9429C19.3173 20.8268 19.5 20.5533 19.5 20.25V17.8601C19.6103 17.8518 19.7206 17.8432 19.8307 17.8342C21.372 17.7085 22.5 16.4015 22.5 14.8938V10.6082C22.5 9.10283 21.3752 7.79661 19.836 7.66885C18.4886 7.55702 17.1259 7.5 15.75 7.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_left />

      <.chat_bubble_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_left() %>

      <%= chat_bubble_left(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_left(assigns_or_opts \\ [])

  def chat_bubble_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.84836 2.771C7.18302 2.42773 9.57113 2.25 12.0003 2.25C14.4292 2.25 16.8171 2.4277 19.1516 2.77091C21.1299 3.06177 22.5 4.79445 22.5 6.74056V12.7595C22.5 14.7056 21.1299 16.4382 19.1516 16.7291C17.2123 17.0142 15.2361 17.1851 13.2302 17.2348C13.1266 17.2374 13.0318 17.2788 12.9638 17.3468L8.78033 21.5303C8.56583 21.7448 8.24324 21.809 7.96299 21.6929C7.68273 21.5768 7.5 21.3033 7.5 21V17.045C6.60901 16.9634 5.72491 16.8579 4.84836 16.729C2.87004 16.4381 1.5 14.7054 1.5 12.7593V6.74064C1.5 4.79455 2.87004 3.06188 4.84836 2.771Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chat_bubble_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.84836 2.771C7.18302 2.42773 9.57113 2.25 12.0003 2.25C14.4292 2.25 16.8171 2.4277 19.1516 2.77091C21.1299 3.06177 22.5 4.79445 22.5 6.74056V12.7595C22.5 14.7056 21.1299 16.4382 19.1516 16.7291C17.2123 17.0142 15.2361 17.1851 13.2302 17.2348C13.1266 17.2374 13.0318 17.2788 12.9638 17.3468L8.78033 21.5303C8.56583 21.7448 8.24324 21.809 7.96299 21.6929C7.68273 21.5768 7.5 21.3033 7.5 21V17.045C6.60901 16.9634 5.72491 16.8579 4.84836 16.729C2.87004 16.4381 1.5 14.7054 1.5 12.7593V6.74064C1.5 4.79455 2.87004 3.06188 4.84836 2.771Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-oval-left-ellipsis.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_oval_left_ellipsis />

      <.chat_bubble_oval_left_ellipsis class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_oval_left_ellipsis() %>

      <%= chat_bubble_oval_left_ellipsis(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_oval_left_ellipsis(assigns_or_opts \\ [])

  def chat_bubble_oval_left_ellipsis(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.80365 21.6442C4.9793 21.6757 5.15732 21.7003 5.33691 21.7178C5.55516 21.7391 5.77647 21.75 6 21.75C7.3153 21.75 8.54447 21.3731 9.58317 20.7213C10.3569 20.9034 11.1668 21 12 21C17.322 21 21.75 17.0307 21.75 12C21.75 6.96934 17.322 3 12 3C6.67799 3 2.25 6.96934 2.25 12C2.25 14.4086 3.2746 16.5871 4.92371 18.1923C5.15571 18.4182 5.20107 18.6196 5.17822 18.7349C5.05254 19.3685 4.76687 19.9451 4.36357 20.4211C4.19016 20.6258 4.13927 20.9075 4.23008 21.1599C4.3209 21.4123 4.5396 21.597 4.80365 21.6442ZM8.25 10.875C7.62868 10.875 7.125 11.3787 7.125 12C7.125 12.6213 7.62868 13.125 8.25 13.125C8.87132 13.125 9.375 12.6213 9.375 12C9.375 11.3787 8.87132 10.875 8.25 10.875ZM10.875 12C10.875 11.3787 11.3787 10.875 12 10.875C12.6213 10.875 13.125 11.3787 13.125 12C13.125 12.6213 12.6213 13.125 12 13.125C11.3787 13.125 10.875 12.6213 10.875 12ZM15.75 10.875C15.1287 10.875 14.625 11.3787 14.625 12C14.625 12.6213 15.1287 13.125 15.75 13.125C16.3713 13.125 16.875 12.6213 16.875 12C16.875 11.3787 16.3713 10.875 15.75 10.875Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chat_bubble_oval_left_ellipsis(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.80365 21.6442C4.9793 21.6757 5.15732 21.7003 5.33691 21.7178C5.55516 21.7391 5.77647 21.75 6 21.75C7.3153 21.75 8.54447 21.3731 9.58317 20.7213C10.3569 20.9034 11.1668 21 12 21C17.322 21 21.75 17.0307 21.75 12C21.75 6.96934 17.322 3 12 3C6.67799 3 2.25 6.96934 2.25 12C2.25 14.4086 3.2746 16.5871 4.92371 18.1923C5.15571 18.4182 5.20107 18.6196 5.17822 18.7349C5.05254 19.3685 4.76687 19.9451 4.36357 20.4211C4.19016 20.6258 4.13927 20.9075 4.23008 21.1599C4.3209 21.4123 4.5396 21.597 4.80365 21.6442ZM8.25 10.875C7.62868 10.875 7.125 11.3787 7.125 12C7.125 12.6213 7.62868 13.125 8.25 13.125C8.87132 13.125 9.375 12.6213 9.375 12C9.375 11.3787 8.87132 10.875 8.25 10.875ZM10.875 12C10.875 11.3787 11.3787 10.875 12 10.875C12.6213 10.875 13.125 11.3787 13.125 12C13.125 12.6213 12.6213 13.125 12 13.125C11.3787 13.125 10.875 12.6213 10.875 12ZM15.75 10.875C15.1287 10.875 14.625 11.3787 14.625 12C14.625 12.6213 15.1287 13.125 15.75 13.125C16.3713 13.125 16.875 12.6213 16.875 12C16.875 11.3787 16.3713 10.875 15.75 10.875Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chat-bubble-oval-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chat_bubble_oval_left />

      <.chat_bubble_oval_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chat_bubble_oval_left() %>

      <%= chat_bubble_oval_left(class: "h-6 w-6 text-gray-500") %>
  """
  def chat_bubble_oval_left(assigns_or_opts \\ [])

  def chat_bubble_oval_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.33691 21.7178C5.15732 21.7003 4.9793 21.6757 4.80365 21.6442C4.5396 21.597 4.3209 21.4123 4.23008 21.1599C4.13927 20.9075 4.19016 20.6258 4.36357 20.4211C4.76687 19.9451 5.05254 19.3685 5.17822 18.7349C5.20107 18.6196 5.15571 18.4182 4.92371 18.1923C3.2746 16.5871 2.25 14.4086 2.25 12C2.25 6.96934 6.67799 3 12 3C17.322 3 21.75 6.96934 21.75 12C21.75 17.0307 17.322 21 12 21C11.1668 21 10.3569 20.9034 9.58317 20.7213C8.54447 21.3731 7.3153 21.75 6 21.75C5.77647 21.75 5.55516 21.7391 5.33691 21.7178Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chat_bubble_oval_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.33691 21.7178C5.15732 21.7003 4.9793 21.6757 4.80365 21.6442C4.5396 21.597 4.3209 21.4123 4.23008 21.1599C4.13927 20.9075 4.19016 20.6258 4.36357 20.4211C4.76687 19.9451 5.05254 19.3685 5.17822 18.7349C5.20107 18.6196 5.15571 18.4182 4.92371 18.1923C3.2746 16.5871 2.25 14.4086 2.25 12C2.25 6.96934 6.67799 3 12 3C17.322 3 21.75 6.96934 21.75 12C21.75 17.0307 17.322 21 12 21C11.1668 21 10.3569 20.9034 9.58317 20.7213C8.54447 21.3731 7.3153 21.75 6 21.75C5.77647 21.75 5.55516 21.7391 5.33691 21.7178Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/check-badge.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.check_badge />

      <.check_badge class="h-6 w-6 text-gray-500" />

  or as a function

      <%= check_badge() %>

      <%= check_badge(class: "h-6 w-6 text-gray-500") %>
  """
  def check_badge(assigns_or_opts \\ [])

  def check_badge(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8.60288 3.79876C9.42705 2.85093 10.6433 2.25 12 2.25C13.3566 2.25 14.5728 2.85087 15.397 3.79861C16.6501 3.71106 17.9352 4.14616 18.8946 5.10557C19.854 6.06498 20.2891 7.35009 20.2016 8.60319C21.1492 9.42735 21.75 10.6435 21.75 12C21.75 13.3568 21.149 14.5731 20.2011 15.3973C20.2884 16.6502 19.8533 17.935 18.8941 18.8943C17.9348 19.8535 16.65 20.2886 15.3971 20.2013C14.5729 21.1491 13.3567 21.75 12 21.75C10.6434 21.75 9.4272 21.1491 8.60304 20.2014C7.34992 20.289 6.0648 19.8539 5.10537 18.8945C4.14596 17.935 3.71086 16.6499 3.79841 15.3968C2.85079 14.5726 2.25 13.3565 2.25 12C2.25 10.6434 2.85085 9.42723 3.79855 8.60306C3.7111 7.35005 4.14621 6.06507 5.10554 5.10574C6.06488 4.1464 7.34987 3.71129 8.60288 3.79876ZM15.6103 10.1859C15.8511 9.84887 15.773 9.38046 15.4359 9.1397C15.0989 8.89894 14.6305 8.97701 14.3897 9.31407L11.1543 13.8436L9.53033 12.2197C9.23744 11.9268 8.76256 11.9268 8.46967 12.2197C8.17678 12.5126 8.17678 12.9874 8.46967 13.2803L10.7197 15.5303C10.8756 15.6862 11.0921 15.7656 11.3119 15.7474C11.5316 15.7293 11.7322 15.6153 11.8603 15.4359L15.6103 10.1859Z" fill="#0F172A"/>
    </svg>
    """
  end

  def check_badge(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8.60288 3.79876C9.42705 2.85093 10.6433 2.25 12 2.25C13.3566 2.25 14.5728 2.85087 15.397 3.79861C16.6501 3.71106 17.9352 4.14616 18.8946 5.10557C19.854 6.06498 20.2891 7.35009 20.2016 8.60319C21.1492 9.42735 21.75 10.6435 21.75 12C21.75 13.3568 21.149 14.5731 20.2011 15.3973C20.2884 16.6502 19.8533 17.935 18.8941 18.8943C17.9348 19.8535 16.65 20.2886 15.3971 20.2013C14.5729 21.1491 13.3567 21.75 12 21.75C10.6434 21.75 9.4272 21.1491 8.60304 20.2014C7.34992 20.289 6.0648 19.8539 5.10537 18.8945C4.14596 17.935 3.71086 16.6499 3.79841 15.3968C2.85079 14.5726 2.25 13.3565 2.25 12C2.25 10.6434 2.85085 9.42723 3.79855 8.60306C3.7111 7.35005 4.14621 6.06507 5.10554 5.10574C6.06488 4.1464 7.34987 3.71129 8.60288 3.79876ZM15.6103 10.1859C15.8511 9.84887 15.773 9.38046 15.4359 9.1397C15.0989 8.89894 14.6305 8.97701 14.3897 9.31407L11.1543 13.8436L9.53033 12.2197C9.23744 11.9268 8.76256 11.9268 8.46967 12.2197C8.17678 12.5126 8.17678 12.9874 8.46967 13.2803L10.7197 15.5303C10.8756 15.6862 11.0921 15.7656 11.3119 15.7474C11.5316 15.7293 11.7322 15.6153 11.8603 15.4359L15.6103 10.1859Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/check-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.check_circle />

      <.check_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= check_circle() %>

      <%= check_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def check_circle(assigns_or_opts \\ [])

  def check_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 12C2.25 6.61522 6.61522 2.25 12 2.25C17.3848 2.25 21.75 6.61522 21.75 12C21.75 17.3848 17.3848 21.75 12 21.75C6.61522 21.75 2.25 17.3848 2.25 12ZM15.6103 10.1859C15.8511 9.84887 15.773 9.38046 15.4359 9.1397C15.0989 8.89894 14.6305 8.97701 14.3897 9.31407L11.1543 13.8436L9.53033 12.2197C9.23744 11.9268 8.76256 11.9268 8.46967 12.2197C8.17678 12.5126 8.17678 12.9874 8.46967 13.2803L10.7197 15.5303C10.8756 15.6862 11.0921 15.7656 11.3119 15.7474C11.5316 15.7293 11.7322 15.6153 11.8603 15.4359L15.6103 10.1859Z" fill="#0F172A"/>
    </svg>
    """
  end

  def check_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.25 12C2.25 6.61522 6.61522 2.25 12 2.25C17.3848 2.25 21.75 6.61522 21.75 12C21.75 17.3848 17.3848 21.75 12 21.75C6.61522 21.75 2.25 17.3848 2.25 12ZM15.6103 10.1859C15.8511 9.84887 15.773 9.38046 15.4359 9.1397C15.0989 8.89894 14.6305 8.97701 14.3897 9.31407L11.1543 13.8436L9.53033 12.2197C9.23744 11.9268 8.76256 11.9268 8.46967 12.2197C8.17678 12.5126 8.17678 12.9874 8.46967 13.2803L10.7197 15.5303C10.8756 15.6862 11.0921 15.7656 11.3119 15.7474C11.5316 15.7293 11.7322 15.6153 11.8603 15.4359L15.6103 10.1859Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/check.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.check />

      <.check class="h-6 w-6 text-gray-500" />

  or as a function

      <%= check() %>

      <%= check(class: "h-6 w-6 text-gray-500") %>
  """
  def check(assigns_or_opts \\ [])

  def check(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M19.916 4.62604C20.2607 4.85581 20.3538 5.32146 20.124 5.6661L11.124 19.1661C10.9994 19.3531 10.7975 19.4743 10.5739 19.4964C10.3503 19.5186 10.1286 19.4393 9.96967 19.2804L3.96967 13.2804C3.67678 12.9875 3.67678 12.5126 3.96967 12.2197C4.26256 11.9269 4.73744 11.9269 5.03033 12.2197L10.3834 17.5729L18.876 4.83405C19.1057 4.48941 19.5714 4.39628 19.916 4.62604Z" fill="#0F172A"/>
    </svg>
    """
  end

  def check(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M19.916 4.62604C20.2607 4.85581 20.3538 5.32146 20.124 5.6661L11.124 19.1661C10.9994 19.3531 10.7975 19.4743 10.5739 19.4964C10.3503 19.5186 10.1286 19.4393 9.96967 19.2804L3.96967 13.2804C3.67678 12.9875 3.67678 12.5126 3.96967 12.2197C4.26256 11.9269 4.73744 11.9269 5.03033 12.2197L10.3834 17.5729L18.876 4.83405C19.1057 4.48941 19.5714 4.39628 19.916 4.62604Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-double-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_double_down />

      <.chevron_double_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_double_down() %>

      <%= chevron_double_down(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_double_down(assigns_or_opts \\ [])

  def chevron_double_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M20.0303 4.71967C20.3232 5.01256 20.3232 5.48744 20.0303 5.78033L12.5303 13.2803C12.2374 13.5732 11.7626 13.5732 11.4697 13.2803L3.96967 5.78033C3.67678 5.48744 3.67678 5.01256 3.96967 4.71967C4.26256 4.42678 4.73744 4.42678 5.03033 4.71967L12 11.6893L18.9697 4.71967C19.2626 4.42678 19.7374 4.42678 20.0303 4.71967ZM20.0303 10.7197C20.3232 11.0126 20.3232 11.4874 20.0303 11.7803L12.5303 19.2803C12.2374 19.5732 11.7626 19.5732 11.4697 19.2803L3.96967 11.7803C3.67678 11.4874 3.67678 11.0126 3.96967 10.7197C4.26256 10.4268 4.73744 10.4268 5.03033 10.7197L12 17.6893L18.9697 10.7197C19.2626 10.4268 19.7374 10.4268 20.0303 10.7197Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chevron_double_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M20.0303 4.71967C20.3232 5.01256 20.3232 5.48744 20.0303 5.78033L12.5303 13.2803C12.2374 13.5732 11.7626 13.5732 11.4697 13.2803L3.96967 5.78033C3.67678 5.48744 3.67678 5.01256 3.96967 4.71967C4.26256 4.42678 4.73744 4.42678 5.03033 4.71967L12 11.6893L18.9697 4.71967C19.2626 4.42678 19.7374 4.42678 20.0303 4.71967ZM20.0303 10.7197C20.3232 11.0126 20.3232 11.4874 20.0303 11.7803L12.5303 19.2803C12.2374 19.5732 11.7626 19.5732 11.4697 19.2803L3.96967 11.7803C3.67678 11.4874 3.67678 11.0126 3.96967 10.7197C4.26256 10.4268 4.73744 10.4268 5.03033 10.7197L12 17.6893L18.9697 10.7197C19.2626 10.4268 19.7374 10.4268 20.0303 10.7197Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-double-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_double_left />

      <.chevron_double_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_double_left() %>

      <%= chevron_double_left(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_double_left(assigns_or_opts \\ [])

  def chevron_double_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M13.2803 3.96967C13.5732 4.26256 13.5732 4.73744 13.2803 5.03033L6.31066 12L13.2803 18.9697C13.5732 19.2626 13.5732 19.7374 13.2803 20.0303C12.9874 20.3232 12.5126 20.3232 12.2197 20.0303L4.71967 12.5303C4.42678 12.2374 4.42678 11.7626 4.71967 11.4697L12.2197 3.96967C12.5126 3.67678 12.9874 3.67678 13.2803 3.96967ZM19.2803 3.96967C19.5732 4.26256 19.5732 4.73744 19.2803 5.03033L12.3107 12L19.2803 18.9697C19.5732 19.2626 19.5732 19.7374 19.2803 20.0303C18.9874 20.3232 18.5126 20.3232 18.2197 20.0303L10.7197 12.5303C10.4268 12.2374 10.4268 11.7626 10.7197 11.4697L18.2197 3.96967C18.5126 3.67678 18.9874 3.67678 19.2803 3.96967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chevron_double_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M13.2803 3.96967C13.5732 4.26256 13.5732 4.73744 13.2803 5.03033L6.31066 12L13.2803 18.9697C13.5732 19.2626 13.5732 19.7374 13.2803 20.0303C12.9874 20.3232 12.5126 20.3232 12.2197 20.0303L4.71967 12.5303C4.42678 12.2374 4.42678 11.7626 4.71967 11.4697L12.2197 3.96967C12.5126 3.67678 12.9874 3.67678 13.2803 3.96967ZM19.2803 3.96967C19.5732 4.26256 19.5732 4.73744 19.2803 5.03033L12.3107 12L19.2803 18.9697C19.5732 19.2626 19.5732 19.7374 19.2803 20.0303C18.9874 20.3232 18.5126 20.3232 18.2197 20.0303L10.7197 12.5303C10.4268 12.2374 10.4268 11.7626 10.7197 11.4697L18.2197 3.96967C18.5126 3.67678 18.9874 3.67678 19.2803 3.96967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-double-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_double_right />

      <.chevron_double_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_double_right() %>

      <%= chevron_double_right(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_double_right(assigns_or_opts \\ [])

  def chevron_double_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.71967 3.96967C5.01256 3.67678 5.48744 3.67678 5.78033 3.96967L13.2803 11.4697C13.5732 11.7626 13.5732 12.2374 13.2803 12.5303L5.78033 20.0303C5.48744 20.3232 5.01256 20.3232 4.71967 20.0303C4.42678 19.7374 4.42678 19.2626 4.71967 18.9697L11.6893 12L4.71967 5.03033C4.42678 4.73744 4.42678 4.26256 4.71967 3.96967ZM10.7197 3.96967C11.0126 3.67678 11.4874 3.67678 11.7803 3.96967L19.2803 11.4697C19.5732 11.7626 19.5732 12.2374 19.2803 12.5303L11.7803 20.0303C11.4874 20.3232 11.0126 20.3232 10.7197 20.0303C10.4268 19.7374 10.4268 19.2626 10.7197 18.9697L17.6893 12L10.7197 5.03033C10.4268 4.73744 10.4268 4.26256 10.7197 3.96967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chevron_double_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.71967 3.96967C5.01256 3.67678 5.48744 3.67678 5.78033 3.96967L13.2803 11.4697C13.5732 11.7626 13.5732 12.2374 13.2803 12.5303L5.78033 20.0303C5.48744 20.3232 5.01256 20.3232 4.71967 20.0303C4.42678 19.7374 4.42678 19.2626 4.71967 18.9697L11.6893 12L4.71967 5.03033C4.42678 4.73744 4.42678 4.26256 4.71967 3.96967ZM10.7197 3.96967C11.0126 3.67678 11.4874 3.67678 11.7803 3.96967L19.2803 11.4697C19.5732 11.7626 19.5732 12.2374 19.2803 12.5303L11.7803 20.0303C11.4874 20.3232 11.0126 20.3232 10.7197 20.0303C10.4268 19.7374 10.4268 19.2626 10.7197 18.9697L17.6893 12L10.7197 5.03033C10.4268 4.73744 10.4268 4.26256 10.7197 3.96967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-double-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_double_up />

      <.chevron_double_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_double_up() %>

      <%= chevron_double_up(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_double_up(assigns_or_opts \\ [])

  def chevron_double_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.4697 4.71967C11.7626 4.42678 12.2374 4.42678 12.5303 4.71967L20.0303 12.2197C20.3232 12.5126 20.3232 12.9874 20.0303 13.2803C19.7374 13.5732 19.2626 13.5732 18.9697 13.2803L12 6.31066L5.03033 13.2803C4.73744 13.5732 4.26256 13.5732 3.96967 13.2803C3.67678 12.9874 3.67678 12.5126 3.96967 12.2197L11.4697 4.71967ZM12 12.3107L5.03033 19.2803C4.73744 19.5732 4.26256 19.5732 3.96967 19.2803C3.67678 18.9874 3.67678 18.5126 3.96967 18.2197L11.4697 10.7197C11.7626 10.4268 12.2374 10.4268 12.5303 10.7197L20.0303 18.2197C20.3232 18.5126 20.3232 18.9874 20.0303 19.2803C19.7374 19.5732 19.2626 19.5732 18.9697 19.2803L12 12.3107Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chevron_double_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.4697 4.71967C11.7626 4.42678 12.2374 4.42678 12.5303 4.71967L20.0303 12.2197C20.3232 12.5126 20.3232 12.9874 20.0303 13.2803C19.7374 13.5732 19.2626 13.5732 18.9697 13.2803L12 6.31066L5.03033 13.2803C4.73744 13.5732 4.26256 13.5732 3.96967 13.2803C3.67678 12.9874 3.67678 12.5126 3.96967 12.2197L11.4697 4.71967ZM12 12.3107L5.03033 19.2803C4.73744 19.5732 4.26256 19.5732 3.96967 19.2803C3.67678 18.9874 3.67678 18.5126 3.96967 18.2197L11.4697 10.7197C11.7626 10.4268 12.2374 10.4268 12.5303 10.7197L20.0303 18.2197C20.3232 18.5126 20.3232 18.9874 20.0303 19.2803C19.7374 19.5732 19.2626 19.5732 18.9697 19.2803L12 12.3107Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_down />

      <.chevron_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_down() %>

      <%= chevron_down(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_down(assigns_or_opts \\ [])

  def chevron_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.5303 16.2803C12.2374 16.5732 11.7626 16.5732 11.4697 16.2803L3.96967 8.78033C3.67678 8.48744 3.67678 8.01256 3.96967 7.71967C4.26256 7.42678 4.73744 7.42678 5.03033 7.71967L12 14.6893L18.9697 7.71967C19.2626 7.42678 19.7374 7.42678 20.0303 7.71967C20.3232 8.01256 20.3232 8.48744 20.0303 8.78033L12.5303 16.2803Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chevron_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12.5303 16.2803C12.2374 16.5732 11.7626 16.5732 11.4697 16.2803L3.96967 8.78033C3.67678 8.48744 3.67678 8.01256 3.96967 7.71967C4.26256 7.42678 4.73744 7.42678 5.03033 7.71967L12 14.6893L18.9697 7.71967C19.2626 7.42678 19.7374 7.42678 20.0303 7.71967C20.3232 8.01256 20.3232 8.48744 20.0303 8.78033L12.5303 16.2803Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_left />

      <.chevron_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_left() %>

      <%= chevron_left(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_left(assigns_or_opts \\ [])

  def chevron_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.71967 12.5303C7.42678 12.2374 7.42678 11.7626 7.71967 11.4697L15.2197 3.96967C15.5126 3.67678 15.9874 3.67678 16.2803 3.96967C16.5732 4.26256 16.5732 4.73744 16.2803 5.03033L9.31066 12L16.2803 18.9697C16.5732 19.2626 16.5732 19.7374 16.2803 20.0303C15.9874 20.3232 15.5126 20.3232 15.2197 20.0303L7.71967 12.5303Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chevron_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.71967 12.5303C7.42678 12.2374 7.42678 11.7626 7.71967 11.4697L15.2197 3.96967C15.5126 3.67678 15.9874 3.67678 16.2803 3.96967C16.5732 4.26256 16.5732 4.73744 16.2803 5.03033L9.31066 12L16.2803 18.9697C16.5732 19.2626 16.5732 19.7374 16.2803 20.0303C15.9874 20.3232 15.5126 20.3232 15.2197 20.0303L7.71967 12.5303Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_right />

      <.chevron_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_right() %>

      <%= chevron_right(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_right(assigns_or_opts \\ [])

  def chevron_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M16.2803 11.4697C16.5732 11.7626 16.5732 12.2374 16.2803 12.5303L8.78033 20.0303C8.48744 20.3232 8.01256 20.3232 7.71967 20.0303C7.42678 19.7374 7.42678 19.2626 7.71967 18.9697L14.6893 12L7.71967 5.03033C7.42678 4.73744 7.42678 4.26256 7.71967 3.96967C8.01256 3.67678 8.48744 3.67678 8.78033 3.96967L16.2803 11.4697Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chevron_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M16.2803 11.4697C16.5732 11.7626 16.5732 12.2374 16.2803 12.5303L8.78033 20.0303C8.48744 20.3232 8.01256 20.3232 7.71967 20.0303C7.42678 19.7374 7.42678 19.2626 7.71967 18.9697L14.6893 12L7.71967 5.03033C7.42678 4.73744 7.42678 4.26256 7.71967 3.96967C8.01256 3.67678 8.48744 3.67678 8.78033 3.96967L16.2803 11.4697Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-up-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_up_down />

      <.chevron_up_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_up_down() %>

      <%= chevron_up_down(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_up_down(assigns_or_opts \\ [])

  def chevron_up_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.4697 4.71967C11.7626 4.42678 12.2374 4.42678 12.5303 4.71967L16.2803 8.46967C16.5732 8.76256 16.5732 9.23744 16.2803 9.53033C15.9874 9.82322 15.5126 9.82322 15.2197 9.53033L12 6.31066L8.78033 9.53033C8.48744 9.82322 8.01256 9.82322 7.71967 9.53033C7.42678 9.23744 7.42678 8.76256 7.71967 8.46967L11.4697 4.71967ZM7.71967 14.4697C8.01256 14.1768 8.48744 14.1768 8.78033 14.4697L12 17.6893L15.2197 14.4697C15.5126 14.1768 15.9874 14.1768 16.2803 14.4697C16.5732 14.7626 16.5732 15.2374 16.2803 15.5303L12.5303 19.2803C12.2374 19.5732 11.7626 19.5732 11.4697 19.2803L7.71967 15.5303C7.42678 15.2374 7.42678 14.7626 7.71967 14.4697Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chevron_up_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.4697 4.71967C11.7626 4.42678 12.2374 4.42678 12.5303 4.71967L16.2803 8.46967C16.5732 8.76256 16.5732 9.23744 16.2803 9.53033C15.9874 9.82322 15.5126 9.82322 15.2197 9.53033L12 6.31066L8.78033 9.53033C8.48744 9.82322 8.01256 9.82322 7.71967 9.53033C7.42678 9.23744 7.42678 8.76256 7.71967 8.46967L11.4697 4.71967ZM7.71967 14.4697C8.01256 14.1768 8.48744 14.1768 8.78033 14.4697L12 17.6893L15.2197 14.4697C15.5126 14.1768 15.9874 14.1768 16.2803 14.4697C16.5732 14.7626 16.5732 15.2374 16.2803 15.5303L12.5303 19.2803C12.2374 19.5732 11.7626 19.5732 11.4697 19.2803L7.71967 15.5303C7.42678 15.2374 7.42678 14.7626 7.71967 14.4697Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/chevron-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.chevron_up />

      <.chevron_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= chevron_up() %>

      <%= chevron_up(class: "h-6 w-6 text-gray-500") %>
  """
  def chevron_up(assigns_or_opts \\ [])

  def chevron_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.4697 7.71967C11.7626 7.42678 12.2374 7.42678 12.5303 7.71967L20.0303 15.2197C20.3232 15.5126 20.3232 15.9874 20.0303 16.2803C19.7374 16.5732 19.2626 16.5732 18.9697 16.2803L12 9.31066L5.03033 16.2803C4.73744 16.5732 4.26256 16.5732 3.96967 16.2803C3.67678 15.9874 3.67678 15.5126 3.96967 15.2197L11.4697 7.71967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def chevron_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.4697 7.71967C11.7626 7.42678 12.2374 7.42678 12.5303 7.71967L20.0303 15.2197C20.3232 15.5126 20.3232 15.9874 20.0303 16.2803C19.7374 16.5732 19.2626 16.5732 18.9697 16.2803L12 9.31066L5.03033 16.2803C4.73744 16.5732 4.26256 16.5732 3.96967 16.2803C3.67678 15.9874 3.67678 15.5126 3.96967 15.2197L11.4697 7.71967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/circle-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.circle_stack />

      <.circle_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= circle_stack() %>

      <%= circle_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def circle_stack(assigns_or_opts \\ [])

  def circle_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M21 6.375C21 9.06739 16.9706 11.25 12 11.25C7.02944 11.25 3 9.06739 3 6.375C3 3.68261 7.02944 1.5 12 1.5C16.9706 1.5 21 3.68261 21 6.375Z" fill="#0F172A"/>
    <path d="M12 12.75C14.6852 12.75 17.1905 12.1637 19.0784 11.1411C19.7684 10.7673 20.4248 10.3043 20.9747 9.75674C20.9915 9.87831 21 10.0011 21 10.125C21 12.8174 16.9706 15 12 15C7.02944 15 3 12.8174 3 10.125C3 10.0011 3.00853 9.8783 3.02529 9.75674C3.57523 10.3043 4.23162 10.7673 4.92161 11.1411C6.80949 12.1637 9.31481 12.75 12 12.75Z" fill="#0F172A"/>
    <path d="M12 16.5C14.6852 16.5 17.1905 15.9137 19.0784 14.8911C19.7684 14.5173 20.4248 14.0543 20.9747 13.5067C20.9915 13.6283 21 13.7511 21 13.875C21 16.5674 16.9706 18.75 12 18.75C7.02944 18.75 3 16.5674 3 13.875C3 13.7511 3.00853 13.6283 3.02529 13.5067C3.57523 14.0543 4.23162 14.5173 4.92161 14.8911C6.80949 15.9137 9.31481 16.5 12 16.5Z" fill="#0F172A"/>
    <path d="M12 20.25C14.6852 20.25 17.1905 19.6637 19.0784 18.6411C19.7684 18.2673 20.4248 17.8043 20.9747 17.2567C20.9915 17.3783 21 17.5011 21 17.625C21 20.3174 16.9706 22.5 12 22.5C7.02944 22.5 3 20.3174 3 17.625C3 17.5011 3.00853 17.3783 3.02529 17.2567C3.57523 17.8043 4.23162 18.2673 4.92161 18.6411C6.80949 19.6637 9.31481 20.25 12 20.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def circle_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M21 6.375C21 9.06739 16.9706 11.25 12 11.25C7.02944 11.25 3 9.06739 3 6.375C3 3.68261 7.02944 1.5 12 1.5C16.9706 1.5 21 3.68261 21 6.375Z\" fill=\"#0F172A\"/>\n<path d=\"M12 12.75C14.6852 12.75 17.1905 12.1637 19.0784 11.1411C19.7684 10.7673 20.4248 10.3043 20.9747 9.75674C20.9915 9.87831 21 10.0011 21 10.125C21 12.8174 16.9706 15 12 15C7.02944 15 3 12.8174 3 10.125C3 10.0011 3.00853 9.8783 3.02529 9.75674C3.57523 10.3043 4.23162 10.7673 4.92161 11.1411C6.80949 12.1637 9.31481 12.75 12 12.75Z\" fill=\"#0F172A\"/>\n<path d=\"M12 16.5C14.6852 16.5 17.1905 15.9137 19.0784 14.8911C19.7684 14.5173 20.4248 14.0543 20.9747 13.5067C20.9915 13.6283 21 13.7511 21 13.875C21 16.5674 16.9706 18.75 12 18.75C7.02944 18.75 3 16.5674 3 13.875C3 13.7511 3.00853 13.6283 3.02529 13.5067C3.57523 14.0543 4.23162 14.5173 4.92161 14.8911C6.80949 15.9137 9.31481 16.5 12 16.5Z\" fill=\"#0F172A\"/>\n<path d=\"M12 20.25C14.6852 20.25 17.1905 19.6637 19.0784 18.6411C19.7684 18.2673 20.4248 17.8043 20.9747 17.2567C20.9915 17.3783 21 17.5011 21 17.625C21 20.3174 16.9706 22.5 12 22.5C7.02944 22.5 3 20.3174 3 17.625C3 17.5011 3.00853 17.3783 3.02529 17.2567C3.57523 17.8043 4.23162 18.2673 4.92161 18.6411C6.80949 19.6637 9.31481 20.25 12 20.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/clipboard-document-check.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.clipboard_document_check />

      <.clipboard_document_check class="h-6 w-6 text-gray-500" />

  or as a function

      <%= clipboard_document_check() %>

      <%= clipboard_document_check(class: "h-6 w-6 text-gray-500") %>
  """
  def clipboard_document_check(assigns_or_opts \\ [])

  def clipboard_document_check(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.50183 6H11.2477L11.25 6H14.6299C16.4915 6.00268 17.9999 7.51269 17.9999 9.375V18.75C19.6567 18.75 20.9999 17.4068 20.9999 15.75V6.10821C20.9999 4.60282 19.8751 3.2966 18.3358 3.16884C18.1121 3.15027 17.8879 3.13321 17.6632 3.11767C17.1633 2.15647 16.1583 1.5 15 1.5H13.5C12.3417 1.5 11.3367 2.15647 10.8368 3.11765C10.6121 3.13319 10.3878 3.15026 10.1639 3.16884C8.66165 3.29353 7.55421 4.54069 7.50183 6ZM13.5 3C12.6716 3 12 3.67157 12 4.5H16.5C16.5 3.67157 15.8284 3 15 3H13.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 9.375C3 8.33947 3.83947 7.5 4.875 7.5H14.625C15.6605 7.5 16.5 8.33947 16.5 9.375V20.625C16.5 21.6605 15.6605 22.5 14.625 22.5H4.875C3.83947 22.5 3 21.6605 3 20.625V9.375ZM12.5857 13.9685C12.8444 13.6451 12.792 13.1731 12.4685 12.9143C12.1451 12.6556 11.6731 12.708 11.4143 13.0315L8.93781 16.1272L8.03033 15.2197C7.73744 14.9268 7.26256 14.9268 6.96967 15.2197C6.67678 15.5126 6.67678 15.9874 6.96967 16.2803L8.46967 17.7803C8.62052 17.9312 8.82847 18.0107 9.04148 17.9989C9.25448 17.9871 9.45238 17.8851 9.58565 17.7185L12.5857 13.9685Z" fill="#0F172A"/>
    </svg>
    """
  end

  def clipboard_document_check(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.50183 6H11.2477L11.25 6H14.6299C16.4915 6.00268 17.9999 7.51269 17.9999 9.375V18.75C19.6567 18.75 20.9999 17.4068 20.9999 15.75V6.10821C20.9999 4.60282 19.8751 3.2966 18.3358 3.16884C18.1121 3.15027 17.8879 3.13321 17.6632 3.11767C17.1633 2.15647 16.1583 1.5 15 1.5H13.5C12.3417 1.5 11.3367 2.15647 10.8368 3.11765C10.6121 3.13319 10.3878 3.15026 10.1639 3.16884C8.66165 3.29353 7.55421 4.54069 7.50183 6ZM13.5 3C12.6716 3 12 3.67157 12 4.5H16.5C16.5 3.67157 15.8284 3 15 3H13.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 9.375C3 8.33947 3.83947 7.5 4.875 7.5H14.625C15.6605 7.5 16.5 8.33947 16.5 9.375V20.625C16.5 21.6605 15.6605 22.5 14.625 22.5H4.875C3.83947 22.5 3 21.6605 3 20.625V9.375ZM12.5857 13.9685C12.8444 13.6451 12.792 13.1731 12.4685 12.9143C12.1451 12.6556 11.6731 12.708 11.4143 13.0315L8.93781 16.1272L8.03033 15.2197C7.73744 14.9268 7.26256 14.9268 6.96967 15.2197C6.67678 15.5126 6.67678 15.9874 6.96967 16.2803L8.46967 17.7803C8.62052 17.9312 8.82847 18.0107 9.04148 17.9989C9.25448 17.9871 9.45238 17.8851 9.58565 17.7185L12.5857 13.9685Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/clipboard-document-list.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.clipboard_document_list />

      <.clipboard_document_list class="h-6 w-6 text-gray-500" />

  or as a function

      <%= clipboard_document_list() %>

      <%= clipboard_document_list(class: "h-6 w-6 text-gray-500") %>
  """
  def clipboard_document_list(assigns_or_opts \\ [])

  def clipboard_document_list(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.50183 6H11.2477L11.25 6H14.6299C16.4915 6.00268 17.9999 7.51269 17.9999 9.375V18.75C19.6567 18.75 20.9999 17.4068 20.9999 15.75V6.10821C20.9999 4.60282 19.8751 3.2966 18.3358 3.16884C18.1121 3.15027 17.8879 3.13321 17.6632 3.11767C17.1633 2.15647 16.1583 1.5 15 1.5H13.5C12.3417 1.5 11.3367 2.15647 10.8368 3.11765C10.6121 3.13319 10.3878 3.15026 10.1639 3.16884C8.66165 3.29353 7.55421 4.54069 7.50183 6ZM13.5 3C12.6716 3 12 3.67157 12 4.5H16.5C16.5 3.67157 15.8284 3 15 3H13.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 9.375C3 8.33947 3.83947 7.5 4.875 7.5H14.625C15.6605 7.5 16.5 8.33947 16.5 9.375V20.625C16.5 21.6605 15.6605 22.5 14.625 22.5H4.875C3.83947 22.5 3 21.6605 3 20.625V9.375ZM6 12C6 11.5858 6.33579 11.25 6.75 11.25H6.7575C7.17171 11.25 7.5075 11.5858 7.5075 12V12.0075C7.5075 12.4217 7.17171 12.7575 6.7575 12.7575H6.75C6.33579 12.7575 6 12.4217 6 12.0075V12ZM8.25 12C8.25 11.5858 8.58579 11.25 9 11.25H12.75C13.1642 11.25 13.5 11.5858 13.5 12C13.5 12.4142 13.1642 12.75 12.75 12.75H9C8.58579 12.75 8.25 12.4142 8.25 12ZM6 15C6 14.5858 6.33579 14.25 6.75 14.25H6.7575C7.17171 14.25 7.5075 14.5858 7.5075 15V15.0075C7.5075 15.4217 7.17171 15.7575 6.7575 15.7575H6.75C6.33579 15.7575 6 15.4217 6 15.0075V15ZM8.25 15C8.25 14.5858 8.58579 14.25 9 14.25H12.75C13.1642 14.25 13.5 14.5858 13.5 15C13.5 15.4142 13.1642 15.75 12.75 15.75H9C8.58579 15.75 8.25 15.4142 8.25 15ZM6 18C6 17.5858 6.33579 17.25 6.75 17.25H6.7575C7.17171 17.25 7.5075 17.5858 7.5075 18V18.0075C7.5075 18.4217 7.17171 18.7575 6.7575 18.7575H6.75C6.33579 18.7575 6 18.4217 6 18.0075V18ZM8.25 18C8.25 17.5858 8.58579 17.25 9 17.25H12.75C13.1642 17.25 13.5 17.5858 13.5 18C13.5 18.4142 13.1642 18.75 12.75 18.75H9C8.58579 18.75 8.25 18.4142 8.25 18Z" fill="#0F172A"/>
    </svg>
    """
  end

  def clipboard_document_list(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.50183 6H11.2477L11.25 6H14.6299C16.4915 6.00268 17.9999 7.51269 17.9999 9.375V18.75C19.6567 18.75 20.9999 17.4068 20.9999 15.75V6.10821C20.9999 4.60282 19.8751 3.2966 18.3358 3.16884C18.1121 3.15027 17.8879 3.13321 17.6632 3.11767C17.1633 2.15647 16.1583 1.5 15 1.5H13.5C12.3417 1.5 11.3367 2.15647 10.8368 3.11765C10.6121 3.13319 10.3878 3.15026 10.1639 3.16884C8.66165 3.29353 7.55421 4.54069 7.50183 6ZM13.5 3C12.6716 3 12 3.67157 12 4.5H16.5C16.5 3.67157 15.8284 3 15 3H13.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 9.375C3 8.33947 3.83947 7.5 4.875 7.5H14.625C15.6605 7.5 16.5 8.33947 16.5 9.375V20.625C16.5 21.6605 15.6605 22.5 14.625 22.5H4.875C3.83947 22.5 3 21.6605 3 20.625V9.375ZM6 12C6 11.5858 6.33579 11.25 6.75 11.25H6.7575C7.17171 11.25 7.5075 11.5858 7.5075 12V12.0075C7.5075 12.4217 7.17171 12.7575 6.7575 12.7575H6.75C6.33579 12.7575 6 12.4217 6 12.0075V12ZM8.25 12C8.25 11.5858 8.58579 11.25 9 11.25H12.75C13.1642 11.25 13.5 11.5858 13.5 12C13.5 12.4142 13.1642 12.75 12.75 12.75H9C8.58579 12.75 8.25 12.4142 8.25 12ZM6 15C6 14.5858 6.33579 14.25 6.75 14.25H6.7575C7.17171 14.25 7.5075 14.5858 7.5075 15V15.0075C7.5075 15.4217 7.17171 15.7575 6.7575 15.7575H6.75C6.33579 15.7575 6 15.4217 6 15.0075V15ZM8.25 15C8.25 14.5858 8.58579 14.25 9 14.25H12.75C13.1642 14.25 13.5 14.5858 13.5 15C13.5 15.4142 13.1642 15.75 12.75 15.75H9C8.58579 15.75 8.25 15.4142 8.25 15ZM6 18C6 17.5858 6.33579 17.25 6.75 17.25H6.7575C7.17171 17.25 7.5075 17.5858 7.5075 18V18.0075C7.5075 18.4217 7.17171 18.7575 6.7575 18.7575H6.75C6.33579 18.7575 6 18.4217 6 18.0075V18ZM8.25 18C8.25 17.5858 8.58579 17.25 9 17.25H12.75C13.1642 17.25 13.5 17.5858 13.5 18C13.5 18.4142 13.1642 18.75 12.75 18.75H9C8.58579 18.75 8.25 18.4142 8.25 18Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/clipboard-document.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.clipboard_document />

      <.clipboard_document class="h-6 w-6 text-gray-500" />

  or as a function

      <%= clipboard_document() %>

      <%= clipboard_document(class: "h-6 w-6 text-gray-500") %>
  """
  def clipboard_document(assigns_or_opts \\ [])

  def clipboard_document(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M17.6633 3.11765C17.8879 3.13319 18.1122 3.15026 18.336 3.16883C19.8753 3.29659 21 4.60281 21 6.10821V15.75C21 17.4068 19.6569 18.75 18 18.75V16.5C18 10.5781 13.4244 5.72484 7.61572 5.28281C7.93989 4.15127 8.91565 3.27245 10.1641 3.16883C10.3879 3.15026 10.6121 3.13319 10.8368 3.11765C11.3367 2.15647 12.3417 1.5 13.5 1.5H15C16.1584 1.5 17.1634 2.15647 17.6633 3.11765ZM12 4.5C12 3.67157 12.6716 3 13.5 3H15C15.8285 3 16.5 3.67157 16.5 4.5H12Z" fill="#0F172A"/>
    <path d="M3 8.625C3 7.58947 3.83947 6.75 4.875 6.75H5.25C7.32107 6.75 9 8.42893 9 10.5V12.375C9 13.4105 9.83947 14.25 10.875 14.25H12.75C14.8211 14.25 16.5 15.9289 16.5 18V20.625C16.5 21.6605 15.6605 22.5 14.625 22.5H4.875C3.83947 22.5 3 21.6605 3 20.625V8.625Z" fill="#0F172A"/>
    <path d="M10.5 10.5C10.5 9.18695 10.018 7.98648 9.22119 7.0659C12.6201 7.95377 15.2962 10.6299 16.1841 14.0288C15.2635 13.232 14.0631 12.75 12.75 12.75H10.875C10.6679 12.75 10.5 12.5821 10.5 12.375V10.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def clipboard_document(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M17.6633 3.11765C17.8879 3.13319 18.1122 3.15026 18.336 3.16883C19.8753 3.29659 21 4.60281 21 6.10821V15.75C21 17.4068 19.6569 18.75 18 18.75V16.5C18 10.5781 13.4244 5.72484 7.61572 5.28281C7.93989 4.15127 8.91565 3.27245 10.1641 3.16883C10.3879 3.15026 10.6121 3.13319 10.8368 3.11765C11.3367 2.15647 12.3417 1.5 13.5 1.5H15C16.1584 1.5 17.1634 2.15647 17.6633 3.11765ZM12 4.5C12 3.67157 12.6716 3 13.5 3H15C15.8285 3 16.5 3.67157 16.5 4.5H12Z\" fill=\"#0F172A\"/>\n<path d=\"M3 8.625C3 7.58947 3.83947 6.75 4.875 6.75H5.25C7.32107 6.75 9 8.42893 9 10.5V12.375C9 13.4105 9.83947 14.25 10.875 14.25H12.75C14.8211 14.25 16.5 15.9289 16.5 18V20.625C16.5 21.6605 15.6605 22.5 14.625 22.5H4.875C3.83947 22.5 3 21.6605 3 20.625V8.625Z\" fill=\"#0F172A\"/>\n<path d=\"M10.5 10.5C10.5 9.18695 10.018 7.98648 9.22119 7.0659C12.6201 7.95377 15.2962 10.6299 16.1841 14.0288C15.2635 13.232 14.0631 12.75 12.75 12.75H10.875C10.6679 12.75 10.5 12.5821 10.5 12.375V10.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/clipboard.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.clipboard />

      <.clipboard class="h-6 w-6 text-gray-500" />

  or as a function

      <%= clipboard() %>

      <%= clipboard(class: "h-6 w-6 text-gray-500") %>
  """
  def clipboard(assigns_or_opts \\ [])

  def clipboard(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.5 3C9.81411 3 9.23394 3.46099 9.0561 4.09149C9.01971 4.2205 9 4.35733 9 4.5H15C15 4.35733 14.9803 4.2205 14.9439 4.09149C14.7661 3.46099 14.1859 3 13.5 3H10.5ZM7.80654 3.17789C8.29511 2.18436 9.31692 1.5 10.5 1.5H13.5C14.6831 1.5 15.7049 2.18436 16.1935 3.17789C16.6911 3.22029 17.1865 3.27017 17.6798 3.32741C19.1772 3.50119 20.25 4.78722 20.25 6.25699V19.5C20.25 21.1569 18.9069 22.5 17.25 22.5H6.75C5.09315 22.5 3.75 21.1569 3.75 19.5V6.25699C3.75 4.78722 4.82283 3.50119 6.32022 3.32741C6.81347 3.27017 7.30894 3.22029 7.80654 3.17789Z" fill="#0F172A"/>
    </svg>
    """
  end

  def clipboard(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.5 3C9.81411 3 9.23394 3.46099 9.0561 4.09149C9.01971 4.2205 9 4.35733 9 4.5H15C15 4.35733 14.9803 4.2205 14.9439 4.09149C14.7661 3.46099 14.1859 3 13.5 3H10.5ZM7.80654 3.17789C8.29511 2.18436 9.31692 1.5 10.5 1.5H13.5C14.6831 1.5 15.7049 2.18436 16.1935 3.17789C16.6911 3.22029 17.1865 3.27017 17.6798 3.32741C19.1772 3.50119 20.25 4.78722 20.25 6.25699V19.5C20.25 21.1569 18.9069 22.5 17.25 22.5H6.75C5.09315 22.5 3.75 21.1569 3.75 19.5V6.25699C3.75 4.78722 4.82283 3.50119 6.32022 3.32741C6.81347 3.27017 7.30894 3.22029 7.80654 3.17789Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/clock.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.clock />

      <.clock class="h-6 w-6 text-gray-500" />

  or as a function

      <%= clock() %>

      <%= clock(class: "h-6 w-6 text-gray-500") %>
  """
  def clock(assigns_or_opts \\ [])

  def clock(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM12.75 6C12.75 5.58579 12.4142 5.25 12 5.25C11.5858 5.25 11.25 5.58579 11.25 6V12C11.25 12.4142 11.5858 12.75 12 12.75H16.5C16.9142 12.75 17.25 12.4142 17.25 12C17.25 11.5858 16.9142 11.25 16.5 11.25H12.75V6Z" fill="#0F172A"/>
    </svg>
    """
  end

  def clock(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM12.75 6C12.75 5.58579 12.4142 5.25 12 5.25C11.5858 5.25 11.25 5.58579 11.25 6V12C11.25 12.4142 11.5858 12.75 12 12.75H16.5C16.9142 12.75 17.25 12.4142 17.25 12C17.25 11.5858 16.9142 11.25 16.5 11.25H12.75V6Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cloud-arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cloud_arrow_down />

      <.cloud_arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cloud_arrow_down() %>

      <%= cloud_arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def cloud_arrow_down(assigns_or_opts \\ [])

  def cloud_arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.5 3.75C7.18629 3.75 4.5 6.43629 4.5 9.75C4.5 9.91685 4.50683 10.0822 4.52024 10.2459C2.73627 11.084 1.5 12.8968 1.5 15C1.5 17.8995 3.85051 20.25 6.75 20.25H18C20.4853 20.25 22.5 18.2353 22.5 15.75C22.5 14.0653 21.5744 12.5981 20.2058 11.827C20.2349 11.6386 20.25 11.4459 20.25 11.25C20.25 9.17893 18.5711 7.5 16.5 7.5C16.3559 7.5 16.2135 7.50816 16.0733 7.52408C15.1893 5.31282 13.028 3.75 10.5 3.75ZM12.75 9.75C12.75 9.33579 12.4142 9 12 9C11.5858 9 11.25 9.33579 11.25 9.75V14.6893L9.53033 12.9697C9.23744 12.6768 8.76256 12.6768 8.46967 12.9697C8.17678 13.2626 8.17678 13.7374 8.46967 14.0303L11.4697 17.0303C11.7626 17.3232 12.2374 17.3232 12.5303 17.0303L15.5303 14.0303C15.8232 13.7374 15.8232 13.2626 15.5303 12.9697C15.2374 12.6768 14.7626 12.6768 14.4697 12.9697L12.75 14.6893V9.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def cloud_arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.5 3.75C7.18629 3.75 4.5 6.43629 4.5 9.75C4.5 9.91685 4.50683 10.0822 4.52024 10.2459C2.73627 11.084 1.5 12.8968 1.5 15C1.5 17.8995 3.85051 20.25 6.75 20.25H18C20.4853 20.25 22.5 18.2353 22.5 15.75C22.5 14.0653 21.5744 12.5981 20.2058 11.827C20.2349 11.6386 20.25 11.4459 20.25 11.25C20.25 9.17893 18.5711 7.5 16.5 7.5C16.3559 7.5 16.2135 7.50816 16.0733 7.52408C15.1893 5.31282 13.028 3.75 10.5 3.75ZM12.75 9.75C12.75 9.33579 12.4142 9 12 9C11.5858 9 11.25 9.33579 11.25 9.75V14.6893L9.53033 12.9697C9.23744 12.6768 8.76256 12.6768 8.46967 12.9697C8.17678 13.2626 8.17678 13.7374 8.46967 14.0303L11.4697 17.0303C11.7626 17.3232 12.2374 17.3232 12.5303 17.0303L15.5303 14.0303C15.8232 13.7374 15.8232 13.2626 15.5303 12.9697C15.2374 12.6768 14.7626 12.6768 14.4697 12.9697L12.75 14.6893V9.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cloud-arrow-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cloud_arrow_up />

      <.cloud_arrow_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cloud_arrow_up() %>

      <%= cloud_arrow_up(class: "h-6 w-6 text-gray-500") %>
  """
  def cloud_arrow_up(assigns_or_opts \\ [])

  def cloud_arrow_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.5 3.75C7.18629 3.75 4.5 6.43629 4.5 9.75C4.5 9.91685 4.50683 10.0822 4.52024 10.2459C2.73627 11.084 1.5 12.8968 1.5 15C1.5 17.8995 3.85051 20.25 6.75 20.25H18C20.4853 20.25 22.5 18.2353 22.5 15.75C22.5 14.0653 21.5744 12.5981 20.2058 11.827C20.2349 11.6386 20.25 11.4459 20.25 11.25C20.25 9.17893 18.5711 7.5 16.5 7.5C16.3559 7.5 16.2135 7.50816 16.0733 7.52408C15.1893 5.31282 13.028 3.75 10.5 3.75ZM12.5303 9.21967C12.2374 8.92678 11.7626 8.92678 11.4697 9.21967L8.46967 12.2197C8.17678 12.5126 8.17678 12.9874 8.46967 13.2803C8.76256 13.5732 9.23744 13.5732 9.53033 13.2803L11.25 11.5607L11.25 16.5C11.25 16.9142 11.5858 17.25 12 17.25C12.4142 17.25 12.75 16.9142 12.75 16.5V11.5607L14.4697 13.2803C14.7626 13.5732 15.2374 13.5732 15.5303 13.2803C15.8232 12.9874 15.8232 12.5126 15.5303 12.2197L12.5303 9.21967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def cloud_arrow_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.5 3.75C7.18629 3.75 4.5 6.43629 4.5 9.75C4.5 9.91685 4.50683 10.0822 4.52024 10.2459C2.73627 11.084 1.5 12.8968 1.5 15C1.5 17.8995 3.85051 20.25 6.75 20.25H18C20.4853 20.25 22.5 18.2353 22.5 15.75C22.5 14.0653 21.5744 12.5981 20.2058 11.827C20.2349 11.6386 20.25 11.4459 20.25 11.25C20.25 9.17893 18.5711 7.5 16.5 7.5C16.3559 7.5 16.2135 7.50816 16.0733 7.52408C15.1893 5.31282 13.028 3.75 10.5 3.75ZM12.5303 9.21967C12.2374 8.92678 11.7626 8.92678 11.4697 9.21967L8.46967 12.2197C8.17678 12.5126 8.17678 12.9874 8.46967 13.2803C8.76256 13.5732 9.23744 13.5732 9.53033 13.2803L11.25 11.5607L11.25 16.5C11.25 16.9142 11.5858 17.25 12 17.25C12.4142 17.25 12.75 16.9142 12.75 16.5V11.5607L14.4697 13.2803C14.7626 13.5732 15.2374 13.5732 15.5303 13.2803C15.8232 12.9874 15.8232 12.5126 15.5303 12.2197L12.5303 9.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cloud.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cloud />

      <.cloud class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cloud() %>

      <%= cloud(class: "h-6 w-6 text-gray-500") %>
  """
  def cloud(assigns_or_opts \\ [])

  def cloud(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 9.75C4.5 6.43629 7.18629 3.75 10.5 3.75C13.028 3.75 15.1893 5.31282 16.0733 7.52408C16.2135 7.50816 16.3559 7.5 16.5 7.5C18.5711 7.5 20.25 9.17893 20.25 11.25C20.25 11.4459 20.2349 11.6386 20.2058 11.827C21.5744 12.5981 22.5 14.0653 22.5 15.75C22.5 18.2353 20.4853 20.25 18 20.25H6.75C3.85051 20.25 1.5 17.8995 1.5 15C1.5 12.8968 2.73627 11.084 4.52024 10.2459C4.50683 10.0822 4.5 9.91686 4.5 9.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def cloud(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 9.75C4.5 6.43629 7.18629 3.75 10.5 3.75C13.028 3.75 15.1893 5.31282 16.0733 7.52408C16.2135 7.50816 16.3559 7.5 16.5 7.5C18.5711 7.5 20.25 9.17893 20.25 11.25C20.25 11.4459 20.2349 11.6386 20.2058 11.827C21.5744 12.5981 22.5 14.0653 22.5 15.75C22.5 18.2353 20.4853 20.25 18 20.25H6.75C3.85051 20.25 1.5 17.8995 1.5 15C1.5 12.8968 2.73627 11.084 4.52024 10.2459C4.50683 10.0822 4.5 9.91686 4.5 9.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/code-bracket-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.code_bracket_square />

      <.code_bracket_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= code_bracket_square() %>

      <%= code_bracket_square(class: "h-6 w-6 text-gray-500") %>
  """
  def code_bracket_square(assigns_or_opts \\ [])

  def code_bracket_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 6C3 4.34315 4.34315 3 6 3H18C19.6569 3 21 4.34315 21 6V18C21 19.6569 19.6569 21 18 21H6C4.34315 21 3 19.6569 3 18V6ZM17.25 12C17.25 12.1989 17.171 12.3897 17.0303 12.5303L14.7803 14.7803C14.4874 15.0732 14.0126 15.0732 13.7197 14.7803C13.4268 14.4874 13.4268 14.0126 13.7197 13.7197L15.4393 12L13.7197 10.2803C13.4268 9.98744 13.4268 9.51256 13.7197 9.21967C14.0126 8.92678 14.4874 8.92678 14.7803 9.21967L17.0303 11.4697C17.171 11.6103 17.25 11.8011 17.25 12ZM6.96967 11.4697C6.82902 11.6103 6.75 11.8011 6.75 12C6.75 12.1989 6.82902 12.3897 6.96967 12.5303L9.21967 14.7803C9.51256 15.0732 9.98744 15.0732 10.2803 14.7803C10.5732 14.4874 10.5732 14.0126 10.2803 13.7197L8.56066 12L10.2803 10.2803C10.5732 9.98744 10.5732 9.51256 10.2803 9.21967C9.98744 8.92678 9.51256 8.92678 9.21967 9.21967L6.96967 11.4697Z" fill="#0F172A"/>
    </svg>
    """
  end

  def code_bracket_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 6C3 4.34315 4.34315 3 6 3H18C19.6569 3 21 4.34315 21 6V18C21 19.6569 19.6569 21 18 21H6C4.34315 21 3 19.6569 3 18V6ZM17.25 12C17.25 12.1989 17.171 12.3897 17.0303 12.5303L14.7803 14.7803C14.4874 15.0732 14.0126 15.0732 13.7197 14.7803C13.4268 14.4874 13.4268 14.0126 13.7197 13.7197L15.4393 12L13.7197 10.2803C13.4268 9.98744 13.4268 9.51256 13.7197 9.21967C14.0126 8.92678 14.4874 8.92678 14.7803 9.21967L17.0303 11.4697C17.171 11.6103 17.25 11.8011 17.25 12ZM6.96967 11.4697C6.82902 11.6103 6.75 11.8011 6.75 12C6.75 12.1989 6.82902 12.3897 6.96967 12.5303L9.21967 14.7803C9.51256 15.0732 9.98744 15.0732 10.2803 14.7803C10.5732 14.4874 10.5732 14.0126 10.2803 13.7197L8.56066 12L10.2803 10.2803C10.5732 9.98744 10.5732 9.51256 10.2803 9.21967C9.98744 8.92678 9.51256 8.92678 9.21967 9.21967L6.96967 11.4697Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/code-bracket.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.code_bracket />

      <.code_bracket class="h-6 w-6 text-gray-500" />

  or as a function

      <%= code_bracket() %>

      <%= code_bracket(class: "h-6 w-6 text-gray-500") %>
  """
  def code_bracket(assigns_or_opts \\ [])

  def code_bracket(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.4473 3.02662C14.847 3.1356 15.0826 3.54791 14.9736 3.94753L10.4736 20.4475C10.3646 20.8471 9.95228 21.0827 9.55266 20.9738C9.15304 20.8648 8.91744 20.4525 9.02643 20.0529L13.5264 3.55285C13.6354 3.15323 14.0477 2.91763 14.4473 3.02662ZM16.7197 6.21986C17.0126 5.92696 17.4874 5.92696 17.7803 6.21986L23.0303 11.4699C23.3232 11.7628 23.3232 12.2376 23.0303 12.5305L17.7803 17.7805C17.4874 18.0734 17.0126 18.0734 16.7197 17.7805C16.4268 17.4876 16.4268 17.0128 16.7197 16.7199L21.4393 12.0002L16.7197 7.28052C16.4268 6.98762 16.4268 6.51275 16.7197 6.21986ZM7.28033 6.21986C7.57322 6.51275 7.57322 6.98763 7.28033 7.28052L2.56066 12.0002L7.28033 16.7199C7.57322 17.0128 7.57322 17.4876 7.28033 17.7805C6.98744 18.0734 6.51256 18.0734 6.21967 17.7805L0.96967 12.5305C0.676777 12.2376 0.676777 11.7628 0.96967 11.4699L6.21967 6.21986C6.51256 5.92697 6.98744 5.92697 7.28033 6.21986Z" fill="#0F172A"/>
    </svg>
    """
  end

  def code_bracket(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M14.4473 3.02662C14.847 3.1356 15.0826 3.54791 14.9736 3.94753L10.4736 20.4475C10.3646 20.8471 9.95228 21.0827 9.55266 20.9738C9.15304 20.8648 8.91744 20.4525 9.02643 20.0529L13.5264 3.55285C13.6354 3.15323 14.0477 2.91763 14.4473 3.02662ZM16.7197 6.21986C17.0126 5.92696 17.4874 5.92696 17.7803 6.21986L23.0303 11.4699C23.3232 11.7628 23.3232 12.2376 23.0303 12.5305L17.7803 17.7805C17.4874 18.0734 17.0126 18.0734 16.7197 17.7805C16.4268 17.4876 16.4268 17.0128 16.7197 16.7199L21.4393 12.0002L16.7197 7.28052C16.4268 6.98762 16.4268 6.51275 16.7197 6.21986ZM7.28033 6.21986C7.57322 6.51275 7.57322 6.98763 7.28033 7.28052L2.56066 12.0002L7.28033 16.7199C7.57322 17.0128 7.57322 17.4876 7.28033 17.7805C6.98744 18.0734 6.51256 18.0734 6.21967 17.7805L0.96967 12.5305C0.676777 12.2376 0.676777 11.7628 0.96967 11.4699L6.21967 6.21986C6.51256 5.92697 6.98744 5.92697 7.28033 6.21986Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cog-6-tooth.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cog_6_tooth />

      <.cog_6_tooth class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cog_6_tooth() %>

      <%= cog_6_tooth(class: "h-6 w-6 text-gray-500") %>
  """
  def cog_6_tooth(assigns_or_opts \\ [])

  def cog_6_tooth(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.0779 2.25C10.1613 2.25 9.37909 2.91265 9.22841 3.81675L9.04974 4.88873C9.02959 5.00964 8.93542 5.1498 8.75311 5.23747C8.40905 5.40292 8.07967 5.5938 7.7674 5.8076C7.60091 5.92159 7.43259 5.9332 7.31769 5.89015L6.29851 5.50833C5.44019 5.18678 4.4752 5.53289 4.01692 6.32666L3.09493 7.92358C2.63665 8.71736 2.8194 9.72611 3.52704 10.3087L4.36756 11.0006C4.46219 11.0785 4.53629 11.2298 4.52119 11.4307C4.50706 11.6188 4.49988 11.8086 4.49988 12C4.49988 12.1915 4.50707 12.3814 4.52121 12.5695C4.53632 12.7704 4.46221 12.9217 4.36758 12.9996L3.52704 13.6916C2.8194 14.2741 2.63665 15.2829 3.09493 16.0767L4.01692 17.6736C4.4752 18.4674 5.44019 18.8135 6.29851 18.4919L7.31791 18.11C7.43281 18.067 7.60113 18.0786 7.76761 18.1925C8.07982 18.4063 8.40913 18.5971 8.75311 18.7625C8.93542 18.8502 9.02959 18.9904 9.04974 19.1113L9.22841 20.1832C9.37909 21.0874 10.1613 21.75 11.0779 21.75H12.9219C13.8384 21.75 14.6207 21.0874 14.7713 20.1832L14.95 19.1113C14.9702 18.9904 15.0643 18.8502 15.2466 18.7625C15.5907 18.5971 15.9201 18.4062 16.2324 18.1924C16.3988 18.0784 16.5672 18.0668 16.6821 18.1098L17.7012 18.4917C18.5596 18.8132 19.5246 18.4671 19.9828 17.6733L20.9048 16.0764C21.3631 15.2826 21.1804 14.2739 20.4727 13.6913L19.6322 12.9994C19.5376 12.9215 19.4635 12.7702 19.4786 12.5693C19.4927 12.3812 19.4999 12.1914 19.4999 12C19.4999 11.8085 19.4927 11.6186 19.4785 11.4305C19.4634 11.2296 19.5375 11.0783 19.6322 11.0004L20.4727 10.3084C21.1804 9.72587 21.3631 8.71711 20.9048 7.92334L19.9828 6.32642C19.5246 5.53264 18.5596 5.18654 17.7012 5.50809L16.6818 5.89C16.5669 5.93304 16.3986 5.92144 16.2321 5.80746C15.9199 5.59371 15.5906 5.40289 15.2466 5.23747C15.0643 5.1498 14.9702 5.00964 14.95 4.88873L14.7713 3.81675C14.6207 2.91265 13.8384 2.25 12.9219 2.25H11.0779ZM12 15.75C14.0711 15.75 15.75 14.0711 15.75 12C15.75 9.92893 14.0711 8.25 12 8.25C9.92893 8.25 8.25 9.92893 8.25 12C8.25 14.0711 9.92893 15.75 12 15.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def cog_6_tooth(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.0779 2.25C10.1613 2.25 9.37909 2.91265 9.22841 3.81675L9.04974 4.88873C9.02959 5.00964 8.93542 5.1498 8.75311 5.23747C8.40905 5.40292 8.07967 5.5938 7.7674 5.8076C7.60091 5.92159 7.43259 5.9332 7.31769 5.89015L6.29851 5.50833C5.44019 5.18678 4.4752 5.53289 4.01692 6.32666L3.09493 7.92358C2.63665 8.71736 2.8194 9.72611 3.52704 10.3087L4.36756 11.0006C4.46219 11.0785 4.53629 11.2298 4.52119 11.4307C4.50706 11.6188 4.49988 11.8086 4.49988 12C4.49988 12.1915 4.50707 12.3814 4.52121 12.5695C4.53632 12.7704 4.46221 12.9217 4.36758 12.9996L3.52704 13.6916C2.8194 14.2741 2.63665 15.2829 3.09493 16.0767L4.01692 17.6736C4.4752 18.4674 5.44019 18.8135 6.29851 18.4919L7.31791 18.11C7.43281 18.067 7.60113 18.0786 7.76761 18.1925C8.07982 18.4063 8.40913 18.5971 8.75311 18.7625C8.93542 18.8502 9.02959 18.9904 9.04974 19.1113L9.22841 20.1832C9.37909 21.0874 10.1613 21.75 11.0779 21.75H12.9219C13.8384 21.75 14.6207 21.0874 14.7713 20.1832L14.95 19.1113C14.9702 18.9904 15.0643 18.8502 15.2466 18.7625C15.5907 18.5971 15.9201 18.4062 16.2324 18.1924C16.3988 18.0784 16.5672 18.0668 16.6821 18.1098L17.7012 18.4917C18.5596 18.8132 19.5246 18.4671 19.9828 17.6733L20.9048 16.0764C21.3631 15.2826 21.1804 14.2739 20.4727 13.6913L19.6322 12.9994C19.5376 12.9215 19.4635 12.7702 19.4786 12.5693C19.4927 12.3812 19.4999 12.1914 19.4999 12C19.4999 11.8085 19.4927 11.6186 19.4785 11.4305C19.4634 11.2296 19.5375 11.0783 19.6322 11.0004L20.4727 10.3084C21.1804 9.72587 21.3631 8.71711 20.9048 7.92334L19.9828 6.32642C19.5246 5.53264 18.5596 5.18654 17.7012 5.50809L16.6818 5.89C16.5669 5.93304 16.3986 5.92144 16.2321 5.80746C15.9199 5.59371 15.5906 5.40289 15.2466 5.23747C15.0643 5.1498 14.9702 5.00964 14.95 4.88873L14.7713 3.81675C14.6207 2.91265 13.8384 2.25 12.9219 2.25H11.0779ZM12 15.75C14.0711 15.75 15.75 14.0711 15.75 12C15.75 9.92893 14.0711 8.25 12 8.25C9.92893 8.25 8.25 9.92893 8.25 12C8.25 14.0711 9.92893 15.75 12 15.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cog-8-tooth.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cog_8_tooth />

      <.cog_8_tooth class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cog_8_tooth() %>

      <%= cog_8_tooth(class: "h-6 w-6 text-gray-500") %>
  """
  def cog_8_tooth(assigns_or_opts \\ [])

  def cog_8_tooth(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.828 2.25C10.9115 2.25 10.1292 2.91265 9.97854 3.81675L9.88699 4.36602C9.84017 4.64695 9.63707 4.87407 9.37035 4.97395C9.20811 5.0347 9.04853 5.1009 8.89184 5.17235C8.63259 5.29056 8.32822 5.27363 8.09636 5.10801L7.64299 4.78418C6.89714 4.25143 5.87546 4.33599 5.22734 4.9841L4.98413 5.22732C4.33601 5.87544 4.25145 6.89712 4.7842 7.64297L5.10803 8.09633C5.27364 8.32819 5.29057 8.63256 5.17236 8.89182C5.10091 9.04851 5.0347 9.20809 4.97395 9.37034C4.87408 9.63706 4.64695 9.84016 4.36602 9.88698L3.81675 9.97852C2.91265 10.1292 2.25 10.9114 2.25 11.828V12.172C2.25 13.0885 2.91265 13.8708 3.81675 14.0215L4.36602 14.113C4.64695 14.1598 4.87407 14.3629 4.97395 14.6297C5.03469 14.7919 5.1009 14.9515 5.17234 15.1082C5.29056 15.3674 5.27362 15.6718 5.10801 15.9036L4.78416 16.357C4.25141 17.1029 4.33597 18.1246 4.98408 18.7727L5.2273 19.0159C5.87541 19.664 6.8971 19.7486 7.64295 19.2158L8.09633 18.892C8.32819 18.7264 8.63256 18.7094 8.89182 18.8276C9.04851 18.8991 9.20809 18.9653 9.37034 19.026C9.63706 19.1259 9.84016 19.353 9.88698 19.634L9.97852 20.1832C10.1292 21.0873 10.9114 21.75 11.828 21.75H12.172C13.0885 21.75 13.8708 21.0874 14.0215 20.1832L14.113 19.634C14.1598 19.3531 14.3629 19.1259 14.6297 19.0261C14.7919 18.9653 14.9515 18.8991 15.1082 18.8277C15.3674 18.7094 15.6718 18.7264 15.9036 18.892L16.357 19.2158C17.1029 19.7486 18.1245 19.664 18.7727 19.0159L19.0159 18.7727C19.664 18.1246 19.7485 17.1029 19.2158 16.357L18.892 15.9037C18.7264 15.6718 18.7094 15.3674 18.8276 15.1082C18.8991 14.9515 18.9653 14.7919 19.026 14.6297C19.1259 14.3629 19.353 14.1598 19.634 14.113L20.1832 14.0215C21.0873 13.8708 21.75 13.0886 21.75 12.172V11.828C21.75 10.9115 21.0874 10.1292 20.1832 9.97854L19.634 9.88699C19.3531 9.84017 19.1259 9.63707 19.0261 9.37035C18.9653 9.20811 18.8991 9.04854 18.8277 8.89185C18.7094 8.63259 18.7264 8.32822 18.892 8.09636L19.2158 7.64297C19.7486 6.89712 19.664 5.87544 19.0159 5.22732L18.7727 4.9841C18.1246 4.33599 17.1029 4.25143 16.3571 4.78418L15.9037 5.10802C15.6718 5.27364 15.3674 5.29057 15.1082 5.17236C14.9515 5.10091 14.7919 5.0347 14.6297 4.97395C14.3629 4.87408 14.1598 4.64695 14.113 4.36602L14.0215 3.81675C13.8708 2.91265 13.0886 2.25 12.172 2.25H11.828ZM12 15.75C14.0711 15.75 15.75 14.0711 15.75 12C15.75 9.92893 14.0711 8.25 12 8.25C9.92893 8.25 8.25 9.92893 8.25 12C8.25 14.0711 9.92893 15.75 12 15.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def cog_8_tooth(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.828 2.25C10.9115 2.25 10.1292 2.91265 9.97854 3.81675L9.88699 4.36602C9.84017 4.64695 9.63707 4.87407 9.37035 4.97395C9.20811 5.0347 9.04853 5.1009 8.89184 5.17235C8.63259 5.29056 8.32822 5.27363 8.09636 5.10801L7.64299 4.78418C6.89714 4.25143 5.87546 4.33599 5.22734 4.9841L4.98413 5.22732C4.33601 5.87544 4.25145 6.89712 4.7842 7.64297L5.10803 8.09633C5.27364 8.32819 5.29057 8.63256 5.17236 8.89182C5.10091 9.04851 5.0347 9.20809 4.97395 9.37034C4.87408 9.63706 4.64695 9.84016 4.36602 9.88698L3.81675 9.97852C2.91265 10.1292 2.25 10.9114 2.25 11.828V12.172C2.25 13.0885 2.91265 13.8708 3.81675 14.0215L4.36602 14.113C4.64695 14.1598 4.87407 14.3629 4.97395 14.6297C5.03469 14.7919 5.1009 14.9515 5.17234 15.1082C5.29056 15.3674 5.27362 15.6718 5.10801 15.9036L4.78416 16.357C4.25141 17.1029 4.33597 18.1246 4.98408 18.7727L5.2273 19.0159C5.87541 19.664 6.8971 19.7486 7.64295 19.2158L8.09633 18.892C8.32819 18.7264 8.63256 18.7094 8.89182 18.8276C9.04851 18.8991 9.20809 18.9653 9.37034 19.026C9.63706 19.1259 9.84016 19.353 9.88698 19.634L9.97852 20.1832C10.1292 21.0873 10.9114 21.75 11.828 21.75H12.172C13.0885 21.75 13.8708 21.0874 14.0215 20.1832L14.113 19.634C14.1598 19.3531 14.3629 19.1259 14.6297 19.0261C14.7919 18.9653 14.9515 18.8991 15.1082 18.8277C15.3674 18.7094 15.6718 18.7264 15.9036 18.892L16.357 19.2158C17.1029 19.7486 18.1245 19.664 18.7727 19.0159L19.0159 18.7727C19.664 18.1246 19.7485 17.1029 19.2158 16.357L18.892 15.9037C18.7264 15.6718 18.7094 15.3674 18.8276 15.1082C18.8991 14.9515 18.9653 14.7919 19.026 14.6297C19.1259 14.3629 19.353 14.1598 19.634 14.113L20.1832 14.0215C21.0873 13.8708 21.75 13.0886 21.75 12.172V11.828C21.75 10.9115 21.0874 10.1292 20.1832 9.97854L19.634 9.88699C19.3531 9.84017 19.1259 9.63707 19.0261 9.37035C18.9653 9.20811 18.8991 9.04854 18.8277 8.89185C18.7094 8.63259 18.7264 8.32822 18.892 8.09636L19.2158 7.64297C19.7486 6.89712 19.664 5.87544 19.0159 5.22732L18.7727 4.9841C18.1246 4.33599 17.1029 4.25143 16.3571 4.78418L15.9037 5.10802C15.6718 5.27364 15.3674 5.29057 15.1082 5.17236C14.9515 5.10091 14.7919 5.0347 14.6297 4.97395C14.3629 4.87408 14.1598 4.64695 14.113 4.36602L14.0215 3.81675C13.8708 2.91265 13.0886 2.25 12.172 2.25H11.828ZM12 15.75C14.0711 15.75 15.75 14.0711 15.75 12C15.75 9.92893 14.0711 8.25 12 8.25C9.92893 8.25 8.25 9.92893 8.25 12C8.25 14.0711 9.92893 15.75 12 15.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cog.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cog />

      <.cog class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cog() %>

      <%= cog(class: "h-6 w-6 text-gray-500") %>
  """
  def cog(assigns_or_opts \\ [])

  def cog(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M17.0039 10.4069C17.1423 10.8419 16.7882 11.2494 16.3317 11.2494H12.8667C12.5988 11.2494 12.3512 11.1064 12.2172 10.8744L10.4845 7.87349C10.2561 7.47789 10.4321 6.96735 10.8784 6.87021C11.2398 6.79157 11.6151 6.75015 12 6.75015C14.344 6.75015 16.3293 8.28635 17.0039 10.4069Z" fill="#0F172A"/>
    <path d="M8.11938 8.46409C8.42728 8.12639 8.95767 8.22903 9.18619 8.62478L10.9182 11.6244C11.0522 11.8564 11.0522 12.1424 10.9182 12.3744L9.18577 15.375C8.95726 15.7708 8.42679 15.8735 8.11891 15.5357C7.26853 14.6027 6.75 13.362 6.75 12.0001C6.75 10.6381 7.26872 9.39712 8.11938 8.46409Z" fill="#0F172A"/>
    <path d="M10.8778 17.1299C10.4315 17.0327 10.2555 16.5223 10.4839 16.1267L12.2172 13.1244C12.3512 12.8923 12.5988 12.7494 12.8668 12.7494H16.3322C16.7886 12.7494 17.1426 13.1567 17.0044 13.5917C16.3304 15.7131 14.3447 17.2501 12 17.2501C11.6148 17.2501 11.2393 17.2087 10.8778 17.1299Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M21.0007 12.7494C21.4149 12.7494 21.7507 12.4136 21.7507 11.9994C21.7507 11.5852 21.4149 11.2494 21.0007 11.2494H20.2171C20.1753 10.7852 20.095 10.3322 19.9795 9.89341L20.7143 9.62597C21.1035 9.4843 21.3042 9.05392 21.1625 8.66469C21.0209 8.27545 20.5905 8.07476 20.2012 8.21643L19.4664 8.4839C19.2695 8.06647 19.0386 7.66823 18.7773 7.29273L19.3771 6.78945C19.6944 6.5232 19.7358 6.05013 19.4695 5.73282C19.2033 5.41552 18.7302 5.37413 18.4129 5.64038L17.8126 6.14409C17.4869 5.82081 17.1344 5.52452 16.7588 5.25884L17.1502 4.58093C17.3573 4.22221 17.2344 3.76351 16.8756 3.55641C16.5169 3.3493 16.0582 3.47221 15.8511 3.83093L15.4604 4.50766C15.0465 4.31618 14.614 4.15801 14.1664 4.03656L14.3021 3.26708C14.374 2.85916 14.1016 2.47017 13.6937 2.39824C13.2858 2.32631 12.8968 2.59869 12.8249 3.00661L12.6889 3.77767C12.462 3.75894 12.2325 3.74938 12.0007 3.74938C11.769 3.74938 11.5394 3.75895 11.3124 3.77773L11.1764 3.00665C11.1045 2.59873 10.7155 2.32635 10.3076 2.39828C9.89966 2.47021 9.62728 2.8592 9.69921 3.26712L9.83492 4.0368C9.38749 4.15824 8.95506 4.31639 8.54113 4.50783L8.15018 3.83075C7.94306 3.47204 7.48436 3.34915 7.12565 3.55627C6.76694 3.76339 6.64405 4.22209 6.85117 4.5808L7.24273 5.25893C6.86722 5.52447 6.51483 5.82066 6.18921 6.14386L5.58845 5.63976C5.27114 5.37351 4.79807 5.4149 4.53182 5.7322C4.26557 6.04951 4.30696 6.52257 4.62426 6.78883L5.22448 7.29247C4.96309 7.66809 4.73209 8.06649 4.53509 8.48412L3.80006 8.21659C3.41082 8.07492 2.98044 8.27561 2.83877 8.66484C2.6971 9.05407 2.89779 9.48446 3.28703 9.62612L4.02196 9.89362C3.90647 10.3323 3.8262 10.7853 3.78437 11.2494H3.00073C2.58652 11.2494 2.25073 11.5852 2.25073 11.9994C2.25073 12.4136 2.58652 12.7494 3.00073 12.7494H3.78437C3.82619 13.2135 3.90644 13.6665 4.02192 14.1052L3.28678 14.3728C2.89755 14.5145 2.69685 14.9448 2.83852 15.3341C2.98019 15.7233 3.41058 15.924 3.79981 15.7823L4.53502 15.5147C4.73205 15.9324 4.9631 16.331 5.22461 16.7067L4.62411 17.2106C4.30681 17.4768 4.26542 17.9499 4.53167 18.2672C4.79792 18.5845 5.27099 18.6259 5.58829 18.3596L6.18941 17.8552C6.51507 18.1784 6.86754 18.4747 7.2432 18.7403L6.85112 19.4194C6.64401 19.7781 6.76692 20.2368 7.12564 20.4439C7.48436 20.651 7.94305 20.5281 8.15016 20.1694L8.54161 19.4914C8.9554 19.6827 9.38772 19.8408 9.83514 19.9622L9.6992 20.7332C9.62727 21.1411 9.89965 21.5301 10.3076 21.602C10.7155 21.6739 11.1045 21.4015 11.1764 20.9936L11.3126 20.2211C11.5395 20.2398 11.769 20.2494 12.0007 20.2494C12.2324 20.2494 12.4618 20.2398 12.6887 20.2211L12.8249 20.9937C12.8968 21.4016 13.2858 21.674 13.6937 21.602C14.1016 21.5301 14.374 21.1411 14.3021 20.7332L14.1662 19.9623C14.6136 19.8409 15.046 19.6828 15.4598 19.4914L15.8512 20.1692C16.0583 20.528 16.517 20.6509 16.8757 20.4438C17.2344 20.2366 17.3573 19.778 17.1502 19.4192L16.7582 18.7403C17.134 18.4746 17.4866 18.1783 17.8123 17.8549L18.4131 18.359C18.7304 18.6253 19.2034 18.5839 19.4697 18.2666C19.7359 17.9493 19.6946 17.4762 19.3772 17.2099L18.7771 16.7063C19.0385 16.3308 19.2694 15.9324 19.4664 15.5149L20.2015 15.7825C20.5907 15.9242 21.0211 15.7235 21.1628 15.3342C21.3044 14.945 21.1038 14.5146 20.7145 14.3729L19.9795 14.1054C20.095 13.6666 20.1753 13.2135 20.2171 12.7494H21.0007ZM18.3435 9.69075C18.3374 9.67412 18.332 9.65741 18.3272 9.64066C18.0593 8.92262 17.6728 8.26243 17.1913 7.68399C17.1846 7.67656 17.1779 7.66895 17.1714 7.66119C17.165 7.65358 17.1588 7.64588 17.1528 7.6381C16.6625 7.05954 16.0766 6.56465 15.4194 6.17787C15.4046 6.17061 15.3901 6.16281 15.3756 6.15448C15.3608 6.14593 15.3464 6.13695 15.3324 6.12756C14.6882 5.76124 13.9778 5.49788 13.2236 5.35987C13.2067 5.35805 13.1897 5.35566 13.1728 5.35266C13.1563 5.34976 13.1401 5.34635 13.1241 5.34244C12.7588 5.28123 12.3835 5.24938 12.0007 5.24938C11.6183 5.24938 11.2435 5.28112 10.8788 5.34208C10.8623 5.34616 10.8455 5.34971 10.8285 5.3527C10.8109 5.3558 10.7934 5.35826 10.7759 5.3601C10.005 5.5013 9.28044 5.77342 8.62548 6.15241C7.94757 6.54468 7.34445 7.05116 6.84231 7.64545C6.83827 7.65052 6.83415 7.65556 6.82995 7.66057C6.82783 7.6631 6.82568 7.66562 6.82353 7.66813C6.82127 7.67075 6.819 7.67335 6.81671 7.67593C6.33198 8.2565 5.94308 8.91961 5.67409 9.64102C5.66929 9.65771 5.66388 9.67434 5.65785 9.6909C5.65182 9.70747 5.64527 9.72369 5.63822 9.73956C5.38727 10.4462 5.25073 11.2069 5.25073 11.9994C5.25073 12.7937 5.38795 13.556 5.63997 14.2639C5.64626 14.2783 5.65215 14.293 5.6576 14.308C5.66305 14.323 5.66799 14.338 5.67243 14.3531C6.21998 15.8246 7.26613 17.0536 8.60555 17.8346C8.60934 17.8367 8.61311 17.8387 8.61688 17.8408C8.6198 17.8425 8.62272 17.8441 8.62564 17.8458C8.63265 17.8499 8.63958 17.854 8.64641 17.8583C9.3043 18.2357 10.0318 18.5056 10.8049 18.6438C10.8128 18.6449 10.8207 18.6462 10.8285 18.6476C10.8358 18.6489 10.8431 18.6503 10.8504 18.6517C11.2242 18.7159 11.6086 18.7494 12.0007 18.7494C12.3929 18.7494 12.7773 18.7159 13.1512 18.6517C13.1584 18.6503 13.1655 18.6489 13.1728 18.6476C13.1805 18.6462 13.1883 18.645 13.1961 18.6439C13.9675 18.506 14.6935 18.2371 15.3503 17.861C15.3586 17.8557 15.3671 17.8506 15.3757 17.8457C15.3839 17.8409 15.3922 17.8363 15.4006 17.8319C16.07 17.4409 16.666 16.9379 17.163 16.3486L17.1716 16.3382L17.1808 16.3274C17.6679 15.745 18.0587 15.0792 18.3285 14.3546C18.333 14.339 18.3381 14.3236 18.3437 14.3082C18.3493 14.2927 18.3554 14.2776 18.3619 14.2627C18.6137 13.5552 18.7507 12.7933 18.7507 11.9994C18.7507 11.2068 18.6141 10.4462 18.3632 9.73969C18.3561 9.72373 18.3495 9.70741 18.3435 9.69075Z" fill="#0F172A"/>
    </svg>
    """
  end

  def cog(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M17.0039 10.4069C17.1423 10.8419 16.7882 11.2494 16.3317 11.2494H12.8667C12.5988 11.2494 12.3512 11.1064 12.2172 10.8744L10.4845 7.87349C10.2561 7.47789 10.4321 6.96735 10.8784 6.87021C11.2398 6.79157 11.6151 6.75015 12 6.75015C14.344 6.75015 16.3293 8.28635 17.0039 10.4069Z\" fill=\"#0F172A\"/>\n<path d=\"M8.11938 8.46409C8.42728 8.12639 8.95767 8.22903 9.18619 8.62478L10.9182 11.6244C11.0522 11.8564 11.0522 12.1424 10.9182 12.3744L9.18577 15.375C8.95726 15.7708 8.42679 15.8735 8.11891 15.5357C7.26853 14.6027 6.75 13.362 6.75 12.0001C6.75 10.6381 7.26872 9.39712 8.11938 8.46409Z\" fill=\"#0F172A\"/>\n<path d=\"M10.8778 17.1299C10.4315 17.0327 10.2555 16.5223 10.4839 16.1267L12.2172 13.1244C12.3512 12.8923 12.5988 12.7494 12.8668 12.7494H16.3322C16.7886 12.7494 17.1426 13.1567 17.0044 13.5917C16.3304 15.7131 14.3447 17.2501 12 17.2501C11.6148 17.2501 11.2393 17.2087 10.8778 17.1299Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M21.0007 12.7494C21.4149 12.7494 21.7507 12.4136 21.7507 11.9994C21.7507 11.5852 21.4149 11.2494 21.0007 11.2494H20.2171C20.1753 10.7852 20.095 10.3322 19.9795 9.89341L20.7143 9.62597C21.1035 9.4843 21.3042 9.05392 21.1625 8.66469C21.0209 8.27545 20.5905 8.07476 20.2012 8.21643L19.4664 8.4839C19.2695 8.06647 19.0386 7.66823 18.7773 7.29273L19.3771 6.78945C19.6944 6.5232 19.7358 6.05013 19.4695 5.73282C19.2033 5.41552 18.7302 5.37413 18.4129 5.64038L17.8126 6.14409C17.4869 5.82081 17.1344 5.52452 16.7588 5.25884L17.1502 4.58093C17.3573 4.22221 17.2344 3.76351 16.8756 3.55641C16.5169 3.3493 16.0582 3.47221 15.8511 3.83093L15.4604 4.50766C15.0465 4.31618 14.614 4.15801 14.1664 4.03656L14.3021 3.26708C14.374 2.85916 14.1016 2.47017 13.6937 2.39824C13.2858 2.32631 12.8968 2.59869 12.8249 3.00661L12.6889 3.77767C12.462 3.75894 12.2325 3.74938 12.0007 3.74938C11.769 3.74938 11.5394 3.75895 11.3124 3.77773L11.1764 3.00665C11.1045 2.59873 10.7155 2.32635 10.3076 2.39828C9.89966 2.47021 9.62728 2.8592 9.69921 3.26712L9.83492 4.0368C9.38749 4.15824 8.95506 4.31639 8.54113 4.50783L8.15018 3.83075C7.94306 3.47204 7.48436 3.34915 7.12565 3.55627C6.76694 3.76339 6.64405 4.22209 6.85117 4.5808L7.24273 5.25893C6.86722 5.52447 6.51483 5.82066 6.18921 6.14386L5.58845 5.63976C5.27114 5.37351 4.79807 5.4149 4.53182 5.7322C4.26557 6.04951 4.30696 6.52257 4.62426 6.78883L5.22448 7.29247C4.96309 7.66809 4.73209 8.06649 4.53509 8.48412L3.80006 8.21659C3.41082 8.07492 2.98044 8.27561 2.83877 8.66484C2.6971 9.05407 2.89779 9.48446 3.28703 9.62612L4.02196 9.89362C3.90647 10.3323 3.8262 10.7853 3.78437 11.2494H3.00073C2.58652 11.2494 2.25073 11.5852 2.25073 11.9994C2.25073 12.4136 2.58652 12.7494 3.00073 12.7494H3.78437C3.82619 13.2135 3.90644 13.6665 4.02192 14.1052L3.28678 14.3728C2.89755 14.5145 2.69685 14.9448 2.83852 15.3341C2.98019 15.7233 3.41058 15.924 3.79981 15.7823L4.53502 15.5147C4.73205 15.9324 4.9631 16.331 5.22461 16.7067L4.62411 17.2106C4.30681 17.4768 4.26542 17.9499 4.53167 18.2672C4.79792 18.5845 5.27099 18.6259 5.58829 18.3596L6.18941 17.8552C6.51507 18.1784 6.86754 18.4747 7.2432 18.7403L6.85112 19.4194C6.64401 19.7781 6.76692 20.2368 7.12564 20.4439C7.48436 20.651 7.94305 20.5281 8.15016 20.1694L8.54161 19.4914C8.9554 19.6827 9.38772 19.8408 9.83514 19.9622L9.6992 20.7332C9.62727 21.1411 9.89965 21.5301 10.3076 21.602C10.7155 21.6739 11.1045 21.4015 11.1764 20.9936L11.3126 20.2211C11.5395 20.2398 11.769 20.2494 12.0007 20.2494C12.2324 20.2494 12.4618 20.2398 12.6887 20.2211L12.8249 20.9937C12.8968 21.4016 13.2858 21.674 13.6937 21.602C14.1016 21.5301 14.374 21.1411 14.3021 20.7332L14.1662 19.9623C14.6136 19.8409 15.046 19.6828 15.4598 19.4914L15.8512 20.1692C16.0583 20.528 16.517 20.6509 16.8757 20.4438C17.2344 20.2366 17.3573 19.778 17.1502 19.4192L16.7582 18.7403C17.134 18.4746 17.4866 18.1783 17.8123 17.8549L18.4131 18.359C18.7304 18.6253 19.2034 18.5839 19.4697 18.2666C19.7359 17.9493 19.6946 17.4762 19.3772 17.2099L18.7771 16.7063C19.0385 16.3308 19.2694 15.9324 19.4664 15.5149L20.2015 15.7825C20.5907 15.9242 21.0211 15.7235 21.1628 15.3342C21.3044 14.945 21.1038 14.5146 20.7145 14.3729L19.9795 14.1054C20.095 13.6666 20.1753 13.2135 20.2171 12.7494H21.0007ZM18.3435 9.69075C18.3374 9.67412 18.332 9.65741 18.3272 9.64066C18.0593 8.92262 17.6728 8.26243 17.1913 7.68399C17.1846 7.67656 17.1779 7.66895 17.1714 7.66119C17.165 7.65358 17.1588 7.64588 17.1528 7.6381C16.6625 7.05954 16.0766 6.56465 15.4194 6.17787C15.4046 6.17061 15.3901 6.16281 15.3756 6.15448C15.3608 6.14593 15.3464 6.13695 15.3324 6.12756C14.6882 5.76124 13.9778 5.49788 13.2236 5.35987C13.2067 5.35805 13.1897 5.35566 13.1728 5.35266C13.1563 5.34976 13.1401 5.34635 13.1241 5.34244C12.7588 5.28123 12.3835 5.24938 12.0007 5.24938C11.6183 5.24938 11.2435 5.28112 10.8788 5.34208C10.8623 5.34616 10.8455 5.34971 10.8285 5.3527C10.8109 5.3558 10.7934 5.35826 10.7759 5.3601C10.005 5.5013 9.28044 5.77342 8.62548 6.15241C7.94757 6.54468 7.34445 7.05116 6.84231 7.64545C6.83827 7.65052 6.83415 7.65556 6.82995 7.66057C6.82783 7.6631 6.82568 7.66562 6.82353 7.66813C6.82127 7.67075 6.819 7.67335 6.81671 7.67593C6.33198 8.2565 5.94308 8.91961 5.67409 9.64102C5.66929 9.65771 5.66388 9.67434 5.65785 9.6909C5.65182 9.70747 5.64527 9.72369 5.63822 9.73956C5.38727 10.4462 5.25073 11.2069 5.25073 11.9994C5.25073 12.7937 5.38795 13.556 5.63997 14.2639C5.64626 14.2783 5.65215 14.293 5.6576 14.308C5.66305 14.323 5.66799 14.338 5.67243 14.3531C6.21998 15.8246 7.26613 17.0536 8.60555 17.8346C8.60934 17.8367 8.61311 17.8387 8.61688 17.8408C8.6198 17.8425 8.62272 17.8441 8.62564 17.8458C8.63265 17.8499 8.63958 17.854 8.64641 17.8583C9.3043 18.2357 10.0318 18.5056 10.8049 18.6438C10.8128 18.6449 10.8207 18.6462 10.8285 18.6476C10.8358 18.6489 10.8431 18.6503 10.8504 18.6517C11.2242 18.7159 11.6086 18.7494 12.0007 18.7494C12.3929 18.7494 12.7773 18.7159 13.1512 18.6517C13.1584 18.6503 13.1655 18.6489 13.1728 18.6476C13.1805 18.6462 13.1883 18.645 13.1961 18.6439C13.9675 18.506 14.6935 18.2371 15.3503 17.861C15.3586 17.8557 15.3671 17.8506 15.3757 17.8457C15.3839 17.8409 15.3922 17.8363 15.4006 17.8319C16.07 17.4409 16.666 16.9379 17.163 16.3486L17.1716 16.3382L17.1808 16.3274C17.6679 15.745 18.0587 15.0792 18.3285 14.3546C18.333 14.339 18.3381 14.3236 18.3437 14.3082C18.3493 14.2927 18.3554 14.2776 18.3619 14.2627C18.6137 13.5552 18.7507 12.7933 18.7507 11.9994C18.7507 11.2068 18.6141 10.4462 18.3632 9.73969C18.3561 9.72373 18.3495 9.70741 18.3435 9.69075Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/command-line.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.command_line />

      <.command_line class="h-6 w-6 text-gray-500" />

  or as a function

      <%= command_line() %>

      <%= command_line(class: "h-6 w-6 text-gray-500") %>
  """
  def command_line(assigns_or_opts \\ [])

  def command_line(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 4.34315 3.59315 3 5.25 3H18.75C20.4069 3 21.75 4.34315 21.75 6V18C21.75 19.6569 20.4069 21 18.75 21H5.25C3.59315 21 2.25 19.6569 2.25 18V6ZM6.21967 6.96967C6.51256 6.67678 6.98744 6.67678 7.28033 6.96967L9.53033 9.21967C9.82322 9.51256 9.82322 9.98744 9.53033 10.2803L7.28033 12.5303C6.98744 12.8232 6.51256 12.8232 6.21967 12.5303C5.92678 12.2374 5.92678 11.7626 6.21967 11.4697L7.93934 9.75L6.21967 8.03033C5.92678 7.73744 5.92678 7.26256 6.21967 6.96967ZM10.5 11.25C10.0858 11.25 9.75 11.5858 9.75 12C9.75 12.4142 10.0858 12.75 10.5 12.75H13.5C13.9142 12.75 14.25 12.4142 14.25 12C14.25 11.5858 13.9142 11.25 13.5 11.25H10.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def command_line(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.25 6C2.25 4.34315 3.59315 3 5.25 3H18.75C20.4069 3 21.75 4.34315 21.75 6V18C21.75 19.6569 20.4069 21 18.75 21H5.25C3.59315 21 2.25 19.6569 2.25 18V6ZM6.21967 6.96967C6.51256 6.67678 6.98744 6.67678 7.28033 6.96967L9.53033 9.21967C9.82322 9.51256 9.82322 9.98744 9.53033 10.2803L7.28033 12.5303C6.98744 12.8232 6.51256 12.8232 6.21967 12.5303C5.92678 12.2374 5.92678 11.7626 6.21967 11.4697L7.93934 9.75L6.21967 8.03033C5.92678 7.73744 5.92678 7.26256 6.21967 6.96967ZM10.5 11.25C10.0858 11.25 9.75 11.5858 9.75 12C9.75 12.4142 10.0858 12.75 10.5 12.75H13.5C13.9142 12.75 14.25 12.4142 14.25 12C14.25 11.5858 13.9142 11.25 13.5 11.25H10.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/computer-desktop.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.computer_desktop />

      <.computer_desktop class="h-6 w-6 text-gray-500" />

  or as a function

      <%= computer_desktop() %>

      <%= computer_desktop(class: "h-6 w-6 text-gray-500") %>
  """
  def computer_desktop(assigns_or_opts \\ [])

  def computer_desktop(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 5.25C2.25 3.59315 3.59315 2.25 5.25 2.25H18.75C20.4069 2.25 21.75 3.59315 21.75 5.25V15C21.75 16.6569 20.4069 18 18.75 18H15.75V18.2574C15.75 18.8541 15.9871 19.4264 16.409 19.8483L17.0303 20.4697C17.2448 20.6842 17.309 21.0068 17.1929 21.287C17.0768 21.5673 16.8033 21.75 16.5 21.75H7.5C7.19665 21.75 6.92318 21.5673 6.80709 21.287C6.691 21.0068 6.75517 20.6842 6.96967 20.4697L7.59099 19.8483C8.01295 19.4264 8.25 18.8541 8.25 18.2574V18H5.25C3.59315 18 2.25 16.6569 2.25 15V5.25ZM3.75 5.25V12.75C3.75 13.5784 4.42157 14.25 5.25 14.25H18.75C19.5784 14.25 20.25 13.5784 20.25 12.75V5.25C20.25 4.42157 19.5784 3.75 18.75 3.75H5.25C4.42157 3.75 3.75 4.42157 3.75 5.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def computer_desktop(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.25 5.25C2.25 3.59315 3.59315 2.25 5.25 2.25H18.75C20.4069 2.25 21.75 3.59315 21.75 5.25V15C21.75 16.6569 20.4069 18 18.75 18H15.75V18.2574C15.75 18.8541 15.9871 19.4264 16.409 19.8483L17.0303 20.4697C17.2448 20.6842 17.309 21.0068 17.1929 21.287C17.0768 21.5673 16.8033 21.75 16.5 21.75H7.5C7.19665 21.75 6.92318 21.5673 6.80709 21.287C6.691 21.0068 6.75517 20.6842 6.96967 20.4697L7.59099 19.8483C8.01295 19.4264 8.25 18.8541 8.25 18.2574V18H5.25C3.59315 18 2.25 16.6569 2.25 15V5.25ZM3.75 5.25V12.75C3.75 13.5784 4.42157 14.25 5.25 14.25H18.75C19.5784 14.25 20.25 13.5784 20.25 12.75V5.25C20.25 4.42157 19.5784 3.75 18.75 3.75H5.25C4.42157 3.75 3.75 4.42157 3.75 5.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cpu-chip.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cpu_chip />

      <.cpu_chip class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cpu_chip() %>

      <%= cpu_chip(class: "h-6 w-6 text-gray-500") %>
  """
  def cpu_chip(assigns_or_opts \\ [])

  def cpu_chip(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M16.5 7.5H7.5V16.5H16.5V7.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8.25 2.25C8.66421 2.25 9 2.58579 9 3V3.75H11.25V3C11.25 2.58579 11.5858 2.25 12 2.25C12.4142 2.25 12.75 2.58579 12.75 3V3.75H15V3C15 2.58579 15.3358 2.25 15.75 2.25C16.1642 2.25 16.5 2.58579 16.5 3V3.75H17.25C18.9069 3.75 20.25 5.09315 20.25 6.75V7.5H21C21.4142 7.5 21.75 7.83579 21.75 8.25C21.75 8.66421 21.4142 9 21 9H20.25V11.25H21C21.4142 11.25 21.75 11.5858 21.75 12C21.75 12.4142 21.4142 12.75 21 12.75H20.25V15H21C21.4142 15 21.75 15.3358 21.75 15.75C21.75 16.1642 21.4142 16.5 21 16.5H20.25V17.25C20.25 18.9069 18.9069 20.25 17.25 20.25H16.5V21C16.5 21.4142 16.1642 21.75 15.75 21.75C15.3358 21.75 15 21.4142 15 21V20.25H12.75V21C12.75 21.4142 12.4142 21.75 12 21.75C11.5858 21.75 11.25 21.4142 11.25 21V20.25H9V21C9 21.4142 8.66421 21.75 8.25 21.75C7.83579 21.75 7.5 21.4142 7.5 21V20.25H6.75C5.09315 20.25 3.75 18.9069 3.75 17.25V16.5H3C2.58579 16.5 2.25 16.1642 2.25 15.75C2.25 15.3358 2.58579 15 3 15H3.75V12.75H3C2.58579 12.75 2.25 12.4142 2.25 12C2.25 11.5858 2.58579 11.25 3 11.25H3.75V9H3C2.58579 9 2.25 8.66421 2.25 8.25C2.25 7.83579 2.58579 7.5 3 7.5H3.75V6.75C3.75 5.09315 5.09315 3.75 6.75 3.75H7.5V3C7.5 2.58579 7.83579 2.25 8.25 2.25ZM6 6.75C6 6.33579 6.33579 6 6.75 6H17.25C17.6642 6 18 6.33579 18 6.75V17.25C18 17.6642 17.6642 18 17.25 18H6.75C6.33579 18 6 17.6642 6 17.25V6.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def cpu_chip(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M16.5 7.5H7.5V16.5H16.5V7.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8.25 2.25C8.66421 2.25 9 2.58579 9 3V3.75H11.25V3C11.25 2.58579 11.5858 2.25 12 2.25C12.4142 2.25 12.75 2.58579 12.75 3V3.75H15V3C15 2.58579 15.3358 2.25 15.75 2.25C16.1642 2.25 16.5 2.58579 16.5 3V3.75H17.25C18.9069 3.75 20.25 5.09315 20.25 6.75V7.5H21C21.4142 7.5 21.75 7.83579 21.75 8.25C21.75 8.66421 21.4142 9 21 9H20.25V11.25H21C21.4142 11.25 21.75 11.5858 21.75 12C21.75 12.4142 21.4142 12.75 21 12.75H20.25V15H21C21.4142 15 21.75 15.3358 21.75 15.75C21.75 16.1642 21.4142 16.5 21 16.5H20.25V17.25C20.25 18.9069 18.9069 20.25 17.25 20.25H16.5V21C16.5 21.4142 16.1642 21.75 15.75 21.75C15.3358 21.75 15 21.4142 15 21V20.25H12.75V21C12.75 21.4142 12.4142 21.75 12 21.75C11.5858 21.75 11.25 21.4142 11.25 21V20.25H9V21C9 21.4142 8.66421 21.75 8.25 21.75C7.83579 21.75 7.5 21.4142 7.5 21V20.25H6.75C5.09315 20.25 3.75 18.9069 3.75 17.25V16.5H3C2.58579 16.5 2.25 16.1642 2.25 15.75C2.25 15.3358 2.58579 15 3 15H3.75V12.75H3C2.58579 12.75 2.25 12.4142 2.25 12C2.25 11.5858 2.58579 11.25 3 11.25H3.75V9H3C2.58579 9 2.25 8.66421 2.25 8.25C2.25 7.83579 2.58579 7.5 3 7.5H3.75V6.75C3.75 5.09315 5.09315 3.75 6.75 3.75H7.5V3C7.5 2.58579 7.83579 2.25 8.25 2.25ZM6 6.75C6 6.33579 6.33579 6 6.75 6H17.25C17.6642 6 18 6.33579 18 6.75V17.25C18 17.6642 17.6642 18 17.25 18H6.75C6.33579 18 6 17.6642 6 17.25V6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/credit-card.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.credit_card />

      <.credit_card class="h-6 w-6 text-gray-500" />

  or as a function

      <%= credit_card() %>

      <%= credit_card(class: "h-6 w-6 text-gray-500") %>
  """
  def credit_card(assigns_or_opts \\ [])

  def credit_card(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M4.5 3.75C2.84315 3.75 1.5 5.09315 1.5 6.75V7.5H22.5V6.75C22.5 5.09315 21.1569 3.75 19.5 3.75H4.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M22.5 9.75H1.5V17.25C1.5 18.9069 2.84315 20.25 4.5 20.25H19.5C21.1569 20.25 22.5 18.9069 22.5 17.25V9.75ZM4.5 13.5C4.5 13.0858 4.83579 12.75 5.25 12.75H11.25C11.6642 12.75 12 13.0858 12 13.5C12 13.9142 11.6642 14.25 11.25 14.25H5.25C4.83579 14.25 4.5 13.9142 4.5 13.5ZM5.25 15.75C4.83579 15.75 4.5 16.0858 4.5 16.5C4.5 16.9142 4.83579 17.25 5.25 17.25H8.25C8.66421 17.25 9 16.9142 9 16.5C9 16.0858 8.66421 15.75 8.25 15.75H5.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def credit_card(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M4.5 3.75C2.84315 3.75 1.5 5.09315 1.5 6.75V7.5H22.5V6.75C22.5 5.09315 21.1569 3.75 19.5 3.75H4.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M22.5 9.75H1.5V17.25C1.5 18.9069 2.84315 20.25 4.5 20.25H19.5C21.1569 20.25 22.5 18.9069 22.5 17.25V9.75ZM4.5 13.5C4.5 13.0858 4.83579 12.75 5.25 12.75H11.25C11.6642 12.75 12 13.0858 12 13.5C12 13.9142 11.6642 14.25 11.25 14.25H5.25C4.83579 14.25 4.5 13.9142 4.5 13.5ZM5.25 15.75C4.83579 15.75 4.5 16.0858 4.5 16.5C4.5 16.9142 4.83579 17.25 5.25 17.25H8.25C8.66421 17.25 9 16.9142 9 16.5C9 16.0858 8.66421 15.75 8.25 15.75H5.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cube.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cube />

      <.cube class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cube() %>

      <%= cube(class: "h-6 w-6 text-gray-500") %>
  """
  def cube(assigns_or_opts \\ [])

  def cube(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M12.3779 1.60217C12.1444 1.46594 11.8556 1.46594 11.6221 1.60217L3 6.63172L12 11.8817L21 6.63172L12.3779 1.60217Z" fill="#0F172A"/>
    <path d="M21.75 7.93078L12.75 13.1808V22.1808L21.3779 17.1478C21.6083 17.0134 21.75 16.7668 21.75 16.5V7.93078Z" fill="#0F172A"/>
    <path d="M11.25 22.1808V13.1808L2.25 7.93078V16.5C2.25 16.7668 2.39168 17.0134 2.6221 17.1478L11.25 22.1808Z" fill="#0F172A"/>
    </svg>
    """
  end

  def cube(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M12.3779 1.60217C12.1444 1.46594 11.8556 1.46594 11.6221 1.60217L3 6.63172L12 11.8817L21 6.63172L12.3779 1.60217Z\" fill=\"#0F172A\"/>\n<path d=\"M21.75 7.93078L12.75 13.1808V22.1808L21.3779 17.1478C21.6083 17.0134 21.75 16.7668 21.75 16.5V7.93078Z\" fill=\"#0F172A\"/>\n<path d=\"M11.25 22.1808V13.1808L2.25 7.93078V16.5C2.25 16.7668 2.39168 17.0134 2.6221 17.1478L11.25 22.1808Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/currency-dollar.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.currency_dollar />

      <.currency_dollar class="h-6 w-6 text-gray-500" />

  or as a function

      <%= currency_dollar() %>

      <%= currency_dollar(class: "h-6 w-6 text-gray-500") %>
  """
  def currency_dollar(assigns_or_opts \\ [])

  def currency_dollar(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M10.4636 8.74626C10.6908 8.56577 10.9607 8.43451 11.25 8.35249V11.1474C10.9552 11.0637 10.686 10.9304 10.4636 10.7537C10.0699 10.441 9.91752 10.073 9.91752 9.75C9.91752 9.42705 10.0699 9.05904 10.4636 8.74626Z" fill="#0F172A"/>
    <path d="M12.75 15.6616V12.8383C13.0972 12.9228 13.4138 13.0658 13.6713 13.259C14.0978 13.5788 14.25 13.9448 14.25 14.25C14.25 14.5551 14.0978 14.9211 13.6713 15.241C13.4138 15.4342 13.0972 15.5772 12.75 15.6616Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM12.75 6C12.75 5.58579 12.4142 5.25 12 5.25C11.5858 5.25 11.25 5.58579 11.25 6V6.81563C10.6231 6.92669 10.0253 7.17873 9.53058 7.57176C8.81822 8.13765 8.41752 8.9213 8.41752 9.75C8.41752 10.5787 8.81822 11.3623 9.53058 11.9282C10.033 12.3274 10.6327 12.575 11.25 12.6843V15.6616C10.9028 15.5771 10.5864 15.4341 10.3289 15.241L9.45001 14.5818C9.11865 14.3333 8.64854 14.4004 8.40001 14.7318C8.15147 15.0631 8.21862 15.5332 8.54999 15.7818L9.42886 16.441C9.96206 16.8409 10.5979 17.0856 11.25 17.1903V18C11.25 18.4142 11.5858 18.75 12 18.75C12.4142 18.75 12.75 18.4142 12.75 18V17.1904C13.4021 17.0856 14.0381 16.8409 14.5714 16.441C15.3164 15.8821 15.75 15.0965 15.75 14.25C15.75 13.4034 15.3164 12.6178 14.5714 12.059C14.0381 11.659 13.4021 11.4143 12.75 11.3096V8.35257C13.0392 8.4346 13.309 8.56583 13.5361 8.74626L13.951 9.07585C14.2753 9.3335 14.7471 9.27944 15.0048 8.95511C15.2624 8.63078 15.2084 8.15899 14.884 7.90135L14.4691 7.57176C13.9745 7.17879 13.3768 6.92677 12.75 6.81567V6Z" fill="#0F172A"/>
    </svg>
    """
  end

  def currency_dollar(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10.4636 8.74626C10.6908 8.56577 10.9607 8.43451 11.25 8.35249V11.1474C10.9552 11.0637 10.686 10.9304 10.4636 10.7537C10.0699 10.441 9.91752 10.073 9.91752 9.75C9.91752 9.42705 10.0699 9.05904 10.4636 8.74626Z\" fill=\"#0F172A\"/>\n<path d=\"M12.75 15.6616V12.8383C13.0972 12.9228 13.4138 13.0658 13.6713 13.259C14.0978 13.5788 14.25 13.9448 14.25 14.25C14.25 14.5551 14.0978 14.9211 13.6713 15.241C13.4138 15.4342 13.0972 15.5772 12.75 15.6616Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM12.75 6C12.75 5.58579 12.4142 5.25 12 5.25C11.5858 5.25 11.25 5.58579 11.25 6V6.81563C10.6231 6.92669 10.0253 7.17873 9.53058 7.57176C8.81822 8.13765 8.41752 8.9213 8.41752 9.75C8.41752 10.5787 8.81822 11.3623 9.53058 11.9282C10.033 12.3274 10.6327 12.575 11.25 12.6843V15.6616C10.9028 15.5771 10.5864 15.4341 10.3289 15.241L9.45001 14.5818C9.11865 14.3333 8.64854 14.4004 8.40001 14.7318C8.15147 15.0631 8.21862 15.5332 8.54999 15.7818L9.42886 16.441C9.96206 16.8409 10.5979 17.0856 11.25 17.1903V18C11.25 18.4142 11.5858 18.75 12 18.75C12.4142 18.75 12.75 18.4142 12.75 18V17.1904C13.4021 17.0856 14.0381 16.8409 14.5714 16.441C15.3164 15.8821 15.75 15.0965 15.75 14.25C15.75 13.4034 15.3164 12.6178 14.5714 12.059C14.0381 11.659 13.4021 11.4143 12.75 11.3096V8.35257C13.0392 8.4346 13.309 8.56583 13.5361 8.74626L13.951 9.07585C14.2753 9.3335 14.7471 9.27944 15.0048 8.95511C15.2624 8.63078 15.2084 8.15899 14.884 7.90135L14.4691 7.57176C13.9745 7.17879 13.3768 6.92677 12.75 6.81567V6Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/currency-euro.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.currency_euro />

      <.currency_euro class="h-6 w-6 text-gray-500" />

  or as a function

      <%= currency_euro() %>

      <%= currency_euro(class: "h-6 w-6 text-gray-500") %>
  """
  def currency_euro(assigns_or_opts \\ [])

  def currency_euro(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM10.0983 9.34835C11.1527 8.29405 12.6796 7.99768 14.0006 8.46355C14.3912 8.60132 14.8195 8.39633 14.9573 8.0057C15.0951 7.61507 14.8901 7.18671 14.4994 7.04895C12.6545 6.39828 10.5156 6.80976 9.03769 8.28769C8.60004 8.72534 8.25581 9.22104 8.005 9.75H7.5C7.08579 9.75 6.75 10.0858 6.75 10.5C6.75 10.9142 7.08579 11.25 7.5 11.25H7.55353C7.48216 11.7472 7.48216 12.2528 7.55353 12.75H7.5C7.08579 12.75 6.75 13.0858 6.75 13.5C6.75 13.9142 7.08579 14.25 7.5 14.25H8.005C8.25581 14.779 8.60004 15.2747 9.03769 15.7123C10.5156 17.1902 12.6545 17.6017 14.4994 16.9511C14.8901 16.8133 15.0951 16.3849 14.9573 15.9943C14.8195 15.6037 14.3912 15.3987 14.0006 15.5364C12.6796 16.0023 11.1527 15.706 10.0983 14.6517C9.97095 14.5243 9.85464 14.39 9.74941 14.25H12.75C13.1642 14.25 13.5 13.9142 13.5 13.5C13.5 13.0858 13.1642 12.75 12.75 12.75H9.07535C8.97488 12.2554 8.97488 11.7446 9.07535 11.25H12.75C13.1642 11.25 13.5 10.9142 13.5 10.5C13.5 10.0858 13.1642 9.75 12.75 9.75H9.74941C9.85464 9.61003 9.97095 9.47575 10.0983 9.34835Z" fill="#0F172A"/>
    </svg>
    """
  end

  def currency_euro(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM10.0983 9.34835C11.1527 8.29405 12.6796 7.99768 14.0006 8.46355C14.3912 8.60132 14.8195 8.39633 14.9573 8.0057C15.0951 7.61507 14.8901 7.18671 14.4994 7.04895C12.6545 6.39828 10.5156 6.80976 9.03769 8.28769C8.60004 8.72534 8.25581 9.22104 8.005 9.75H7.5C7.08579 9.75 6.75 10.0858 6.75 10.5C6.75 10.9142 7.08579 11.25 7.5 11.25H7.55353C7.48216 11.7472 7.48216 12.2528 7.55353 12.75H7.5C7.08579 12.75 6.75 13.0858 6.75 13.5C6.75 13.9142 7.08579 14.25 7.5 14.25H8.005C8.25581 14.779 8.60004 15.2747 9.03769 15.7123C10.5156 17.1902 12.6545 17.6017 14.4994 16.9511C14.8901 16.8133 15.0951 16.3849 14.9573 15.9943C14.8195 15.6037 14.3912 15.3987 14.0006 15.5364C12.6796 16.0023 11.1527 15.706 10.0983 14.6517C9.97095 14.5243 9.85464 14.39 9.74941 14.25H12.75C13.1642 14.25 13.5 13.9142 13.5 13.5C13.5 13.0858 13.1642 12.75 12.75 12.75H9.07535C8.97488 12.2554 8.97488 11.7446 9.07535 11.25H12.75C13.1642 11.25 13.5 10.9142 13.5 10.5C13.5 10.0858 13.1642 9.75 12.75 9.75H9.74941C9.85464 9.61003 9.97095 9.47575 10.0983 9.34835Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/currency-pound.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.currency_pound />

      <.currency_pound class="h-6 w-6 text-gray-500" />

  or as a function

      <%= currency_pound() %>

      <%= currency_pound(class: "h-6 w-6 text-gray-500") %>
  """
  def currency_pound(assigns_or_opts \\ [])

  def currency_pound(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM9.76273 9.51002C9.81529 9.01621 10.0302 8.53785 10.409 8.15901C11.2877 7.28033 12.7123 7.28033 13.591 8.15901C13.8839 8.4519 14.3588 8.4519 14.6517 8.15901C14.9445 7.86612 14.9445 7.39124 14.6517 7.09835C13.1872 5.63388 10.8128 5.63388 9.34835 7.09835C8.7183 7.7284 8.3587 8.52881 8.27116 9.35126C8.23849 9.6582 8.27044 9.94628 8.30277 10.1726L8.45668 11.25H8.25C7.83579 11.25 7.5 11.5858 7.5 12C7.5 12.4142 7.83579 12.75 8.25 12.75H8.67097L8.80874 13.7144C8.91661 14.4695 8.79165 15.2396 8.45053 15.9218L8.32918 16.1645C8.19352 16.4358 8.23466 16.7621 8.43341 16.9913C8.63216 17.2205 8.94939 17.3074 9.23717 17.2114L10.7757 16.6986C11.0836 16.596 11.4164 16.596 11.7243 16.6986L12.3787 16.9167C13.1335 17.1683 13.9573 17.1098 14.669 16.7539L15.3354 16.4207C15.7059 16.2355 15.8561 15.785 15.6708 15.4145C15.4856 15.044 15.0351 14.8939 14.6646 15.0791L13.9982 15.4123C13.6424 15.5902 13.2304 15.6195 12.853 15.4937L12.1987 15.2756C11.5829 15.0703 10.9171 15.0703 10.3013 15.2756L10.2401 15.296C10.3601 14.7089 10.3794 14.1022 10.2937 13.5023L10.1862 12.75H12C12.4142 12.75 12.75 12.4142 12.75 12C12.75 11.5858 12.4142 11.25 12 11.25H9.97191L9.7877 9.9605C9.7598 9.76518 9.75032 9.62664 9.76273 9.51002Z" fill="#0F172A"/>
    </svg>
    """
  end

  def currency_pound(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM9.76273 9.51002C9.81529 9.01621 10.0302 8.53785 10.409 8.15901C11.2877 7.28033 12.7123 7.28033 13.591 8.15901C13.8839 8.4519 14.3588 8.4519 14.6517 8.15901C14.9445 7.86612 14.9445 7.39124 14.6517 7.09835C13.1872 5.63388 10.8128 5.63388 9.34835 7.09835C8.7183 7.7284 8.3587 8.52881 8.27116 9.35126C8.23849 9.6582 8.27044 9.94628 8.30277 10.1726L8.45668 11.25H8.25C7.83579 11.25 7.5 11.5858 7.5 12C7.5 12.4142 7.83579 12.75 8.25 12.75H8.67097L8.80874 13.7144C8.91661 14.4695 8.79165 15.2396 8.45053 15.9218L8.32918 16.1645C8.19352 16.4358 8.23466 16.7621 8.43341 16.9913C8.63216 17.2205 8.94939 17.3074 9.23717 17.2114L10.7757 16.6986C11.0836 16.596 11.4164 16.596 11.7243 16.6986L12.3787 16.9167C13.1335 17.1683 13.9573 17.1098 14.669 16.7539L15.3354 16.4207C15.7059 16.2355 15.8561 15.785 15.6708 15.4145C15.4856 15.044 15.0351 14.8939 14.6646 15.0791L13.9982 15.4123C13.6424 15.5902 13.2304 15.6195 12.853 15.4937L12.1987 15.2756C11.5829 15.0703 10.9171 15.0703 10.3013 15.2756L10.2401 15.296C10.3601 14.7089 10.3794 14.1022 10.2937 13.5023L10.1862 12.75H12C12.4142 12.75 12.75 12.4142 12.75 12C12.75 11.5858 12.4142 11.25 12 11.25H9.97191L9.7877 9.9605C9.7598 9.76518 9.75032 9.62664 9.76273 9.51002Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/currency-rupee.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.currency_rupee />

      <.currency_rupee class="h-6 w-6 text-gray-500" />

  or as a function

      <%= currency_rupee() %>

      <%= currency_rupee(class: "h-6 w-6 text-gray-500") %>
  """
  def currency_rupee(assigns_or_opts \\ [])

  def currency_rupee(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM9 7.5C8.58579 7.5 8.25 7.83579 8.25 8.25C8.25 8.66421 8.58579 9 9 9H10.5C11.4797 9 12.3131 9.62611 12.622 10.5H9C8.58579 10.5 8.25 10.8358 8.25 11.25C8.25 11.6642 8.58579 12 9 12H12.622C12.3131 12.8739 11.4797 13.5 10.5 13.5H9C8.69665 13.5 8.42318 13.6827 8.30709 13.963C8.191 14.2432 8.25517 14.5658 8.46967 14.7803L11.4697 17.7803C11.7626 18.0732 12.2374 18.0732 12.5303 17.7803C12.8232 17.4874 12.8232 17.0126 12.5303 16.7197L10.7989 14.9883C12.4785 14.8558 13.8468 13.6168 14.175 12H15C15.4142 12 15.75 11.6642 15.75 11.25C15.75 10.8358 15.4142 10.5 15 10.5H14.175C14.0625 9.94584 13.8278 9.43606 13.5003 9H15C15.4142 9 15.75 8.66421 15.75 8.25C15.75 7.83579 15.4142 7.5 15 7.5H9Z" fill="#0F172A"/>
    </svg>
    """
  end

  def currency_rupee(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM9 7.5C8.58579 7.5 8.25 7.83579 8.25 8.25C8.25 8.66421 8.58579 9 9 9H10.5C11.4797 9 12.3131 9.62611 12.622 10.5H9C8.58579 10.5 8.25 10.8358 8.25 11.25C8.25 11.6642 8.58579 12 9 12H12.622C12.3131 12.8739 11.4797 13.5 10.5 13.5H9C8.69665 13.5 8.42318 13.6827 8.30709 13.963C8.191 14.2432 8.25517 14.5658 8.46967 14.7803L11.4697 17.7803C11.7626 18.0732 12.2374 18.0732 12.5303 17.7803C12.8232 17.4874 12.8232 17.0126 12.5303 16.7197L10.7989 14.9883C12.4785 14.8558 13.8468 13.6168 14.175 12H15C15.4142 12 15.75 11.6642 15.75 11.25C15.75 10.8358 15.4142 10.5 15 10.5H14.175C14.0625 9.94584 13.8278 9.43606 13.5003 9H15C15.4142 9 15.75 8.66421 15.75 8.25C15.75 7.83579 15.4142 7.5 15 7.5H9Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/currency-yen.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.currency_yen />

      <.currency_yen class="h-6 w-6 text-gray-500" />

  or as a function

      <%= currency_yen() %>

      <%= currency_yen(class: "h-6 w-6 text-gray-500") %>
  """
  def currency_yen(assigns_or_opts \\ [])

  def currency_yen(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM9.62404 7.08397C9.39427 6.73933 8.92862 6.6462 8.58398 6.87596C8.23933 7.10573 8.1462 7.57138 8.37596 7.91603L10.5986 11.25H9C8.58579 11.25 8.25 11.5858 8.25 12C8.25 12.4142 8.58579 12.75 9 12.75H11.25V14.25H9C8.58579 14.25 8.25 14.5858 8.25 15C8.25 15.4142 8.58579 15.75 9 15.75H11.25V17.25C11.25 17.6642 11.5858 18 12 18C12.4142 18 12.75 17.6642 12.75 17.25V15.75H15C15.4142 15.75 15.75 15.4142 15.75 15C15.75 14.5858 15.4142 14.25 15 14.25H12.75V12.75H15C15.4142 12.75 15.75 12.4142 15.75 12C15.75 11.5858 15.4142 11.25 15 11.25H13.4014L15.624 7.91603C15.8538 7.57138 15.7607 7.10573 15.416 6.87596C15.0714 6.6462 14.6057 6.73933 14.376 7.08397L12 10.6479L9.62404 7.08397Z" fill="#0F172A"/>
    </svg>
    """
  end

  def currency_yen(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM9.62404 7.08397C9.39427 6.73933 8.92862 6.6462 8.58398 6.87596C8.23933 7.10573 8.1462 7.57138 8.37596 7.91603L10.5986 11.25H9C8.58579 11.25 8.25 11.5858 8.25 12C8.25 12.4142 8.58579 12.75 9 12.75H11.25V14.25H9C8.58579 14.25 8.25 14.5858 8.25 15C8.25 15.4142 8.58579 15.75 9 15.75H11.25V17.25C11.25 17.6642 11.5858 18 12 18C12.4142 18 12.75 17.6642 12.75 17.25V15.75H15C15.4142 15.75 15.75 15.4142 15.75 15C15.75 14.5858 15.4142 14.25 15 14.25H12.75V12.75H15C15.4142 12.75 15.75 12.4142 15.75 12C15.75 11.5858 15.4142 11.25 15 11.25H13.4014L15.624 7.91603C15.8538 7.57138 15.7607 7.10573 15.416 6.87596C15.0714 6.6462 14.6057 6.73933 14.376 7.08397L12 10.6479L9.62404 7.08397Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cursor-arrow-rays.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cursor_arrow_rays />

      <.cursor_arrow_rays class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cursor_arrow_rays() %>

      <%= cursor_arrow_rays(class: "h-6 w-6 text-gray-500") %>
  """
  def cursor_arrow_rays(assigns_or_opts \\ [])

  def cursor_arrow_rays(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.5C12.4142 1.5 12.75 1.83579 12.75 2.25V4.5C12.75 4.91421 12.4142 5.25 12 5.25C11.5858 5.25 11.25 4.91421 11.25 4.5V2.25C11.25 1.83579 11.5858 1.5 12 1.5ZM5.63604 4.13604C5.92893 3.84315 6.40381 3.84315 6.6967 4.13604L8.28769 5.72703C8.58058 6.01992 8.58058 6.4948 8.28769 6.78769C7.9948 7.08058 7.51992 7.08058 7.22703 6.78769L5.63604 5.1967C5.34315 4.90381 5.34315 4.42893 5.63604 4.13604ZM18.364 4.13604C18.6569 4.42893 18.6569 4.90381 18.364 5.1967L16.773 6.78769C16.4801 7.08058 16.0052 7.08058 15.7123 6.78769C15.4194 6.4948 15.4194 6.01992 15.7123 5.72703L17.3033 4.13604C17.5962 3.84315 18.0711 3.84315 18.364 4.13604ZM11.5484 8.63179C11.8602 8.54824 12.1905 8.67359 12.3684 8.94299L17.5955 16.8599C17.7627 17.113 17.7609 17.4419 17.591 17.6932C17.421 17.9445 17.1165 18.0687 16.8193 18.0079L14.722 17.5787L15.7668 21.4777C15.874 21.8778 15.6365 22.289 15.2364 22.3963C14.8363 22.5035 14.4251 22.266 14.3179 21.8659L13.2732 17.967L11.6717 19.3872C11.4447 19.5884 11.1189 19.6332 10.8461 19.5005C10.5733 19.3678 10.4073 19.0839 10.4254 18.7811L10.9939 9.3113C11.0132 8.98905 11.2366 8.71534 11.5484 8.63179ZM3 10.5C3 10.0858 3.33579 9.75 3.75 9.75H6C6.41421 9.75 6.75 10.0858 6.75 10.5C6.75 10.9142 6.41421 11.25 6 11.25H3.75C3.33579 11.25 3 10.9142 3 10.5ZM17.25 10.5C17.25 10.0858 17.5858 9.75 18 9.75H20.25C20.6642 9.75 21 10.0858 21 10.5C21 10.9142 20.6642 11.25 20.25 11.25H18C17.5858 11.25 17.25 10.9142 17.25 10.5ZM8.28769 14.2123C8.58058 14.5052 8.58058 14.9801 8.28769 15.273L6.6967 16.864C6.40381 17.1569 5.92893 17.1569 5.63604 16.864C5.34315 16.5711 5.34315 16.0962 5.63604 15.8033L7.22703 14.2123C7.51992 13.9194 7.9948 13.9194 8.28769 14.2123Z" fill="#0F172A"/>
    </svg>
    """
  end

  def cursor_arrow_rays(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 1.5C12.4142 1.5 12.75 1.83579 12.75 2.25V4.5C12.75 4.91421 12.4142 5.25 12 5.25C11.5858 5.25 11.25 4.91421 11.25 4.5V2.25C11.25 1.83579 11.5858 1.5 12 1.5ZM5.63604 4.13604C5.92893 3.84315 6.40381 3.84315 6.6967 4.13604L8.28769 5.72703C8.58058 6.01992 8.58058 6.4948 8.28769 6.78769C7.9948 7.08058 7.51992 7.08058 7.22703 6.78769L5.63604 5.1967C5.34315 4.90381 5.34315 4.42893 5.63604 4.13604ZM18.364 4.13604C18.6569 4.42893 18.6569 4.90381 18.364 5.1967L16.773 6.78769C16.4801 7.08058 16.0052 7.08058 15.7123 6.78769C15.4194 6.4948 15.4194 6.01992 15.7123 5.72703L17.3033 4.13604C17.5962 3.84315 18.0711 3.84315 18.364 4.13604ZM11.5484 8.63179C11.8602 8.54824 12.1905 8.67359 12.3684 8.94299L17.5955 16.8599C17.7627 17.113 17.7609 17.4419 17.591 17.6932C17.421 17.9445 17.1165 18.0687 16.8193 18.0079L14.722 17.5787L15.7668 21.4777C15.874 21.8778 15.6365 22.289 15.2364 22.3963C14.8363 22.5035 14.4251 22.266 14.3179 21.8659L13.2732 17.967L11.6717 19.3872C11.4447 19.5884 11.1189 19.6332 10.8461 19.5005C10.5733 19.3678 10.4073 19.0839 10.4254 18.7811L10.9939 9.3113C11.0132 8.98905 11.2366 8.71534 11.5484 8.63179ZM3 10.5C3 10.0858 3.33579 9.75 3.75 9.75H6C6.41421 9.75 6.75 10.0858 6.75 10.5C6.75 10.9142 6.41421 11.25 6 11.25H3.75C3.33579 11.25 3 10.9142 3 10.5ZM17.25 10.5C17.25 10.0858 17.5858 9.75 18 9.75H20.25C20.6642 9.75 21 10.0858 21 10.5C21 10.9142 20.6642 11.25 20.25 11.25H18C17.5858 11.25 17.25 10.9142 17.25 10.5ZM8.28769 14.2123C8.58058 14.5052 8.58058 14.9801 8.28769 15.273L6.6967 16.864C6.40381 17.1569 5.92893 17.1569 5.63604 16.864C5.34315 16.5711 5.34315 16.0962 5.63604 15.8033L7.22703 14.2123C7.51992 13.9194 7.9948 13.9194 8.28769 14.2123Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/cursor-arrow-ripple.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.cursor_arrow_ripple />

      <.cursor_arrow_ripple class="h-6 w-6 text-gray-500" />

  or as a function

      <%= cursor_arrow_ripple() %>

      <%= cursor_arrow_ripple(class: "h-6 w-6 text-gray-500") %>
  """
  def cursor_arrow_ripple(assigns_or_opts \\ [])

  def cursor_arrow_ripple(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M17.3033 5.1967C14.3744 2.26777 9.62563 2.26777 6.6967 5.1967C3.76777 8.12563 3.76777 12.8744 6.6967 15.8033C6.98959 16.0962 6.98959 16.5711 6.6967 16.864C6.40381 17.1569 5.92893 17.1569 5.63604 16.864C2.12132 13.3492 2.12132 7.65076 5.63604 4.13604C9.15076 0.62132 14.8492 0.62132 18.364 4.13604C20.1211 5.89321 21 8.19775 21 10.4998C21 10.9141 20.6642 11.2498 20.25 11.2499C19.8358 11.2499 19.5 10.9141 19.5 10.4999C19.5 8.57933 18.7679 6.66128 17.3033 5.1967ZM15.182 7.31802C13.4246 5.56066 10.5754 5.56066 8.81802 7.31802C7.06066 9.07538 7.06066 11.9246 8.81802 13.682C9.11091 13.9749 9.11091 14.4497 8.81802 14.7426C8.52513 15.0355 8.05025 15.0355 7.75736 14.7426C5.41421 12.3995 5.41421 8.60051 7.75736 6.25736C10.1005 3.91421 13.8995 3.91421 16.2426 6.25736C17.414 7.42877 18 8.96558 18 10.4999C18 10.9141 17.6642 11.2499 17.25 11.2499C16.8358 11.2499 16.5 10.9142 16.5 10.4999C16.5 9.34715 16.0608 8.19683 15.182 7.31802ZM11.5484 8.63179C11.8602 8.54824 12.1905 8.67359 12.3684 8.94299L17.5955 16.8599C17.7627 17.113 17.7609 17.4419 17.591 17.6932C17.421 17.9445 17.1165 18.0687 16.8193 18.0079L14.722 17.5787L15.7668 21.4777C15.874 21.8778 15.6365 22.289 15.2364 22.3963C14.8363 22.5035 14.4251 22.266 14.3179 21.8659L13.2732 17.967L11.6717 19.3872C11.4447 19.5884 11.1189 19.6332 10.8461 19.5005C10.5733 19.3678 10.4073 19.0839 10.4254 18.7811L10.9939 9.3113C11.0132 8.98905 11.2366 8.71534 11.5484 8.63179Z" fill="#0F172A"/>
    </svg>
    """
  end

  def cursor_arrow_ripple(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M17.3033 5.1967C14.3744 2.26777 9.62563 2.26777 6.6967 5.1967C3.76777 8.12563 3.76777 12.8744 6.6967 15.8033C6.98959 16.0962 6.98959 16.5711 6.6967 16.864C6.40381 17.1569 5.92893 17.1569 5.63604 16.864C2.12132 13.3492 2.12132 7.65076 5.63604 4.13604C9.15076 0.62132 14.8492 0.62132 18.364 4.13604C20.1211 5.89321 21 8.19775 21 10.4998C21 10.9141 20.6642 11.2498 20.25 11.2499C19.8358 11.2499 19.5 10.9141 19.5 10.4999C19.5 8.57933 18.7679 6.66128 17.3033 5.1967ZM15.182 7.31802C13.4246 5.56066 10.5754 5.56066 8.81802 7.31802C7.06066 9.07538 7.06066 11.9246 8.81802 13.682C9.11091 13.9749 9.11091 14.4497 8.81802 14.7426C8.52513 15.0355 8.05025 15.0355 7.75736 14.7426C5.41421 12.3995 5.41421 8.60051 7.75736 6.25736C10.1005 3.91421 13.8995 3.91421 16.2426 6.25736C17.414 7.42877 18 8.96558 18 10.4999C18 10.9141 17.6642 11.2499 17.25 11.2499C16.8358 11.2499 16.5 10.9142 16.5 10.4999C16.5 9.34715 16.0608 8.19683 15.182 7.31802ZM11.5484 8.63179C11.8602 8.54824 12.1905 8.67359 12.3684 8.94299L17.5955 16.8599C17.7627 17.113 17.7609 17.4419 17.591 17.6932C17.421 17.9445 17.1165 18.0687 16.8193 18.0079L14.722 17.5787L15.7668 21.4777C15.874 21.8778 15.6365 22.289 15.2364 22.3963C14.8363 22.5035 14.4251 22.266 14.3179 21.8659L13.2732 17.967L11.6717 19.3872C11.4447 19.5884 11.1189 19.6332 10.8461 19.5005C10.5733 19.3678 10.4073 19.0839 10.4254 18.7811L10.9939 9.3113C11.0132 8.98905 11.2366 8.71534 11.5484 8.63179Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/device-phone-mobile.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.device_phone_mobile />

      <.device_phone_mobile class="h-6 w-6 text-gray-500" />

  or as a function

      <%= device_phone_mobile() %>

      <%= device_phone_mobile(class: "h-6 w-6 text-gray-500") %>
  """
  def device_phone_mobile(assigns_or_opts \\ [])

  def device_phone_mobile(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M10.5 18.75C10.0858 18.75 9.75 19.0858 9.75 19.5C9.75 19.9142 10.0858 20.25 10.5 20.25H13.5C13.9142 20.25 14.25 19.9142 14.25 19.5C14.25 19.0858 13.9142 18.75 13.5 18.75H10.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8.625 0.75C6.76104 0.75 5.25 2.26104 5.25 4.125V19.875C5.25 21.739 6.76104 23.25 8.625 23.25H15.375C17.239 23.25 18.75 21.739 18.75 19.875V4.125C18.75 2.26104 17.239 0.75 15.375 0.75H8.625ZM7.5 4.125C7.5 3.50368 8.00368 3 8.625 3H9.75V3.375C9.75 3.99632 10.2537 4.5 10.875 4.5H13.125C13.7463 4.5 14.25 3.99632 14.25 3.375V3H15.375C15.9963 3 16.5 3.50368 16.5 4.125V19.875C16.5 20.4963 15.9963 21 15.375 21H8.625C8.00368 21 7.5 20.4963 7.5 19.875V4.125Z" fill="#0F172A"/>
    </svg>
    """
  end

  def device_phone_mobile(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10.5 18.75C10.0858 18.75 9.75 19.0858 9.75 19.5C9.75 19.9142 10.0858 20.25 10.5 20.25H13.5C13.9142 20.25 14.25 19.9142 14.25 19.5C14.25 19.0858 13.9142 18.75 13.5 18.75H10.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8.625 0.75C6.76104 0.75 5.25 2.26104 5.25 4.125V19.875C5.25 21.739 6.76104 23.25 8.625 23.25H15.375C17.239 23.25 18.75 21.739 18.75 19.875V4.125C18.75 2.26104 17.239 0.75 15.375 0.75H8.625ZM7.5 4.125C7.5 3.50368 8.00368 3 8.625 3H9.75V3.375C9.75 3.99632 10.2537 4.5 10.875 4.5H13.125C13.7463 4.5 14.25 3.99632 14.25 3.375V3H15.375C15.9963 3 16.5 3.50368 16.5 4.125V19.875C16.5 20.4963 15.9963 21 15.375 21H8.625C8.00368 21 7.5 20.4963 7.5 19.875V4.125Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/device-tablet.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.device_tablet />

      <.device_tablet class="h-6 w-6 text-gray-500" />

  or as a function

      <%= device_tablet() %>

      <%= device_tablet(class: "h-6 w-6 text-gray-500") %>
  """
  def device_tablet(assigns_or_opts \\ [])

  def device_tablet(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M10.5 18C10.0858 18 9.75 18.3358 9.75 18.75C9.75 19.1642 10.0858 19.5 10.5 19.5H13.5C13.9142 19.5 14.25 19.1642 14.25 18.75C14.25 18.3358 13.9142 18 13.5 18H10.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.125 1.5C5.26104 1.5 3.75 3.01104 3.75 4.875V19.125C3.75 20.989 5.26104 22.5 7.125 22.5H16.875C18.739 22.5 20.25 20.989 20.25 19.125V4.875C20.25 3.01104 18.739 1.5 16.875 1.5H7.125ZM6 4.875C6 4.25368 6.50368 3.75 7.125 3.75H16.875C17.4963 3.75 18 4.25368 18 4.875V19.125C18 19.7463 17.4963 20.25 16.875 20.25H7.125C6.50368 20.25 6 19.7463 6 19.125V4.875Z" fill="#0F172A"/>
    </svg>
    """
  end

  def device_tablet(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10.5 18C10.0858 18 9.75 18.3358 9.75 18.75C9.75 19.1642 10.0858 19.5 10.5 19.5H13.5C13.9142 19.5 14.25 19.1642 14.25 18.75C14.25 18.3358 13.9142 18 13.5 18H10.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.125 1.5C5.26104 1.5 3.75 3.01104 3.75 4.875V19.125C3.75 20.989 5.26104 22.5 7.125 22.5H16.875C18.739 22.5 20.25 20.989 20.25 19.125V4.875C20.25 3.01104 18.739 1.5 16.875 1.5H7.125ZM6 4.875C6 4.25368 6.50368 3.75 7.125 3.75H16.875C17.4963 3.75 18 4.25368 18 4.875V19.125C18 19.7463 17.4963 20.25 16.875 20.25H7.125C6.50368 20.25 6 19.7463 6 19.125V4.875Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_arrow_down />

      <.document_arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_arrow_down() %>

      <%= document_arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def document_arrow_down(assigns_or_opts \\ [])

  def document_arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.625 1.5H9C11.0711 1.5 12.75 3.17893 12.75 5.25V7.125C12.75 8.16053 13.5895 9 14.625 9H16.5C18.5711 9 20.25 10.6789 20.25 12.75V20.625C20.25 21.6605 19.4105 22.5 18.375 22.5H5.625C4.58947 22.5 3.75 21.6605 3.75 20.625V3.375C3.75 2.33947 4.58947 1.5 5.625 1.5ZM11.4697 18.5303C11.7626 18.8232 12.2374 18.8232 12.5303 18.5303L15.5303 15.5303C15.8232 15.2374 15.8232 14.7626 15.5303 14.4697C15.2374 14.1768 14.7626 14.1768 14.4697 14.4697L12.75 16.1893L12.75 12C12.75 11.5858 12.4142 11.25 12 11.25C11.5858 11.25 11.25 11.5858 11.25 12L11.25 16.1893L9.53033 14.4697C9.23744 14.1768 8.76256 14.1768 8.46967 14.4697C8.17678 14.7626 8.17678 15.2374 8.46967 15.5303L11.4697 18.5303Z" fill="#0F172A"/>
    <path d="M14.25 5.25C14.25 3.93695 13.768 2.73648 12.9712 1.8159C16.3701 2.70377 19.0462 5.37988 19.9341 8.77881C19.0135 7.98204 17.8131 7.5 16.5 7.5H14.625C14.4179 7.5 14.25 7.33211 14.25 7.125V5.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def document_arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.625 1.5H9C11.0711 1.5 12.75 3.17893 12.75 5.25V7.125C12.75 8.16053 13.5895 9 14.625 9H16.5C18.5711 9 20.25 10.6789 20.25 12.75V20.625C20.25 21.6605 19.4105 22.5 18.375 22.5H5.625C4.58947 22.5 3.75 21.6605 3.75 20.625V3.375C3.75 2.33947 4.58947 1.5 5.625 1.5ZM11.4697 18.5303C11.7626 18.8232 12.2374 18.8232 12.5303 18.5303L15.5303 15.5303C15.8232 15.2374 15.8232 14.7626 15.5303 14.4697C15.2374 14.1768 14.7626 14.1768 14.4697 14.4697L12.75 16.1893L12.75 12C12.75 11.5858 12.4142 11.25 12 11.25C11.5858 11.25 11.25 11.5858 11.25 12L11.25 16.1893L9.53033 14.4697C9.23744 14.1768 8.76256 14.1768 8.46967 14.4697C8.17678 14.7626 8.17678 15.2374 8.46967 15.5303L11.4697 18.5303Z\" fill=\"#0F172A\"/>\n<path d=\"M14.25 5.25C14.25 3.93695 13.768 2.73648 12.9712 1.8159C16.3701 2.70377 19.0462 5.37988 19.9341 8.77881C19.0135 7.98204 17.8131 7.5 16.5 7.5H14.625C14.4179 7.5 14.25 7.33211 14.25 7.125V5.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-arrow-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_arrow_up />

      <.document_arrow_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_arrow_up() %>

      <%= document_arrow_up(class: "h-6 w-6 text-gray-500") %>
  """
  def document_arrow_up(assigns_or_opts \\ [])

  def document_arrow_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.625 1.5H9C11.0711 1.5 12.75 3.17893 12.75 5.25V7.125C12.75 8.16053 13.5895 9 14.625 9H16.5C18.5711 9 20.25 10.6789 20.25 12.75V20.625C20.25 21.6605 19.4105 22.5 18.375 22.5H5.625C4.58947 22.5 3.75 21.6605 3.75 20.625V3.375C3.75 2.33947 4.58947 1.5 5.625 1.5ZM12.5303 11.4697C12.3897 11.329 12.1989 11.25 12 11.25C11.8011 11.25 11.6103 11.329 11.4697 11.4697L8.46967 14.4697C8.17678 14.7626 8.17678 15.2374 8.46967 15.5303C8.76256 15.8232 9.23744 15.8232 9.53033 15.5303L11.25 13.8107L11.25 18C11.25 18.4142 11.5858 18.75 12 18.75C12.4142 18.75 12.75 18.4142 12.75 18L12.75 13.8107L14.4697 15.5303C14.7626 15.8232 15.2374 15.8232 15.5303 15.5303C15.8232 15.2374 15.8232 14.7626 15.5303 14.4697L12.5303 11.4697Z" fill="#0F172A"/>
    <path d="M14.25 5.25C14.25 3.93695 13.768 2.73648 12.9712 1.8159C16.3701 2.70377 19.0462 5.37988 19.9341 8.77881C19.0135 7.98204 17.8131 7.5 16.5 7.5H14.625C14.4179 7.5 14.25 7.33211 14.25 7.125V5.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def document_arrow_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.625 1.5H9C11.0711 1.5 12.75 3.17893 12.75 5.25V7.125C12.75 8.16053 13.5895 9 14.625 9H16.5C18.5711 9 20.25 10.6789 20.25 12.75V20.625C20.25 21.6605 19.4105 22.5 18.375 22.5H5.625C4.58947 22.5 3.75 21.6605 3.75 20.625V3.375C3.75 2.33947 4.58947 1.5 5.625 1.5ZM12.5303 11.4697C12.3897 11.329 12.1989 11.25 12 11.25C11.8011 11.25 11.6103 11.329 11.4697 11.4697L8.46967 14.4697C8.17678 14.7626 8.17678 15.2374 8.46967 15.5303C8.76256 15.8232 9.23744 15.8232 9.53033 15.5303L11.25 13.8107L11.25 18C11.25 18.4142 11.5858 18.75 12 18.75C12.4142 18.75 12.75 18.4142 12.75 18L12.75 13.8107L14.4697 15.5303C14.7626 15.8232 15.2374 15.8232 15.5303 15.5303C15.8232 15.2374 15.8232 14.7626 15.5303 14.4697L12.5303 11.4697Z\" fill=\"#0F172A\"/>\n<path d=\"M14.25 5.25C14.25 3.93695 13.768 2.73648 12.9712 1.8159C16.3701 2.70377 19.0462 5.37988 19.9341 8.77881C19.0135 7.98204 17.8131 7.5 16.5 7.5H14.625C14.4179 7.5 14.25 7.33211 14.25 7.125V5.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-chart-bar.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_chart_bar />

      <.document_chart_bar class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_chart_bar() %>

      <%= document_chart_bar(class: "h-6 w-6 text-gray-500") %>
  """
  def document_chart_bar(assigns_or_opts \\ [])

  def document_chart_bar(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.625 1.5H9C11.0711 1.5 12.75 3.17893 12.75 5.25V7.125C12.75 8.16053 13.5895 9 14.625 9H16.5C18.5711 9 20.25 10.6789 20.25 12.75V20.625C20.25 21.6605 19.4105 22.5 18.375 22.5H5.625C4.58947 22.5 3.75 21.6605 3.75 20.625V3.375C3.75 2.33947 4.58947 1.5 5.625 1.5ZM9.75 17.25C9.75 16.8358 9.41421 16.5 9 16.5C8.58579 16.5 8.25 16.8358 8.25 17.25V18C8.25 18.4142 8.58579 18.75 9 18.75C9.41421 18.75 9.75 18.4142 9.75 18V17.25ZM12 14.25C12.4142 14.25 12.75 14.5858 12.75 15V18C12.75 18.4142 12.4142 18.75 12 18.75C11.5858 18.75 11.25 18.4142 11.25 18V15C11.25 14.5858 11.5858 14.25 12 14.25ZM15.75 12.75C15.75 12.3358 15.4142 12 15 12C14.5858 12 14.25 12.3358 14.25 12.75V18C14.25 18.4142 14.5858 18.75 15 18.75C15.4142 18.75 15.75 18.4142 15.75 18V12.75Z" fill="#0F172A"/>
    <path d="M14.25 5.25C14.25 3.93695 13.768 2.73648 12.9712 1.8159C16.3701 2.70377 19.0462 5.37988 19.9341 8.77881C19.0135 7.98204 17.8131 7.5 16.5 7.5H14.625C14.4179 7.5 14.25 7.33211 14.25 7.125V5.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def document_chart_bar(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.625 1.5H9C11.0711 1.5 12.75 3.17893 12.75 5.25V7.125C12.75 8.16053 13.5895 9 14.625 9H16.5C18.5711 9 20.25 10.6789 20.25 12.75V20.625C20.25 21.6605 19.4105 22.5 18.375 22.5H5.625C4.58947 22.5 3.75 21.6605 3.75 20.625V3.375C3.75 2.33947 4.58947 1.5 5.625 1.5ZM9.75 17.25C9.75 16.8358 9.41421 16.5 9 16.5C8.58579 16.5 8.25 16.8358 8.25 17.25V18C8.25 18.4142 8.58579 18.75 9 18.75C9.41421 18.75 9.75 18.4142 9.75 18V17.25ZM12 14.25C12.4142 14.25 12.75 14.5858 12.75 15V18C12.75 18.4142 12.4142 18.75 12 18.75C11.5858 18.75 11.25 18.4142 11.25 18V15C11.25 14.5858 11.5858 14.25 12 14.25ZM15.75 12.75C15.75 12.3358 15.4142 12 15 12C14.5858 12 14.25 12.3358 14.25 12.75V18C14.25 18.4142 14.5858 18.75 15 18.75C15.4142 18.75 15.75 18.4142 15.75 18V12.75Z\" fill=\"#0F172A\"/>\n<path d=\"M14.25 5.25C14.25 3.93695 13.768 2.73648 12.9712 1.8159C16.3701 2.70377 19.0462 5.37988 19.9341 8.77881C19.0135 7.98204 17.8131 7.5 16.5 7.5H14.625C14.4179 7.5 14.25 7.33211 14.25 7.125V5.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-check.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_check />

      <.document_check class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_check() %>

      <%= document_check(class: "h-6 w-6 text-gray-500") %>
  """
  def document_check(assigns_or_opts \\ [])

  def document_check(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9 1.5H5.625C4.58947 1.5 3.75 2.33947 3.75 3.375V20.625C3.75 21.6605 4.58947 22.5 5.625 22.5H18.375C19.4105 22.5 20.25 21.6605 20.25 20.625V12.75C20.25 10.6789 18.5711 9 16.5 9H14.625C13.5895 9 12.75 8.16053 12.75 7.125V5.25C12.75 3.17893 11.0711 1.5 9 1.5ZM15.6103 12.4359C15.8511 12.0989 15.773 11.6305 15.4359 11.3897C15.0989 11.1489 14.6305 11.227 14.3897 11.5641L11.1543 16.0936L9.53033 14.4697C9.23744 14.1768 8.76256 14.1768 8.46967 14.4697C8.17678 14.7626 8.17678 15.2374 8.46967 15.5303L10.7197 17.7803C10.8756 17.9362 11.0921 18.0156 11.3119 17.9974C11.5316 17.9793 11.7322 17.8653 11.8603 17.6859L15.6103 12.4359Z" fill="#0F172A"/>
    <path d="M12.9712 1.8159C13.768 2.73648 14.25 3.93695 14.25 5.25V7.125C14.25 7.33211 14.4179 7.5 14.625 7.5H16.5C17.8131 7.5 19.0135 7.98204 19.9341 8.77881C19.0462 5.37988 16.3701 2.70377 12.9712 1.8159Z" fill="#0F172A"/>
    </svg>
    """
  end

  def document_check(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9 1.5H5.625C4.58947 1.5 3.75 2.33947 3.75 3.375V20.625C3.75 21.6605 4.58947 22.5 5.625 22.5H18.375C19.4105 22.5 20.25 21.6605 20.25 20.625V12.75C20.25 10.6789 18.5711 9 16.5 9H14.625C13.5895 9 12.75 8.16053 12.75 7.125V5.25C12.75 3.17893 11.0711 1.5 9 1.5ZM15.6103 12.4359C15.8511 12.0989 15.773 11.6305 15.4359 11.3897C15.0989 11.1489 14.6305 11.227 14.3897 11.5641L11.1543 16.0936L9.53033 14.4697C9.23744 14.1768 8.76256 14.1768 8.46967 14.4697C8.17678 14.7626 8.17678 15.2374 8.46967 15.5303L10.7197 17.7803C10.8756 17.9362 11.0921 18.0156 11.3119 17.9974C11.5316 17.9793 11.7322 17.8653 11.8603 17.6859L15.6103 12.4359Z\" fill=\"#0F172A\"/>\n<path d=\"M12.9712 1.8159C13.768 2.73648 14.25 3.93695 14.25 5.25V7.125C14.25 7.33211 14.4179 7.5 14.625 7.5H16.5C17.8131 7.5 19.0135 7.98204 19.9341 8.77881C19.0462 5.37988 16.3701 2.70377 12.9712 1.8159Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-duplicate.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_duplicate />

      <.document_duplicate class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_duplicate() %>

      <%= document_duplicate(class: "h-6 w-6 text-gray-500") %>
  """
  def document_duplicate(assigns_or_opts \\ [])

  def document_duplicate(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M7.5 3.375C7.5 2.33947 8.33947 1.5 9.375 1.5H9.75C11.8211 1.5 13.5 3.17893 13.5 5.25V7.125C13.5 8.16053 14.3395 9 15.375 9H17.25C19.3211 9 21 10.6789 21 12.75V16.125C21 17.1605 20.1605 18 19.125 18H9.375C8.33947 18 7.5 17.1605 7.5 16.125V3.375Z" fill="#0F172A"/>
    <path d="M15 5.25C15 3.93695 14.518 2.73648 13.7212 1.8159C17.1201 2.70377 19.7962 5.37988 20.6841 8.77881C19.7635 7.98204 18.5631 7.5 17.25 7.5H15.375C15.1679 7.5 15 7.33211 15 7.125V5.25Z" fill="#0F172A"/>
    <path d="M4.875 6H6V16.125C6 17.989 7.51104 19.5 9.375 19.5H16.5V20.625C16.5 21.6605 15.6605 22.5 14.625 22.5H4.875C3.83947 22.5 3 21.6605 3 20.625V7.875C3 6.83947 3.83947 6 4.875 6Z" fill="#0F172A"/>
    </svg>
    """
  end

  def document_duplicate(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M7.5 3.375C7.5 2.33947 8.33947 1.5 9.375 1.5H9.75C11.8211 1.5 13.5 3.17893 13.5 5.25V7.125C13.5 8.16053 14.3395 9 15.375 9H17.25C19.3211 9 21 10.6789 21 12.75V16.125C21 17.1605 20.1605 18 19.125 18H9.375C8.33947 18 7.5 17.1605 7.5 16.125V3.375Z\" fill=\"#0F172A\"/>\n<path d=\"M15 5.25C15 3.93695 14.518 2.73648 13.7212 1.8159C17.1201 2.70377 19.7962 5.37988 20.6841 8.77881C19.7635 7.98204 18.5631 7.5 17.25 7.5H15.375C15.1679 7.5 15 7.33211 15 7.125V5.25Z\" fill=\"#0F172A\"/>\n<path d=\"M4.875 6H6V16.125C6 17.989 7.51104 19.5 9.375 19.5H16.5V20.625C16.5 21.6605 15.6605 22.5 14.625 22.5H4.875C3.83947 22.5 3 21.6605 3 20.625V7.875C3 6.83947 3.83947 6 4.875 6Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-magnifying-glass.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_magnifying_glass />

      <.document_magnifying_glass class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_magnifying_glass() %>

      <%= document_magnifying_glass(class: "h-6 w-6 text-gray-500") %>
  """
  def document_magnifying_glass(assigns_or_opts \\ [])

  def document_magnifying_glass(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M11.625 16.5C12.6605 16.5 13.5 15.6605 13.5 14.625C13.5 13.5895 12.6605 12.75 11.625 12.75C10.5895 12.75 9.75 13.5895 9.75 14.625C9.75 15.6605 10.5895 16.5 11.625 16.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.625 1.5H9C11.0711 1.5 12.75 3.17893 12.75 5.25V7.125C12.75 8.16053 13.5895 9 14.625 9H16.5C18.5711 9 20.25 10.6789 20.25 12.75V20.625C20.25 21.6605 19.4105 22.5 18.375 22.5H5.625C4.58947 22.5 3.75 21.6605 3.75 20.625V3.375C3.75 2.33947 4.58947 1.5 5.625 1.5ZM11.625 18C12.2854 18 12.9016 17.8103 13.4219 17.4824L14.4698 18.5303C14.7627 18.8232 15.2376 18.8232 15.5305 18.5303C15.8234 18.2374 15.8234 17.7626 15.5305 17.4697L14.4825 16.4217C14.8103 15.9014 15 15.2854 15 14.625C15 12.761 13.489 11.25 11.625 11.25C9.76104 11.25 8.25 12.761 8.25 14.625C8.25 16.489 9.76104 18 11.625 18Z" fill="#0F172A"/>
    <path d="M14.25 5.25C14.25 3.93695 13.768 2.73648 12.9712 1.8159C16.3701 2.70377 19.0462 5.37988 19.9341 8.77881C19.0135 7.98204 17.8131 7.5 16.5 7.5H14.625C14.4179 7.5 14.25 7.33211 14.25 7.125V5.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def document_magnifying_glass(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M11.625 16.5C12.6605 16.5 13.5 15.6605 13.5 14.625C13.5 13.5895 12.6605 12.75 11.625 12.75C10.5895 12.75 9.75 13.5895 9.75 14.625C9.75 15.6605 10.5895 16.5 11.625 16.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.625 1.5H9C11.0711 1.5 12.75 3.17893 12.75 5.25V7.125C12.75 8.16053 13.5895 9 14.625 9H16.5C18.5711 9 20.25 10.6789 20.25 12.75V20.625C20.25 21.6605 19.4105 22.5 18.375 22.5H5.625C4.58947 22.5 3.75 21.6605 3.75 20.625V3.375C3.75 2.33947 4.58947 1.5 5.625 1.5ZM11.625 18C12.2854 18 12.9016 17.8103 13.4219 17.4824L14.4698 18.5303C14.7627 18.8232 15.2376 18.8232 15.5305 18.5303C15.8234 18.2374 15.8234 17.7626 15.5305 17.4697L14.4825 16.4217C14.8103 15.9014 15 15.2854 15 14.625C15 12.761 13.489 11.25 11.625 11.25C9.76104 11.25 8.25 12.761 8.25 14.625C8.25 16.489 9.76104 18 11.625 18Z\" fill=\"#0F172A\"/>\n<path d=\"M14.25 5.25C14.25 3.93695 13.768 2.73648 12.9712 1.8159C16.3701 2.70377 19.0462 5.37988 19.9341 8.77881C19.0135 7.98204 17.8131 7.5 16.5 7.5H14.625C14.4179 7.5 14.25 7.33211 14.25 7.125V5.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-minus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_minus />

      <.document_minus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_minus() %>

      <%= document_minus(class: "h-6 w-6 text-gray-500") %>
  """
  def document_minus(assigns_or_opts \\ [])

  def document_minus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.625 1.5H9C11.0711 1.5 12.75 3.17893 12.75 5.25V7.125C12.75 8.16053 13.5895 9 14.625 9H16.5C18.5711 9 20.25 10.6789 20.25 12.75V20.625C20.25 21.6605 19.4105 22.5 18.375 22.5H5.625C4.58947 22.5 3.75 21.6605 3.75 20.625V3.375C3.75 2.33947 4.58947 1.5 5.625 1.5ZM9.75 14.25C9.33579 14.25 9 14.5858 9 15C9 15.4142 9.33579 15.75 9.75 15.75H15C15.4142 15.75 15.75 15.4142 15.75 15C15.75 14.5858 15.4142 14.25 15 14.25H9.75Z" fill="#0F172A"/>
    <path d="M14.25 5.25C14.25 3.93695 13.768 2.73648 12.9712 1.8159C16.3701 2.70377 19.0462 5.37988 19.9341 8.77881C19.0135 7.98204 17.8131 7.5 16.5 7.5H14.625C14.4179 7.5 14.25 7.33211 14.25 7.125V5.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def document_minus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.625 1.5H9C11.0711 1.5 12.75 3.17893 12.75 5.25V7.125C12.75 8.16053 13.5895 9 14.625 9H16.5C18.5711 9 20.25 10.6789 20.25 12.75V20.625C20.25 21.6605 19.4105 22.5 18.375 22.5H5.625C4.58947 22.5 3.75 21.6605 3.75 20.625V3.375C3.75 2.33947 4.58947 1.5 5.625 1.5ZM9.75 14.25C9.33579 14.25 9 14.5858 9 15C9 15.4142 9.33579 15.75 9.75 15.75H15C15.4142 15.75 15.75 15.4142 15.75 15C15.75 14.5858 15.4142 14.25 15 14.25H9.75Z\" fill=\"#0F172A\"/>\n<path d=\"M14.25 5.25C14.25 3.93695 13.768 2.73648 12.9712 1.8159C16.3701 2.70377 19.0462 5.37988 19.9341 8.77881C19.0135 7.98204 17.8131 7.5 16.5 7.5H14.625C14.4179 7.5 14.25 7.33211 14.25 7.125V5.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-plus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_plus />

      <.document_plus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_plus() %>

      <%= document_plus(class: "h-6 w-6 text-gray-500") %>
  """
  def document_plus(assigns_or_opts \\ [])

  def document_plus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.625 1.5H9C11.0711 1.5 12.75 3.17893 12.75 5.25V7.125C12.75 8.16053 13.5895 9 14.625 9H16.5C18.5711 9 20.25 10.6789 20.25 12.75V20.625C20.25 21.6605 19.4105 22.5 18.375 22.5H5.625C4.58947 22.5 3.75 21.6605 3.75 20.625V3.375C3.75 2.33947 4.58947 1.5 5.625 1.5ZM12.75 12C12.75 11.5858 12.4142 11.25 12 11.25C11.5858 11.25 11.25 11.5858 11.25 12V14.25H9C8.58579 14.25 8.25 14.5858 8.25 15C8.25 15.4142 8.58579 15.75 9 15.75H11.25V18C11.25 18.4142 11.5858 18.75 12 18.75C12.4142 18.75 12.75 18.4142 12.75 18V15.75H15C15.4142 15.75 15.75 15.4142 15.75 15C15.75 14.5858 15.4142 14.25 15 14.25H12.75V12Z" fill="#0F172A"/>
    <path d="M14.25 5.25C14.25 3.93695 13.768 2.73648 12.9712 1.8159C16.3701 2.70377 19.0462 5.37988 19.9341 8.77881C19.0135 7.98204 17.8131 7.5 16.5 7.5H14.625C14.4179 7.5 14.25 7.33211 14.25 7.125V5.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def document_plus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.625 1.5H9C11.0711 1.5 12.75 3.17893 12.75 5.25V7.125C12.75 8.16053 13.5895 9 14.625 9H16.5C18.5711 9 20.25 10.6789 20.25 12.75V20.625C20.25 21.6605 19.4105 22.5 18.375 22.5H5.625C4.58947 22.5 3.75 21.6605 3.75 20.625V3.375C3.75 2.33947 4.58947 1.5 5.625 1.5ZM12.75 12C12.75 11.5858 12.4142 11.25 12 11.25C11.5858 11.25 11.25 11.5858 11.25 12V14.25H9C8.58579 14.25 8.25 14.5858 8.25 15C8.25 15.4142 8.58579 15.75 9 15.75H11.25V18C11.25 18.4142 11.5858 18.75 12 18.75C12.4142 18.75 12.75 18.4142 12.75 18V15.75H15C15.4142 15.75 15.75 15.4142 15.75 15C15.75 14.5858 15.4142 14.25 15 14.25H12.75V12Z\" fill=\"#0F172A\"/>\n<path d=\"M14.25 5.25C14.25 3.93695 13.768 2.73648 12.9712 1.8159C16.3701 2.70377 19.0462 5.37988 19.9341 8.77881C19.0135 7.98204 17.8131 7.5 16.5 7.5H14.625C14.4179 7.5 14.25 7.33211 14.25 7.125V5.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document-text.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document_text />

      <.document_text class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document_text() %>

      <%= document_text(class: "h-6 w-6 text-gray-500") %>
  """
  def document_text(assigns_or_opts \\ [])

  def document_text(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.625 1.5C4.58947 1.5 3.75 2.33947 3.75 3.375V20.625C3.75 21.6605 4.58947 22.5 5.625 22.5H18.375C19.4105 22.5 20.25 21.6605 20.25 20.625V12.75C20.25 10.6789 18.5711 9 16.5 9H14.625C13.5895 9 12.75 8.16053 12.75 7.125V5.25C12.75 3.17893 11.0711 1.5 9 1.5H5.625ZM7.5 15C7.5 14.5858 7.83579 14.25 8.25 14.25H15.75C16.1642 14.25 16.5 14.5858 16.5 15C16.5 15.4142 16.1642 15.75 15.75 15.75H8.25C7.83579 15.75 7.5 15.4142 7.5 15ZM8.25 17.25C7.83579 17.25 7.5 17.5858 7.5 18C7.5 18.4142 7.83579 18.75 8.25 18.75H12C12.4142 18.75 12.75 18.4142 12.75 18C12.75 17.5858 12.4142 17.25 12 17.25H8.25Z" fill="#0F172A"/>
    <path d="M12.9712 1.8159C13.768 2.73648 14.25 3.93695 14.25 5.25V7.125C14.25 7.33211 14.4179 7.5 14.625 7.5H16.5C17.8131 7.5 19.0135 7.98204 19.9341 8.77881C19.0462 5.37988 16.3701 2.70377 12.9712 1.8159Z" fill="#0F172A"/>
    </svg>
    """
  end

  def document_text(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.625 1.5C4.58947 1.5 3.75 2.33947 3.75 3.375V20.625C3.75 21.6605 4.58947 22.5 5.625 22.5H18.375C19.4105 22.5 20.25 21.6605 20.25 20.625V12.75C20.25 10.6789 18.5711 9 16.5 9H14.625C13.5895 9 12.75 8.16053 12.75 7.125V5.25C12.75 3.17893 11.0711 1.5 9 1.5H5.625ZM7.5 15C7.5 14.5858 7.83579 14.25 8.25 14.25H15.75C16.1642 14.25 16.5 14.5858 16.5 15C16.5 15.4142 16.1642 15.75 15.75 15.75H8.25C7.83579 15.75 7.5 15.4142 7.5 15ZM8.25 17.25C7.83579 17.25 7.5 17.5858 7.5 18C7.5 18.4142 7.83579 18.75 8.25 18.75H12C12.4142 18.75 12.75 18.4142 12.75 18C12.75 17.5858 12.4142 17.25 12 17.25H8.25Z\" fill=\"#0F172A\"/>\n<path d=\"M12.9712 1.8159C13.768 2.73648 14.25 3.93695 14.25 5.25V7.125C14.25 7.33211 14.4179 7.5 14.625 7.5H16.5C17.8131 7.5 19.0135 7.98204 19.9341 8.77881C19.0462 5.37988 16.3701 2.70377 12.9712 1.8159Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/document.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.document />

      <.document class="h-6 w-6 text-gray-500" />

  or as a function

      <%= document() %>

      <%= document(class: "h-6 w-6 text-gray-500") %>
  """
  def document(assigns_or_opts \\ [])

  def document(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M5.625 1.5C4.58947 1.5 3.75 2.33947 3.75 3.375V20.625C3.75 21.6605 4.58947 22.5 5.625 22.5H18.375C19.4105 22.5 20.25 21.6605 20.25 20.625V12.75C20.25 10.6789 18.5711 9 16.5 9H14.625C13.5895 9 12.75 8.16053 12.75 7.125V5.25C12.75 3.17893 11.0711 1.5 9 1.5H5.625Z" fill="#0F172A"/>
    <path d="M12.9712 1.8159C13.768 2.73648 14.25 3.93695 14.25 5.25V7.125C14.25 7.33211 14.4179 7.5 14.625 7.5H16.5C17.8131 7.5 19.0135 7.98204 19.9341 8.77881C19.0462 5.37988 16.3701 2.70377 12.9712 1.8159Z" fill="#0F172A"/>
    </svg>
    """
  end

  def document(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.625 1.5C4.58947 1.5 3.75 2.33947 3.75 3.375V20.625C3.75 21.6605 4.58947 22.5 5.625 22.5H18.375C19.4105 22.5 20.25 21.6605 20.25 20.625V12.75C20.25 10.6789 18.5711 9 16.5 9H14.625C13.5895 9 12.75 8.16053 12.75 7.125V5.25C12.75 3.17893 11.0711 1.5 9 1.5H5.625Z\" fill=\"#0F172A\"/>\n<path d=\"M12.9712 1.8159C13.768 2.73648 14.25 3.93695 14.25 5.25V7.125C14.25 7.33211 14.4179 7.5 14.625 7.5H16.5C17.8131 7.5 19.0135 7.98204 19.9341 8.77881C19.0462 5.37988 16.3701 2.70377 12.9712 1.8159Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/ellipsis-horizontal-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.ellipsis_horizontal_circle />

      <.ellipsis_horizontal_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= ellipsis_horizontal_circle() %>

      <%= ellipsis_horizontal_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def ellipsis_horizontal_circle(assigns_or_opts \\ [])

  def ellipsis_horizontal_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM12 10.875C11.3787 10.875 10.875 11.3787 10.875 12C10.875 12.6213 11.3787 13.125 12 13.125C12.6213 13.125 13.125 12.6213 13.125 12C13.125 11.3787 12.6213 10.875 12 10.875ZM15.375 12C15.375 11.3787 15.8787 10.875 16.5 10.875C17.1213 10.875 17.625 11.3787 17.625 12C17.625 12.6213 17.1213 13.125 16.5 13.125C15.8787 13.125 15.375 12.6213 15.375 12ZM7.5 10.875C6.87868 10.875 6.375 11.3787 6.375 12C6.375 12.6213 6.87868 13.125 7.5 13.125C8.12132 13.125 8.625 12.6213 8.625 12C8.625 11.3787 8.12132 10.875 7.5 10.875Z" fill="#0F172A"/>
    </svg>
    """
  end

  def ellipsis_horizontal_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM12 10.875C11.3787 10.875 10.875 11.3787 10.875 12C10.875 12.6213 11.3787 13.125 12 13.125C12.6213 13.125 13.125 12.6213 13.125 12C13.125 11.3787 12.6213 10.875 12 10.875ZM15.375 12C15.375 11.3787 15.8787 10.875 16.5 10.875C17.1213 10.875 17.625 11.3787 17.625 12C17.625 12.6213 17.1213 13.125 16.5 13.125C15.8787 13.125 15.375 12.6213 15.375 12ZM7.5 10.875C6.87868 10.875 6.375 11.3787 6.375 12C6.375 12.6213 6.87868 13.125 7.5 13.125C8.12132 13.125 8.625 12.6213 8.625 12C8.625 11.3787 8.12132 10.875 7.5 10.875Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/ellipsis-horizontal.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.ellipsis_horizontal />

      <.ellipsis_horizontal class="h-6 w-6 text-gray-500" />

  or as a function

      <%= ellipsis_horizontal() %>

      <%= ellipsis_horizontal(class: "h-6 w-6 text-gray-500") %>
  """
  def ellipsis_horizontal(assigns_or_opts \\ [])

  def ellipsis_horizontal(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 12C4.5 11.1716 5.17157 10.5 6 10.5C6.82843 10.5 7.5 11.1716 7.5 12C7.5 12.8284 6.82843 13.5 6 13.5C5.17157 13.5 4.5 12.8284 4.5 12ZM10.5 12C10.5 11.1716 11.1716 10.5 12 10.5C12.8284 10.5 13.5 11.1716 13.5 12C13.5 12.8284 12.8284 13.5 12 13.5C11.1716 13.5 10.5 12.8284 10.5 12ZM16.5 12C16.5 11.1716 17.1716 10.5 18 10.5C18.8284 10.5 19.5 11.1716 19.5 12C19.5 12.8284 18.8284 13.5 18 13.5C17.1716 13.5 16.5 12.8284 16.5 12Z" fill="#0F172A"/>
    </svg>
    """
  end

  def ellipsis_horizontal(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 12C4.5 11.1716 5.17157 10.5 6 10.5C6.82843 10.5 7.5 11.1716 7.5 12C7.5 12.8284 6.82843 13.5 6 13.5C5.17157 13.5 4.5 12.8284 4.5 12ZM10.5 12C10.5 11.1716 11.1716 10.5 12 10.5C12.8284 10.5 13.5 11.1716 13.5 12C13.5 12.8284 12.8284 13.5 12 13.5C11.1716 13.5 10.5 12.8284 10.5 12ZM16.5 12C16.5 11.1716 17.1716 10.5 18 10.5C18.8284 10.5 19.5 11.1716 19.5 12C19.5 12.8284 18.8284 13.5 18 13.5C17.1716 13.5 16.5 12.8284 16.5 12Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/ellipsis-vertical.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.ellipsis_vertical />

      <.ellipsis_vertical class="h-6 w-6 text-gray-500" />

  or as a function

      <%= ellipsis_vertical() %>

      <%= ellipsis_vertical(class: "h-6 w-6 text-gray-500") %>
  """
  def ellipsis_vertical(assigns_or_opts \\ [])

  def ellipsis_vertical(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.5 6C10.5 5.17157 11.1716 4.5 12 4.5C12.8284 4.5 13.5 5.17157 13.5 6C13.5 6.82843 12.8284 7.5 12 7.5C11.1716 7.5 10.5 6.82843 10.5 6ZM10.5 12C10.5 11.1716 11.1716 10.5 12 10.5C12.8284 10.5 13.5 11.1716 13.5 12C13.5 12.8284 12.8284 13.5 12 13.5C11.1716 13.5 10.5 12.8284 10.5 12ZM10.5 18C10.5 17.1716 11.1716 16.5 12 16.5C12.8284 16.5 13.5 17.1716 13.5 18C13.5 18.8284 12.8284 19.5 12 19.5C11.1716 19.5 10.5 18.8284 10.5 18Z" fill="#0F172A"/>
    </svg>
    """
  end

  def ellipsis_vertical(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.5 6C10.5 5.17157 11.1716 4.5 12 4.5C12.8284 4.5 13.5 5.17157 13.5 6C13.5 6.82843 12.8284 7.5 12 7.5C11.1716 7.5 10.5 6.82843 10.5 6ZM10.5 12C10.5 11.1716 11.1716 10.5 12 10.5C12.8284 10.5 13.5 11.1716 13.5 12C13.5 12.8284 12.8284 13.5 12 13.5C11.1716 13.5 10.5 12.8284 10.5 12ZM10.5 18C10.5 17.1716 11.1716 16.5 12 16.5C12.8284 16.5 13.5 17.1716 13.5 18C13.5 18.8284 12.8284 19.5 12 19.5C11.1716 19.5 10.5 18.8284 10.5 18Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/envelope-open.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.envelope_open />

      <.envelope_open class="h-6 w-6 text-gray-500" />

  or as a function

      <%= envelope_open() %>

      <%= envelope_open(class: "h-6 w-6 text-gray-500") %>
  """
  def envelope_open(assigns_or_opts \\ [])

  def envelope_open(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M19.5 22.5002C21.1569 22.5002 22.5 21.1571 22.5 19.5002V11.3264L15.6212 15.3483L19.1056 17.2245C19.4703 17.4209 19.6067 17.8757 19.4104 18.2404C19.214 18.6051 18.7591 18.7416 18.3944 18.5452L12.7112 15.485C12.2672 15.2459 11.7328 15.2459 11.2889 15.485L5.60558 18.5452C5.24087 18.7416 4.78603 18.6051 4.58965 18.2404C4.39327 17.8757 4.52972 17.4209 4.89442 17.2245L8.37878 15.3483L1.5 11.3264V19.5002C1.5 21.1571 2.84315 22.5002 4.5 22.5002L19.5 22.5002Z" fill="#0F172A"/>
    <path d="M1.5 9.58886V8.84412C1.5 7.74048 2.10597 6.72595 3.0777 6.20271L10.5777 2.16425C11.4656 1.68614 12.5344 1.68614 13.4223 2.16425L20.9223 6.20271C21.894 6.72595 22.5 7.74048 22.5 8.84413V9.58886L14.0742 14.5153L13.4223 14.1643C12.5344 13.6862 11.4656 13.6862 10.5777 14.1643L9.92585 14.5153L1.5 9.58886Z" fill="#0F172A"/>
    </svg>
    """
  end

  def envelope_open(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M19.5 22.5002C21.1569 22.5002 22.5 21.1571 22.5 19.5002V11.3264L15.6212 15.3483L19.1056 17.2245C19.4703 17.4209 19.6067 17.8757 19.4104 18.2404C19.214 18.6051 18.7591 18.7416 18.3944 18.5452L12.7112 15.485C12.2672 15.2459 11.7328 15.2459 11.2889 15.485L5.60558 18.5452C5.24087 18.7416 4.78603 18.6051 4.58965 18.2404C4.39327 17.8757 4.52972 17.4209 4.89442 17.2245L8.37878 15.3483L1.5 11.3264V19.5002C1.5 21.1571 2.84315 22.5002 4.5 22.5002L19.5 22.5002Z\" fill=\"#0F172A\"/>\n<path d=\"M1.5 9.58886V8.84412C1.5 7.74048 2.10597 6.72595 3.0777 6.20271L10.5777 2.16425C11.4656 1.68614 12.5344 1.68614 13.4223 2.16425L20.9223 6.20271C21.894 6.72595 22.5 7.74048 22.5 8.84413V9.58886L14.0742 14.5153L13.4223 14.1643C12.5344 13.6862 11.4656 13.6862 10.5777 14.1643L9.92585 14.5153L1.5 9.58886Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/envelope.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.envelope />

      <.envelope class="h-6 w-6 text-gray-500" />

  or as a function

      <%= envelope() %>

      <%= envelope(class: "h-6 w-6 text-gray-500") %>
  """
  def envelope(assigns_or_opts \\ [])

  def envelope(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M1.5 8.6691V17.25C1.5 18.9069 2.84315 20.25 4.5 20.25H19.5C21.1569 20.25 22.5 18.9069 22.5 17.25V8.6691L13.5723 14.1631C12.6081 14.7564 11.3919 14.7564 10.4277 14.1631L1.5 8.6691Z" fill="#0F172A"/>
    <path d="M22.5 6.90783V6.75C22.5 5.09315 21.1569 3.75 19.5 3.75H4.5C2.84315 3.75 1.5 5.09315 1.5 6.75V6.90783L11.2139 12.8856C11.696 13.1823 12.304 13.1823 12.7861 12.8856L22.5 6.90783Z" fill="#0F172A"/>
    </svg>
    """
  end

  def envelope(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M1.5 8.6691V17.25C1.5 18.9069 2.84315 20.25 4.5 20.25H19.5C21.1569 20.25 22.5 18.9069 22.5 17.25V8.6691L13.5723 14.1631C12.6081 14.7564 11.3919 14.7564 10.4277 14.1631L1.5 8.6691Z\" fill=\"#0F172A\"/>\n<path d=\"M22.5 6.90783V6.75C22.5 5.09315 21.1569 3.75 19.5 3.75H4.5C2.84315 3.75 1.5 5.09315 1.5 6.75V6.90783L11.2139 12.8856C11.696 13.1823 12.304 13.1823 12.7861 12.8856L22.5 6.90783Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/exclamation-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.exclamation_circle />

      <.exclamation_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= exclamation_circle() %>

      <%= exclamation_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def exclamation_circle(assigns_or_opts \\ [])

  def exclamation_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 12C2.25 6.61522 6.61522 2.25 12 2.25C17.3848 2.25 21.75 6.61522 21.75 12C21.75 17.3848 17.3848 21.75 12 21.75C6.61522 21.75 2.25 17.3848 2.25 12ZM12 8.25C12.4142 8.25 12.75 8.58579 12.75 9V12.75C12.75 13.1642 12.4142 13.5 12 13.5C11.5858 13.5 11.25 13.1642 11.25 12.75V9C11.25 8.58579 11.5858 8.25 12 8.25ZM12 16.5C12.4142 16.5 12.75 16.1642 12.75 15.75C12.75 15.3358 12.4142 15 12 15C11.5858 15 11.25 15.3358 11.25 15.75C11.25 16.1642 11.5858 16.5 12 16.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def exclamation_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.25 12C2.25 6.61522 6.61522 2.25 12 2.25C17.3848 2.25 21.75 6.61522 21.75 12C21.75 17.3848 17.3848 21.75 12 21.75C6.61522 21.75 2.25 17.3848 2.25 12ZM12 8.25C12.4142 8.25 12.75 8.58579 12.75 9V12.75C12.75 13.1642 12.4142 13.5 12 13.5C11.5858 13.5 11.25 13.1642 11.25 12.75V9C11.25 8.58579 11.5858 8.25 12 8.25ZM12 16.5C12.4142 16.5 12.75 16.1642 12.75 15.75C12.75 15.3358 12.4142 15 12 15C11.5858 15 11.25 15.3358 11.25 15.75C11.25 16.1642 11.5858 16.5 12 16.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/exclamation-triangle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.exclamation_triangle />

      <.exclamation_triangle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= exclamation_triangle() %>

      <%= exclamation_triangle(class: "h-6 w-6 text-gray-500") %>
  """
  def exclamation_triangle(assigns_or_opts \\ [])

  def exclamation_triangle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.40123 4.50376C10.5557 2.50265 13.4439 2.50265 14.5983 4.50376L21.9527 17.2513C23.1065 19.2513 21.6631 21.7504 19.3541 21.7504H4.64546C2.33649 21.7504 0.893061 19.2513 2.04691 17.2513L9.40123 4.50376ZM12 9.75037C12.4142 9.75037 12.75 10.0862 12.75 10.5004V14.2504C12.75 14.6646 12.4142 15.0004 12 15.0004C11.5858 15.0004 11.25 14.6646 11.25 14.2504V10.5004C11.25 10.0862 11.5858 9.75037 12 9.75037ZM12 18.0004C12.4142 18.0004 12.75 17.6646 12.75 17.2504C12.75 16.8362 12.4142 16.5004 12 16.5004C11.5858 16.5004 11.25 16.8362 11.25 17.2504C11.25 17.6646 11.5858 18.0004 12 18.0004Z" fill="#0F172A"/>
    </svg>
    """
  end

  def exclamation_triangle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.40123 4.50376C10.5557 2.50265 13.4439 2.50265 14.5983 4.50376L21.9527 17.2513C23.1065 19.2513 21.6631 21.7504 19.3541 21.7504H4.64546C2.33649 21.7504 0.893061 19.2513 2.04691 17.2513L9.40123 4.50376ZM12 9.75037C12.4142 9.75037 12.75 10.0862 12.75 10.5004V14.2504C12.75 14.6646 12.4142 15.0004 12 15.0004C11.5858 15.0004 11.25 14.6646 11.25 14.2504V10.5004C11.25 10.0862 11.5858 9.75037 12 9.75037ZM12 18.0004C12.4142 18.0004 12.75 17.6646 12.75 17.2504C12.75 16.8362 12.4142 16.5004 12 16.5004C11.5858 16.5004 11.25 16.8362 11.25 17.2504C11.25 17.6646 11.5858 18.0004 12 18.0004Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/eye-slash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.eye_slash />

      <.eye_slash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= eye_slash() %>

      <%= eye_slash(class: "h-6 w-6 text-gray-500") %>
  """
  def eye_slash(assigns_or_opts \\ [])

  def eye_slash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.53033 2.46967C3.23744 2.17678 2.76256 2.17678 2.46967 2.46967C2.17678 2.76256 2.17678 3.23744 2.46967 3.53033L20.4697 21.5303C20.7626 21.8232 21.2374 21.8232 21.5303 21.5303C21.8232 21.2374 21.8232 20.7626 21.5303 20.4697L3.53033 2.46967Z" fill="#0F172A"/>
    <path d="M22.6759 12.5533C22.1319 14.1887 21.2226 15.6575 20.0447 16.8627L16.9462 13.7642C17.1429 13.2129 17.25 12.6189 17.25 12C17.25 9.1005 14.8995 6.75 12 6.75C11.3811 6.75 10.7871 6.8571 10.2358 7.05379L7.75898 4.577C9.06783 4.04381 10.4998 3.75 12.0005 3.75C16.9708 3.75 21.1864 6.97271 22.6755 11.4405C22.7959 11.8015 22.796 12.1922 22.6759 12.5533Z" fill="#0F172A"/>
    <path d="M15.75 12C15.75 12.1802 15.7373 12.3574 15.7127 12.5307L11.4693 8.28727C11.6426 8.26271 11.8198 8.25 12 8.25C14.0711 8.25 15.75 9.92893 15.75 12Z" fill="#0F172A"/>
    <path d="M12.5307 15.7127L8.28727 11.4693C8.26271 11.6426 8.25 11.8198 8.25 12C8.25 14.0711 9.92893 15.75 12 15.75C12.1802 15.75 12.3574 15.7373 12.5307 15.7127Z" fill="#0F172A"/>
    <path d="M6.75 12C6.75 11.3811 6.8571 10.7871 7.05379 10.2358L3.95492 7.1369C2.77687 8.34222 1.86747 9.81114 1.32341 11.4467C1.20328 11.8078 1.2034 12.1985 1.32374 12.5595C2.81284 17.0273 7.02847 20.25 11.9988 20.25C13.4997 20.25 14.9318 19.9561 16.2408 19.4228L13.7642 16.9462C13.2129 17.1429 12.6189 17.25 12 17.25C9.1005 17.25 6.75 14.8995 6.75 12Z" fill="#0F172A"/>
    </svg>
    """
  end

  def eye_slash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.53033 2.46967C3.23744 2.17678 2.76256 2.17678 2.46967 2.46967C2.17678 2.76256 2.17678 3.23744 2.46967 3.53033L20.4697 21.5303C20.7626 21.8232 21.2374 21.8232 21.5303 21.5303C21.8232 21.2374 21.8232 20.7626 21.5303 20.4697L3.53033 2.46967Z\" fill=\"#0F172A\"/>\n<path d=\"M22.6759 12.5533C22.1319 14.1887 21.2226 15.6575 20.0447 16.8627L16.9462 13.7642C17.1429 13.2129 17.25 12.6189 17.25 12C17.25 9.1005 14.8995 6.75 12 6.75C11.3811 6.75 10.7871 6.8571 10.2358 7.05379L7.75898 4.577C9.06783 4.04381 10.4998 3.75 12.0005 3.75C16.9708 3.75 21.1864 6.97271 22.6755 11.4405C22.7959 11.8015 22.796 12.1922 22.6759 12.5533Z\" fill=\"#0F172A\"/>\n<path d=\"M15.75 12C15.75 12.1802 15.7373 12.3574 15.7127 12.5307L11.4693 8.28727C11.6426 8.26271 11.8198 8.25 12 8.25C14.0711 8.25 15.75 9.92893 15.75 12Z\" fill=\"#0F172A\"/>\n<path d=\"M12.5307 15.7127L8.28727 11.4693C8.26271 11.6426 8.25 11.8198 8.25 12C8.25 14.0711 9.92893 15.75 12 15.75C12.1802 15.75 12.3574 15.7373 12.5307 15.7127Z\" fill=\"#0F172A\"/>\n<path d=\"M6.75 12C6.75 11.3811 6.8571 10.7871 7.05379 10.2358L3.95492 7.1369C2.77687 8.34222 1.86747 9.81114 1.32341 11.4467C1.20328 11.8078 1.2034 12.1985 1.32374 12.5595C2.81284 17.0273 7.02847 20.25 11.9988 20.25C13.4997 20.25 14.9318 19.9561 16.2408 19.4228L13.7642 16.9462C13.2129 17.1429 12.6189 17.25 12 17.25C9.1005 17.25 6.75 14.8995 6.75 12Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/eye.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.eye />

      <.eye class="h-6 w-6 text-gray-500" />

  or as a function

      <%= eye() %>

      <%= eye(class: "h-6 w-6 text-gray-500") %>
  """
  def eye(assigns_or_opts \\ [])

  def eye(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M12 15C13.6569 15 15 13.6569 15 12C15 10.3431 13.6569 9 12 9C10.3431 9 9 10.3431 9 12C9 13.6569 10.3431 15 12 15Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.32341 11.4467C2.81066 6.97571 7.02791 3.75 12.0005 3.75C16.9708 3.75 21.1864 6.97271 22.6755 11.4405C22.7959 11.8015 22.796 12.1922 22.6759 12.5533C21.1886 17.0243 16.9714 20.25 11.9988 20.25C7.02847 20.25 2.81284 17.0273 1.32374 12.5595C1.2034 12.1985 1.20328 11.8078 1.32341 11.4467ZM17.25 12C17.25 14.8995 14.8995 17.25 12 17.25C9.1005 17.25 6.75 14.8995 6.75 12C6.75 9.1005 9.1005 6.75 12 6.75C14.8995 6.75 17.25 9.1005 17.25 12Z" fill="#0F172A"/>
    </svg>
    """
  end

  def eye(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M12 15C13.6569 15 15 13.6569 15 12C15 10.3431 13.6569 9 12 9C10.3431 9 9 10.3431 9 12C9 13.6569 10.3431 15 12 15Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.32341 11.4467C2.81066 6.97571 7.02791 3.75 12.0005 3.75C16.9708 3.75 21.1864 6.97271 22.6755 11.4405C22.7959 11.8015 22.796 12.1922 22.6759 12.5533C21.1886 17.0243 16.9714 20.25 11.9988 20.25C7.02847 20.25 2.81284 17.0273 1.32374 12.5595C1.2034 12.1985 1.20328 11.8078 1.32341 11.4467ZM17.25 12C17.25 14.8995 14.8995 17.25 12 17.25C9.1005 17.25 6.75 14.8995 6.75 12C6.75 9.1005 9.1005 6.75 12 6.75C14.8995 6.75 17.25 9.1005 17.25 12Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/face-frown.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.face_frown />

      <.face_frown class="h-6 w-6 text-gray-500" />

  or as a function

      <%= face_frown() %>

      <%= face_frown(class: "h-6 w-6 text-gray-500") %>
  """
  def face_frown(assigns_or_opts \\ [])

  def face_frown(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM9.375 8.25C8.83433 8.25 8.54674 8.66881 8.43901 8.88426C8.30886 9.14457 8.25 9.45171 8.25 9.75C8.25 10.0483 8.30886 10.3554 8.43901 10.6157C8.54674 10.8312 8.83433 11.25 9.375 11.25C9.91567 11.25 10.2033 10.8312 10.311 10.6157C10.4411 10.3554 10.5 10.0483 10.5 9.75C10.5 9.45171 10.4411 9.14457 10.311 8.88426C10.2033 8.66881 9.91567 8.25 9.375 8.25ZM13.689 8.88426C13.7967 8.66881 14.0843 8.25 14.625 8.25C15.1657 8.25 15.4533 8.66881 15.561 8.88426C15.6911 9.14457 15.75 9.45171 15.75 9.75C15.75 10.0483 15.6911 10.3554 15.561 10.6157C15.4533 10.8312 15.1657 11.25 14.625 11.25C14.0843 11.25 13.7967 10.8312 13.689 10.6157C13.5589 10.3554 13.5 10.0483 13.5 9.75C13.5 9.45171 13.5589 9.14457 13.689 8.88426ZM9.34869 16.8482C9.0558 17.1411 8.58092 17.1411 8.28803 16.8482C7.99514 16.5553 7.99514 16.0805 8.28803 15.7876C9.31761 14.758 10.6699 14.2453 12.0184 14.2499C13.3548 14.2545 14.6923 14.7672 15.7126 15.7876C16.0055 16.0805 16.0055 16.5553 15.7126 16.8482C15.4198 17.1411 14.9449 17.1411 14.652 16.8482C13.9229 16.1191 12.9698 15.7532 12.0132 15.7499C11.048 15.7466 10.0843 16.1126 9.34869 16.8482Z" fill="#0F172A"/>
    </svg>
    """
  end

  def face_frown(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM9.375 8.25C8.83433 8.25 8.54674 8.66881 8.43901 8.88426C8.30886 9.14457 8.25 9.45171 8.25 9.75C8.25 10.0483 8.30886 10.3554 8.43901 10.6157C8.54674 10.8312 8.83433 11.25 9.375 11.25C9.91567 11.25 10.2033 10.8312 10.311 10.6157C10.4411 10.3554 10.5 10.0483 10.5 9.75C10.5 9.45171 10.4411 9.14457 10.311 8.88426C10.2033 8.66881 9.91567 8.25 9.375 8.25ZM13.689 8.88426C13.7967 8.66881 14.0843 8.25 14.625 8.25C15.1657 8.25 15.4533 8.66881 15.561 8.88426C15.6911 9.14457 15.75 9.45171 15.75 9.75C15.75 10.0483 15.6911 10.3554 15.561 10.6157C15.4533 10.8312 15.1657 11.25 14.625 11.25C14.0843 11.25 13.7967 10.8312 13.689 10.6157C13.5589 10.3554 13.5 10.0483 13.5 9.75C13.5 9.45171 13.5589 9.14457 13.689 8.88426ZM9.34869 16.8482C9.0558 17.1411 8.58092 17.1411 8.28803 16.8482C7.99514 16.5553 7.99514 16.0805 8.28803 15.7876C9.31761 14.758 10.6699 14.2453 12.0184 14.2499C13.3548 14.2545 14.6923 14.7672 15.7126 15.7876C16.0055 16.0805 16.0055 16.5553 15.7126 16.8482C15.4198 17.1411 14.9449 17.1411 14.652 16.8482C13.9229 16.1191 12.9698 15.7532 12.0132 15.7499C11.048 15.7466 10.0843 16.1126 9.34869 16.8482Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/face-smile.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.face_smile />

      <.face_smile class="h-6 w-6 text-gray-500" />

  or as a function

      <%= face_smile() %>

      <%= face_smile(class: "h-6 w-6 text-gray-500") %>
  """
  def face_smile(assigns_or_opts \\ [])

  def face_smile(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM9.375 8.25C8.83433 8.25 8.54674 8.66881 8.43901 8.88426C8.30886 9.14457 8.25 9.45171 8.25 9.75C8.25 10.0483 8.30886 10.3554 8.43901 10.6157C8.54674 10.8312 8.83433 11.25 9.375 11.25C9.91567 11.25 10.2033 10.8312 10.311 10.6157C10.4411 10.3554 10.5 10.0483 10.5 9.75C10.5 9.45171 10.4411 9.14457 10.311 8.88426C10.2033 8.66881 9.91567 8.25 9.375 8.25ZM13.689 8.88426C13.7967 8.66881 14.0843 8.25 14.625 8.25C15.1657 8.25 15.4533 8.66881 15.561 8.88426C15.6911 9.14457 15.75 9.45171 15.75 9.75C15.75 10.0483 15.6911 10.3554 15.561 10.6157C15.4533 10.8312 15.1657 11.25 14.625 11.25C14.0843 11.25 13.7967 10.8312 13.689 10.6157C13.5589 10.3554 13.5 10.0483 13.5 9.75C13.5 9.45171 13.5589 9.14457 13.689 8.88426ZM15.7123 15.7123C16.0052 15.4194 16.0052 14.9446 15.7123 14.6517C15.4194 14.3588 14.9445 14.3588 14.6517 14.6517C13.1872 16.1161 10.8128 16.1161 9.34835 14.6517C9.05546 14.3588 8.58058 14.3588 8.28769 14.6517C7.9948 14.9446 7.9948 15.4194 8.28769 15.7123C10.3379 17.7626 13.6621 17.7626 15.7123 15.7123Z" fill="#0F172A"/>
    </svg>
    """
  end

  def face_smile(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM9.375 8.25C8.83433 8.25 8.54674 8.66881 8.43901 8.88426C8.30886 9.14457 8.25 9.45171 8.25 9.75C8.25 10.0483 8.30886 10.3554 8.43901 10.6157C8.54674 10.8312 8.83433 11.25 9.375 11.25C9.91567 11.25 10.2033 10.8312 10.311 10.6157C10.4411 10.3554 10.5 10.0483 10.5 9.75C10.5 9.45171 10.4411 9.14457 10.311 8.88426C10.2033 8.66881 9.91567 8.25 9.375 8.25ZM13.689 8.88426C13.7967 8.66881 14.0843 8.25 14.625 8.25C15.1657 8.25 15.4533 8.66881 15.561 8.88426C15.6911 9.14457 15.75 9.45171 15.75 9.75C15.75 10.0483 15.6911 10.3554 15.561 10.6157C15.4533 10.8312 15.1657 11.25 14.625 11.25C14.0843 11.25 13.7967 10.8312 13.689 10.6157C13.5589 10.3554 13.5 10.0483 13.5 9.75C13.5 9.45171 13.5589 9.14457 13.689 8.88426ZM15.7123 15.7123C16.0052 15.4194 16.0052 14.9446 15.7123 14.6517C15.4194 14.3588 14.9445 14.3588 14.6517 14.6517C13.1872 16.1161 10.8128 16.1161 9.34835 14.6517C9.05546 14.3588 8.58058 14.3588 8.28769 14.6517C7.9948 14.9446 7.9948 15.4194 8.28769 15.7123C10.3379 17.7626 13.6621 17.7626 15.7123 15.7123Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/film.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.film />

      <.film class="h-6 w-6 text-gray-500" />

  or as a function

      <%= film() %>

      <%= film(class: "h-6 w-6 text-gray-500") %>
  """
  def film(assigns_or_opts \\ [])

  def film(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.5 5.625C1.5 4.58947 2.33947 3.75 3.375 3.75H20.625C21.6605 3.75 22.5 4.58947 22.5 5.625V18.375C22.5 19.4105 21.6605 20.25 20.625 20.25H3.375C2.33947 20.25 1.5 19.4105 1.5 18.375V5.625ZM3 5.625V7.125C3 7.33211 3.16789 7.5 3.375 7.5H4.875C5.08211 7.5 5.25 7.33211 5.25 7.125V5.625C5.25 5.41789 5.08211 5.25 4.875 5.25H3.375C3.16789 5.25 3 5.41789 3 5.625ZM19.125 5.25C18.9179 5.25 18.75 5.41789 18.75 5.625V7.125C18.75 7.33211 18.9179 7.5 19.125 7.5H20.625C20.8321 7.5 21 7.33211 21 7.125V5.625C21 5.41789 20.8321 5.25 20.625 5.25H19.125ZM21 9.375C21 9.16789 20.8321 9 20.625 9H19.125C18.9179 9 18.75 9.16789 18.75 9.375V10.875C18.75 11.0821 18.9179 11.25 19.125 11.25H20.625C20.8321 11.25 21 11.0821 21 10.875V9.375ZM21 13.125C21 12.9179 20.8321 12.75 20.625 12.75H19.125C18.9179 12.75 18.75 12.9179 18.75 13.125V14.625C18.75 14.8321 18.9179 15 19.125 15H20.625C20.8321 15 21 14.8321 21 14.625V13.125ZM21 16.875C21 16.6679 20.8321 16.5 20.625 16.5H19.125C18.9179 16.5 18.75 16.6679 18.75 16.875V18.375C18.75 18.5821 18.9179 18.75 19.125 18.75H20.625C20.8321 18.75 21 18.5821 21 18.375V16.875ZM4.875 18.75C5.08211 18.75 5.25 18.5821 5.25 18.375V16.875C5.25 16.6679 5.08211 16.5 4.875 16.5H3.375C3.16789 16.5 3 16.6679 3 16.875V18.375C3 18.5821 3.16789 18.75 3.375 18.75H4.875ZM3.375 15H4.875C5.08211 15 5.25 14.8321 5.25 14.625V13.125C5.25 12.9179 5.08211 12.75 4.875 12.75H3.375C3.16789 12.75 3 12.9179 3 13.125V14.625C3 14.8321 3.16789 15 3.375 15ZM3.375 11.25H4.875C5.08211 11.25 5.25 11.0821 5.25 10.875V9.375C5.25 9.16789 5.08211 9 4.875 9H3.375C3.16789 9 3 9.16789 3 9.375V10.875C3 11.0821 3.16789 11.25 3.375 11.25ZM7.5 11.25C7.08579 11.25 6.75 11.5858 6.75 12C6.75 12.4142 7.08579 12.75 7.5 12.75H16.5C16.9142 12.75 17.25 12.4142 17.25 12C17.25 11.5858 16.9142 11.25 16.5 11.25H7.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def film(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.5 5.625C1.5 4.58947 2.33947 3.75 3.375 3.75H20.625C21.6605 3.75 22.5 4.58947 22.5 5.625V18.375C22.5 19.4105 21.6605 20.25 20.625 20.25H3.375C2.33947 20.25 1.5 19.4105 1.5 18.375V5.625ZM3 5.625V7.125C3 7.33211 3.16789 7.5 3.375 7.5H4.875C5.08211 7.5 5.25 7.33211 5.25 7.125V5.625C5.25 5.41789 5.08211 5.25 4.875 5.25H3.375C3.16789 5.25 3 5.41789 3 5.625ZM19.125 5.25C18.9179 5.25 18.75 5.41789 18.75 5.625V7.125C18.75 7.33211 18.9179 7.5 19.125 7.5H20.625C20.8321 7.5 21 7.33211 21 7.125V5.625C21 5.41789 20.8321 5.25 20.625 5.25H19.125ZM21 9.375C21 9.16789 20.8321 9 20.625 9H19.125C18.9179 9 18.75 9.16789 18.75 9.375V10.875C18.75 11.0821 18.9179 11.25 19.125 11.25H20.625C20.8321 11.25 21 11.0821 21 10.875V9.375ZM21 13.125C21 12.9179 20.8321 12.75 20.625 12.75H19.125C18.9179 12.75 18.75 12.9179 18.75 13.125V14.625C18.75 14.8321 18.9179 15 19.125 15H20.625C20.8321 15 21 14.8321 21 14.625V13.125ZM21 16.875C21 16.6679 20.8321 16.5 20.625 16.5H19.125C18.9179 16.5 18.75 16.6679 18.75 16.875V18.375C18.75 18.5821 18.9179 18.75 19.125 18.75H20.625C20.8321 18.75 21 18.5821 21 18.375V16.875ZM4.875 18.75C5.08211 18.75 5.25 18.5821 5.25 18.375V16.875C5.25 16.6679 5.08211 16.5 4.875 16.5H3.375C3.16789 16.5 3 16.6679 3 16.875V18.375C3 18.5821 3.16789 18.75 3.375 18.75H4.875ZM3.375 15H4.875C5.08211 15 5.25 14.8321 5.25 14.625V13.125C5.25 12.9179 5.08211 12.75 4.875 12.75H3.375C3.16789 12.75 3 12.9179 3 13.125V14.625C3 14.8321 3.16789 15 3.375 15ZM3.375 11.25H4.875C5.08211 11.25 5.25 11.0821 5.25 10.875V9.375C5.25 9.16789 5.08211 9 4.875 9H3.375C3.16789 9 3 9.16789 3 9.375V10.875C3 11.0821 3.16789 11.25 3.375 11.25ZM7.5 11.25C7.08579 11.25 6.75 11.5858 6.75 12C6.75 12.4142 7.08579 12.75 7.5 12.75H16.5C16.9142 12.75 17.25 12.4142 17.25 12C17.25 11.5858 16.9142 11.25 16.5 11.25H7.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/finger-print.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.finger_print />

      <.finger_print class="h-6 w-6 text-gray-500" />

  or as a function

      <%= finger_print() %>

      <%= finger_print(class: "h-6 w-6 text-gray-500") %>
  """
  def finger_print(assigns_or_opts \\ [])

  def finger_print(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 3.75C10.6231 3.75 9.34467 4.16143 8.27803 4.86788C7.93269 5.09661 7.46733 5.00207 7.2386 4.65674C7.00988 4.3114 7.10441 3.84603 7.44975 3.61731C8.75441 2.7532 10.3196 2.25 12 2.25C16.5563 2.25 20.25 5.94365 20.25 10.5C20.25 13.5153 19.6759 16.3983 18.6299 19.0442C18.4776 19.4294 18.0419 19.6182 17.6567 19.466C17.2714 19.3137 17.0826 18.8779 17.2349 18.4927C18.2127 16.0196 18.75 13.3235 18.75 10.5C18.75 6.77208 15.7279 3.75 12 3.75ZM6.15671 5.73863C6.50205 5.96735 6.59658 6.43272 6.36786 6.77806C5.6614 7.84469 5.24998 9.12316 5.24998 10.5C5.24998 12.1132 4.78653 13.6204 3.98459 14.893C3.76375 15.2434 3.30065 15.3485 2.95021 15.1276C2.59978 14.9068 2.49472 14.4437 2.71556 14.0933C3.37092 13.0533 3.74998 11.8222 3.74998 10.5C3.74998 8.81959 4.25318 7.25443 5.11728 5.94977C5.34601 5.60444 5.81137 5.5099 6.15671 5.73863ZM12 7.5C10.3431 7.5 8.99998 8.84315 8.99998 10.5C8.99998 13.5997 7.82401 16.4266 5.89462 18.5556C5.61647 18.8626 5.14217 18.8859 4.83524 18.6077C4.5283 18.3296 4.50497 17.8553 4.78312 17.5484C6.47217 15.6845 7.49998 13.2132 7.49998 10.5C7.49998 8.01472 9.51469 6 12 6C14.4853 6 16.5 8.01472 16.5 10.5C16.5 11.0472 16.4777 11.5897 16.4334 12.1264C16.3993 12.5392 16.037 12.8462 15.6242 12.8121C15.2114 12.778 14.9044 12.4157 14.9385 12.0029C14.9794 11.5078 15 11.0066 15 10.5C15 8.84315 13.6568 7.5 12 7.5ZM12.0003 9.75C12.4145 9.75 12.7503 10.0858 12.7503 10.5C12.7503 14.4082 11.3259 17.9855 8.96884 20.7384C8.69945 21.053 8.22599 21.0897 7.91135 20.8203C7.59671 20.5509 7.56004 20.0775 7.82943 19.7628C9.96257 17.2715 11.2503 14.0371 11.2503 10.5C11.2503 10.0858 11.5861 9.75 12.0003 9.75ZM15.2387 14.9331C15.637 15.0467 15.8678 15.4617 15.7542 15.8601C15.1843 17.8576 14.3041 19.7239 13.1693 21.4035C12.9374 21.7467 12.4712 21.837 12.128 21.6051C11.7848 21.3732 11.6945 20.907 11.9264 20.5637C12.974 19.0132 13.7861 17.291 14.3117 15.4485C14.4254 15.0502 14.8404 14.8194 15.2387 14.9331Z" fill="#0F172A"/>
    </svg>
    """
  end

  def finger_print(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 3.75C10.6231 3.75 9.34467 4.16143 8.27803 4.86788C7.93269 5.09661 7.46733 5.00207 7.2386 4.65674C7.00988 4.3114 7.10441 3.84603 7.44975 3.61731C8.75441 2.7532 10.3196 2.25 12 2.25C16.5563 2.25 20.25 5.94365 20.25 10.5C20.25 13.5153 19.6759 16.3983 18.6299 19.0442C18.4776 19.4294 18.0419 19.6182 17.6567 19.466C17.2714 19.3137 17.0826 18.8779 17.2349 18.4927C18.2127 16.0196 18.75 13.3235 18.75 10.5C18.75 6.77208 15.7279 3.75 12 3.75ZM6.15671 5.73863C6.50205 5.96735 6.59658 6.43272 6.36786 6.77806C5.6614 7.84469 5.24998 9.12316 5.24998 10.5C5.24998 12.1132 4.78653 13.6204 3.98459 14.893C3.76375 15.2434 3.30065 15.3485 2.95021 15.1276C2.59978 14.9068 2.49472 14.4437 2.71556 14.0933C3.37092 13.0533 3.74998 11.8222 3.74998 10.5C3.74998 8.81959 4.25318 7.25443 5.11728 5.94977C5.34601 5.60444 5.81137 5.5099 6.15671 5.73863ZM12 7.5C10.3431 7.5 8.99998 8.84315 8.99998 10.5C8.99998 13.5997 7.82401 16.4266 5.89462 18.5556C5.61647 18.8626 5.14217 18.8859 4.83524 18.6077C4.5283 18.3296 4.50497 17.8553 4.78312 17.5484C6.47217 15.6845 7.49998 13.2132 7.49998 10.5C7.49998 8.01472 9.51469 6 12 6C14.4853 6 16.5 8.01472 16.5 10.5C16.5 11.0472 16.4777 11.5897 16.4334 12.1264C16.3993 12.5392 16.037 12.8462 15.6242 12.8121C15.2114 12.778 14.9044 12.4157 14.9385 12.0029C14.9794 11.5078 15 11.0066 15 10.5C15 8.84315 13.6568 7.5 12 7.5ZM12.0003 9.75C12.4145 9.75 12.7503 10.0858 12.7503 10.5C12.7503 14.4082 11.3259 17.9855 8.96884 20.7384C8.69945 21.053 8.22599 21.0897 7.91135 20.8203C7.59671 20.5509 7.56004 20.0775 7.82943 19.7628C9.96257 17.2715 11.2503 14.0371 11.2503 10.5C11.2503 10.0858 11.5861 9.75 12.0003 9.75ZM15.2387 14.9331C15.637 15.0467 15.8678 15.4617 15.7542 15.8601C15.1843 17.8576 14.3041 19.7239 13.1693 21.4035C12.9374 21.7467 12.4712 21.837 12.128 21.6051C11.7848 21.3732 11.6945 20.907 11.9264 20.5637C12.974 19.0132 13.7861 17.291 14.3117 15.4485C14.4254 15.0502 14.8404 14.8194 15.2387 14.9331Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/fire.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.fire />

      <.fire class="h-6 w-6 text-gray-500" />

  or as a function

      <%= fire() %>

      <%= fire(class: "h-6 w-6 text-gray-500") %>
  """
  def fire(assigns_or_opts \\ [])

  def fire(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.9633 2.28603C12.8416 2.12274 12.6586 2.01599 12.4565 1.99035C12.2545 1.9647 12.0506 2.02235 11.8919 2.15005C10.0218 3.65487 8.7174 5.83801 8.35322 8.32662C7.69665 7.85065 7.11999 7.27076 6.6476 6.61105C6.51764 6.42957 6.3136 6.3154 6.09095 6.29959C5.8683 6.28377 5.65017 6.36795 5.49587 6.52925C3.95047 8.14466 3 10.3371 3 12.7499C3 17.7205 7.02944 21.7499 12 21.7499C16.9706 21.7499 21 17.7205 21 12.7499C21 9.089 18.8143 5.94023 15.6798 4.5343C14.5706 3.99281 13.6547 3.21308 12.9633 2.28603ZM15.75 14.2503C15.75 16.3214 14.0711 18.0003 12 18.0003C9.92893 18.0003 8.25 16.3214 8.25 14.2503C8.25 13.841 8.31559 13.4469 8.43682 13.0782C9.06529 13.5428 9.78769 13.8876 10.5703 14.0789C10.7862 12.6781 11.4866 11.4372 12.4949 10.5327C14.3321 10.7749 15.75 12.347 15.75 14.2503Z" fill="#0F172A"/>
    </svg>
    """
  end

  def fire(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12.9633 2.28603C12.8416 2.12274 12.6586 2.01599 12.4565 1.99035C12.2545 1.9647 12.0506 2.02235 11.8919 2.15005C10.0218 3.65487 8.7174 5.83801 8.35322 8.32662C7.69665 7.85065 7.11999 7.27076 6.6476 6.61105C6.51764 6.42957 6.3136 6.3154 6.09095 6.29959C5.8683 6.28377 5.65017 6.36795 5.49587 6.52925C3.95047 8.14466 3 10.3371 3 12.7499C3 17.7205 7.02944 21.7499 12 21.7499C16.9706 21.7499 21 17.7205 21 12.7499C21 9.089 18.8143 5.94023 15.6798 4.5343C14.5706 3.99281 13.6547 3.21308 12.9633 2.28603ZM15.75 14.2503C15.75 16.3214 14.0711 18.0003 12 18.0003C9.92893 18.0003 8.25 16.3214 8.25 14.2503C8.25 13.841 8.31559 13.4469 8.43682 13.0782C9.06529 13.5428 9.78769 13.8876 10.5703 14.0789C10.7862 12.6781 11.4866 11.4372 12.4949 10.5327C14.3321 10.7749 15.75 12.347 15.75 14.2503Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/flag.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.flag />

      <.flag class="h-6 w-6 text-gray-500" />

  or as a function

      <%= flag() %>

      <%= flag(class: "h-6 w-6 text-gray-500") %>
  """
  def flag(assigns_or_opts \\ [])

  def flag(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 2.25C3.41421 2.25 3.75 2.58579 3.75 3V3.53942L5.58819 3.07987C7.84613 2.51539 10.2315 2.77724 12.3132 3.8181L12.421 3.87196C14.1472 4.73507 16.1214 4.96567 18.0001 4.52363L21.1096 3.79196C21.3465 3.73622 21.5958 3.79888 21.7781 3.96005C21.9605 4.12121 22.0533 4.36083 22.0271 4.60278C21.844 6.29313 21.75 8.01046 21.75 9.75C21.75 11.504 21.8455 13.2355 22.0317 14.9395C22.0728 15.3161 21.8266 15.6642 21.4579 15.751L18.3436 16.4837C16.1234 17.0062 13.7902 16.7336 11.7501 15.7136L11.6424 15.6597C9.88097 14.779 7.86256 14.5574 5.95199 15.0351L3.75 15.5856V21C3.75 21.4142 3.41421 21.75 3 21.75C2.58579 21.75 2.25 21.4142 2.25 21V3C2.25 2.58579 2.58579 2.25 3 2.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def flag(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 2.25C3.41421 2.25 3.75 2.58579 3.75 3V3.53942L5.58819 3.07987C7.84613 2.51539 10.2315 2.77724 12.3132 3.8181L12.421 3.87196C14.1472 4.73507 16.1214 4.96567 18.0001 4.52363L21.1096 3.79196C21.3465 3.73622 21.5958 3.79888 21.7781 3.96005C21.9605 4.12121 22.0533 4.36083 22.0271 4.60278C21.844 6.29313 21.75 8.01046 21.75 9.75C21.75 11.504 21.8455 13.2355 22.0317 14.9395C22.0728 15.3161 21.8266 15.6642 21.4579 15.751L18.3436 16.4837C16.1234 17.0062 13.7902 16.7336 11.7501 15.7136L11.6424 15.6597C9.88097 14.779 7.86256 14.5574 5.95199 15.0351L3.75 15.5856V21C3.75 21.4142 3.41421 21.75 3 21.75C2.58579 21.75 2.25 21.4142 2.25 21V3C2.25 2.58579 2.58579 2.25 3 2.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/folder-arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.folder_arrow_down />

      <.folder_arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= folder_arrow_down() %>

      <%= folder_arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def folder_arrow_down(assigns_or_opts \\ [])

  def folder_arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M19.5 21C21.1569 21 22.5 19.6569 22.5 18V9C22.5 7.34315 21.1569 6 19.5 6H14.1213C13.9224 6 13.7316 5.92098 13.591 5.78033L11.4697 3.65901C11.0477 3.23705 10.4754 3 9.87868 3H4.5C2.84315 3 1.5 4.34315 1.5 6V18C1.5 19.6569 2.84315 21 4.5 21H19.5ZM12.75 10.5C12.75 10.0858 12.4142 9.75 12 9.75C11.5858 9.75 11.25 10.0858 11.25 10.5L11.25 14.6893L9.53033 12.9697C9.23744 12.6768 8.76256 12.6768 8.46967 12.9697C8.17678 13.2626 8.17678 13.7374 8.46967 14.0303L11.4697 17.0303C11.6103 17.171 11.8011 17.25 12 17.25C12.1989 17.25 12.3897 17.171 12.5303 17.0303L15.5303 14.0303C15.8232 13.7374 15.8232 13.2626 15.5303 12.9697C15.2374 12.6768 14.7626 12.6768 14.4697 12.9697L12.75 14.6893L12.75 10.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def folder_arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M19.5 21C21.1569 21 22.5 19.6569 22.5 18V9C22.5 7.34315 21.1569 6 19.5 6H14.1213C13.9224 6 13.7316 5.92098 13.591 5.78033L11.4697 3.65901C11.0477 3.23705 10.4754 3 9.87868 3H4.5C2.84315 3 1.5 4.34315 1.5 6V18C1.5 19.6569 2.84315 21 4.5 21H19.5ZM12.75 10.5C12.75 10.0858 12.4142 9.75 12 9.75C11.5858 9.75 11.25 10.0858 11.25 10.5L11.25 14.6893L9.53033 12.9697C9.23744 12.6768 8.76256 12.6768 8.46967 12.9697C8.17678 13.2626 8.17678 13.7374 8.46967 14.0303L11.4697 17.0303C11.6103 17.171 11.8011 17.25 12 17.25C12.1989 17.25 12.3897 17.171 12.5303 17.0303L15.5303 14.0303C15.8232 13.7374 15.8232 13.2626 15.5303 12.9697C15.2374 12.6768 14.7626 12.6768 14.4697 12.9697L12.75 14.6893L12.75 10.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/folder-minus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.folder_minus />

      <.folder_minus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= folder_minus() %>

      <%= folder_minus(class: "h-6 w-6 text-gray-500") %>
  """
  def folder_minus(assigns_or_opts \\ [])

  def folder_minus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M19.5 21C21.1569 21 22.5 19.6569 22.5 18V9C22.5 7.34315 21.1569 6 19.5 6H14.1213C13.9224 6 13.7316 5.92098 13.591 5.78033L11.4697 3.65901C11.0477 3.23705 10.4754 3 9.87868 3H4.5C2.84315 3 1.5 4.34315 1.5 6V18C1.5 19.6569 2.84315 21 4.5 21H19.5ZM9 12.75C8.58579 12.75 8.25 13.0858 8.25 13.5C8.25 13.9142 8.58579 14.25 9 14.25H15C15.4142 14.25 15.75 13.9142 15.75 13.5C15.75 13.0858 15.4142 12.75 15 12.75H9Z" fill="#0F172A"/>
    </svg>
    """
  end

  def folder_minus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M19.5 21C21.1569 21 22.5 19.6569 22.5 18V9C22.5 7.34315 21.1569 6 19.5 6H14.1213C13.9224 6 13.7316 5.92098 13.591 5.78033L11.4697 3.65901C11.0477 3.23705 10.4754 3 9.87868 3H4.5C2.84315 3 1.5 4.34315 1.5 6V18C1.5 19.6569 2.84315 21 4.5 21H19.5ZM9 12.75C8.58579 12.75 8.25 13.0858 8.25 13.5C8.25 13.9142 8.58579 14.25 9 14.25H15C15.4142 14.25 15.75 13.9142 15.75 13.5C15.75 13.0858 15.4142 12.75 15 12.75H9Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/folder-open.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.folder_open />

      <.folder_open class="h-6 w-6 text-gray-500" />

  or as a function

      <%= folder_open() %>

      <%= folder_open(class: "h-6 w-6 text-gray-500") %>
  """
  def folder_open(assigns_or_opts \\ [])

  def folder_open(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M19.9057 9C20.2877 9 20.6549 9.05664 21 9.16156V9C21 7.34315 19.6569 6 18 6H14.1213C13.9224 6 13.7316 5.92098 13.591 5.78033L11.4697 3.65901C11.0477 3.23705 10.4754 3 9.87868 3H6C4.34315 3 3 4.34315 3 6V9.16152C3.34508 9.05663 3.71223 9 4.09421 9H19.9057Z" fill="#0F172A"/>
    <path d="M4.0943 10.5C2.72506 10.5 1.67327 11.7127 1.86691 13.0682L2.72405 19.0682C2.8824 20.1767 3.83173 21 4.95144 21H19.0486C20.1683 21 21.1176 20.1767 21.276 19.0682L22.1331 13.0682C22.3268 11.7127 21.275 10.5 19.9058 10.5H4.0943Z" fill="#0F172A"/>
    </svg>
    """
  end

  def folder_open(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M19.9057 9C20.2877 9 20.6549 9.05664 21 9.16156V9C21 7.34315 19.6569 6 18 6H14.1213C13.9224 6 13.7316 5.92098 13.591 5.78033L11.4697 3.65901C11.0477 3.23705 10.4754 3 9.87868 3H6C4.34315 3 3 4.34315 3 6V9.16152C3.34508 9.05663 3.71223 9 4.09421 9H19.9057Z\" fill=\"#0F172A\"/>\n<path d=\"M4.0943 10.5C2.72506 10.5 1.67327 11.7127 1.86691 13.0682L2.72405 19.0682C2.8824 20.1767 3.83173 21 4.95144 21H19.0486C20.1683 21 21.1176 20.1767 21.276 19.0682L22.1331 13.0682C22.3268 11.7127 21.275 10.5 19.9058 10.5H4.0943Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/folder-plus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.folder_plus />

      <.folder_plus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= folder_plus() %>

      <%= folder_plus(class: "h-6 w-6 text-gray-500") %>
  """
  def folder_plus(assigns_or_opts \\ [])

  def folder_plus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M19.5 21C21.1569 21 22.5 19.6569 22.5 18V9C22.5 7.34315 21.1569 6 19.5 6H14.1213C13.9224 6 13.7316 5.92098 13.591 5.78033L11.4697 3.65901C11.0477 3.23705 10.4754 3 9.87868 3H4.5C2.84315 3 1.5 4.34315 1.5 6V18C1.5 19.6569 2.84315 21 4.5 21H19.5ZM12.75 10.5C12.75 10.0858 12.4142 9.75 12 9.75C11.5858 9.75 11.25 10.0858 11.25 10.5V12.75H9C8.58579 12.75 8.25 13.0858 8.25 13.5C8.25 13.9142 8.58579 14.25 9 14.25H11.25V16.5C11.25 16.9142 11.5858 17.25 12 17.25C12.4142 17.25 12.75 16.9142 12.75 16.5V14.25H15C15.4142 14.25 15.75 13.9142 15.75 13.5C15.75 13.0858 15.4142 12.75 15 12.75H12.75V10.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def folder_plus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M19.5 21C21.1569 21 22.5 19.6569 22.5 18V9C22.5 7.34315 21.1569 6 19.5 6H14.1213C13.9224 6 13.7316 5.92098 13.591 5.78033L11.4697 3.65901C11.0477 3.23705 10.4754 3 9.87868 3H4.5C2.84315 3 1.5 4.34315 1.5 6V18C1.5 19.6569 2.84315 21 4.5 21H19.5ZM12.75 10.5C12.75 10.0858 12.4142 9.75 12 9.75C11.5858 9.75 11.25 10.0858 11.25 10.5V12.75H9C8.58579 12.75 8.25 13.0858 8.25 13.5C8.25 13.9142 8.58579 14.25 9 14.25H11.25V16.5C11.25 16.9142 11.5858 17.25 12 17.25C12.4142 17.25 12.75 16.9142 12.75 16.5V14.25H15C15.4142 14.25 15.75 13.9142 15.75 13.5C15.75 13.0858 15.4142 12.75 15 12.75H12.75V10.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/folder.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.folder />

      <.folder class="h-6 w-6 text-gray-500" />

  or as a function

      <%= folder() %>

      <%= folder(class: "h-6 w-6 text-gray-500") %>
  """
  def folder(assigns_or_opts \\ [])

  def folder(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M19.5 21C21.1569 21 22.5 19.6569 22.5 18V13.5C22.5 11.8431 21.1569 10.5 19.5 10.5H4.5C2.84315 10.5 1.5 11.8431 1.5 13.5V18C1.5 19.6569 2.84315 21 4.5 21H19.5Z" fill="#0F172A"/>
    <path d="M1.5 10.1458V6C1.5 4.34315 2.84315 3 4.5 3H9.87868C10.4754 3 11.0477 3.23705 11.4697 3.65901L13.591 5.78033C13.7316 5.92098 13.9224 6 14.1213 6H19.5C21.1569 6 22.5 7.34315 22.5 9V10.1458C21.7039 9.43328 20.6525 9 19.5 9H4.5C3.34747 9 2.29613 9.43328 1.5 10.1458Z" fill="#0F172A"/>
    </svg>
    """
  end

  def folder(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M19.5 21C21.1569 21 22.5 19.6569 22.5 18V13.5C22.5 11.8431 21.1569 10.5 19.5 10.5H4.5C2.84315 10.5 1.5 11.8431 1.5 13.5V18C1.5 19.6569 2.84315 21 4.5 21H19.5Z\" fill=\"#0F172A\"/>\n<path d=\"M1.5 10.1458V6C1.5 4.34315 2.84315 3 4.5 3H9.87868C10.4754 3 11.0477 3.23705 11.4697 3.65901L13.591 5.78033C13.7316 5.92098 13.9224 6 14.1213 6H19.5C21.1569 6 22.5 7.34315 22.5 9V10.1458C21.7039 9.43328 20.6525 9 19.5 9H4.5C3.34747 9 2.29613 9.43328 1.5 10.1458Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/forward.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.forward />

      <.forward class="h-6 w-6 text-gray-500" />

  or as a function

      <%= forward() %>

      <%= forward(class: "h-6 w-6 text-gray-500") %>
  """
  def forward(assigns_or_opts \\ [])

  def forward(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M5.05526 7.06036C3.80528 6.34609 2.25 7.24865 2.25 8.68832V16.8112C2.25 18.2508 3.80528 19.1534 5.05526 18.4391L12 14.4707V16.8112C12 18.2508 13.5553 19.1534 14.8053 18.4391L21.9128 14.3777C23.1724 13.6579 23.1724 11.8416 21.9128 11.1218L14.8053 7.06036C13.5553 6.34609 12 7.24865 12 8.68832V11.0288L5.05526 7.06036Z" fill="#0F172A"/>
    </svg>
    """
  end

  def forward(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.05526 7.06036C3.80528 6.34609 2.25 7.24865 2.25 8.68832V16.8112C2.25 18.2508 3.80528 19.1534 5.05526 18.4391L12 14.4707V16.8112C12 18.2508 13.5553 19.1534 14.8053 18.4391L21.9128 14.3777C23.1724 13.6579 23.1724 11.8416 21.9128 11.1218L14.8053 7.06036C13.5553 6.34609 12 7.24865 12 8.68832V11.0288L5.05526 7.06036Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/funnel.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.funnel />

      <.funnel class="h-6 w-6 text-gray-500" />

  or as a function

      <%= funnel() %>

      <%= funnel(class: "h-6 w-6 text-gray-500") %>
  """
  def funnel(assigns_or_opts \\ [])

  def funnel(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.79154 2.93825C6.46066 2.48562 9.20314 2.25 12.0001 2.25C14.7969 2.25 17.5394 2.48561 20.2085 2.93822C21.1108 3.09125 21.75 3.87676 21.75 4.77402V5.81802C21.75 6.61367 21.4339 7.37673 20.8713 7.93934L14.6893 14.1213C14.408 14.4026 14.25 14.7842 14.25 15.182V18.1094C14.25 19.2457 13.608 20.2845 12.5916 20.7927L10.8354 21.6708C10.6029 21.7871 10.3268 21.7746 10.1057 21.638C9.88459 21.5013 9.75 21.2599 9.75 21V15.182C9.75 14.7842 9.59196 14.4026 9.31066 14.1213L3.12868 7.93934C2.56607 7.37673 2.25 6.61367 2.25 5.81802V4.77404C2.25 3.87678 2.88917 3.09127 3.79154 2.93825Z" fill="#0F172A"/>
    </svg>
    """
  end

  def funnel(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.79154 2.93825C6.46066 2.48562 9.20314 2.25 12.0001 2.25C14.7969 2.25 17.5394 2.48561 20.2085 2.93822C21.1108 3.09125 21.75 3.87676 21.75 4.77402V5.81802C21.75 6.61367 21.4339 7.37673 20.8713 7.93934L14.6893 14.1213C14.408 14.4026 14.25 14.7842 14.25 15.182V18.1094C14.25 19.2457 13.608 20.2845 12.5916 20.7927L10.8354 21.6708C10.6029 21.7871 10.3268 21.7746 10.1057 21.638C9.88459 21.5013 9.75 21.2599 9.75 21V15.182C9.75 14.7842 9.59196 14.4026 9.31066 14.1213L3.12868 7.93934C2.56607 7.37673 2.25 6.61367 2.25 5.81802V4.77404C2.25 3.87678 2.88917 3.09127 3.79154 2.93825Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/gif.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.gif />

      <.gif class="h-6 w-6 text-gray-500" />

  or as a function

      <%= gif() %>

      <%= gif(class: "h-6 w-6 text-gray-500") %>
  """
  def gif(assigns_or_opts \\ [])

  def gif(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 3.75C2.84315 3.75 1.5 5.09315 1.5 6.75V17.25C1.5 18.9069 2.84315 20.25 4.5 20.25H19.5C21.1569 20.25 22.5 18.9069 22.5 17.25V6.75C22.5 5.09315 21.1569 3.75 19.5 3.75H4.5ZM13.5 8.25C13.5 7.83579 13.1642 7.5 12.75 7.5C12.3358 7.5 12 7.83579 12 8.25V15.75C12 16.1642 12.3358 16.5 12.75 16.5C13.1642 16.5 13.5 16.1642 13.5 15.75V8.25ZM15 8.25C15 7.83579 15.3358 7.5 15.75 7.5H18.75C19.1642 7.5 19.5 7.83579 19.5 8.25C19.5 8.66421 19.1642 9 18.75 9H16.5V11.25H18C18.4142 11.25 18.75 11.5858 18.75 12C18.75 12.4142 18.4142 12.75 18 12.75H16.5V15.75C16.5 16.1642 16.1642 16.5 15.75 16.5C15.3358 16.5 15 16.1642 15 15.75V8.25ZM6.63565 9.77966C7.03978 9.20475 7.5033 9 7.88604 9C8.26878 9 8.7323 9.20475 9.13643 9.77966C9.37463 10.1185 9.84244 10.2001 10.1813 9.96192C10.5202 9.72372 10.6018 9.25591 10.3636 8.91704C9.73827 8.02749 8.85254 7.5 7.88604 7.5C6.91953 7.5 6.03381 8.02749 5.4085 8.91704C4.7885 9.79905 4.5 10.9173 4.5 12C4.5 13.0827 4.7885 14.201 5.4085 15.083C6.03381 15.9725 6.91953 16.5 7.88604 16.5C8.85254 16.5 9.73827 15.9725 10.3636 15.083C10.4524 14.9567 10.5 14.806 10.5 14.6517V12C10.5 11.5858 10.1642 11.25 9.75 11.25H8.25C7.83579 11.25 7.5 11.5858 7.5 12C7.5 12.4142 7.83579 12.75 8.25 12.75H9V14.3981C8.6305 14.8381 8.22634 15 7.88604 15C7.5033 15 7.03978 14.7953 6.63565 14.2203C6.22622 13.6379 6 12.8367 6 12C6 11.1633 6.22622 10.3621 6.63565 9.77966Z" fill="#0F172A"/>
    </svg>
    """
  end

  def gif(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 3.75C2.84315 3.75 1.5 5.09315 1.5 6.75V17.25C1.5 18.9069 2.84315 20.25 4.5 20.25H19.5C21.1569 20.25 22.5 18.9069 22.5 17.25V6.75C22.5 5.09315 21.1569 3.75 19.5 3.75H4.5ZM13.5 8.25C13.5 7.83579 13.1642 7.5 12.75 7.5C12.3358 7.5 12 7.83579 12 8.25V15.75C12 16.1642 12.3358 16.5 12.75 16.5C13.1642 16.5 13.5 16.1642 13.5 15.75V8.25ZM15 8.25C15 7.83579 15.3358 7.5 15.75 7.5H18.75C19.1642 7.5 19.5 7.83579 19.5 8.25C19.5 8.66421 19.1642 9 18.75 9H16.5V11.25H18C18.4142 11.25 18.75 11.5858 18.75 12C18.75 12.4142 18.4142 12.75 18 12.75H16.5V15.75C16.5 16.1642 16.1642 16.5 15.75 16.5C15.3358 16.5 15 16.1642 15 15.75V8.25ZM6.63565 9.77966C7.03978 9.20475 7.5033 9 7.88604 9C8.26878 9 8.7323 9.20475 9.13643 9.77966C9.37463 10.1185 9.84244 10.2001 10.1813 9.96192C10.5202 9.72372 10.6018 9.25591 10.3636 8.91704C9.73827 8.02749 8.85254 7.5 7.88604 7.5C6.91953 7.5 6.03381 8.02749 5.4085 8.91704C4.7885 9.79905 4.5 10.9173 4.5 12C4.5 13.0827 4.7885 14.201 5.4085 15.083C6.03381 15.9725 6.91953 16.5 7.88604 16.5C8.85254 16.5 9.73827 15.9725 10.3636 15.083C10.4524 14.9567 10.5 14.806 10.5 14.6517V12C10.5 11.5858 10.1642 11.25 9.75 11.25H8.25C7.83579 11.25 7.5 11.5858 7.5 12C7.5 12.4142 7.83579 12.75 8.25 12.75H9V14.3981C8.6305 14.8381 8.22634 15 7.88604 15C7.5033 15 7.03978 14.7953 6.63565 14.2203C6.22622 13.6379 6 12.8367 6 12C6 11.1633 6.22622 10.3621 6.63565 9.77966Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/gift-top.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.gift_top />

      <.gift_top class="h-6 w-6 text-gray-500" />

  or as a function

      <%= gift_top() %>

      <%= gift_top(class: "h-6 w-6 text-gray-500") %>
  """
  def gift_top(assigns_or_opts \\ [])

  def gift_top(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M11.25 3V7.04639C10.0748 5.9271 8.21463 5.94444 7.06066 7.09841C5.91897 8.2401 5.88985 10.073 6.9733 11.25H1.5V5.25C1.5 4.00736 2.50736 3 3.75 3H11.25Z" fill="#0F172A"/>
    <path d="M12.75 3V7.01102C13.927 5.92757 15.7599 5.95669 16.9016 7.09838C18.0433 8.24008 18.0724 10.073 16.9889 11.25H22.5V5.25C22.5 4.00736 21.4926 3 20.25 3H12.75Z" fill="#0F172A"/>
    <path d="M22.5 12.75H13.5168C13.7063 14.8524 15.4732 16.5 17.625 16.5C18.0392 16.5 18.375 16.8358 18.375 17.25C18.375 17.6642 18.0392 18 17.625 18C15.5412 18 13.722 16.8669 12.75 15.1831V21H20.25C21.4926 21 22.5 19.9926 22.5 18.75V12.75Z" fill="#0F172A"/>
    <path d="M11.25 21V15.1831C10.278 16.8669 8.45885 18 6.375 18C5.96079 18 5.625 17.6642 5.625 17.25C5.625 16.8358 5.96079 16.5 6.375 16.5C8.52677 16.5 10.2937 14.8524 10.4832 12.75H1.5V18.75C1.5 19.9926 2.50736 21 3.75 21H11.25Z" fill="#0F172A"/>
    <path d="M11.0855 10.3536C11.1154 10.6514 11.1234 10.9286 11.1215 11.1592C10.8908 11.1611 10.6136 11.1532 10.3158 11.1232C9.48292 11.0394 8.63902 10.7981 8.12132 10.2804C7.53553 9.6946 7.53553 8.74485 8.12132 8.15907C8.70711 7.57328 9.65685 7.57328 10.2426 8.15907C10.7603 8.67677 11.0016 9.52067 11.0855 10.3536Z" fill="#0F172A"/>
    <path d="M12.8768 10.3535C12.8468 10.6513 12.8389 10.9286 12.8408 11.1592C13.0714 11.1611 13.3486 11.1531 13.6464 11.1232C14.4793 11.0393 15.3232 10.7981 15.8409 10.2804C16.4267 9.69457 16.4267 8.74483 15.8409 8.15904C15.2551 7.57325 14.3054 7.57325 13.7196 8.15904C13.2019 8.67674 12.9606 9.52064 12.8768 10.3535Z" fill="#0F172A"/>
    </svg>
    """
  end

  def gift_top(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M11.25 3V7.04639C10.0748 5.9271 8.21463 5.94444 7.06066 7.09841C5.91897 8.2401 5.88985 10.073 6.9733 11.25H1.5V5.25C1.5 4.00736 2.50736 3 3.75 3H11.25Z\" fill=\"#0F172A\"/>\n<path d=\"M12.75 3V7.01102C13.927 5.92757 15.7599 5.95669 16.9016 7.09838C18.0433 8.24008 18.0724 10.073 16.9889 11.25H22.5V5.25C22.5 4.00736 21.4926 3 20.25 3H12.75Z\" fill=\"#0F172A\"/>\n<path d=\"M22.5 12.75H13.5168C13.7063 14.8524 15.4732 16.5 17.625 16.5C18.0392 16.5 18.375 16.8358 18.375 17.25C18.375 17.6642 18.0392 18 17.625 18C15.5412 18 13.722 16.8669 12.75 15.1831V21H20.25C21.4926 21 22.5 19.9926 22.5 18.75V12.75Z\" fill=\"#0F172A\"/>\n<path d=\"M11.25 21V15.1831C10.278 16.8669 8.45885 18 6.375 18C5.96079 18 5.625 17.6642 5.625 17.25C5.625 16.8358 5.96079 16.5 6.375 16.5C8.52677 16.5 10.2937 14.8524 10.4832 12.75H1.5V18.75C1.5 19.9926 2.50736 21 3.75 21H11.25Z\" fill=\"#0F172A\"/>\n<path d=\"M11.0855 10.3536C11.1154 10.6514 11.1234 10.9286 11.1215 11.1592C10.8908 11.1611 10.6136 11.1532 10.3158 11.1232C9.48292 11.0394 8.63902 10.7981 8.12132 10.2804C7.53553 9.6946 7.53553 8.74485 8.12132 8.15907C8.70711 7.57328 9.65685 7.57328 10.2426 8.15907C10.7603 8.67677 11.0016 9.52067 11.0855 10.3536Z\" fill=\"#0F172A\"/>\n<path d=\"M12.8768 10.3535C12.8468 10.6513 12.8389 10.9286 12.8408 11.1592C13.0714 11.1611 13.3486 11.1531 13.6464 11.1232C14.4793 11.0393 15.3232 10.7981 15.8409 10.2804C16.4267 9.69457 16.4267 8.74483 15.8409 8.15904C15.2551 7.57325 14.3054 7.57325 13.7196 8.15904C13.2019 8.67674 12.9606 9.52064 12.8768 10.3535Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/gift.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.gift />

      <.gift class="h-6 w-6 text-gray-500" />

  or as a function

      <%= gift() %>

      <%= gift(class: "h-6 w-6 text-gray-500") %>
  """
  def gift(assigns_or_opts \\ [])

  def gift(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M9.375 3C8.33947 3 7.5 3.83947 7.5 4.875C7.5 5.91053 8.33947 6.75 9.375 6.75H11.25V11.25H3.375C2.33947 11.25 1.5 10.4105 1.5 9.375V8.625C1.5 7.58947 2.33947 6.75 3.375 6.75H6.56833C6.20935 6.21371 6 5.5688 6 4.875C6 3.01104 7.51104 1.5 9.375 1.5C10.4352 1.5 11.3813 1.98888 12 2.7535C12.6187 1.98888 13.5648 1.5 14.625 1.5C16.489 1.5 18 3.01104 18 4.875C18 5.5688 17.7906 6.21371 17.4317 6.75H21.375C22.4105 6.75 23.25 7.58947 23.25 8.625V9.375C23.25 10.4105 22.4105 11.25 21.375 11.25H12.75V6.75H14.625C15.6605 6.75 16.5 5.91053 16.5 4.875C16.5 3.83947 15.6605 3 14.625 3C13.5895 3 12.75 3.83947 12.75 4.875V6.75H11.25V4.875C11.25 3.83947 10.4105 3 9.375 3Z" fill="#0F172A"/>
    <path d="M11.25 12.75H3V19.5C3 20.7426 4.00736 21.75 5.25 21.75H11.25V12.75Z" fill="#0F172A"/>
    <path d="M12.75 12.75V21.75H19.5C20.7426 21.75 21.75 20.7426 21.75 19.5V12.75H12.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def gift(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M9.375 3C8.33947 3 7.5 3.83947 7.5 4.875C7.5 5.91053 8.33947 6.75 9.375 6.75H11.25V11.25H3.375C2.33947 11.25 1.5 10.4105 1.5 9.375V8.625C1.5 7.58947 2.33947 6.75 3.375 6.75H6.56833C6.20935 6.21371 6 5.5688 6 4.875C6 3.01104 7.51104 1.5 9.375 1.5C10.4352 1.5 11.3813 1.98888 12 2.7535C12.6187 1.98888 13.5648 1.5 14.625 1.5C16.489 1.5 18 3.01104 18 4.875C18 5.5688 17.7906 6.21371 17.4317 6.75H21.375C22.4105 6.75 23.25 7.58947 23.25 8.625V9.375C23.25 10.4105 22.4105 11.25 21.375 11.25H12.75V6.75H14.625C15.6605 6.75 16.5 5.91053 16.5 4.875C16.5 3.83947 15.6605 3 14.625 3C13.5895 3 12.75 3.83947 12.75 4.875V6.75H11.25V4.875C11.25 3.83947 10.4105 3 9.375 3Z\" fill=\"#0F172A\"/>\n<path d=\"M11.25 12.75H3V19.5C3 20.7426 4.00736 21.75 5.25 21.75H11.25V12.75Z\" fill=\"#0F172A\"/>\n<path d=\"M12.75 12.75V21.75H19.5C20.7426 21.75 21.75 20.7426 21.75 19.5V12.75H12.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/globe-alt.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.globe_alt />

      <.globe_alt class="h-6 w-6 text-gray-500" />

  or as a function

      <%= globe_alt() %>

      <%= globe_alt(class: "h-6 w-6 text-gray-500") %>
  """
  def globe_alt(assigns_or_opts \\ [])

  def globe_alt(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M21.7214 12.7517C21.7404 12.5036 21.75 12.2529 21.75 11.9999C21.75 10.4758 21.4003 9.03328 20.7767 7.74835C19.5396 8.92269 18.0671 9.85146 16.4374 10.4565C16.4789 10.9655 16.5 11.4803 16.5 11.9999C16.5 13.1011 16.4051 14.1802 16.2229 15.2293C18.2163 14.7277 20.0717 13.8792 21.7214 12.7517Z" fill="#0F172A"/>
    <path d="M14.6343 15.5501C14.874 14.4043 15 13.2168 15 11.9999C15 11.6315 14.9885 11.2659 14.9657 10.9032C14.0141 11.1299 13.021 11.2499 12 11.2499C10.979 11.2499 9.98594 11.1299 9.0343 10.9032C9.01155 11.2659 9 11.6315 9 11.9999C9 13.2168 9.12601 14.4043 9.3657 15.5501C10.2246 15.6817 11.1043 15.7499 12 15.7499C12.8957 15.7499 13.7754 15.6817 14.6343 15.5501Z" fill="#0F172A"/>
    <path d="M9.77224 17.119C10.5028 17.2054 11.2462 17.2499 12 17.2499C12.7538 17.2499 13.4972 17.2054 14.2278 17.119C13.714 18.7746 12.9575 20.3235 12 21.724C11.0425 20.3235 10.286 18.7746 9.77224 17.119Z" fill="#0F172A"/>
    <path d="M7.77706 15.2293C7.59493 14.1802 7.5 13.1011 7.5 11.9999C7.5 11.4803 7.52114 10.9655 7.56261 10.4565C5.93286 9.85146 4.46039 8.92269 3.22333 7.74835C2.59973 9.03328 2.25 10.4758 2.25 11.9999C2.25 12.2529 2.25964 12.5036 2.27856 12.7517C3.92826 13.8792 5.78374 14.7277 7.77706 15.2293Z" fill="#0F172A"/>
    <path d="M21.3561 14.7525C20.3404 18.2104 17.4597 20.8705 13.8776 21.5693C14.744 20.1123 15.4185 18.5278 15.8664 16.8508C17.8263 16.44 19.6736 15.7231 21.3561 14.7525Z" fill="#0F172A"/>
    <path d="M2.64395 14.7525C4.32642 15.7231 6.17372 16.44 8.13356 16.8508C8.58146 18.5278 9.25602 20.1123 10.1224 21.5693C6.54027 20.8705 3.65964 18.2104 2.64395 14.7525Z" fill="#0F172A"/>
    <path d="M13.8776 2.43055C16.3991 2.92245 18.5731 4.3862 19.9937 6.41599C18.9351 7.48484 17.6637 8.34251 16.2483 8.92017C15.862 6.58282 15.0435 4.39132 13.8776 2.43055Z" fill="#0F172A"/>
    <path d="M12 2.27588C13.4287 4.36548 14.4097 6.78537 14.805 9.39744C13.9083 9.62756 12.9684 9.74993 12 9.74993C11.0316 9.74993 10.0917 9.62756 9.19503 9.39744C9.5903 6.78537 10.5713 4.36548 12 2.27588Z" fill="#0F172A"/>
    <path d="M10.1224 2.43055C8.95648 4.39132 8.13795 6.58282 7.75171 8.92017C6.33629 8.34251 5.06489 7.48484 4.00635 6.41599C5.42689 4.3862 7.60085 2.92245 10.1224 2.43055Z" fill="#0F172A"/>
    </svg>
    """
  end

  def globe_alt(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M21.7214 12.7517C21.7404 12.5036 21.75 12.2529 21.75 11.9999C21.75 10.4758 21.4003 9.03328 20.7767 7.74835C19.5396 8.92269 18.0671 9.85146 16.4374 10.4565C16.4789 10.9655 16.5 11.4803 16.5 11.9999C16.5 13.1011 16.4051 14.1802 16.2229 15.2293C18.2163 14.7277 20.0717 13.8792 21.7214 12.7517Z\" fill=\"#0F172A\"/>\n<path d=\"M14.6343 15.5501C14.874 14.4043 15 13.2168 15 11.9999C15 11.6315 14.9885 11.2659 14.9657 10.9032C14.0141 11.1299 13.021 11.2499 12 11.2499C10.979 11.2499 9.98594 11.1299 9.0343 10.9032C9.01155 11.2659 9 11.6315 9 11.9999C9 13.2168 9.12601 14.4043 9.3657 15.5501C10.2246 15.6817 11.1043 15.7499 12 15.7499C12.8957 15.7499 13.7754 15.6817 14.6343 15.5501Z\" fill=\"#0F172A\"/>\n<path d=\"M9.77224 17.119C10.5028 17.2054 11.2462 17.2499 12 17.2499C12.7538 17.2499 13.4972 17.2054 14.2278 17.119C13.714 18.7746 12.9575 20.3235 12 21.724C11.0425 20.3235 10.286 18.7746 9.77224 17.119Z\" fill=\"#0F172A\"/>\n<path d=\"M7.77706 15.2293C7.59493 14.1802 7.5 13.1011 7.5 11.9999C7.5 11.4803 7.52114 10.9655 7.56261 10.4565C5.93286 9.85146 4.46039 8.92269 3.22333 7.74835C2.59973 9.03328 2.25 10.4758 2.25 11.9999C2.25 12.2529 2.25964 12.5036 2.27856 12.7517C3.92826 13.8792 5.78374 14.7277 7.77706 15.2293Z\" fill=\"#0F172A\"/>\n<path d=\"M21.3561 14.7525C20.3404 18.2104 17.4597 20.8705 13.8776 21.5693C14.744 20.1123 15.4185 18.5278 15.8664 16.8508C17.8263 16.44 19.6736 15.7231 21.3561 14.7525Z\" fill=\"#0F172A\"/>\n<path d=\"M2.64395 14.7525C4.32642 15.7231 6.17372 16.44 8.13356 16.8508C8.58146 18.5278 9.25602 20.1123 10.1224 21.5693C6.54027 20.8705 3.65964 18.2104 2.64395 14.7525Z\" fill=\"#0F172A\"/>\n<path d=\"M13.8776 2.43055C16.3991 2.92245 18.5731 4.3862 19.9937 6.41599C18.9351 7.48484 17.6637 8.34251 16.2483 8.92017C15.862 6.58282 15.0435 4.39132 13.8776 2.43055Z\" fill=\"#0F172A\"/>\n<path d=\"M12 2.27588C13.4287 4.36548 14.4097 6.78537 14.805 9.39744C13.9083 9.62756 12.9684 9.74993 12 9.74993C11.0316 9.74993 10.0917 9.62756 9.19503 9.39744C9.5903 6.78537 10.5713 4.36548 12 2.27588Z\" fill=\"#0F172A\"/>\n<path d=\"M10.1224 2.43055C8.95648 4.39132 8.13795 6.58282 7.75171 8.92017C6.33629 8.34251 5.06489 7.48484 4.00635 6.41599C5.42689 4.3862 7.60085 2.92245 10.1224 2.43055Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/globe-americas.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.globe_americas />

      <.globe_americas class="h-6 w-6 text-gray-500" />

  or as a function

      <%= globe_americas() %>

      <%= globe_americas(class: "h-6 w-6 text-gray-500") %>
  """
  def globe_americas(assigns_or_opts \\ [])

  def globe_americas(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM6.26197 6.0723C4.71293 7.57208 3.75 9.67359 3.75 12C3.75 16.5563 7.44365 20.25 12 20.25C16.5563 20.25 20.25 16.5563 20.25 12C20.25 9.24461 18.8992 6.80472 16.8237 5.3064C16.4863 5.84545 16.0374 6.30831 15.5056 6.66289L14.2499 7.5L14.4145 7.82918C14.6835 8.3671 14.2923 9 13.6909 9C13.5653 9 13.4414 8.97076 13.3291 8.91459L12.7252 8.61262C12.2921 8.39607 11.769 8.48095 11.4266 8.82336L11.2954 8.9545C10.8561 9.39384 10.8561 10.1062 11.2954 10.5455L11.5905 10.8406C11.8474 11.0975 12.2126 11.2146 12.571 11.1548L13.7411 10.9598C14.0641 10.906 14.3946 10.9956 14.6462 11.2053L15.9755 12.313C16.2962 12.5802 16.4356 13.0073 16.3344 13.4122C15.9519 14.9419 15.1609 16.339 14.046 17.4539L13.3233 18.1766C12.9809 18.519 12.4578 18.6039 12.0247 18.3874L11.8718 18.3109C11.4907 18.1204 11.2499 17.7308 11.2499 17.3047V16.216C11.2499 15.9176 11.1314 15.6315 10.9204 15.4205L9.57328 14.0734C9.23087 13.731 9.14599 13.2079 9.36254 12.7747L9.74992 12L8.10954 10.3596C7.22527 9.47535 6.6394 8.33689 6.43381 7.10337L6.26197 6.0723Z" fill="#0F172A"/>
    </svg>
    """
  end

  def globe_americas(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM6.26197 6.0723C4.71293 7.57208 3.75 9.67359 3.75 12C3.75 16.5563 7.44365 20.25 12 20.25C16.5563 20.25 20.25 16.5563 20.25 12C20.25 9.24461 18.8992 6.80472 16.8237 5.3064C16.4863 5.84545 16.0374 6.30831 15.5056 6.66289L14.2499 7.5L14.4145 7.82918C14.6835 8.3671 14.2923 9 13.6909 9C13.5653 9 13.4414 8.97076 13.3291 8.91459L12.7252 8.61262C12.2921 8.39607 11.769 8.48095 11.4266 8.82336L11.2954 8.9545C10.8561 9.39384 10.8561 10.1062 11.2954 10.5455L11.5905 10.8406C11.8474 11.0975 12.2126 11.2146 12.571 11.1548L13.7411 10.9598C14.0641 10.906 14.3946 10.9956 14.6462 11.2053L15.9755 12.313C16.2962 12.5802 16.4356 13.0073 16.3344 13.4122C15.9519 14.9419 15.1609 16.339 14.046 17.4539L13.3233 18.1766C12.9809 18.519 12.4578 18.6039 12.0247 18.3874L11.8718 18.3109C11.4907 18.1204 11.2499 17.7308 11.2499 17.3047V16.216C11.2499 15.9176 11.1314 15.6315 10.9204 15.4205L9.57328 14.0734C9.23087 13.731 9.14599 13.2079 9.36254 12.7747L9.74992 12L8.10954 10.3596C7.22527 9.47535 6.6394 8.33689 6.43381 7.10337L6.26197 6.0723Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/globe-asia-australia.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.globe_asia_australia />

      <.globe_asia_australia class="h-6 w-6 text-gray-500" />

  or as a function

      <%= globe_asia_australia() %>

      <%= globe_asia_australia(class: "h-6 w-6 text-gray-500") %>
  """
  def globe_asia_australia(assigns_or_opts \\ [])

  def globe_asia_australia(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M15.7498 8.25C16.164 8.25 16.4998 8.58579 16.4998 9C16.4998 10.1201 16.0077 11.1263 15.2304 11.8123C14.9199 12.0864 14.4459 12.0569 14.1718 11.7463C13.8977 11.4357 13.9273 10.9618 14.2378 10.6877C14.7062 10.2743 14.9998 9.67191 14.9998 9C14.9998 8.58579 15.3356 8.25 15.7498 8.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM4.5749 15.6002C5.91195 18.3527 8.7344 20.25 12 20.25C12.6623 20.25 13.3063 20.172 13.9234 20.0246C13.6364 19.2603 12.9044 18.75 12.0828 18.75C11.6022 18.75 11.1921 18.4026 11.1131 17.9285L11.0401 17.4907C10.9461 16.9263 11.2906 16.3813 11.8408 16.2241L12.8295 15.9416C13.2567 15.8195 13.6131 15.5237 13.8119 15.1263L13.8484 15.0533C14.0945 14.561 14.5977 14.25 15.1481 14.25C15.5335 14.25 15.9031 14.4031 16.1756 14.6756L16.5 15H17.1283C17.9669 15 18.724 15.4646 19.1108 16.1857C19.8347 14.9586 20.25 13.5278 20.25 12C20.25 7.7018 16.963 4.17132 12.7656 3.78506C12.81 4.04802 12.9468 4.289 13.1548 4.46233L14.2234 5.35284C14.6651 5.7209 14.7582 6.36275 14.4393 6.84112L13.9282 7.60766C13.6507 8.02398 13.2423 8.3359 12.7676 8.49413L12.6254 8.54154C11.9327 8.77243 11.6492 9.59877 12.0542 10.2063C12.4237 10.7605 12.2238 11.5131 11.6281 11.811L9 13.125L9.42339 14.1835C9.608 14.645 9.40803 15.171 8.96343 15.3933C8.5503 15.5999 8.04855 15.4814 7.77142 15.1119L7.09217 14.2062C6.59039 13.5372 5.55995 13.6301 5.18594 14.3781L4.5749 15.6002Z" fill="#0F172A"/>
    </svg>
    """
  end

  def globe_asia_australia(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M15.7498 8.25C16.164 8.25 16.4998 8.58579 16.4998 9C16.4998 10.1201 16.0077 11.1263 15.2304 11.8123C14.9199 12.0864 14.4459 12.0569 14.1718 11.7463C13.8977 11.4357 13.9273 10.9618 14.2378 10.6877C14.7062 10.2743 14.9998 9.67191 14.9998 9C14.9998 8.58579 15.3356 8.25 15.7498 8.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM4.5749 15.6002C5.91195 18.3527 8.7344 20.25 12 20.25C12.6623 20.25 13.3063 20.172 13.9234 20.0246C13.6364 19.2603 12.9044 18.75 12.0828 18.75C11.6022 18.75 11.1921 18.4026 11.1131 17.9285L11.0401 17.4907C10.9461 16.9263 11.2906 16.3813 11.8408 16.2241L12.8295 15.9416C13.2567 15.8195 13.6131 15.5237 13.8119 15.1263L13.8484 15.0533C14.0945 14.561 14.5977 14.25 15.1481 14.25C15.5335 14.25 15.9031 14.4031 16.1756 14.6756L16.5 15H17.1283C17.9669 15 18.724 15.4646 19.1108 16.1857C19.8347 14.9586 20.25 13.5278 20.25 12C20.25 7.7018 16.963 4.17132 12.7656 3.78506C12.81 4.04802 12.9468 4.289 13.1548 4.46233L14.2234 5.35284C14.6651 5.7209 14.7582 6.36275 14.4393 6.84112L13.9282 7.60766C13.6507 8.02398 13.2423 8.3359 12.7676 8.49413L12.6254 8.54154C11.9327 8.77243 11.6492 9.59877 12.0542 10.2063C12.4237 10.7605 12.2238 11.5131 11.6281 11.811L9 13.125L9.42339 14.1835C9.608 14.645 9.40803 15.171 8.96343 15.3933C8.5503 15.5999 8.04855 15.4814 7.77142 15.1119L7.09217 14.2062C6.59039 13.5372 5.55995 13.6301 5.18594 14.3781L4.5749 15.6002Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/globe-europe-africa.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.globe_europe_africa />

      <.globe_europe_africa class="h-6 w-6 text-gray-500" />

  or as a function

      <%= globe_europe_africa() %>

      <%= globe_europe_africa(class: "h-6 w-6 text-gray-500") %>
  """
  def globe_europe_africa(assigns_or_opts \\ [])

  def globe_europe_africa(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM8.54688 4.50525C5.71517 5.8121 3.75 8.67655 3.75 12C3.75 16.5563 7.44365 20.25 12 20.25C16.3141 20.25 19.8548 16.9387 20.2191 12.7191L19.7582 12.2582C19.5872 12.0872 19.4449 11.8897 19.3367 11.6734L18.2567 9.5133C18.1304 9.26078 17.7939 9.20616 17.5942 9.4058C17.3818 9.61824 17.0709 9.69881 16.782 9.61627L15.5091 9.25259C15.0257 9.11447 14.524 9.40424 14.402 9.892C14.3109 10.2566 14.4588 10.6392 14.7715 10.8476L15.3582 11.2388C15.9489 11.6326 16.0317 12.4684 15.5297 12.9703L15.3295 13.1705C15.1186 13.3815 15 13.6676 15 13.966V14.3768C15 14.7846 14.8892 15.1847 14.6794 15.5344L13.3648 17.7254C12.9834 18.3611 12.2965 18.75 11.5552 18.75C10.9724 18.75 10.5 18.2776 10.5 17.6948V16.5233C10.5 15.6033 9.93989 14.7759 9.08565 14.4343L8.43151 14.1726C7.44978 13.7799 6.87393 12.7566 7.04776 11.7136L7.05479 11.6714C7.1012 11.393 7.19959 11.1257 7.34482 10.8837L7.43423 10.7347C7.92346 9.91928 8.87244 9.49948 9.80485 9.68597L10.9827 9.92153C11.5574 10.0365 12.124 9.69096 12.285 9.12744L12.4935 8.39774C12.6423 7.87721 12.3991 7.32456 11.9149 7.08245L11.25 6.75L11.159 6.84099C10.7371 7.26295 10.1648 7.5 9.56805 7.5H9.38712C9.13927 7.5 8.90098 7.59905 8.72572 7.7743C8.44225 8.05778 8.00817 8.12907 7.64961 7.94979C7.16435 7.70716 6.98836 7.10278 7.26749 6.63757L8.54688 4.50525Z" fill="#0F172A"/>
    </svg>
    """
  end

  def globe_europe_africa(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM8.54688 4.50525C5.71517 5.8121 3.75 8.67655 3.75 12C3.75 16.5563 7.44365 20.25 12 20.25C16.3141 20.25 19.8548 16.9387 20.2191 12.7191L19.7582 12.2582C19.5872 12.0872 19.4449 11.8897 19.3367 11.6734L18.2567 9.5133C18.1304 9.26078 17.7939 9.20616 17.5942 9.4058C17.3818 9.61824 17.0709 9.69881 16.782 9.61627L15.5091 9.25259C15.0257 9.11447 14.524 9.40424 14.402 9.892C14.3109 10.2566 14.4588 10.6392 14.7715 10.8476L15.3582 11.2388C15.9489 11.6326 16.0317 12.4684 15.5297 12.9703L15.3295 13.1705C15.1186 13.3815 15 13.6676 15 13.966V14.3768C15 14.7846 14.8892 15.1847 14.6794 15.5344L13.3648 17.7254C12.9834 18.3611 12.2965 18.75 11.5552 18.75C10.9724 18.75 10.5 18.2776 10.5 17.6948V16.5233C10.5 15.6033 9.93989 14.7759 9.08565 14.4343L8.43151 14.1726C7.44978 13.7799 6.87393 12.7566 7.04776 11.7136L7.05479 11.6714C7.1012 11.393 7.19959 11.1257 7.34482 10.8837L7.43423 10.7347C7.92346 9.91928 8.87244 9.49948 9.80485 9.68597L10.9827 9.92153C11.5574 10.0365 12.124 9.69096 12.285 9.12744L12.4935 8.39774C12.6423 7.87721 12.3991 7.32456 11.9149 7.08245L11.25 6.75L11.159 6.84099C10.7371 7.26295 10.1648 7.5 9.56805 7.5H9.38712C9.13927 7.5 8.90098 7.59905 8.72572 7.7743C8.44225 8.05778 8.00817 8.12907 7.64961 7.94979C7.16435 7.70716 6.98836 7.10278 7.26749 6.63757L8.54688 4.50525Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/hand-raised.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.hand_raised />

      <.hand_raised class="h-6 w-6 text-gray-500" />

  or as a function

      <%= hand_raised() %>

      <%= hand_raised(class: "h-6 w-6 text-gray-500") %>
  """
  def hand_raised(assigns_or_opts \\ [])

  def hand_raised(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M10.5 1.875C10.5 1.25368 11.0037 0.75 11.625 0.75C12.2463 0.75 12.75 1.25368 12.75 1.875V10.0938C13.2674 10.2561 13.7708 10.4757 14.25 10.7527V3.375C14.25 2.75368 14.7537 2.25 15.375 2.25C15.9963 2.25 16.5 2.75368 16.5 3.375V14.3122C15.0821 14.5501 13.8891 15.451 13.2506 16.6852C14.4554 16.0866 15.8134 15.75 17.25 15.75C17.6642 15.75 18 15.4142 18 15V12.75L18 12.7336C18.0042 11.8771 18.3339 11.0181 18.9885 10.3635C19.4278 9.92417 20.1402 9.92417 20.5795 10.3635C21.0188 10.8028 21.0188 11.5152 20.5795 11.9545C20.361 12.173 20.2514 12.4567 20.25 12.7445L20.25 12.75L20.25 15.75H20.2454C20.1863 17.2558 19.5623 18.6877 18.4926 19.7574L16.7574 21.4926C15.6321 22.6179 14.106 23.25 12.5147 23.25H10.5C6.35786 23.25 3 19.8921 3 15.75V6.375C3 5.75368 3.50368 5.25 4.125 5.25C4.74632 5.25 5.25 5.75368 5.25 6.375V11.8939C5.71078 11.4421 6.2154 11.0617 6.75 10.7527V3.375C6.75 2.75368 7.25368 2.25 7.875 2.25C8.49632 2.25 9 2.75368 9 3.375V9.90069C9.49455 9.80023 9.99728 9.75 10.5 9.75V1.875Z" fill="#0F172A"/>
    </svg>
    """
  end

  def hand_raised(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10.5 1.875C10.5 1.25368 11.0037 0.75 11.625 0.75C12.2463 0.75 12.75 1.25368 12.75 1.875V10.0938C13.2674 10.2561 13.7708 10.4757 14.25 10.7527V3.375C14.25 2.75368 14.7537 2.25 15.375 2.25C15.9963 2.25 16.5 2.75368 16.5 3.375V14.3122C15.0821 14.5501 13.8891 15.451 13.2506 16.6852C14.4554 16.0866 15.8134 15.75 17.25 15.75C17.6642 15.75 18 15.4142 18 15V12.75L18 12.7336C18.0042 11.8771 18.3339 11.0181 18.9885 10.3635C19.4278 9.92417 20.1402 9.92417 20.5795 10.3635C21.0188 10.8028 21.0188 11.5152 20.5795 11.9545C20.361 12.173 20.2514 12.4567 20.25 12.7445L20.25 12.75L20.25 15.75H20.2454C20.1863 17.2558 19.5623 18.6877 18.4926 19.7574L16.7574 21.4926C15.6321 22.6179 14.106 23.25 12.5147 23.25H10.5C6.35786 23.25 3 19.8921 3 15.75V6.375C3 5.75368 3.50368 5.25 4.125 5.25C4.74632 5.25 5.25 5.75368 5.25 6.375V11.8939C5.71078 11.4421 6.2154 11.0617 6.75 10.7527V3.375C6.75 2.75368 7.25368 2.25 7.875 2.25C8.49632 2.25 9 2.75368 9 3.375V9.90069C9.49455 9.80023 9.99728 9.75 10.5 9.75V1.875Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/hand-thumb-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.hand_thumb_down />

      <.hand_thumb_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= hand_thumb_down() %>

      <%= hand_thumb_down(class: "h-6 w-6 text-gray-500") %>
  """
  def hand_thumb_down(assigns_or_opts \\ [])

  def hand_thumb_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M15.7303 5.25L16.7647 5.25C17.5455 6.43343 18 7.85114 18 9.375C18 10.8989 17.5455 12.3166 16.7647 13.5L16.6174 13.5C15.8111 13.5 15.0835 13.9458 14.5859 14.5803C13.8127 15.5662 12.8383 16.3866 11.7245 16.9798C11.0023 17.3644 10.3757 17.9357 10.0719 18.6954C9.85923 19.2269 9.75 19.7941 9.75 20.3666L9.75 21C9.75 21.4142 9.41421 21.75 9 21.75C7.75736 21.75 6.75 20.7426 6.75 19.5C6.75 18.3484 7.00956 17.2574 7.47337 16.2823C7.73895 15.724 7.36638 15 6.74809 15L3.62227 15C2.59563 15 1.6767 14.306 1.56801 13.2851C1.52305 12.8629 1.5 12.4341 1.5 12C1.5 9.15238 2.49188 6.53642 4.149 4.47878C4.5366 3.99749 5.13581 3.75 5.75377 3.75L9.76975 3.75C10.2534 3.75 10.7339 3.82798 11.1928 3.98093L14.3072 5.01908C14.7661 5.17203 15.2466 5.25 15.7303 5.25Z" fill="#0F172A"/>
    <path d="M21.6685 13.7729C22.2052 12.4111 22.5 10.9275 22.5 9.37501C22.5 8.15493 22.3179 6.97738 21.9794 5.86805C21.7201 5.01802 20.8958 4.5 20.0071 4.5L19.0993 4.5C18.6538 4.5 18.3786 4.99827 18.5758 5.3978C19.1675 6.59709 19.5 7.94722 19.5 9.375C19.5 11.0832 19.0241 12.6802 18.1977 14.0408C17.9527 14.4441 18.226 15 18.6979 15L19.7506 15C20.5827 15 21.3635 14.547 21.6685 13.7729Z" fill="#0F172A"/>
    </svg>
    """
  end

  def hand_thumb_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M15.7303 5.25L16.7647 5.25C17.5455 6.43343 18 7.85114 18 9.375C18 10.8989 17.5455 12.3166 16.7647 13.5L16.6174 13.5C15.8111 13.5 15.0835 13.9458 14.5859 14.5803C13.8127 15.5662 12.8383 16.3866 11.7245 16.9798C11.0023 17.3644 10.3757 17.9357 10.0719 18.6954C9.85923 19.2269 9.75 19.7941 9.75 20.3666L9.75 21C9.75 21.4142 9.41421 21.75 9 21.75C7.75736 21.75 6.75 20.7426 6.75 19.5C6.75 18.3484 7.00956 17.2574 7.47337 16.2823C7.73895 15.724 7.36638 15 6.74809 15L3.62227 15C2.59563 15 1.6767 14.306 1.56801 13.2851C1.52305 12.8629 1.5 12.4341 1.5 12C1.5 9.15238 2.49188 6.53642 4.149 4.47878C4.5366 3.99749 5.13581 3.75 5.75377 3.75L9.76975 3.75C10.2534 3.75 10.7339 3.82798 11.1928 3.98093L14.3072 5.01908C14.7661 5.17203 15.2466 5.25 15.7303 5.25Z\" fill=\"#0F172A\"/>\n<path d=\"M21.6685 13.7729C22.2052 12.4111 22.5 10.9275 22.5 9.37501C22.5 8.15493 22.3179 6.97738 21.9794 5.86805C21.7201 5.01802 20.8958 4.5 20.0071 4.5L19.0993 4.5C18.6538 4.5 18.3786 4.99827 18.5758 5.3978C19.1675 6.59709 19.5 7.94722 19.5 9.375C19.5 11.0832 19.0241 12.6802 18.1977 14.0408C17.9527 14.4441 18.226 15 18.6979 15L19.7506 15C20.5827 15 21.3635 14.547 21.6685 13.7729Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/hand-thumb-up.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.hand_thumb_up />

      <.hand_thumb_up class="h-6 w-6 text-gray-500" />

  or as a function

      <%= hand_thumb_up() %>

      <%= hand_thumb_up(class: "h-6 w-6 text-gray-500") %>
  """
  def hand_thumb_up(assigns_or_opts \\ [])

  def hand_thumb_up(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M7.49281 18.75C7.06823 18.75 6.67296 18.5135 6.51759 18.1184C6.18349 17.2687 6 16.3433 6 15.375C6 13.6259 6.59874 12.0167 7.60244 10.741C7.75335 10.5493 7.97456 10.4321 8.20214 10.344C8.67496 10.1609 9.09254 9.82968 9.4141 9.41967C10.1873 8.43384 11.1617 7.6134 12.2755 7.02021C12.9977 6.63563 13.6243 6.06428 13.9281 5.30464C14.1408 4.7731 14.25 4.20587 14.25 3.63338V3C14.25 2.58579 14.5858 2.25 15 2.25C16.2426 2.25 17.25 3.25736 17.25 4.5C17.25 5.65163 16.9904 6.74263 16.5266 7.71771C16.261 8.27604 16.6336 9 17.2519 9H20.3777C21.4044 9 22.3233 9.69399 22.432 10.7149C22.4769 11.1371 22.5 11.5658 22.5 12C22.5 14.8476 21.5081 17.4636 19.851 19.5212C19.4634 20.0025 18.8642 20.25 18.2462 20.25H14.2302C13.7466 20.25 13.2661 20.172 12.8072 20.0191L9.69278 18.9809C9.23393 18.828 8.75342 18.75 8.26975 18.75H7.49281Z" fill="#0F172A"/>
    <path d="M2.33149 10.9771C1.79481 12.3389 1.5 13.8225 1.5 15.375C1.5 16.5951 1.68208 17.7726 2.02056 18.882C2.27991 19.732 3.10418 20.25 3.99289 20.25H4.90067C5.3462 20.25 5.62137 19.7517 5.42423 19.3522C4.83248 18.1529 4.5 16.8028 4.5 15.375C4.5 13.6668 4.97588 12.0698 5.8023 10.7093C6.0473 10.3059 5.77404 9.75 5.30212 9.75H4.24936C3.41733 9.75 2.63655 10.203 2.33149 10.9771Z" fill="#0F172A"/>
    </svg>
    """
  end

  def hand_thumb_up(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M7.49281 18.75C7.06823 18.75 6.67296 18.5135 6.51759 18.1184C6.18349 17.2687 6 16.3433 6 15.375C6 13.6259 6.59874 12.0167 7.60244 10.741C7.75335 10.5493 7.97456 10.4321 8.20214 10.344C8.67496 10.1609 9.09254 9.82968 9.4141 9.41967C10.1873 8.43384 11.1617 7.6134 12.2755 7.02021C12.9977 6.63563 13.6243 6.06428 13.9281 5.30464C14.1408 4.7731 14.25 4.20587 14.25 3.63338V3C14.25 2.58579 14.5858 2.25 15 2.25C16.2426 2.25 17.25 3.25736 17.25 4.5C17.25 5.65163 16.9904 6.74263 16.5266 7.71771C16.261 8.27604 16.6336 9 17.2519 9H20.3777C21.4044 9 22.3233 9.69399 22.432 10.7149C22.4769 11.1371 22.5 11.5658 22.5 12C22.5 14.8476 21.5081 17.4636 19.851 19.5212C19.4634 20.0025 18.8642 20.25 18.2462 20.25H14.2302C13.7466 20.25 13.2661 20.172 12.8072 20.0191L9.69278 18.9809C9.23393 18.828 8.75342 18.75 8.26975 18.75H7.49281Z\" fill=\"#0F172A\"/>\n<path d=\"M2.33149 10.9771C1.79481 12.3389 1.5 13.8225 1.5 15.375C1.5 16.5951 1.68208 17.7726 2.02056 18.882C2.27991 19.732 3.10418 20.25 3.99289 20.25H4.90067C5.3462 20.25 5.62137 19.7517 5.42423 19.3522C4.83248 18.1529 4.5 16.8028 4.5 15.375C4.5 13.6668 4.97588 12.0698 5.8023 10.7093C6.0473 10.3059 5.77404 9.75 5.30212 9.75H4.24936C3.41733 9.75 2.63655 10.203 2.33149 10.9771Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/hashtag.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.hashtag />

      <.hashtag class="h-6 w-6 text-gray-500" />

  or as a function

      <%= hashtag() %>

      <%= hashtag(class: "h-6 w-6 text-gray-500") %>
  """
  def hashtag(assigns_or_opts \\ [])

  def hashtag(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.0974 1.51471C11.5035 1.59594 11.767 1.99106 11.6857 2.39723L10.6651 7.50015H15.1351L16.2146 2.10306C16.2958 1.69689 16.6909 1.43348 17.0971 1.51471C17.5033 1.59594 17.7667 1.99106 17.6854 2.39723L16.6649 7.50015H20.25C20.6642 7.50015 21 7.83593 21 8.25015C21 8.66436 20.6642 9.00015 20.25 9.00015H16.3649L15.1649 15.0001H18.75C19.1642 15.0001 19.5 15.3359 19.5 15.7501C19.5 16.1644 19.1642 16.5001 18.75 16.5001H14.8649L13.7854 21.8972C13.7042 22.3034 13.3091 22.5668 12.9029 22.4856C12.4967 22.4043 12.2333 22.0092 12.3146 21.6031L13.3351 16.5001H8.86515L7.78573 21.8972C7.70449 22.3034 7.30938 22.5668 6.90321 22.4856C6.49704 22.4043 6.23362 22.0092 6.31486 21.6031L7.33544 16.5001H3.75C3.33579 16.5001 3 16.1644 3 15.7501C3 15.3359 3.33579 15.0001 3.75 15.0001H7.63544L8.83544 9.00015H5.25C4.83579 9.00015 4.5 8.66436 4.5 8.25015C4.5 7.83593 4.83579 7.50015 5.25 7.50015H9.13544L10.2149 2.10306C10.2961 1.69689 10.6912 1.43348 11.0974 1.51471ZM10.3651 9.00015L9.16515 15.0001H13.6351L14.8351 9.00015H10.3651Z" fill="#0F172A"/>
    </svg>
    """
  end

  def hashtag(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.0974 1.51471C11.5035 1.59594 11.767 1.99106 11.6857 2.39723L10.6651 7.50015H15.1351L16.2146 2.10306C16.2958 1.69689 16.6909 1.43348 17.0971 1.51471C17.5033 1.59594 17.7667 1.99106 17.6854 2.39723L16.6649 7.50015H20.25C20.6642 7.50015 21 7.83593 21 8.25015C21 8.66436 20.6642 9.00015 20.25 9.00015H16.3649L15.1649 15.0001H18.75C19.1642 15.0001 19.5 15.3359 19.5 15.7501C19.5 16.1644 19.1642 16.5001 18.75 16.5001H14.8649L13.7854 21.8972C13.7042 22.3034 13.3091 22.5668 12.9029 22.4856C12.4967 22.4043 12.2333 22.0092 12.3146 21.6031L13.3351 16.5001H8.86515L7.78573 21.8972C7.70449 22.3034 7.30938 22.5668 6.90321 22.4856C6.49704 22.4043 6.23362 22.0092 6.31486 21.6031L7.33544 16.5001H3.75C3.33579 16.5001 3 16.1644 3 15.7501C3 15.3359 3.33579 15.0001 3.75 15.0001H7.63544L8.83544 9.00015H5.25C4.83579 9.00015 4.5 8.66436 4.5 8.25015C4.5 7.83593 4.83579 7.50015 5.25 7.50015H9.13544L10.2149 2.10306C10.2961 1.69689 10.6912 1.43348 11.0974 1.51471ZM10.3651 9.00015L9.16515 15.0001H13.6351L14.8351 9.00015H10.3651Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/heart.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.heart />

      <.heart class="h-6 w-6 text-gray-500" />

  or as a function

      <%= heart() %>

      <%= heart(class: "h-6 w-6 text-gray-500") %>
  """
  def heart(assigns_or_opts \\ [])

  def heart(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M11.645 20.9107L11.6384 20.9071L11.6158 20.8949C11.5965 20.8844 11.5689 20.8693 11.5336 20.8496C11.4629 20.8101 11.3612 20.7524 11.233 20.6769C10.9765 20.5261 10.6132 20.3039 10.1785 20.015C9.31074 19.4381 8.15122 18.5901 6.9886 17.5063C4.68781 15.3615 2.25 12.1751 2.25 8.25C2.25 5.32194 4.7136 3 7.6875 3C9.43638 3 11.0023 3.79909 12 5.0516C12.9977 3.79909 14.5636 3 16.3125 3C19.2864 3 21.75 5.32194 21.75 8.25C21.75 12.1751 19.3122 15.3615 17.0114 17.5063C15.8488 18.5901 14.6893 19.4381 13.8215 20.015C13.3868 20.3039 13.0235 20.5261 12.767 20.6769C12.6388 20.7524 12.5371 20.8101 12.4664 20.8496C12.4311 20.8693 12.4035 20.8844 12.3842 20.8949L12.3616 20.9071L12.355 20.9107L12.3523 20.9121C12.1323 21.0289 11.8677 21.0289 11.6477 20.9121L11.645 20.9107Z" fill="#0F172A"/>
    </svg>
    """
  end

  def heart(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M11.645 20.9107L11.6384 20.9071L11.6158 20.8949C11.5965 20.8844 11.5689 20.8693 11.5336 20.8496C11.4629 20.8101 11.3612 20.7524 11.233 20.6769C10.9765 20.5261 10.6132 20.3039 10.1785 20.015C9.31074 19.4381 8.15122 18.5901 6.9886 17.5063C4.68781 15.3615 2.25 12.1751 2.25 8.25C2.25 5.32194 4.7136 3 7.6875 3C9.43638 3 11.0023 3.79909 12 5.0516C12.9977 3.79909 14.5636 3 16.3125 3C19.2864 3 21.75 5.32194 21.75 8.25C21.75 12.1751 19.3122 15.3615 17.0114 17.5063C15.8488 18.5901 14.6893 19.4381 13.8215 20.015C13.3868 20.3039 13.0235 20.5261 12.767 20.6769C12.6388 20.7524 12.5371 20.8101 12.4664 20.8496C12.4311 20.8693 12.4035 20.8844 12.3842 20.8949L12.3616 20.9071L12.355 20.9107L12.3523 20.9121C12.1323 21.0289 11.8677 21.0289 11.6477 20.9121L11.645 20.9107Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/home-modern.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.home_modern />

      <.home_modern class="h-6 w-6 text-gray-500" />

  or as a function

      <%= home_modern() %>

      <%= home_modern(class: "h-6 w-6 text-gray-500") %>
  """
  def home_modern(assigns_or_opts \\ [])

  def home_modern(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M19.0061 3.70505C19.3954 3.56349 19.5962 3.13317 19.4547 2.7439C19.3131 2.35462 18.8828 2.1538 18.4935 2.29536L6 6.83846V3.00021C6 2.58599 5.66421 2.25021 5.25 2.25021H3.75C3.33579 2.25021 3 2.58599 3 3.00021V7.92937L1.99353 8.29536C1.60426 8.43691 1.40344 8.86724 1.54499 9.25651C1.68655 9.64579 2.11687 9.8466 2.50615 9.70505L19.0061 3.70505Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.01896 11.1147L18 5.66708V9.08858L22.0061 10.5454C22.3954 10.6869 22.5962 11.1172 22.4547 11.5065C22.3131 11.8958 21.8828 12.0966 21.4935 11.955L20.9998 11.7755V20.2502H21.75C22.1642 20.2502 22.5 20.586 22.5 21.0002C22.5 21.4144 22.1642 21.7502 21.75 21.7502H2.25C1.83579 21.7502 1.5 21.4144 1.5 21.0002C1.5 20.586 1.83579 20.2502 2.25 20.2502H3V11.1215L3.01896 11.1147ZM18 20.2502V10.6847L19.4998 11.2301V20.2502H18ZM9 14.2502C8.58579 14.2502 8.25 14.586 8.25 15.0002V19.5002C8.25 19.9144 8.58579 20.2502 9 20.2502H12C12.4142 20.2502 12.75 19.9144 12.75 19.5002V15.0002C12.75 14.586 12.4142 14.2502 12 14.2502H9Z" fill="#0F172A"/>
    </svg>
    """
  end

  def home_modern(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M19.0061 3.70505C19.3954 3.56349 19.5962 3.13317 19.4547 2.7439C19.3131 2.35462 18.8828 2.1538 18.4935 2.29536L6 6.83846V3.00021C6 2.58599 5.66421 2.25021 5.25 2.25021H3.75C3.33579 2.25021 3 2.58599 3 3.00021V7.92937L1.99353 8.29536C1.60426 8.43691 1.40344 8.86724 1.54499 9.25651C1.68655 9.64579 2.11687 9.8466 2.50615 9.70505L19.0061 3.70505Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.01896 11.1147L18 5.66708V9.08858L22.0061 10.5454C22.3954 10.6869 22.5962 11.1172 22.4547 11.5065C22.3131 11.8958 21.8828 12.0966 21.4935 11.955L20.9998 11.7755V20.2502H21.75C22.1642 20.2502 22.5 20.586 22.5 21.0002C22.5 21.4144 22.1642 21.7502 21.75 21.7502H2.25C1.83579 21.7502 1.5 21.4144 1.5 21.0002C1.5 20.586 1.83579 20.2502 2.25 20.2502H3V11.1215L3.01896 11.1147ZM18 20.2502V10.6847L19.4998 11.2301V20.2502H18ZM9 14.2502C8.58579 14.2502 8.25 14.586 8.25 15.0002V19.5002C8.25 19.9144 8.58579 20.2502 9 20.2502H12C12.4142 20.2502 12.75 19.9144 12.75 19.5002V15.0002C12.75 14.586 12.4142 14.2502 12 14.2502H9Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/home.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.home />

      <.home class="h-6 w-6 text-gray-500" />

  or as a function

      <%= home() %>

      <%= home(class: "h-6 w-6 text-gray-500") %>
  """
  def home(assigns_or_opts \\ [])

  def home(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M11.4697 3.84076C11.7626 3.54787 12.2374 3.54787 12.5303 3.84076L21.2197 12.5301C21.5126 12.823 21.9874 12.823 22.2803 12.5301C22.5732 12.2372 22.5732 11.7623 22.2803 11.4694L13.591 2.7801C12.7123 1.90142 11.2877 1.90142 10.409 2.7801L1.71967 11.4694C1.42678 11.7623 1.42678 12.2372 1.71967 12.5301C2.01256 12.823 2.48744 12.823 2.78033 12.5301L11.4697 3.84076Z" fill="#0F172A"/>
    <path d="M12 5.43176L20.159 13.5908C20.1887 13.6205 20.2191 13.6492 20.25 13.6769V19.8748C20.25 20.9103 19.4105 21.7498 18.375 21.7498H15C14.5858 21.7498 14.25 21.414 14.25 20.9998V16.4998C14.25 16.0856 13.9142 15.7498 13.5 15.7498H10.5C10.0858 15.7498 9.75 16.0856 9.75 16.4998V20.9998C9.75 21.414 9.41421 21.7498 9 21.7498H5.625C4.58947 21.7498 3.75 20.9103 3.75 19.8748V13.6769C3.78093 13.6492 3.81127 13.6205 3.84099 13.5908L12 5.43176Z" fill="#0F172A"/>
    </svg>
    """
  end

  def home(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M11.4697 3.84076C11.7626 3.54787 12.2374 3.54787 12.5303 3.84076L21.2197 12.5301C21.5126 12.823 21.9874 12.823 22.2803 12.5301C22.5732 12.2372 22.5732 11.7623 22.2803 11.4694L13.591 2.7801C12.7123 1.90142 11.2877 1.90142 10.409 2.7801L1.71967 11.4694C1.42678 11.7623 1.42678 12.2372 1.71967 12.5301C2.01256 12.823 2.48744 12.823 2.78033 12.5301L11.4697 3.84076Z\" fill=\"#0F172A\"/>\n<path d=\"M12 5.43176L20.159 13.5908C20.1887 13.6205 20.2191 13.6492 20.25 13.6769V19.8748C20.25 20.9103 19.4105 21.7498 18.375 21.7498H15C14.5858 21.7498 14.25 21.414 14.25 20.9998V16.4998C14.25 16.0856 13.9142 15.7498 13.5 15.7498H10.5C10.0858 15.7498 9.75 16.0856 9.75 16.4998V20.9998C9.75 21.414 9.41421 21.7498 9 21.7498H5.625C4.58947 21.7498 3.75 20.9103 3.75 19.8748V13.6769C3.78093 13.6492 3.81127 13.6205 3.84099 13.5908L12 5.43176Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/identification.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.identification />

      <.identification class="h-6 w-6 text-gray-500" />

  or as a function

      <%= identification() %>

      <%= identification(class: "h-6 w-6 text-gray-500") %>
  """
  def identification(assigns_or_opts \\ [])

  def identification(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 3.75C2.84315 3.75 1.5 5.09315 1.5 6.75V17.25C1.5 18.9069 2.84315 20.25 4.5 20.25H19.5C21.1569 20.25 22.5 18.9069 22.5 17.25V6.75C22.5 5.09315 21.1569 3.75 19.5 3.75H4.5ZM8.625 6.75C7.38236 6.75 6.375 7.75736 6.375 9C6.375 10.2426 7.38236 11.25 8.625 11.25C9.86764 11.25 10.875 10.2426 10.875 9C10.875 7.75736 9.86764 6.75 8.625 6.75ZM4.75191 15.4528C5.3309 13.8765 6.84542 12.75 8.62496 12.75C10.4045 12.75 11.919 13.8765 12.498 15.4528C12.6271 15.8043 12.4771 16.1972 12.1466 16.3733C11.0958 16.9331 9.89627 17.25 8.62496 17.25C7.35364 17.25 6.15413 16.9331 5.10331 16.3733C4.77278 16.1972 4.62279 15.8043 4.75191 15.4528ZM15 8.25C14.5858 8.25 14.25 8.58579 14.25 9C14.25 9.41421 14.5858 9.75 15 9.75H18.75C19.1642 9.75 19.5 9.41421 19.5 9C19.5 8.58579 19.1642 8.25 18.75 8.25H15ZM14.25 12C14.25 11.5858 14.5858 11.25 15 11.25H18.75C19.1642 11.25 19.5 11.5858 19.5 12C19.5 12.4142 19.1642 12.75 18.75 12.75H15C14.5858 12.75 14.25 12.4142 14.25 12ZM15 14.25C14.5858 14.25 14.25 14.5858 14.25 15C14.25 15.4142 14.5858 15.75 15 15.75H18.75C19.1642 15.75 19.5 15.4142 19.5 15C19.5 14.5858 19.1642 14.25 18.75 14.25H15Z" fill="#0F172A"/>
    </svg>
    """
  end

  def identification(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 3.75C2.84315 3.75 1.5 5.09315 1.5 6.75V17.25C1.5 18.9069 2.84315 20.25 4.5 20.25H19.5C21.1569 20.25 22.5 18.9069 22.5 17.25V6.75C22.5 5.09315 21.1569 3.75 19.5 3.75H4.5ZM8.625 6.75C7.38236 6.75 6.375 7.75736 6.375 9C6.375 10.2426 7.38236 11.25 8.625 11.25C9.86764 11.25 10.875 10.2426 10.875 9C10.875 7.75736 9.86764 6.75 8.625 6.75ZM4.75191 15.4528C5.3309 13.8765 6.84542 12.75 8.62496 12.75C10.4045 12.75 11.919 13.8765 12.498 15.4528C12.6271 15.8043 12.4771 16.1972 12.1466 16.3733C11.0958 16.9331 9.89627 17.25 8.62496 17.25C7.35364 17.25 6.15413 16.9331 5.10331 16.3733C4.77278 16.1972 4.62279 15.8043 4.75191 15.4528ZM15 8.25C14.5858 8.25 14.25 8.58579 14.25 9C14.25 9.41421 14.5858 9.75 15 9.75H18.75C19.1642 9.75 19.5 9.41421 19.5 9C19.5 8.58579 19.1642 8.25 18.75 8.25H15ZM14.25 12C14.25 11.5858 14.5858 11.25 15 11.25H18.75C19.1642 11.25 19.5 11.5858 19.5 12C19.5 12.4142 19.1642 12.75 18.75 12.75H15C14.5858 12.75 14.25 12.4142 14.25 12ZM15 14.25C14.5858 14.25 14.25 14.5858 14.25 15C14.25 15.4142 14.5858 15.75 15 15.75H18.75C19.1642 15.75 19.5 15.4142 19.5 15C19.5 14.5858 19.1642 14.25 18.75 14.25H15Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/inbox-arrow-down.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.inbox_arrow_down />

      <.inbox_arrow_down class="h-6 w-6 text-gray-500" />

  or as a function

      <%= inbox_arrow_down() %>

      <%= inbox_arrow_down(class: "h-6 w-6 text-gray-500") %>
  """
  def inbox_arrow_down(assigns_or_opts \\ [])

  def inbox_arrow_down(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.47812 5.55887C5.67178 4.92948 6.25329 4.5 6.91179 4.5H9C9.41421 4.5 9.75 4.16421 9.75 3.75C9.75 3.33579 9.41421 3 9 3H6.91179C5.59478 3 4.43177 3.85897 4.04446 5.11774L1.63266 12.9561C1.54472 13.2419 1.5 13.5393 1.5 13.8383V18C1.5 19.6569 2.84315 21 4.5 21H19.5C21.1569 21 22.5 19.6569 22.5 18V13.8383C22.5 13.5393 22.4553 13.2419 22.3673 12.9561L19.9555 5.11774C19.5682 3.85897 18.4052 3 17.0882 3H15C14.5858 3 14.25 3.33579 14.25 3.75C14.25 4.16421 14.5858 4.5 15 4.5H17.0882C17.7467 4.5 18.3282 4.92948 18.5219 5.55887L20.7345 12.75H17.8906C16.7543 12.75 15.7155 13.392 15.2073 14.4084L14.9511 14.9208C14.697 15.429 14.1776 15.75 13.6094 15.75H10.3906C9.82242 15.75 9.30302 15.429 9.04894 14.9208L8.79271 14.4084C8.28453 13.392 7.24574 12.75 6.10942 12.75H3.26547L5.47812 5.55887Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C12.4142 2.25 12.75 2.58579 12.75 3V9.43934L14.4697 7.71967C14.7626 7.42678 15.2374 7.42678 15.5303 7.71967C15.8232 8.01256 15.8232 8.48744 15.5303 8.78033L12.5303 11.7803C12.2374 12.0732 11.7626 12.0732 11.4697 11.7803L8.46967 8.78033C8.17678 8.48744 8.17678 8.01256 8.46967 7.71967C8.76256 7.42678 9.23744 7.42678 9.53033 7.71967L11.25 9.43934V3C11.25 2.58579 11.5858 2.25 12 2.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def inbox_arrow_down(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.47812 5.55887C5.67178 4.92948 6.25329 4.5 6.91179 4.5H9C9.41421 4.5 9.75 4.16421 9.75 3.75C9.75 3.33579 9.41421 3 9 3H6.91179C5.59478 3 4.43177 3.85897 4.04446 5.11774L1.63266 12.9561C1.54472 13.2419 1.5 13.5393 1.5 13.8383V18C1.5 19.6569 2.84315 21 4.5 21H19.5C21.1569 21 22.5 19.6569 22.5 18V13.8383C22.5 13.5393 22.4553 13.2419 22.3673 12.9561L19.9555 5.11774C19.5682 3.85897 18.4052 3 17.0882 3H15C14.5858 3 14.25 3.33579 14.25 3.75C14.25 4.16421 14.5858 4.5 15 4.5H17.0882C17.7467 4.5 18.3282 4.92948 18.5219 5.55887L20.7345 12.75H17.8906C16.7543 12.75 15.7155 13.392 15.2073 14.4084L14.9511 14.9208C14.697 15.429 14.1776 15.75 13.6094 15.75H10.3906C9.82242 15.75 9.30302 15.429 9.04894 14.9208L8.79271 14.4084C8.28453 13.392 7.24574 12.75 6.10942 12.75H3.26547L5.47812 5.55887Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C12.4142 2.25 12.75 2.58579 12.75 3V9.43934L14.4697 7.71967C14.7626 7.42678 15.2374 7.42678 15.5303 7.71967C15.8232 8.01256 15.8232 8.48744 15.5303 8.78033L12.5303 11.7803C12.2374 12.0732 11.7626 12.0732 11.4697 11.7803L8.46967 8.78033C8.17678 8.48744 8.17678 8.01256 8.46967 7.71967C8.76256 7.42678 9.23744 7.42678 9.53033 7.71967L11.25 9.43934V3C11.25 2.58579 11.5858 2.25 12 2.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/inbox-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.inbox_stack />

      <.inbox_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= inbox_stack() %>

      <%= inbox_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def inbox_stack(assigns_or_opts \\ [])

  def inbox_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.5 9.83233V11.625C1.5 12.6605 2.33947 13.5 3.375 13.5H20.625C21.6605 13.5 22.5 12.6605 22.5 11.625V9.83233C22.5 9.11619 22.2438 8.42368 21.7778 7.87995L18.4929 4.04763C17.923 3.38269 17.0909 3 16.2151 3H7.78485C6.90908 3 6.07703 3.38269 5.50708 4.04763L2.22223 7.87995C1.75618 8.42368 1.5 9.1162 1.5 9.83233ZM7.78485 4.5C7.34697 4.5 6.93094 4.69134 6.64597 5.02381L3.88067 8.25H7.04584C8.0489 8.25 8.98559 8.7513 9.54199 9.5859L9.70609 9.83205C9.98429 10.2493 10.4526 10.5 10.9542 10.5H13.0458C13.5474 10.5 14.0157 10.2493 14.2939 9.83205L14.458 9.5859C15.0144 8.7513 15.9511 8.25 16.9542 8.25H20.1193L17.354 5.02381C17.0691 4.69134 16.653 4.5 16.2151 4.5H7.78485Z" fill="#0F172A"/>
    <path d="M2.8125 15C2.08763 15 1.5 15.5876 1.5 16.3125V18C1.5 19.6569 2.84315 21 4.5 21H19.5C21.1569 21 22.5 19.6569 22.5 18V16.3125C22.5 15.5876 21.9124 15 21.1875 15H16.9542C15.9511 15 15.0144 15.5013 14.458 16.3359L14.2939 16.5821C14.0157 16.9993 13.5474 17.25 13.0458 17.25H10.9542C10.4526 17.25 9.98429 16.9993 9.70609 16.582L9.54199 16.3359C8.98559 15.5013 8.0489 15 7.04584 15H2.8125Z" fill="#0F172A"/>
    </svg>
    """
  end

  def inbox_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.5 9.83233V11.625C1.5 12.6605 2.33947 13.5 3.375 13.5H20.625C21.6605 13.5 22.5 12.6605 22.5 11.625V9.83233C22.5 9.11619 22.2438 8.42368 21.7778 7.87995L18.4929 4.04763C17.923 3.38269 17.0909 3 16.2151 3H7.78485C6.90908 3 6.07703 3.38269 5.50708 4.04763L2.22223 7.87995C1.75618 8.42368 1.5 9.1162 1.5 9.83233ZM7.78485 4.5C7.34697 4.5 6.93094 4.69134 6.64597 5.02381L3.88067 8.25H7.04584C8.0489 8.25 8.98559 8.7513 9.54199 9.5859L9.70609 9.83205C9.98429 10.2493 10.4526 10.5 10.9542 10.5H13.0458C13.5474 10.5 14.0157 10.2493 14.2939 9.83205L14.458 9.5859C15.0144 8.7513 15.9511 8.25 16.9542 8.25H20.1193L17.354 5.02381C17.0691 4.69134 16.653 4.5 16.2151 4.5H7.78485Z\" fill=\"#0F172A\"/>\n<path d=\"M2.8125 15C2.08763 15 1.5 15.5876 1.5 16.3125V18C1.5 19.6569 2.84315 21 4.5 21H19.5C21.1569 21 22.5 19.6569 22.5 18V16.3125C22.5 15.5876 21.9124 15 21.1875 15H16.9542C15.9511 15 15.0144 15.5013 14.458 16.3359L14.2939 16.5821C14.0157 16.9993 13.5474 17.25 13.0458 17.25H10.9542C10.4526 17.25 9.98429 16.9993 9.70609 16.582L9.54199 16.3359C8.98559 15.5013 8.0489 15 7.04584 15H2.8125Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/inbox.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.inbox />

      <.inbox class="h-6 w-6 text-gray-500" />

  or as a function

      <%= inbox() %>

      <%= inbox(class: "h-6 w-6 text-gray-500") %>
  """
  def inbox(assigns_or_opts \\ [])

  def inbox(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6.91179 3C5.59478 3 4.43177 3.85897 4.04446 5.11774L1.63266 12.9561C1.54472 13.2419 1.5 13.5393 1.5 13.8383V18C1.5 19.6569 2.84315 21 4.5 21H19.5C21.1569 21 22.5 19.6569 22.5 18V13.8383C22.5 13.5393 22.4553 13.2419 22.3673 12.9561L19.9555 5.11774C19.5682 3.85897 18.4052 3 17.0882 3H6.91179ZM20.7345 12.75L18.5219 5.55887C18.3282 4.92948 17.7467 4.5 17.0882 4.5H6.91179C6.25329 4.5 5.67178 4.92948 5.47812 5.55887L3.26547 12.75H6.10942C7.24574 12.75 8.28453 13.392 8.79271 14.4084L9.04894 14.9208C9.30302 15.429 9.82242 15.75 10.3906 15.75H13.6094C14.1776 15.75 14.697 15.429 14.9511 14.9208L15.2073 14.4084C15.7155 13.392 16.7543 12.75 17.8906 12.75H20.7345Z" fill="#0F172A"/>
    </svg>
    """
  end

  def inbox(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6.91179 3C5.59478 3 4.43177 3.85897 4.04446 5.11774L1.63266 12.9561C1.54472 13.2419 1.5 13.5393 1.5 13.8383V18C1.5 19.6569 2.84315 21 4.5 21H19.5C21.1569 21 22.5 19.6569 22.5 18V13.8383C22.5 13.5393 22.4553 13.2419 22.3673 12.9561L19.9555 5.11774C19.5682 3.85897 18.4052 3 17.0882 3H6.91179ZM20.7345 12.75L18.5219 5.55887C18.3282 4.92948 17.7467 4.5 17.0882 4.5H6.91179C6.25329 4.5 5.67178 4.92948 5.47812 5.55887L3.26547 12.75H6.10942C7.24574 12.75 8.28453 13.392 8.79271 14.4084L9.04894 14.9208C9.30302 15.429 9.82242 15.75 10.3906 15.75H13.6094C14.1776 15.75 14.697 15.429 14.9511 14.9208L15.2073 14.4084C15.7155 13.392 16.7543 12.75 17.8906 12.75H20.7345Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/information-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.information_circle />

      <.information_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= information_circle() %>

      <%= information_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def information_circle(assigns_or_opts \\ [])

  def information_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 12C2.25 6.61522 6.61522 2.25 12 2.25C17.3848 2.25 21.75 6.61522 21.75 12C21.75 17.3848 17.3848 21.75 12 21.75C6.61522 21.75 2.25 17.3848 2.25 12ZM10.9562 10.5584C12.1025 9.98533 13.3931 11.0206 13.0823 12.2639L12.3733 15.0999L12.4148 15.0792C12.7852 14.894 13.2357 15.0441 13.421 15.4146C13.6062 15.7851 13.4561 16.2356 13.0856 16.4208L13.0441 16.4416C11.8979 17.0147 10.6072 15.9794 10.9181 14.7361L11.6271 11.9001L11.5856 11.9208C11.2151 12.1061 10.7646 11.9559 10.5793 11.5854C10.3941 11.2149 10.5443 10.7644 10.9148 10.5792L10.9562 10.5584ZM12 9C12.4142 9 12.75 8.66421 12.75 8.25C12.75 7.83579 12.4142 7.5 12 7.5C11.5858 7.5 11.25 7.83579 11.25 8.25C11.25 8.66421 11.5858 9 12 9Z" fill="#0F172A"/>
    </svg>
    """
  end

  def information_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.25 12C2.25 6.61522 6.61522 2.25 12 2.25C17.3848 2.25 21.75 6.61522 21.75 12C21.75 17.3848 17.3848 21.75 12 21.75C6.61522 21.75 2.25 17.3848 2.25 12ZM10.9562 10.5584C12.1025 9.98533 13.3931 11.0206 13.0823 12.2639L12.3733 15.0999L12.4148 15.0792C12.7852 14.894 13.2357 15.0441 13.421 15.4146C13.6062 15.7851 13.4561 16.2356 13.0856 16.4208L13.0441 16.4416C11.8979 17.0147 10.6072 15.9794 10.9181 14.7361L11.6271 11.9001L11.5856 11.9208C11.2151 12.1061 10.7646 11.9559 10.5793 11.5854C10.3941 11.2149 10.5443 10.7644 10.9148 10.5792L10.9562 10.5584ZM12 9C12.4142 9 12.75 8.66421 12.75 8.25C12.75 7.83579 12.4142 7.5 12 7.5C11.5858 7.5 11.25 7.83579 11.25 8.25C11.25 8.66421 11.5858 9 12 9Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/key.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.key />

      <.key class="h-6 w-6 text-gray-500" />

  or as a function

      <%= key() %>

      <%= key(class: "h-6 w-6 text-gray-500") %>
  """
  def key(assigns_or_opts \\ [])

  def key(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15.75 1.5C12.0221 1.5 9 4.52208 9 8.25C9 8.64372 9.03379 9.03016 9.0988 9.40639C9.16599 9.79527 9.06678 10.1226 8.87767 10.3117L2.37868 16.8107C1.81607 17.3733 1.5 18.1363 1.5 18.932V21.75C1.5 22.1642 1.83579 22.5 2.25 22.5H6C6.41421 22.5 6.75 22.1642 6.75 21.75V20.25H8.25C8.66421 20.25 9 19.9142 9 19.5V18H10.5C10.6989 18 10.8897 17.921 11.0303 17.7803L13.6883 15.1223C13.8774 14.9332 14.2047 14.834 14.5936 14.9012C14.9698 14.9662 15.3563 15 15.75 15C19.4779 15 22.5 11.9779 22.5 8.25C22.5 4.52208 19.4779 1.5 15.75 1.5ZM15.75 4.5C15.3358 4.5 15 4.83579 15 5.25C15 5.66421 15.3358 6 15.75 6C16.9926 6 18 7.00736 18 8.25C18 8.66421 18.3358 9 18.75 9C19.1642 9 19.5 8.66421 19.5 8.25C19.5 6.17893 17.8211 4.5 15.75 4.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def key(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15.75 1.5C12.0221 1.5 9 4.52208 9 8.25C9 8.64372 9.03379 9.03016 9.0988 9.40639C9.16599 9.79527 9.06678 10.1226 8.87767 10.3117L2.37868 16.8107C1.81607 17.3733 1.5 18.1363 1.5 18.932V21.75C1.5 22.1642 1.83579 22.5 2.25 22.5H6C6.41421 22.5 6.75 22.1642 6.75 21.75V20.25H8.25C8.66421 20.25 9 19.9142 9 19.5V18H10.5C10.6989 18 10.8897 17.921 11.0303 17.7803L13.6883 15.1223C13.8774 14.9332 14.2047 14.834 14.5936 14.9012C14.9698 14.9662 15.3563 15 15.75 15C19.4779 15 22.5 11.9779 22.5 8.25C22.5 4.52208 19.4779 1.5 15.75 1.5ZM15.75 4.5C15.3358 4.5 15 4.83579 15 5.25C15 5.66421 15.3358 6 15.75 6C16.9926 6 18 7.00736 18 8.25C18 8.66421 18.3358 9 18.75 9C19.1642 9 19.5 8.66421 19.5 8.25C19.5 6.17893 17.8211 4.5 15.75 4.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/language.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.language />

      <.language class="h-6 w-6 text-gray-500" />

  or as a function

      <%= language() %>

      <%= language(class: "h-6 w-6 text-gray-500") %>
  """
  def language(assigns_or_opts \\ [])

  def language(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.00004 2.25C9.41425 2.25 9.75004 2.58579 9.75004 3V4.50565C10.6344 4.519 11.5132 4.55589 12.3856 4.61576C13.2951 4.67816 14.1977 4.7655 15.0928 4.87713C15.5039 4.92838 15.7955 5.30314 15.7443 5.71417C15.693 6.1252 15.3183 6.41685 14.9072 6.3656C14.2477 6.28336 13.5839 6.21471 12.9162 6.15993C12.3254 8.46971 11.3061 10.6074 9.94797 12.4834C10.2648 12.8666 10.5979 13.236 10.9462 13.5905C11.2366 13.8859 11.2324 14.3607 10.937 14.6511C10.6416 14.9414 10.1667 14.9373 9.87639 14.6419C9.57352 14.3337 9.2812 14.015 9.00003 13.6866C7.4289 15.522 5.50944 17.0501 3.34426 18.1686C2.97625 18.3587 2.52381 18.2145 2.3337 17.8465C2.14358 17.4785 2.2878 17.026 2.65581 16.8359C4.7376 15.7605 6.57216 14.2737 8.05211 12.4834C7.18602 11.2869 6.4576 9.984 5.89024 8.59774C5.73335 8.21439 5.91693 7.77643 6.30028 7.61954C6.68363 7.46265 7.12158 7.64623 7.27848 8.02957C7.74079 9.15919 8.3196 10.229 9.00003 11.2242C10.0649 9.66674 10.881 7.92604 11.3912 6.05944C10.5992 6.01997 9.80199 6 9.00004 6C6.99917 6 5.02769 6.12433 3.09284 6.3656C2.68181 6.41685 2.30705 6.1252 2.2558 5.71417C2.20454 5.30314 2.4962 4.92838 2.90723 4.87713C4.66117 4.65841 6.44383 4.5329 8.25004 4.50565V3C8.25004 2.58579 8.58582 2.25 9.00004 2.25ZM15.75 9C16.0414 9 16.3064 9.16878 16.4297 9.43284L21.6797 20.6828C21.8548 21.0582 21.6926 21.5045 21.3172 21.6796C20.9418 21.8548 20.4956 21.6925 20.3204 21.3172L19.1224 18.75H12.3777L11.1797 21.3172C11.0045 21.6925 10.5582 21.8548 10.1829 21.6796C9.80752 21.5045 9.64523 21.0582 9.8204 20.6828L15.0704 9.43284C15.1936 9.16878 15.4586 9 15.75 9ZM13.0777 17.25H18.4224L15.75 11.5235L13.0777 17.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def language(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.00004 2.25C9.41425 2.25 9.75004 2.58579 9.75004 3V4.50565C10.6344 4.519 11.5132 4.55589 12.3856 4.61576C13.2951 4.67816 14.1977 4.7655 15.0928 4.87713C15.5039 4.92838 15.7955 5.30314 15.7443 5.71417C15.693 6.1252 15.3183 6.41685 14.9072 6.3656C14.2477 6.28336 13.5839 6.21471 12.9162 6.15993C12.3254 8.46971 11.3061 10.6074 9.94797 12.4834C10.2648 12.8666 10.5979 13.236 10.9462 13.5905C11.2366 13.8859 11.2324 14.3607 10.937 14.6511C10.6416 14.9414 10.1667 14.9373 9.87639 14.6419C9.57352 14.3337 9.2812 14.015 9.00003 13.6866C7.4289 15.522 5.50944 17.0501 3.34426 18.1686C2.97625 18.3587 2.52381 18.2145 2.3337 17.8465C2.14358 17.4785 2.2878 17.026 2.65581 16.8359C4.7376 15.7605 6.57216 14.2737 8.05211 12.4834C7.18602 11.2869 6.4576 9.984 5.89024 8.59774C5.73335 8.21439 5.91693 7.77643 6.30028 7.61954C6.68363 7.46265 7.12158 7.64623 7.27848 8.02957C7.74079 9.15919 8.3196 10.229 9.00003 11.2242C10.0649 9.66674 10.881 7.92604 11.3912 6.05944C10.5992 6.01997 9.80199 6 9.00004 6C6.99917 6 5.02769 6.12433 3.09284 6.3656C2.68181 6.41685 2.30705 6.1252 2.2558 5.71417C2.20454 5.30314 2.4962 4.92838 2.90723 4.87713C4.66117 4.65841 6.44383 4.5329 8.25004 4.50565V3C8.25004 2.58579 8.58582 2.25 9.00004 2.25ZM15.75 9C16.0414 9 16.3064 9.16878 16.4297 9.43284L21.6797 20.6828C21.8548 21.0582 21.6926 21.5045 21.3172 21.6796C20.9418 21.8548 20.4956 21.6925 20.3204 21.3172L19.1224 18.75H12.3777L11.1797 21.3172C11.0045 21.6925 10.5582 21.8548 10.1829 21.6796C9.80752 21.5045 9.64523 21.0582 9.8204 20.6828L15.0704 9.43284C15.1936 9.16878 15.4586 9 15.75 9ZM13.0777 17.25H18.4224L15.75 11.5235L13.0777 17.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/lifebuoy.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.lifebuoy />

      <.lifebuoy class="h-6 w-6 text-gray-500" />

  or as a function

      <%= lifebuoy() %>

      <%= lifebuoy(class: "h-6 w-6 text-gray-500") %>
  """
  def lifebuoy(assigns_or_opts \\ [])

  def lifebuoy(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M19.449 8.44818L16.3878 10.9992C16.5374 11.6574 16.5374 12.3426 16.3878 13.0008L19.449 15.5518C20.517 13.3118 20.517 10.6882 19.449 8.44818ZM15.5518 19.449L13.0008 16.3878C12.3426 16.5374 11.6574 16.5374 10.9992 16.3878L8.44818 19.449C10.6882 20.517 13.3118 20.517 15.5518 19.449ZM4.55102 15.5518L7.6122 13.0008C7.4626 12.3426 7.4626 11.6574 7.6122 10.9992L4.55102 8.44818C3.48299 10.6882 3.48299 13.3118 4.55102 15.5518ZM8.44818 4.55102L10.9992 7.6122C11.6574 7.4626 12.3426 7.4626 13.0008 7.6122L15.5518 4.55102C13.3118 3.48299 10.6882 3.48299 8.44818 4.55102ZM17.1055 3.6912C17.7424 4.08325 18.3435 4.55493 18.8943 5.10571C19.4451 5.65649 19.9167 6.25755 20.3088 6.89448C22.2304 10.0163 22.2304 13.9837 20.3088 17.1055C19.9167 17.7424 19.4451 18.3435 18.8943 18.8943C18.3435 19.4451 17.7424 19.9167 17.1055 20.3088C13.9837 22.2304 10.0163 22.2304 6.89448 20.3088C6.25755 19.9167 5.65649 19.4451 5.10571 18.8943C4.55493 18.3435 4.08325 17.7424 3.6912 17.1055C1.7696 13.9837 1.7696 10.0163 3.6912 6.89448C4.08325 6.25755 4.55493 5.65649 5.10571 5.10571C5.65649 4.55493 6.25755 4.08325 6.89448 3.6912C10.0163 1.7696 13.9837 1.7696 17.1055 3.6912ZM14.1213 9.87868C13.7958 9.55313 13.4158 9.31907 13.0115 9.17471C12.359 8.94176 11.641 8.94176 10.9885 9.17471C10.5842 9.31907 10.2042 9.55313 9.87868 9.87868C9.55313 10.2042 9.31907 10.5842 9.17471 10.9885C8.94176 11.641 8.94176 12.359 9.17471 13.0115C9.31907 13.4158 9.55313 13.7958 9.87868 14.1213C10.2042 14.4469 10.5842 14.6809 10.9885 14.8253C11.641 15.0582 12.359 15.0582 13.0115 14.8253C13.4158 14.6809 13.7958 14.4469 14.1213 14.1213C14.4469 13.7958 14.6809 13.4158 14.8253 13.0115C15.0582 12.359 15.0582 11.641 14.8253 10.9885C14.6809 10.5842 14.4469 10.2042 14.1213 9.87868Z" fill="#0F172A"/>
    </svg>
    """
  end

  def lifebuoy(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M19.449 8.44818L16.3878 10.9992C16.5374 11.6574 16.5374 12.3426 16.3878 13.0008L19.449 15.5518C20.517 13.3118 20.517 10.6882 19.449 8.44818ZM15.5518 19.449L13.0008 16.3878C12.3426 16.5374 11.6574 16.5374 10.9992 16.3878L8.44818 19.449C10.6882 20.517 13.3118 20.517 15.5518 19.449ZM4.55102 15.5518L7.6122 13.0008C7.4626 12.3426 7.4626 11.6574 7.6122 10.9992L4.55102 8.44818C3.48299 10.6882 3.48299 13.3118 4.55102 15.5518ZM8.44818 4.55102L10.9992 7.6122C11.6574 7.4626 12.3426 7.4626 13.0008 7.6122L15.5518 4.55102C13.3118 3.48299 10.6882 3.48299 8.44818 4.55102ZM17.1055 3.6912C17.7424 4.08325 18.3435 4.55493 18.8943 5.10571C19.4451 5.65649 19.9167 6.25755 20.3088 6.89448C22.2304 10.0163 22.2304 13.9837 20.3088 17.1055C19.9167 17.7424 19.4451 18.3435 18.8943 18.8943C18.3435 19.4451 17.7424 19.9167 17.1055 20.3088C13.9837 22.2304 10.0163 22.2304 6.89448 20.3088C6.25755 19.9167 5.65649 19.4451 5.10571 18.8943C4.55493 18.3435 4.08325 17.7424 3.6912 17.1055C1.7696 13.9837 1.7696 10.0163 3.6912 6.89448C4.08325 6.25755 4.55493 5.65649 5.10571 5.10571C5.65649 4.55493 6.25755 4.08325 6.89448 3.6912C10.0163 1.7696 13.9837 1.7696 17.1055 3.6912ZM14.1213 9.87868C13.7958 9.55313 13.4158 9.31907 13.0115 9.17471C12.359 8.94176 11.641 8.94176 10.9885 9.17471C10.5842 9.31907 10.2042 9.55313 9.87868 9.87868C9.55313 10.2042 9.31907 10.5842 9.17471 10.9885C8.94176 11.641 8.94176 12.359 9.17471 13.0115C9.31907 13.4158 9.55313 13.7958 9.87868 14.1213C10.2042 14.4469 10.5842 14.6809 10.9885 14.8253C11.641 15.0582 12.359 15.0582 13.0115 14.8253C13.4158 14.6809 13.7958 14.4469 14.1213 14.1213C14.4469 13.7958 14.6809 13.4158 14.8253 13.0115C15.0582 12.359 15.0582 11.641 14.8253 10.9885C14.6809 10.5842 14.4469 10.2042 14.1213 9.87868Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/light-bulb.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.light_bulb />

      <.light_bulb class="h-6 w-6 text-gray-500" />

  or as a function

      <%= light_bulb() %>

      <%= light_bulb(class: "h-6 w-6 text-gray-500") %>
  """
  def light_bulb(assigns_or_opts \\ [])

  def light_bulb(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M12 0.75C7.44365 0.75 3.75 4.44365 3.75 9C3.75 12.0508 5.40631 14.7138 7.86516 16.1405C8.55062 16.5382 8.97985 17.1484 8.99928 17.7626C9.00999 18.1013 9.24656 18.3908 9.5764 18.4687C9.92778 18.5518 10.2859 18.6171 10.6496 18.6639C10.9732 18.7055 11.2502 18.4462 11.2502 18.12V13.4589C10.9309 13.4236 10.618 13.366 10.3132 13.2875C9.9121 13.1843 9.67061 12.7754 9.77385 12.3743C9.8771 11.9731 10.286 11.7316 10.6871 11.8349C11.1059 11.9427 11.5458 12.0002 12.0002 12.0002C12.4546 12.0002 12.8944 11.9427 13.3132 11.8349C13.7144 11.7316 14.1233 11.9731 14.2265 12.3743C14.3298 12.7754 14.0883 13.1843 13.6871 13.2875C13.3823 13.366 13.0695 13.4236 12.7502 13.4589V18.1199C12.7502 18.4462 13.0272 18.7054 13.3508 18.6638C13.7144 18.6171 14.0723 18.5518 14.4236 18.4687C14.7534 18.3908 14.99 18.1013 15.0007 17.7626C15.0201 17.1484 15.4494 16.5382 16.1348 16.1405C18.5937 14.7138 20.25 12.0508 20.25 9C20.25 4.44365 16.5563 0.75 12 0.75Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.01314 19.8997C9.09034 19.4927 9.48282 19.2254 9.88978 19.3026C10.5727 19.4321 11.2781 19.5 12 19.5C12.7219 19.5 13.4273 19.4321 14.1102 19.3026C14.5172 19.2254 14.9097 19.4927 14.9869 19.8997C15.0641 20.3066 14.7967 20.6991 14.3898 20.7763C13.6151 20.9232 12.8162 21 12 21C11.1838 21 10.3849 20.9232 9.61022 20.7763C9.20327 20.6991 8.93594 20.3066 9.01314 19.8997Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.75407 22.344C9.79717 21.932 10.1661 21.633 10.578 21.6761C11.0451 21.7249 11.5195 21.75 12 21.75C12.4805 21.75 12.9549 21.7249 13.422 21.6761C13.8339 21.633 14.2028 21.932 14.2459 22.344C14.289 22.7559 13.99 23.1248 13.578 23.1679C13.0592 23.2222 12.5327 23.25 12 23.25C11.4673 23.25 10.9408 23.2222 10.422 23.1679C10.01 23.1248 9.71097 22.7559 9.75407 22.344Z" fill="#0F172A"/>
    </svg>
    """
  end

  def light_bulb(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M12 0.75C7.44365 0.75 3.75 4.44365 3.75 9C3.75 12.0508 5.40631 14.7138 7.86516 16.1405C8.55062 16.5382 8.97985 17.1484 8.99928 17.7626C9.00999 18.1013 9.24656 18.3908 9.5764 18.4687C9.92778 18.5518 10.2859 18.6171 10.6496 18.6639C10.9732 18.7055 11.2502 18.4462 11.2502 18.12V13.4589C10.9309 13.4236 10.618 13.366 10.3132 13.2875C9.9121 13.1843 9.67061 12.7754 9.77385 12.3743C9.8771 11.9731 10.286 11.7316 10.6871 11.8349C11.1059 11.9427 11.5458 12.0002 12.0002 12.0002C12.4546 12.0002 12.8944 11.9427 13.3132 11.8349C13.7144 11.7316 14.1233 11.9731 14.2265 12.3743C14.3298 12.7754 14.0883 13.1843 13.6871 13.2875C13.3823 13.366 13.0695 13.4236 12.7502 13.4589V18.1199C12.7502 18.4462 13.0272 18.7054 13.3508 18.6638C13.7144 18.6171 14.0723 18.5518 14.4236 18.4687C14.7534 18.3908 14.99 18.1013 15.0007 17.7626C15.0201 17.1484 15.4494 16.5382 16.1348 16.1405C18.5937 14.7138 20.25 12.0508 20.25 9C20.25 4.44365 16.5563 0.75 12 0.75Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.01314 19.8997C9.09034 19.4927 9.48282 19.2254 9.88978 19.3026C10.5727 19.4321 11.2781 19.5 12 19.5C12.7219 19.5 13.4273 19.4321 14.1102 19.3026C14.5172 19.2254 14.9097 19.4927 14.9869 19.8997C15.0641 20.3066 14.7967 20.6991 14.3898 20.7763C13.6151 20.9232 12.8162 21 12 21C11.1838 21 10.3849 20.9232 9.61022 20.7763C9.20327 20.6991 8.93594 20.3066 9.01314 19.8997Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.75407 22.344C9.79717 21.932 10.1661 21.633 10.578 21.6761C11.0451 21.7249 11.5195 21.75 12 21.75C12.4805 21.75 12.9549 21.7249 13.422 21.6761C13.8339 21.633 14.2028 21.932 14.2459 22.344C14.289 22.7559 13.99 23.1248 13.578 23.1679C13.0592 23.2222 12.5327 23.25 12 23.25C11.4673 23.25 10.9408 23.2222 10.422 23.1679C10.01 23.1248 9.71097 22.7559 9.75407 22.344Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/link.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.link />

      <.link class="h-6 w-6 text-gray-500" />

  or as a function

      <%= link() %>

      <%= link(class: "h-6 w-6 text-gray-500") %>
  """
  def link(assigns_or_opts \\ [])

  def link(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M19.9017 4.09835C18.4372 2.63388 16.0628 2.63388 14.5984 4.09835L10.0983 8.59835C8.63388 10.0628 8.63388 12.4372 10.0983 13.9017C10.4092 14.2125 10.7598 14.4565 11.133 14.6348C11.5068 14.8134 11.665 15.2611 11.4865 15.6349C11.3079 16.0086 10.8602 16.1669 10.4865 15.9883C9.96169 15.7376 9.47063 15.3953 9.03769 14.9623C6.98744 12.9121 6.98744 9.58794 9.03769 7.53769L13.5377 3.03769C15.5879 0.987437 18.9121 0.987437 20.9623 3.03769C23.0126 5.08794 23.0126 8.41206 20.9623 10.4623L19.2053 12.2193C18.9124 12.5122 18.4376 12.5122 18.1447 12.2193C17.8518 11.9264 17.8518 11.4515 18.1447 11.1586L19.9017 9.40165C21.3661 7.93718 21.3661 5.56282 19.9017 4.09835ZM12.5135 8.36513C12.6921 7.99138 13.1398 7.83313 13.5135 8.01167C14.0383 8.26236 14.5294 8.60475 14.9623 9.03769C17.0126 11.0879 17.0126 14.4121 14.9623 16.4623L10.4623 20.9623C8.41206 23.0126 5.08794 23.0126 3.03769 20.9623C0.987437 18.9121 0.987437 15.5879 3.03769 13.5377L4.79466 11.7807C5.08755 11.4878 5.56243 11.4878 5.85532 11.7807C6.14821 12.0736 6.14821 12.5485 5.85532 12.8414L4.09835 14.5984C2.63388 16.0628 2.63388 18.4372 4.09835 19.9017C5.56282 21.3661 7.93718 21.3661 9.40165 19.9017L13.9017 15.4016C15.3661 13.9372 15.3661 11.5628 13.9017 10.0983C13.5908 9.78748 13.2402 9.54347 12.867 9.36517C12.4932 9.18662 12.335 8.73889 12.5135 8.36513Z" fill="#0F172A"/>
    </svg>
    """
  end

  def link(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M19.9017 4.09835C18.4372 2.63388 16.0628 2.63388 14.5984 4.09835L10.0983 8.59835C8.63388 10.0628 8.63388 12.4372 10.0983 13.9017C10.4092 14.2125 10.7598 14.4565 11.133 14.6348C11.5068 14.8134 11.665 15.2611 11.4865 15.6349C11.3079 16.0086 10.8602 16.1669 10.4865 15.9883C9.96169 15.7376 9.47063 15.3953 9.03769 14.9623C6.98744 12.9121 6.98744 9.58794 9.03769 7.53769L13.5377 3.03769C15.5879 0.987437 18.9121 0.987437 20.9623 3.03769C23.0126 5.08794 23.0126 8.41206 20.9623 10.4623L19.2053 12.2193C18.9124 12.5122 18.4376 12.5122 18.1447 12.2193C17.8518 11.9264 17.8518 11.4515 18.1447 11.1586L19.9017 9.40165C21.3661 7.93718 21.3661 5.56282 19.9017 4.09835ZM12.5135 8.36513C12.6921 7.99138 13.1398 7.83313 13.5135 8.01167C14.0383 8.26236 14.5294 8.60475 14.9623 9.03769C17.0126 11.0879 17.0126 14.4121 14.9623 16.4623L10.4623 20.9623C8.41206 23.0126 5.08794 23.0126 3.03769 20.9623C0.987437 18.9121 0.987437 15.5879 3.03769 13.5377L4.79466 11.7807C5.08755 11.4878 5.56243 11.4878 5.85532 11.7807C6.14821 12.0736 6.14821 12.5485 5.85532 12.8414L4.09835 14.5984C2.63388 16.0628 2.63388 18.4372 4.09835 19.9017C5.56282 21.3661 7.93718 21.3661 9.40165 19.9017L13.9017 15.4016C15.3661 13.9372 15.3661 11.5628 13.9017 10.0983C13.5908 9.78748 13.2402 9.54347 12.867 9.36517C12.4932 9.18662 12.335 8.73889 12.5135 8.36513Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/list-bullet.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.list_bullet />

      <.list_bullet class="h-6 w-6 text-gray-500" />

  or as a function

      <%= list_bullet() %>

      <%= list_bullet(class: "h-6 w-6 text-gray-500") %>
  """
  def list_bullet(assigns_or_opts \\ [])

  def list_bullet(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.625 6.75C2.625 6.12868 3.12868 5.625 3.75 5.625C4.37132 5.625 4.875 6.12868 4.875 6.75C4.875 7.37132 4.37132 7.875 3.75 7.875C3.12868 7.875 2.625 7.37132 2.625 6.75ZM7.5 6.75C7.5 6.33579 7.83579 6 8.25 6H20.25C20.6642 6 21 6.33579 21 6.75C21 7.16421 20.6642 7.5 20.25 7.5H8.25C7.83579 7.5 7.5 7.16421 7.5 6.75ZM2.625 12C2.625 11.3787 3.12868 10.875 3.75 10.875C4.37132 10.875 4.875 11.3787 4.875 12C4.875 12.6213 4.37132 13.125 3.75 13.125C3.12868 13.125 2.625 12.6213 2.625 12ZM7.5 12C7.5 11.5858 7.83579 11.25 8.25 11.25H20.25C20.6642 11.25 21 11.5858 21 12C21 12.4142 20.6642 12.75 20.25 12.75H8.25C7.83579 12.75 7.5 12.4142 7.5 12ZM2.625 17.25C2.625 16.6287 3.12868 16.125 3.75 16.125C4.37132 16.125 4.875 16.6287 4.875 17.25C4.875 17.8713 4.37132 18.375 3.75 18.375C3.12868 18.375 2.625 17.8713 2.625 17.25ZM7.5 17.25C7.5 16.8358 7.83579 16.5 8.25 16.5H20.25C20.6642 16.5 21 16.8358 21 17.25C21 17.6642 20.6642 18 20.25 18H8.25C7.83579 18 7.5 17.6642 7.5 17.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def list_bullet(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.625 6.75C2.625 6.12868 3.12868 5.625 3.75 5.625C4.37132 5.625 4.875 6.12868 4.875 6.75C4.875 7.37132 4.37132 7.875 3.75 7.875C3.12868 7.875 2.625 7.37132 2.625 6.75ZM7.5 6.75C7.5 6.33579 7.83579 6 8.25 6H20.25C20.6642 6 21 6.33579 21 6.75C21 7.16421 20.6642 7.5 20.25 7.5H8.25C7.83579 7.5 7.5 7.16421 7.5 6.75ZM2.625 12C2.625 11.3787 3.12868 10.875 3.75 10.875C4.37132 10.875 4.875 11.3787 4.875 12C4.875 12.6213 4.37132 13.125 3.75 13.125C3.12868 13.125 2.625 12.6213 2.625 12ZM7.5 12C7.5 11.5858 7.83579 11.25 8.25 11.25H20.25C20.6642 11.25 21 11.5858 21 12C21 12.4142 20.6642 12.75 20.25 12.75H8.25C7.83579 12.75 7.5 12.4142 7.5 12ZM2.625 17.25C2.625 16.6287 3.12868 16.125 3.75 16.125C4.37132 16.125 4.875 16.6287 4.875 17.25C4.875 17.8713 4.37132 18.375 3.75 18.375C3.12868 18.375 2.625 17.8713 2.625 17.25ZM7.5 17.25C7.5 16.8358 7.83579 16.5 8.25 16.5H20.25C20.6642 16.5 21 16.8358 21 17.25C21 17.6642 20.6642 18 20.25 18H8.25C7.83579 18 7.5 17.6642 7.5 17.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/lock-closed.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.lock_closed />

      <.lock_closed class="h-6 w-6 text-gray-500" />

  or as a function

      <%= lock_closed() %>

      <%= lock_closed(class: "h-6 w-6 text-gray-500") %>
  """
  def lock_closed(assigns_or_opts \\ [])

  def lock_closed(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.5C9.10051 1.5 6.75 3.85051 6.75 6.75V9.75C5.09315 9.75 3.75 11.0931 3.75 12.75V19.5C3.75 21.1569 5.09315 22.5 6.75 22.5H17.25C18.9069 22.5 20.25 21.1569 20.25 19.5V12.75C20.25 11.0931 18.9069 9.75 17.25 9.75V6.75C17.25 3.85051 14.8995 1.5 12 1.5ZM15.75 9.75V6.75C15.75 4.67893 14.0711 3 12 3C9.92893 3 8.25 4.67893 8.25 6.75V9.75H15.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def lock_closed(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 1.5C9.10051 1.5 6.75 3.85051 6.75 6.75V9.75C5.09315 9.75 3.75 11.0931 3.75 12.75V19.5C3.75 21.1569 5.09315 22.5 6.75 22.5H17.25C18.9069 22.5 20.25 21.1569 20.25 19.5V12.75C20.25 11.0931 18.9069 9.75 17.25 9.75V6.75C17.25 3.85051 14.8995 1.5 12 1.5ZM15.75 9.75V6.75C15.75 4.67893 14.0711 3 12 3C9.92893 3 8.25 4.67893 8.25 6.75V9.75H15.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/lock-open.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.lock_open />

      <.lock_open class="h-6 w-6 text-gray-500" />

  or as a function

      <%= lock_open() %>

      <%= lock_open(class: "h-6 w-6 text-gray-500") %>
  """
  def lock_open(assigns_or_opts \\ [])

  def lock_open(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M18 1.5C20.8995 1.5 23.25 3.85051 23.25 6.75V10.5C23.25 10.9142 22.9142 11.25 22.5 11.25C22.0858 11.25 21.75 10.9142 21.75 10.5V6.75C21.75 4.67893 20.0711 3 18 3C15.9289 3 14.25 4.67893 14.25 6.75V9.75C15.9069 9.75 17.25 11.0931 17.25 12.75V19.5C17.25 21.1569 15.9069 22.5 14.25 22.5H3.75C2.09315 22.5 0.75 21.1569 0.75 19.5V12.75C0.75 11.0931 2.09315 9.75 3.75 9.75H12.75V6.75C12.75 3.85051 15.1005 1.5 18 1.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def lock_open(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M18 1.5C20.8995 1.5 23.25 3.85051 23.25 6.75V10.5C23.25 10.9142 22.9142 11.25 22.5 11.25C22.0858 11.25 21.75 10.9142 21.75 10.5V6.75C21.75 4.67893 20.0711 3 18 3C15.9289 3 14.25 4.67893 14.25 6.75V9.75C15.9069 9.75 17.25 11.0931 17.25 12.75V19.5C17.25 21.1569 15.9069 22.5 14.25 22.5H3.75C2.09315 22.5 0.75 21.1569 0.75 19.5V12.75C0.75 11.0931 2.09315 9.75 3.75 9.75H12.75V6.75C12.75 3.85051 15.1005 1.5 18 1.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/magnifying-glass-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.magnifying_glass_circle />

      <.magnifying_glass_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= magnifying_glass_circle() %>

      <%= magnifying_glass_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def magnifying_glass_circle(assigns_or_opts \\ [])

  def magnifying_glass_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M8.25 10.875C8.25 9.42525 9.42525 8.25 10.875 8.25C12.3247 8.25 13.5 9.42525 13.5 10.875C13.5 11.6001 13.207 12.2553 12.7312 12.7312C12.2553 13.207 11.6001 13.5 10.875 13.5C9.42525 13.5 8.25 12.3247 8.25 10.875Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM10.875 6.75C8.59683 6.75 6.75 8.59683 6.75 10.875C6.75 13.1532 8.59683 15 10.875 15C11.7428 15 12.5487 14.7315 13.2131 14.2737L15.2197 16.2803C15.5126 16.5732 15.9874 16.5732 16.2803 16.2803C16.5732 15.9874 16.5732 15.5126 16.2803 15.2197L14.2737 13.2131C14.7315 12.5487 15 11.7428 15 10.875C15 8.59683 13.1532 6.75 10.875 6.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def magnifying_glass_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M8.25 10.875C8.25 9.42525 9.42525 8.25 10.875 8.25C12.3247 8.25 13.5 9.42525 13.5 10.875C13.5 11.6001 13.207 12.2553 12.7312 12.7312C12.2553 13.207 11.6001 13.5 10.875 13.5C9.42525 13.5 8.25 12.3247 8.25 10.875Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM10.875 6.75C8.59683 6.75 6.75 8.59683 6.75 10.875C6.75 13.1532 8.59683 15 10.875 15C11.7428 15 12.5487 14.7315 13.2131 14.2737L15.2197 16.2803C15.5126 16.5732 15.9874 16.5732 16.2803 16.2803C16.5732 15.9874 16.5732 15.5126 16.2803 15.2197L14.2737 13.2131C14.7315 12.5487 15 11.7428 15 10.875C15 8.59683 13.1532 6.75 10.875 6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/magnifying-glass-minus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.magnifying_glass_minus />

      <.magnifying_glass_minus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= magnifying_glass_minus() %>

      <%= magnifying_glass_minus(class: "h-6 w-6 text-gray-500") %>
  """
  def magnifying_glass_minus(assigns_or_opts \\ [])

  def magnifying_glass_minus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.5 3.75C6.77208 3.75 3.75 6.77208 3.75 10.5C3.75 14.2279 6.77208 17.25 10.5 17.25C12.3642 17.25 14.0506 16.4953 15.273 15.273C16.4953 14.0506 17.25 12.3642 17.25 10.5C17.25 6.77208 14.2279 3.75 10.5 3.75ZM2.25 10.5C2.25 5.94365 5.94365 2.25 10.5 2.25C15.0563 2.25 18.75 5.94365 18.75 10.5C18.75 12.5078 18.032 14.3491 16.8399 15.7793L21.5303 20.4697C21.8232 20.7626 21.8232 21.2374 21.5303 21.5303C21.2374 21.8232 20.7626 21.8232 20.4697 21.5303L15.7793 16.8399C14.3491 18.032 12.5078 18.75 10.5 18.75C5.94365 18.75 2.25 15.0563 2.25 10.5ZM6.75 10.5C6.75 10.0858 7.08579 9.75 7.5 9.75H13.5C13.9142 9.75 14.25 10.0858 14.25 10.5C14.25 10.9142 13.9142 11.25 13.5 11.25H7.5C7.08579 11.25 6.75 10.9142 6.75 10.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def magnifying_glass_minus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.5 3.75C6.77208 3.75 3.75 6.77208 3.75 10.5C3.75 14.2279 6.77208 17.25 10.5 17.25C12.3642 17.25 14.0506 16.4953 15.273 15.273C16.4953 14.0506 17.25 12.3642 17.25 10.5C17.25 6.77208 14.2279 3.75 10.5 3.75ZM2.25 10.5C2.25 5.94365 5.94365 2.25 10.5 2.25C15.0563 2.25 18.75 5.94365 18.75 10.5C18.75 12.5078 18.032 14.3491 16.8399 15.7793L21.5303 20.4697C21.8232 20.7626 21.8232 21.2374 21.5303 21.5303C21.2374 21.8232 20.7626 21.8232 20.4697 21.5303L15.7793 16.8399C14.3491 18.032 12.5078 18.75 10.5 18.75C5.94365 18.75 2.25 15.0563 2.25 10.5ZM6.75 10.5C6.75 10.0858 7.08579 9.75 7.5 9.75H13.5C13.9142 9.75 14.25 10.0858 14.25 10.5C14.25 10.9142 13.9142 11.25 13.5 11.25H7.5C7.08579 11.25 6.75 10.9142 6.75 10.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/magnifying-glass-plus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.magnifying_glass_plus />

      <.magnifying_glass_plus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= magnifying_glass_plus() %>

      <%= magnifying_glass_plus(class: "h-6 w-6 text-gray-500") %>
  """
  def magnifying_glass_plus(assigns_or_opts \\ [])

  def magnifying_glass_plus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.5 3.75C6.77208 3.75 3.75 6.77208 3.75 10.5C3.75 14.2279 6.77208 17.25 10.5 17.25C12.3642 17.25 14.0506 16.4953 15.273 15.273C16.4953 14.0506 17.25 12.3642 17.25 10.5C17.25 6.77208 14.2279 3.75 10.5 3.75ZM2.25 10.5C2.25 5.94365 5.94365 2.25 10.5 2.25C15.0563 2.25 18.75 5.94365 18.75 10.5C18.75 12.5078 18.032 14.3491 16.8399 15.7793L21.5303 20.4697C21.8232 20.7626 21.8232 21.2374 21.5303 21.5303C21.2374 21.8232 20.7626 21.8232 20.4697 21.5303L15.7793 16.8399C14.3491 18.032 12.5078 18.75 10.5 18.75C5.94365 18.75 2.25 15.0563 2.25 10.5ZM10.5 6.75C10.9142 6.75 11.25 7.08579 11.25 7.5V9.75H13.5C13.9142 9.75 14.25 10.0858 14.25 10.5C14.25 10.9142 13.9142 11.25 13.5 11.25H11.25V13.5C11.25 13.9142 10.9142 14.25 10.5 14.25C10.0858 14.25 9.75 13.9142 9.75 13.5V11.25H7.5C7.08579 11.25 6.75 10.9142 6.75 10.5C6.75 10.0858 7.08579 9.75 7.5 9.75H9.75V7.5C9.75 7.08579 10.0858 6.75 10.5 6.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def magnifying_glass_plus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.5 3.75C6.77208 3.75 3.75 6.77208 3.75 10.5C3.75 14.2279 6.77208 17.25 10.5 17.25C12.3642 17.25 14.0506 16.4953 15.273 15.273C16.4953 14.0506 17.25 12.3642 17.25 10.5C17.25 6.77208 14.2279 3.75 10.5 3.75ZM2.25 10.5C2.25 5.94365 5.94365 2.25 10.5 2.25C15.0563 2.25 18.75 5.94365 18.75 10.5C18.75 12.5078 18.032 14.3491 16.8399 15.7793L21.5303 20.4697C21.8232 20.7626 21.8232 21.2374 21.5303 21.5303C21.2374 21.8232 20.7626 21.8232 20.4697 21.5303L15.7793 16.8399C14.3491 18.032 12.5078 18.75 10.5 18.75C5.94365 18.75 2.25 15.0563 2.25 10.5ZM10.5 6.75C10.9142 6.75 11.25 7.08579 11.25 7.5V9.75H13.5C13.9142 9.75 14.25 10.0858 14.25 10.5C14.25 10.9142 13.9142 11.25 13.5 11.25H11.25V13.5C11.25 13.9142 10.9142 14.25 10.5 14.25C10.0858 14.25 9.75 13.9142 9.75 13.5V11.25H7.5C7.08579 11.25 6.75 10.9142 6.75 10.5C6.75 10.0858 7.08579 9.75 7.5 9.75H9.75V7.5C9.75 7.08579 10.0858 6.75 10.5 6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/magnifying-glass.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.magnifying_glass />

      <.magnifying_glass class="h-6 w-6 text-gray-500" />

  or as a function

      <%= magnifying_glass() %>

      <%= magnifying_glass(class: "h-6 w-6 text-gray-500") %>
  """
  def magnifying_glass(assigns_or_opts \\ [])

  def magnifying_glass(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.5 3.75C6.77208 3.75 3.75 6.77208 3.75 10.5C3.75 14.2279 6.77208 17.25 10.5 17.25C12.3642 17.25 14.0506 16.4953 15.273 15.273C16.4953 14.0506 17.25 12.3642 17.25 10.5C17.25 6.77208 14.2279 3.75 10.5 3.75ZM2.25 10.5C2.25 5.94365 5.94365 2.25 10.5 2.25C15.0563 2.25 18.75 5.94365 18.75 10.5C18.75 12.5078 18.032 14.3491 16.8399 15.7793L21.5303 20.4697C21.8232 20.7626 21.8232 21.2374 21.5303 21.5303C21.2374 21.8232 20.7626 21.8232 20.4697 21.5303L15.7793 16.8399C14.3491 18.032 12.5078 18.75 10.5 18.75C5.94365 18.75 2.25 15.0563 2.25 10.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def magnifying_glass(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.5 3.75C6.77208 3.75 3.75 6.77208 3.75 10.5C3.75 14.2279 6.77208 17.25 10.5 17.25C12.3642 17.25 14.0506 16.4953 15.273 15.273C16.4953 14.0506 17.25 12.3642 17.25 10.5C17.25 6.77208 14.2279 3.75 10.5 3.75ZM2.25 10.5C2.25 5.94365 5.94365 2.25 10.5 2.25C15.0563 2.25 18.75 5.94365 18.75 10.5C18.75 12.5078 18.032 14.3491 16.8399 15.7793L21.5303 20.4697C21.8232 20.7626 21.8232 21.2374 21.5303 21.5303C21.2374 21.8232 20.7626 21.8232 20.4697 21.5303L15.7793 16.8399C14.3491 18.032 12.5078 18.75 10.5 18.75C5.94365 18.75 2.25 15.0563 2.25 10.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/map-pin.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.map_pin />

      <.map_pin class="h-6 w-6 text-gray-500" />

  or as a function

      <%= map_pin() %>

      <%= map_pin(class: "h-6 w-6 text-gray-500") %>
  """
  def map_pin(assigns_or_opts \\ [])

  def map_pin(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.5397 22.351C11.57 22.3686 11.5937 22.3821 11.6105 22.3915L11.6384 22.4071C11.8613 22.5294 12.1378 22.5285 12.3608 22.4075L12.3895 22.3915C12.4063 22.3821 12.43 22.3686 12.4603 22.351C12.5207 22.316 12.607 22.265 12.7155 22.1982C12.9325 22.0646 13.2388 21.8676 13.6046 21.6091C14.3351 21.0931 15.3097 20.3274 16.2865 19.3273C18.2307 17.3368 20.25 14.3462 20.25 10.5C20.25 5.94365 16.5563 2.25 12 2.25C7.44365 2.25 3.75 5.94365 3.75 10.5C3.75 14.3462 5.76932 17.3368 7.71346 19.3273C8.69025 20.3274 9.66491 21.0931 10.3954 21.6091C10.7612 21.8676 11.0675 22.0646 11.2845 22.1982C11.393 22.265 11.4793 22.316 11.5397 22.351ZM12 13.5C13.6569 13.5 15 12.1569 15 10.5C15 8.84315 13.6569 7.5 12 7.5C10.3431 7.5 9 8.84315 9 10.5C9 12.1569 10.3431 13.5 12 13.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def map_pin(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.5397 22.351C11.57 22.3686 11.5937 22.3821 11.6105 22.3915L11.6384 22.4071C11.8613 22.5294 12.1378 22.5285 12.3608 22.4075L12.3895 22.3915C12.4063 22.3821 12.43 22.3686 12.4603 22.351C12.5207 22.316 12.607 22.265 12.7155 22.1982C12.9325 22.0646 13.2388 21.8676 13.6046 21.6091C14.3351 21.0931 15.3097 20.3274 16.2865 19.3273C18.2307 17.3368 20.25 14.3462 20.25 10.5C20.25 5.94365 16.5563 2.25 12 2.25C7.44365 2.25 3.75 5.94365 3.75 10.5C3.75 14.3462 5.76932 17.3368 7.71346 19.3273C8.69025 20.3274 9.66491 21.0931 10.3954 21.6091C10.7612 21.8676 11.0675 22.0646 11.2845 22.1982C11.393 22.265 11.4793 22.316 11.5397 22.351ZM12 13.5C13.6569 13.5 15 12.1569 15 10.5C15 8.84315 13.6569 7.5 12 7.5C10.3431 7.5 9 8.84315 9 10.5C9 12.1569 10.3431 13.5 12 13.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/map.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.map />

      <.map class="h-6 w-6 text-gray-500" />

  or as a function

      <%= map() %>

      <%= map(class: "h-6 w-6 text-gray-500") %>
  """
  def map(assigns_or_opts \\ [])

  def map(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8.16147 2.58076C8.68934 2.31683 9.31066 2.31683 9.83853 2.58076L14.8323 5.07765C14.9379 5.13043 15.0621 5.13043 15.1677 5.07765L19.0365 3.14326C20.2832 2.51992 21.75 3.42647 21.75 4.82031V17.3047C21.75 18.0149 21.3487 18.6642 20.7135 18.9818L15.8385 21.4193C15.3107 21.6832 14.6893 21.6832 14.1615 21.4193L9.16771 18.9224C9.06213 18.8696 8.93787 18.8696 8.8323 18.9224L4.96353 20.8568C3.71683 21.4801 2.25 20.5736 2.25 19.1797V6.69531C2.25 5.98512 2.65125 5.33587 3.28647 5.01826L8.16147 2.58076ZM9 6.00002C9.41421 6.00002 9.75 6.3358 9.75 6.75002V15C9.75 15.4142 9.41421 15.75 9 15.75C8.58579 15.75 8.25 15.4142 8.25 15V6.75002C8.25 6.3358 8.58579 6.00002 9 6.00002ZM15.75 9.00002C15.75 8.5858 15.4142 8.25002 15 8.25002C14.5858 8.25002 14.25 8.5858 14.25 9.00002V17.25C14.25 17.6642 14.5858 18 15 18C15.4142 18 15.75 17.6642 15.75 17.25V9.00002Z" fill="#0F172A"/>
    </svg>
    """
  end

  def map(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8.16147 2.58076C8.68934 2.31683 9.31066 2.31683 9.83853 2.58076L14.8323 5.07765C14.9379 5.13043 15.0621 5.13043 15.1677 5.07765L19.0365 3.14326C20.2832 2.51992 21.75 3.42647 21.75 4.82031V17.3047C21.75 18.0149 21.3487 18.6642 20.7135 18.9818L15.8385 21.4193C15.3107 21.6832 14.6893 21.6832 14.1615 21.4193L9.16771 18.9224C9.06213 18.8696 8.93787 18.8696 8.8323 18.9224L4.96353 20.8568C3.71683 21.4801 2.25 20.5736 2.25 19.1797V6.69531C2.25 5.98512 2.65125 5.33587 3.28647 5.01826L8.16147 2.58076ZM9 6.00002C9.41421 6.00002 9.75 6.3358 9.75 6.75002V15C9.75 15.4142 9.41421 15.75 9 15.75C8.58579 15.75 8.25 15.4142 8.25 15V6.75002C8.25 6.3358 8.58579 6.00002 9 6.00002ZM15.75 9.00002C15.75 8.5858 15.4142 8.25002 15 8.25002C14.5858 8.25002 14.25 8.5858 14.25 9.00002V17.25C14.25 17.6642 14.5858 18 15 18C15.4142 18 15.75 17.6642 15.75 17.25V9.00002Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/megaphone.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.megaphone />

      <.megaphone class="h-6 w-6 text-gray-500" />

  or as a function

      <%= megaphone() %>

      <%= megaphone(class: "h-6 w-6 text-gray-500") %>
  """
  def megaphone(assigns_or_opts \\ [])

  def megaphone(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M16.8812 4.34562C14.81 5.17419 12.5917 5.71339 10.276 5.9132C9.60847 5.97079 8.93276 6.0002 8.25 6.0002H7.5C4.60051 6.0002 2.25 8.35071 2.25 11.2502C2.25 13.8498 4.13945 16.0081 6.61997 16.4268C6.95424 17.7958 7.41805 19.114 7.99764 20.3676C8.46171 21.3714 9.67181 21.6876 10.5803 21.1631L11.2366 20.7842C12.1167 20.2761 12.4023 19.1915 12.0087 18.3161C11.7738 17.7937 11.5642 17.2576 11.3814 16.7092C13.2988 16.9672 15.1419 17.459 16.8812 18.1548C17.6069 15.9854 18 13.6637 18 11.2502C18 8.83666 17.6069 6.51496 16.8812 4.34562Z" fill="#0F172A"/>
    <path d="M18.2606 3.7409C19.0641 6.0966 19.5 8.62249 19.5 11.2502C19.5 13.8779 19.0641 16.4038 18.2606 18.7595V18.7595C18.2054 18.9212 18.1487 19.0823 18.0901 19.2424C17.9477 19.6314 18.1476 20.0621 18.5366 20.2045C18.9256 20.3469 19.3563 20.147 19.4987 19.758C19.6387 19.3755 19.7696 18.9886 19.891 18.5975C20.4147 16.9107 20.7627 15.147 20.914 13.328C21.431 12.7895 21.75 12.0569 21.75 11.2502C21.75 10.4436 21.431 9.71091 20.914 9.17246C20.7627 7.35338 20.4147 5.58966 19.891 3.90292C19.7696 3.51183 19.6387 3.1249 19.4987 2.7424C19.3563 2.35342 18.9256 2.15352 18.5366 2.29591C18.1476 2.43829 17.9477 2.86904 18.0901 3.25801C18.1487 3.41813 18.2055 3.57916 18.2606 3.7409V3.7409Z" fill="#0F172A"/>
    </svg>
    """
  end

  def megaphone(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M16.8812 4.34562C14.81 5.17419 12.5917 5.71339 10.276 5.9132C9.60847 5.97079 8.93276 6.0002 8.25 6.0002H7.5C4.60051 6.0002 2.25 8.35071 2.25 11.2502C2.25 13.8498 4.13945 16.0081 6.61997 16.4268C6.95424 17.7958 7.41805 19.114 7.99764 20.3676C8.46171 21.3714 9.67181 21.6876 10.5803 21.1631L11.2366 20.7842C12.1167 20.2761 12.4023 19.1915 12.0087 18.3161C11.7738 17.7937 11.5642 17.2576 11.3814 16.7092C13.2988 16.9672 15.1419 17.459 16.8812 18.1548C17.6069 15.9854 18 13.6637 18 11.2502C18 8.83666 17.6069 6.51496 16.8812 4.34562Z\" fill=\"#0F172A\"/>\n<path d=\"M18.2606 3.7409C19.0641 6.0966 19.5 8.62249 19.5 11.2502C19.5 13.8779 19.0641 16.4038 18.2606 18.7595V18.7595C18.2054 18.9212 18.1487 19.0823 18.0901 19.2424C17.9477 19.6314 18.1476 20.0621 18.5366 20.2045C18.9256 20.3469 19.3563 20.147 19.4987 19.758C19.6387 19.3755 19.7696 18.9886 19.891 18.5975C20.4147 16.9107 20.7627 15.147 20.914 13.328C21.431 12.7895 21.75 12.0569 21.75 11.2502C21.75 10.4436 21.431 9.71091 20.914 9.17246C20.7627 7.35338 20.4147 5.58966 19.891 3.90292C19.7696 3.51183 19.6387 3.1249 19.4987 2.7424C19.3563 2.35342 18.9256 2.15352 18.5366 2.29591C18.1476 2.43829 17.9477 2.86904 18.0901 3.25801C18.1487 3.41813 18.2055 3.57916 18.2606 3.7409V3.7409Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/microphone.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.microphone />

      <.microphone class="h-6 w-6 text-gray-500" />

  or as a function

      <%= microphone() %>

      <%= microphone(class: "h-6 w-6 text-gray-500") %>
  """
  def microphone(assigns_or_opts \\ [])

  def microphone(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M8.25 4.5C8.25 2.42893 9.92893 0.75 12 0.75C14.0711 0.75 15.75 2.42893 15.75 4.5V12.75C15.75 14.8211 14.0711 16.5 12 16.5C9.92893 16.5 8.25 14.8211 8.25 12.75V4.5Z" fill="#0F172A"/>
    <path d="M6 10.5C6.41421 10.5 6.75 10.8358 6.75 11.25V12.75C6.75 15.6495 9.1005 18 12 18C14.8995 18 17.25 15.6495 17.25 12.75V11.25C17.25 10.8358 17.5858 10.5 18 10.5C18.4142 10.5 18.75 10.8358 18.75 11.25V12.75C18.75 16.2244 16.125 19.0857 12.75 19.4588V21.75H15.75C16.1642 21.75 16.5 22.0858 16.5 22.5C16.5 22.9142 16.1642 23.25 15.75 23.25H8.25C7.83579 23.25 7.5 22.9142 7.5 22.5C7.5 22.0858 7.83579 21.75 8.25 21.75H11.25V19.4588C7.87504 19.0857 5.25 16.2244 5.25 12.75V11.25C5.25 10.8358 5.58579 10.5 6 10.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def microphone(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M8.25 4.5C8.25 2.42893 9.92893 0.75 12 0.75C14.0711 0.75 15.75 2.42893 15.75 4.5V12.75C15.75 14.8211 14.0711 16.5 12 16.5C9.92893 16.5 8.25 14.8211 8.25 12.75V4.5Z\" fill=\"#0F172A\"/>\n<path d=\"M6 10.5C6.41421 10.5 6.75 10.8358 6.75 11.25V12.75C6.75 15.6495 9.1005 18 12 18C14.8995 18 17.25 15.6495 17.25 12.75V11.25C17.25 10.8358 17.5858 10.5 18 10.5C18.4142 10.5 18.75 10.8358 18.75 11.25V12.75C18.75 16.2244 16.125 19.0857 12.75 19.4588V21.75H15.75C16.1642 21.75 16.5 22.0858 16.5 22.5C16.5 22.9142 16.1642 23.25 15.75 23.25H8.25C7.83579 23.25 7.5 22.9142 7.5 22.5C7.5 22.0858 7.83579 21.75 8.25 21.75H11.25V19.4588C7.87504 19.0857 5.25 16.2244 5.25 12.75V11.25C5.25 10.8358 5.58579 10.5 6 10.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/minus-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.minus_circle />

      <.minus_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= minus_circle() %>

      <%= minus_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def minus_circle(assigns_or_opts \\ [])

  def minus_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM15 12.75C15.4142 12.75 15.75 12.4142 15.75 12C15.75 11.5858 15.4142 11.25 15 11.25H9C8.58579 11.25 8.25 11.5858 8.25 12C8.25 12.4142 8.58579 12.75 9 12.75H15Z" fill="#0F172A"/>
    </svg>
    """
  end

  def minus_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM15 12.75C15.4142 12.75 15.75 12.4142 15.75 12C15.75 11.5858 15.4142 11.25 15 11.25H9C8.58579 11.25 8.25 11.5858 8.25 12C8.25 12.4142 8.58579 12.75 9 12.75H15Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/minus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.minus />

      <.minus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= minus() %>

      <%= minus(class: "h-6 w-6 text-gray-500") %>
  """
  def minus(assigns_or_opts \\ [])

  def minus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.75 12C3.75 11.5858 4.08579 11.25 4.5 11.25L19.5 11.25C19.9142 11.25 20.25 11.5858 20.25 12C20.25 12.4142 19.9142 12.75 19.5 12.75L4.5 12.75C4.08579 12.75 3.75 12.4142 3.75 12Z" fill="#0F172A"/>
    </svg>
    """
  end

  def minus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.75 12C3.75 11.5858 4.08579 11.25 4.5 11.25L19.5 11.25C19.9142 11.25 20.25 11.5858 20.25 12C20.25 12.4142 19.9142 12.75 19.5 12.75L4.5 12.75C4.08579 12.75 3.75 12.4142 3.75 12Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/moon.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.moon />

      <.moon class="h-6 w-6 text-gray-500" />

  or as a function

      <%= moon() %>

      <%= moon(class: "h-6 w-6 text-gray-500") %>
  """
  def moon(assigns_or_opts \\ [])

  def moon(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.52839 1.71774C9.74339 1.93274 9.80731 2.25628 9.69021 2.53689C9.2458 3.60192 9 4.77131 9 6.00001C9 10.9706 13.0294 15 18 15C19.2287 15 20.3981 14.7542 21.4631 14.3098C21.7437 14.1927 22.0673 14.2566 22.2823 14.4716C22.4973 14.6866 22.5612 15.0102 22.4441 15.2908C20.8618 19.0827 17.1183 21.75 12.75 21.75C6.95101 21.75 2.25 17.049 2.25 11.25C2.25 6.88172 4.91735 3.13817 8.70924 1.55591C8.98985 1.43882 9.31338 1.50274 9.52839 1.71774Z" fill="#0F172A"/>
    </svg>
    """
  end

  def moon(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.52839 1.71774C9.74339 1.93274 9.80731 2.25628 9.69021 2.53689C9.2458 3.60192 9 4.77131 9 6.00001C9 10.9706 13.0294 15 18 15C19.2287 15 20.3981 14.7542 21.4631 14.3098C21.7437 14.1927 22.0673 14.2566 22.2823 14.4716C22.4973 14.6866 22.5612 15.0102 22.4441 15.2908C20.8618 19.0827 17.1183 21.75 12.75 21.75C6.95101 21.75 2.25 17.049 2.25 11.25C2.25 6.88172 4.91735 3.13817 8.70924 1.55591C8.98985 1.43882 9.31338 1.50274 9.52839 1.71774Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/musical-note.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.musical_note />

      <.musical_note class="h-6 w-6 text-gray-500" />

  or as a function

      <%= musical_note() %>

      <%= musical_note(class: "h-6 w-6 text-gray-500") %>
  """
  def musical_note(assigns_or_opts \\ [])

  def musical_note(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M19.9516 1.65124C20.1395 1.79297 20.25 2.01466 20.25 2.25001V5.98344C20.2503 5.99476 20.2503 6.00606 20.25 6.01732V16.3028C20.25 17.6423 19.3621 18.8194 18.0742 19.1874L16.7542 19.5645C15.1234 20.0305 13.5 18.806 13.5 17.1099C13.5 15.9701 14.2556 14.9684 15.3515 14.6553L17.6621 13.9951C18.306 13.8111 18.75 13.2225 18.75 12.5528V6.9943L9.75 9.56573V19.3028C9.75 20.6423 8.86207 21.8194 7.57416 22.1874L6.25418 22.5645C4.62337 23.0305 3 21.806 3 20.1099C3 18.9701 3.75559 17.9684 4.85153 17.6553L7.16208 16.9951C7.80603 16.8111 8.25 16.2225 8.25 15.5528V9.01659C8.24974 9.00526 8.24974 8.99395 8.25 8.98268V5.25001C8.25 4.91515 8.47198 4.62086 8.79396 4.52886L19.294 1.52886C19.5202 1.46421 19.7638 1.50952 19.9516 1.65124Z" fill="#0F172A"/>
    </svg>
    """
  end

  def musical_note(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M19.9516 1.65124C20.1395 1.79297 20.25 2.01466 20.25 2.25001V5.98344C20.2503 5.99476 20.2503 6.00606 20.25 6.01732V16.3028C20.25 17.6423 19.3621 18.8194 18.0742 19.1874L16.7542 19.5645C15.1234 20.0305 13.5 18.806 13.5 17.1099C13.5 15.9701 14.2556 14.9684 15.3515 14.6553L17.6621 13.9951C18.306 13.8111 18.75 13.2225 18.75 12.5528V6.9943L9.75 9.56573V19.3028C9.75 20.6423 8.86207 21.8194 7.57416 22.1874L6.25418 22.5645C4.62337 23.0305 3 21.806 3 20.1099C3 18.9701 3.75559 17.9684 4.85153 17.6553L7.16208 16.9951C7.80603 16.8111 8.25 16.2225 8.25 15.5528V9.01659C8.24974 9.00526 8.24974 8.99395 8.25 8.98268V5.25001C8.25 4.91515 8.47198 4.62086 8.79396 4.52886L19.294 1.52886C19.5202 1.46421 19.7638 1.50952 19.9516 1.65124Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/newspaper.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.newspaper />

      <.newspaper class="h-6 w-6 text-gray-500" />

  or as a function

      <%= newspaper() %>

      <%= newspaper(class: "h-6 w-6 text-gray-500") %>
  """
  def newspaper(assigns_or_opts \\ [])

  def newspaper(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.125 3C3.08947 3 2.25 3.83947 2.25 4.875V18C2.25 19.6569 3.59315 21 5.25 21H20.25C18.5931 21 17.25 19.6569 17.25 18V4.875C17.25 3.83947 16.4105 3 15.375 3H4.125ZM12 9.75C11.5858 9.75 11.25 10.0858 11.25 10.5C11.25 10.9142 11.5858 11.25 12 11.25H13.5C13.9142 11.25 14.25 10.9142 14.25 10.5C14.25 10.0858 13.9142 9.75 13.5 9.75H12ZM11.25 7.5C11.25 7.08579 11.5858 6.75 12 6.75H13.5C13.9142 6.75 14.25 7.08579 14.25 7.5C14.25 7.91421 13.9142 8.25 13.5 8.25H12C11.5858 8.25 11.25 7.91421 11.25 7.5ZM6 12.75C5.58579 12.75 5.25 13.0858 5.25 13.5C5.25 13.9142 5.58579 14.25 6 14.25H13.5C13.9142 14.25 14.25 13.9142 14.25 13.5C14.25 13.0858 13.9142 12.75 13.5 12.75H6ZM5.25 16.5C5.25 16.0858 5.58579 15.75 6 15.75H13.5C13.9142 15.75 14.25 16.0858 14.25 16.5C14.25 16.9142 13.9142 17.25 13.5 17.25H6C5.58579 17.25 5.25 16.9142 5.25 16.5ZM6 6.75C5.58579 6.75 5.25 7.08579 5.25 7.5V10.5C5.25 10.9142 5.58579 11.25 6 11.25H9C9.41421 11.25 9.75 10.9142 9.75 10.5V7.5C9.75 7.08579 9.41421 6.75 9 6.75H6Z" fill="#0F172A"/>
    <path d="M18.75 6.75H20.625C21.2463 6.75 21.75 7.25368 21.75 7.875V18C21.75 18.8284 21.0784 19.5 20.25 19.5C19.4216 19.5 18.75 18.8284 18.75 18V6.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def newspaper(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.125 3C3.08947 3 2.25 3.83947 2.25 4.875V18C2.25 19.6569 3.59315 21 5.25 21H20.25C18.5931 21 17.25 19.6569 17.25 18V4.875C17.25 3.83947 16.4105 3 15.375 3H4.125ZM12 9.75C11.5858 9.75 11.25 10.0858 11.25 10.5C11.25 10.9142 11.5858 11.25 12 11.25H13.5C13.9142 11.25 14.25 10.9142 14.25 10.5C14.25 10.0858 13.9142 9.75 13.5 9.75H12ZM11.25 7.5C11.25 7.08579 11.5858 6.75 12 6.75H13.5C13.9142 6.75 14.25 7.08579 14.25 7.5C14.25 7.91421 13.9142 8.25 13.5 8.25H12C11.5858 8.25 11.25 7.91421 11.25 7.5ZM6 12.75C5.58579 12.75 5.25 13.0858 5.25 13.5C5.25 13.9142 5.58579 14.25 6 14.25H13.5C13.9142 14.25 14.25 13.9142 14.25 13.5C14.25 13.0858 13.9142 12.75 13.5 12.75H6ZM5.25 16.5C5.25 16.0858 5.58579 15.75 6 15.75H13.5C13.9142 15.75 14.25 16.0858 14.25 16.5C14.25 16.9142 13.9142 17.25 13.5 17.25H6C5.58579 17.25 5.25 16.9142 5.25 16.5ZM6 6.75C5.58579 6.75 5.25 7.08579 5.25 7.5V10.5C5.25 10.9142 5.58579 11.25 6 11.25H9C9.41421 11.25 9.75 10.9142 9.75 10.5V7.5C9.75 7.08579 9.41421 6.75 9 6.75H6Z\" fill=\"#0F172A\"/>\n<path d=\"M18.75 6.75H20.625C21.2463 6.75 21.75 7.25368 21.75 7.875V18C21.75 18.8284 21.0784 19.5 20.25 19.5C19.4216 19.5 18.75 18.8284 18.75 18V6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/no-symbol.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.no_symbol />

      <.no_symbol class="h-6 w-6 text-gray-500" />

  or as a function

      <%= no_symbol() %>

      <%= no_symbol(class: "h-6 w-6 text-gray-500") %>
  """
  def no_symbol(assigns_or_opts \\ [])

  def no_symbol(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6.72048 5.65982L18.3402 17.2795C21.0455 14.0383 20.8767 9.20943 17.8336 6.16637C14.7906 3.12331 9.96171 2.95446 6.72048 5.65982ZM17.2795 18.3402L5.65982 6.72048C2.95446 9.96171 3.12331 14.7906 6.16637 17.8336C9.20943 20.8767 14.0383 21.0455 17.2795 18.3402ZM5.10571 5.10571C8.91332 1.2981 15.0867 1.2981 18.8943 5.10571C22.7019 8.91332 22.7019 15.0867 18.8943 18.8943C15.0867 22.7019 8.91332 22.7019 5.10571 18.8943C1.2981 15.0867 1.2981 8.91332 5.10571 5.10571Z" fill="#0F172A"/>
    </svg>
    """
  end

  def no_symbol(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6.72048 5.65982L18.3402 17.2795C21.0455 14.0383 20.8767 9.20943 17.8336 6.16637C14.7906 3.12331 9.96171 2.95446 6.72048 5.65982ZM17.2795 18.3402L5.65982 6.72048C2.95446 9.96171 3.12331 14.7906 6.16637 17.8336C9.20943 20.8767 14.0383 21.0455 17.2795 18.3402ZM5.10571 5.10571C8.91332 1.2981 15.0867 1.2981 18.8943 5.10571C22.7019 8.91332 22.7019 15.0867 18.8943 18.8943C15.0867 22.7019 8.91332 22.7019 5.10571 18.8943C1.2981 15.0867 1.2981 8.91332 5.10571 5.10571Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/paper-airplane.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.paper_airplane />

      <.paper_airplane class="h-6 w-6 text-gray-500" />

  or as a function

      <%= paper_airplane() %>

      <%= paper_airplane(class: "h-6 w-6 text-gray-500") %>
  """
  def paper_airplane(assigns_or_opts \\ [])

  def paper_airplane(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.47804 2.40479C3.2133 2.32789 2.92771 2.40242 2.73432 2.59889C2.54093 2.79536 2.47091 3.08209 2.55198 3.34558L4.98426 11.2505H13.5C13.9142 11.2505 14.25 11.5863 14.25 12.0005C14.25 12.4147 13.9142 12.7505 13.5 12.7505H4.98427L2.55207 20.6551C2.471 20.9186 2.54102 21.2054 2.73441 21.4018C2.92781 21.5983 3.2134 21.6728 3.47814 21.5959C10.1767 19.6499 16.3974 16.5819 21.9233 12.6092C22.1193 12.4683 22.2355 12.2416 22.2355 12.0002C22.2355 11.7588 22.1193 11.5322 21.9233 11.3913C16.3974 7.41866 10.1767 4.3507 3.47804 2.40479Z" fill="#0F172A"/>
    </svg>
    """
  end

  def paper_airplane(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.47804 2.40479C3.2133 2.32789 2.92771 2.40242 2.73432 2.59889C2.54093 2.79536 2.47091 3.08209 2.55198 3.34558L4.98426 11.2505H13.5C13.9142 11.2505 14.25 11.5863 14.25 12.0005C14.25 12.4147 13.9142 12.7505 13.5 12.7505H4.98427L2.55207 20.6551C2.471 20.9186 2.54102 21.2054 2.73441 21.4018C2.92781 21.5983 3.2134 21.6728 3.47814 21.5959C10.1767 19.6499 16.3974 16.5819 21.9233 12.6092C22.1193 12.4683 22.2355 12.2416 22.2355 12.0002C22.2355 11.7588 22.1193 11.5322 21.9233 11.3913C16.3974 7.41866 10.1767 4.3507 3.47804 2.40479Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/paper-clip.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.paper_clip />

      <.paper_clip class="h-6 w-6 text-gray-500" />

  or as a function

      <%= paper_clip() %>

      <%= paper_clip(class: "h-6 w-6 text-gray-500") %>
  """
  def paper_clip(assigns_or_opts \\ [])

  def paper_clip(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M18.9696 3.65901C18.0909 2.78033 16.6663 2.78033 15.7876 3.65901L4.84835 14.5983C3.38388 16.0628 3.38388 18.4372 4.84835 19.9016C6.31282 21.3661 8.68718 21.3661 10.1517 19.9016L17.8446 12.2087C18.1375 11.9158 18.6124 11.9158 18.9053 12.2087C19.1982 12.5015 19.1982 12.9764 18.9053 13.2693L11.2123 20.9623C9.16206 23.0126 5.83794 23.0126 3.78769 20.9623C1.73744 18.9121 1.73744 15.5879 3.78769 13.5377L14.7269 2.59835C16.1914 1.13388 18.5658 1.13388 20.0302 2.59835C21.4947 4.06281 21.4947 6.43718 20.0302 7.90165L9.09735 18.8346C9.09452 18.8374 9.09167 18.8403 9.08878 18.8432L9.08191 18.85L9.07971 18.8522L9.07747 18.8544C8.19765 19.7196 6.78319 19.7152 5.90901 18.841C5.03033 17.9623 5.03033 16.5377 5.90901 15.659L13.7195 7.84833C14.0124 7.55543 14.4873 7.55542 14.7802 7.84831C15.0731 8.1412 15.0731 8.61608 14.7802 8.90897L6.96968 16.7197C6.67678 17.0125 6.67678 17.4874 6.96967 17.7803C7.26041 18.0711 7.73056 18.0732 8.02383 17.7867L18.9696 6.84099C19.8483 5.96231 19.8483 4.53769 18.9696 3.65901Z" fill="#0F172A"/>
    </svg>
    """
  end

  def paper_clip(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M18.9696 3.65901C18.0909 2.78033 16.6663 2.78033 15.7876 3.65901L4.84835 14.5983C3.38388 16.0628 3.38388 18.4372 4.84835 19.9016C6.31282 21.3661 8.68718 21.3661 10.1517 19.9016L17.8446 12.2087C18.1375 11.9158 18.6124 11.9158 18.9053 12.2087C19.1982 12.5015 19.1982 12.9764 18.9053 13.2693L11.2123 20.9623C9.16206 23.0126 5.83794 23.0126 3.78769 20.9623C1.73744 18.9121 1.73744 15.5879 3.78769 13.5377L14.7269 2.59835C16.1914 1.13388 18.5658 1.13388 20.0302 2.59835C21.4947 4.06281 21.4947 6.43718 20.0302 7.90165L9.09735 18.8346C9.09452 18.8374 9.09167 18.8403 9.08878 18.8432L9.08191 18.85L9.07971 18.8522L9.07747 18.8544C8.19765 19.7196 6.78319 19.7152 5.90901 18.841C5.03033 17.9623 5.03033 16.5377 5.90901 15.659L13.7195 7.84833C14.0124 7.55543 14.4873 7.55542 14.7802 7.84831C15.0731 8.1412 15.0731 8.61608 14.7802 8.90897L6.96968 16.7197C6.67678 17.0125 6.67678 17.4874 6.96967 17.7803C7.26041 18.0711 7.73056 18.0732 8.02383 17.7867L18.9696 6.84099C19.8483 5.96231 19.8483 4.53769 18.9696 3.65901Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/pause.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.pause />

      <.pause class="h-6 w-6 text-gray-500" />

  or as a function

      <%= pause() %>

      <%= pause(class: "h-6 w-6 text-gray-500") %>
  """
  def pause(assigns_or_opts \\ [])

  def pause(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6.75 5.25C6.75 4.83579 7.08579 4.5 7.5 4.5H9C9.41421 4.5 9.75 4.83579 9.75 5.25V18.75C9.75 19.1642 9.41421 19.5 9 19.5H7.5C7.30109 19.5 7.11032 19.421 6.96967 19.2803C6.82902 19.1397 6.75 18.9489 6.75 18.75L6.75 5.25ZM14.25 5.25C14.25 4.83579 14.5858 4.5 15 4.5H16.5C16.6989 4.5 16.8897 4.57902 17.0303 4.71967C17.171 4.86032 17.25 5.05109 17.25 5.25L17.25 18.75C17.25 19.1642 16.9142 19.5 16.5 19.5H15C14.5858 19.5 14.25 19.1642 14.25 18.75V5.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def pause(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6.75 5.25C6.75 4.83579 7.08579 4.5 7.5 4.5H9C9.41421 4.5 9.75 4.83579 9.75 5.25V18.75C9.75 19.1642 9.41421 19.5 9 19.5H7.5C7.30109 19.5 7.11032 19.421 6.96967 19.2803C6.82902 19.1397 6.75 18.9489 6.75 18.75L6.75 5.25ZM14.25 5.25C14.25 4.83579 14.5858 4.5 15 4.5H16.5C16.6989 4.5 16.8897 4.57902 17.0303 4.71967C17.171 4.86032 17.25 5.05109 17.25 5.25L17.25 18.75C17.25 19.1642 16.9142 19.5 16.5 19.5H15C14.5858 19.5 14.25 19.1642 14.25 18.75V5.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/pencil-square.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.pencil_square />

      <.pencil_square class="h-6 w-6 text-gray-500" />

  or as a function

      <%= pencil_square() %>

      <%= pencil_square(class: "h-6 w-6 text-gray-500") %>
  """
  def pencil_square(assigns_or_opts \\ [])

  def pencil_square(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M21.7312 2.26884C20.706 1.24372 19.044 1.24372 18.0188 2.26884L16.8617 3.42599L20.574 7.1383L21.7312 5.98116C22.7563 4.95603 22.7563 3.29397 21.7312 2.26884Z" fill="#0F172A"/>
    <path d="M19.5133 8.19896L15.801 4.48665L7.40019 12.8875C6.78341 13.5043 6.33002 14.265 6.081 15.101L5.28122 17.7859C5.2026 18.0498 5.27494 18.3356 5.46967 18.5303C5.6644 18.7251 5.95019 18.7974 6.21412 18.7188L8.89901 17.919C9.73498 17.67 10.4957 17.2166 11.1125 16.5998L19.5133 8.19896Z" fill="#0F172A"/>
    <path d="M5.25 5.24999C3.59315 5.24999 2.25 6.59314 2.25 8.24999V18.75C2.25 20.4068 3.59315 21.75 5.25 21.75H15.75C17.4069 21.75 18.75 20.4068 18.75 18.75V13.5C18.75 13.0858 18.4142 12.75 18 12.75C17.5858 12.75 17.25 13.0858 17.25 13.5V18.75C17.25 19.5784 16.5784 20.25 15.75 20.25H5.25C4.42157 20.25 3.75 19.5784 3.75 18.75V8.24999C3.75 7.42156 4.42157 6.74999 5.25 6.74999H10.5C10.9142 6.74999 11.25 6.41421 11.25 5.99999C11.25 5.58578 10.9142 5.24999 10.5 5.24999H5.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def pencil_square(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M21.7312 2.26884C20.706 1.24372 19.044 1.24372 18.0188 2.26884L16.8617 3.42599L20.574 7.1383L21.7312 5.98116C22.7563 4.95603 22.7563 3.29397 21.7312 2.26884Z\" fill=\"#0F172A\"/>\n<path d=\"M19.5133 8.19896L15.801 4.48665L7.40019 12.8875C6.78341 13.5043 6.33002 14.265 6.081 15.101L5.28122 17.7859C5.2026 18.0498 5.27494 18.3356 5.46967 18.5303C5.6644 18.7251 5.95019 18.7974 6.21412 18.7188L8.89901 17.919C9.73498 17.67 10.4957 17.2166 11.1125 16.5998L19.5133 8.19896Z\" fill=\"#0F172A\"/>\n<path d=\"M5.25 5.24999C3.59315 5.24999 2.25 6.59314 2.25 8.24999V18.75C2.25 20.4068 3.59315 21.75 5.25 21.75H15.75C17.4069 21.75 18.75 20.4068 18.75 18.75V13.5C18.75 13.0858 18.4142 12.75 18 12.75C17.5858 12.75 17.25 13.0858 17.25 13.5V18.75C17.25 19.5784 16.5784 20.25 15.75 20.25H5.25C4.42157 20.25 3.75 19.5784 3.75 18.75V8.24999C3.75 7.42156 4.42157 6.74999 5.25 6.74999H10.5C10.9142 6.74999 11.25 6.41421 11.25 5.99999C11.25 5.58578 10.9142 5.24999 10.5 5.24999H5.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/pencil.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.pencil />

      <.pencil class="h-6 w-6 text-gray-500" />

  or as a function

      <%= pencil() %>

      <%= pencil(class: "h-6 w-6 text-gray-500") %>
  """
  def pencil(assigns_or_opts \\ [])

  def pencil(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M21.7312 2.26884C20.706 1.24372 19.044 1.24372 18.0189 2.26884L16.8617 3.426L20.574 7.13831L21.7312 5.98116C22.7563 4.95603 22.7563 3.29397 21.7312 2.26884Z" fill="#0F172A"/>
    <path d="M19.5134 8.19897L15.801 4.48666L3.65021 16.6375C3.03342 17.2543 2.58003 18.015 2.33101 18.851L1.53123 21.5359C1.45261 21.7998 1.52496 22.0856 1.71969 22.2803C1.91442 22.4751 2.2002 22.5474 2.46413 22.4688L5.14902 21.669C5.98499 21.42 6.74574 20.9666 7.36253 20.3498L19.5134 8.19897Z" fill="#0F172A"/>
    </svg>
    """
  end

  def pencil(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M21.7312 2.26884C20.706 1.24372 19.044 1.24372 18.0189 2.26884L16.8617 3.426L20.574 7.13831L21.7312 5.98116C22.7563 4.95603 22.7563 3.29397 21.7312 2.26884Z\" fill=\"#0F172A\"/>\n<path d=\"M19.5134 8.19897L15.801 4.48666L3.65021 16.6375C3.03342 17.2543 2.58003 18.015 2.33101 18.851L1.53123 21.5359C1.45261 21.7998 1.52496 22.0856 1.71969 22.2803C1.91442 22.4751 2.2002 22.5474 2.46413 22.4688L5.14902 21.669C5.98499 21.42 6.74574 20.9666 7.36253 20.3498L19.5134 8.19897Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/phone-arrow-down-left.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.phone_arrow_down_left />

      <.phone_arrow_down_left class="h-6 w-6 text-gray-500" />

  or as a function

      <%= phone_arrow_down_left() %>

      <%= phone_arrow_down_left(class: "h-6 w-6 text-gray-500") %>
  """
  def phone_arrow_down_left(assigns_or_opts \\ [])

  def phone_arrow_down_left(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M19.5 9.75C19.5 10.1642 19.1642 10.5 18.75 10.5L14.25 10.5C13.8358 10.5 13.5 10.1642 13.5 9.75V5.25C13.5 4.83579 13.8358 4.5 14.25 4.5C14.6642 4.5 15 4.83579 15 5.25V7.93934L19.7197 3.21967C20.0126 2.92678 20.4874 2.92678 20.7803 3.21967C21.0732 3.51256 21.0732 3.98744 20.7803 4.28033L16.0607 9L18.75 9C19.1642 9 19.5 9.33579 19.5 9.75Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.5 4.5C1.5 2.84315 2.84315 1.5 4.5 1.5H5.87163C6.732 1.5 7.48197 2.08556 7.69064 2.92025L8.79644 7.34343C8.97941 8.0753 8.70594 8.84555 8.10242 9.29818L6.8088 10.2684C6.67447 10.3691 6.64527 10.5167 6.683 10.6197C7.81851 13.7195 10.2805 16.1815 13.3803 17.317C13.4833 17.3547 13.6309 17.3255 13.7316 17.1912L14.7018 15.8976C15.1545 15.2941 15.9247 15.0206 16.6566 15.2036L21.0798 16.3094C21.9144 16.518 22.5 17.268 22.5 18.1284V19.5C22.5 21.1569 21.1569 22.5 19.5 22.5H17.25C8.55151 22.5 1.5 15.4485 1.5 6.75V4.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def phone_arrow_down_left(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M19.5 9.75C19.5 10.1642 19.1642 10.5 18.75 10.5L14.25 10.5C13.8358 10.5 13.5 10.1642 13.5 9.75V5.25C13.5 4.83579 13.8358 4.5 14.25 4.5C14.6642 4.5 15 4.83579 15 5.25V7.93934L19.7197 3.21967C20.0126 2.92678 20.4874 2.92678 20.7803 3.21967C21.0732 3.51256 21.0732 3.98744 20.7803 4.28033L16.0607 9L18.75 9C19.1642 9 19.5 9.33579 19.5 9.75Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.5 4.5C1.5 2.84315 2.84315 1.5 4.5 1.5H5.87163C6.732 1.5 7.48197 2.08556 7.69064 2.92025L8.79644 7.34343C8.97941 8.0753 8.70594 8.84555 8.10242 9.29818L6.8088 10.2684C6.67447 10.3691 6.64527 10.5167 6.683 10.6197C7.81851 13.7195 10.2805 16.1815 13.3803 17.317C13.4833 17.3547 13.6309 17.3255 13.7316 17.1912L14.7018 15.8976C15.1545 15.2941 15.9247 15.0206 16.6566 15.2036L21.0798 16.3094C21.9144 16.518 22.5 17.268 22.5 18.1284V19.5C22.5 21.1569 21.1569 22.5 19.5 22.5H17.25C8.55151 22.5 1.5 15.4485 1.5 6.75V4.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/phone-arrow-up-right.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.phone_arrow_up_right />

      <.phone_arrow_up_right class="h-6 w-6 text-gray-500" />

  or as a function

      <%= phone_arrow_up_right() %>

      <%= phone_arrow_up_right(class: "h-6 w-6 text-gray-500") %>
  """
  def phone_arrow_up_right(assigns_or_opts \\ [])

  def phone_arrow_up_right(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15 3.75C15 3.33579 15.3358 3 15.75 3H20.25C20.6642 3 21 3.33579 21 3.75V8.25C21 8.66421 20.6642 9 20.25 9C19.8358 9 19.5 8.66421 19.5 8.25V5.56066L14.7803 10.2803C14.4874 10.5732 14.0126 10.5732 13.7197 10.2803C13.4268 9.98744 13.4268 9.51256 13.7197 9.21967L18.4393 4.5H15.75C15.3358 4.5 15 4.16421 15 3.75Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.5 4.5C1.5 2.84315 2.84315 1.5 4.5 1.5H5.87163C6.732 1.5 7.48197 2.08556 7.69064 2.92025L8.79644 7.34343C8.97941 8.0753 8.70594 8.84555 8.10242 9.29818L6.8088 10.2684C6.67447 10.3691 6.64527 10.5167 6.683 10.6197C7.81851 13.7195 10.2805 16.1815 13.3803 17.317C13.4833 17.3547 13.6309 17.3255 13.7316 17.1912L14.7018 15.8976C15.1545 15.2941 15.9247 15.0206 16.6566 15.2036L21.0798 16.3094C21.9144 16.518 22.5 17.268 22.5 18.1284V19.5C22.5 21.1569 21.1569 22.5 19.5 22.5H17.25C8.55151 22.5 1.5 15.4485 1.5 6.75V4.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def phone_arrow_up_right(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15 3.75C15 3.33579 15.3358 3 15.75 3H20.25C20.6642 3 21 3.33579 21 3.75V8.25C21 8.66421 20.6642 9 20.25 9C19.8358 9 19.5 8.66421 19.5 8.25V5.56066L14.7803 10.2803C14.4874 10.5732 14.0126 10.5732 13.7197 10.2803C13.4268 9.98744 13.4268 9.51256 13.7197 9.21967L18.4393 4.5H15.75C15.3358 4.5 15 4.16421 15 3.75Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.5 4.5C1.5 2.84315 2.84315 1.5 4.5 1.5H5.87163C6.732 1.5 7.48197 2.08556 7.69064 2.92025L8.79644 7.34343C8.97941 8.0753 8.70594 8.84555 8.10242 9.29818L6.8088 10.2684C6.67447 10.3691 6.64527 10.5167 6.683 10.6197C7.81851 13.7195 10.2805 16.1815 13.3803 17.317C13.4833 17.3547 13.6309 17.3255 13.7316 17.1912L14.7018 15.8976C15.1545 15.2941 15.9247 15.0206 16.6566 15.2036L21.0798 16.3094C21.9144 16.518 22.5 17.268 22.5 18.1284V19.5C22.5 21.1569 21.1569 22.5 19.5 22.5H17.25C8.55151 22.5 1.5 15.4485 1.5 6.75V4.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/phone-x-mark.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.phone_x_mark />

      <.phone_x_mark class="h-6 w-6 text-gray-500" />

  or as a function

      <%= phone_x_mark() %>

      <%= phone_x_mark(class: "h-6 w-6 text-gray-500") %>
  """
  def phone_x_mark(assigns_or_opts \\ [])

  def phone_x_mark(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15.2197 3.21967C15.5126 2.92678 15.9874 2.92678 16.2803 3.21967L18 4.93934L19.7197 3.21967C20.0126 2.92678 20.4874 2.92678 20.7803 3.21967C21.0732 3.51256 21.0732 3.98744 20.7803 4.28033L19.0607 6L20.7803 7.71967C21.0732 8.01256 21.0732 8.48744 20.7803 8.78033C20.4874 9.07322 20.0126 9.07322 19.7197 8.78033L18 7.06066L16.2803 8.78033C15.9874 9.07322 15.5126 9.07322 15.2197 8.78033C14.9268 8.48744 14.9268 8.01256 15.2197 7.71967L16.9393 6L15.2197 4.28033C14.9268 3.98744 14.9268 3.51256 15.2197 3.21967Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.5 4.5C1.5 2.84315 2.84315 1.5 4.5 1.5H5.87163C6.732 1.5 7.48197 2.08556 7.69064 2.92025L8.79644 7.34343C8.97941 8.0753 8.70594 8.84555 8.10242 9.29818L6.8088 10.2684C6.67447 10.3691 6.64527 10.5167 6.683 10.6197C7.81851 13.7195 10.2805 16.1815 13.3803 17.317C13.4833 17.3547 13.6309 17.3255 13.7316 17.1912L14.7018 15.8976C15.1545 15.2941 15.9247 15.0206 16.6566 15.2036L21.0798 16.3094C21.9144 16.518 22.5 17.268 22.5 18.1284V19.5C22.5 21.1569 21.1569 22.5 19.5 22.5H17.25C8.55151 22.5 1.5 15.4485 1.5 6.75V4.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def phone_x_mark(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15.2197 3.21967C15.5126 2.92678 15.9874 2.92678 16.2803 3.21967L18 4.93934L19.7197 3.21967C20.0126 2.92678 20.4874 2.92678 20.7803 3.21967C21.0732 3.51256 21.0732 3.98744 20.7803 4.28033L19.0607 6L20.7803 7.71967C21.0732 8.01256 21.0732 8.48744 20.7803 8.78033C20.4874 9.07322 20.0126 9.07322 19.7197 8.78033L18 7.06066L16.2803 8.78033C15.9874 9.07322 15.5126 9.07322 15.2197 8.78033C14.9268 8.48744 14.9268 8.01256 15.2197 7.71967L16.9393 6L15.2197 4.28033C14.9268 3.98744 14.9268 3.51256 15.2197 3.21967Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.5 4.5C1.5 2.84315 2.84315 1.5 4.5 1.5H5.87163C6.732 1.5 7.48197 2.08556 7.69064 2.92025L8.79644 7.34343C8.97941 8.0753 8.70594 8.84555 8.10242 9.29818L6.8088 10.2684C6.67447 10.3691 6.64527 10.5167 6.683 10.6197C7.81851 13.7195 10.2805 16.1815 13.3803 17.317C13.4833 17.3547 13.6309 17.3255 13.7316 17.1912L14.7018 15.8976C15.1545 15.2941 15.9247 15.0206 16.6566 15.2036L21.0798 16.3094C21.9144 16.518 22.5 17.268 22.5 18.1284V19.5C22.5 21.1569 21.1569 22.5 19.5 22.5H17.25C8.55151 22.5 1.5 15.4485 1.5 6.75V4.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/phone.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.phone />

      <.phone class="h-6 w-6 text-gray-500" />

  or as a function

      <%= phone() %>

      <%= phone(class: "h-6 w-6 text-gray-500") %>
  """
  def phone(assigns_or_opts \\ [])

  def phone(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.5 4.5C1.5 2.84315 2.84315 1.5 4.5 1.5H5.87163C6.732 1.5 7.48197 2.08556 7.69064 2.92025L8.79644 7.34343C8.97941 8.0753 8.70594 8.84555 8.10242 9.29818L6.8088 10.2684C6.67447 10.3691 6.64527 10.5167 6.683 10.6197C7.81851 13.7195 10.2805 16.1815 13.3803 17.317C13.4833 17.3547 13.6309 17.3255 13.7316 17.1912L14.7018 15.8976C15.1545 15.2941 15.9247 15.0206 16.6566 15.2036L21.0798 16.3094C21.9144 16.518 22.5 17.268 22.5 18.1284V19.5C22.5 21.1569 21.1569 22.5 19.5 22.5H17.25C8.55151 22.5 1.5 15.4485 1.5 6.75V4.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def phone(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.5 4.5C1.5 2.84315 2.84315 1.5 4.5 1.5H5.87163C6.732 1.5 7.48197 2.08556 7.69064 2.92025L8.79644 7.34343C8.97941 8.0753 8.70594 8.84555 8.10242 9.29818L6.8088 10.2684C6.67447 10.3691 6.64527 10.5167 6.683 10.6197C7.81851 13.7195 10.2805 16.1815 13.3803 17.317C13.4833 17.3547 13.6309 17.3255 13.7316 17.1912L14.7018 15.8976C15.1545 15.2941 15.9247 15.0206 16.6566 15.2036L21.0798 16.3094C21.9144 16.518 22.5 17.268 22.5 18.1284V19.5C22.5 21.1569 21.1569 22.5 19.5 22.5H17.25C8.55151 22.5 1.5 15.4485 1.5 6.75V4.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/photo.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.photo />

      <.photo class="h-6 w-6 text-gray-500" />

  or as a function

      <%= photo() %>

      <%= photo(class: "h-6 w-6 text-gray-500") %>
  """
  def photo(assigns_or_opts \\ [])

  def photo(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.5 6C1.5 4.75736 2.50736 3.75 3.75 3.75H20.25C21.4926 3.75 22.5 4.75736 22.5 6V18C22.5 19.2426 21.4926 20.25 20.25 20.25H3.75C2.50736 20.25 1.5 19.2426 1.5 18V6ZM3 16.0607V18C3 18.4142 3.33579 18.75 3.75 18.75H20.25C20.6642 18.75 21 18.4142 21 18V16.0607L18.3107 13.3713C17.7249 12.7855 16.7751 12.7855 16.1893 13.3713L15.3107 14.25L16.2803 15.2197C16.5732 15.5126 16.5732 15.9874 16.2803 16.2803C15.9874 16.5732 15.5126 16.5732 15.2197 16.2803L10.0607 11.1213C9.47487 10.5355 8.52513 10.5355 7.93934 11.1213L3 16.0607ZM13.125 8.25C13.125 7.62868 13.6287 7.125 14.25 7.125C14.8713 7.125 15.375 7.62868 15.375 8.25C15.375 8.87132 14.8713 9.375 14.25 9.375C13.6287 9.375 13.125 8.87132 13.125 8.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def photo(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.5 6C1.5 4.75736 2.50736 3.75 3.75 3.75H20.25C21.4926 3.75 22.5 4.75736 22.5 6V18C22.5 19.2426 21.4926 20.25 20.25 20.25H3.75C2.50736 20.25 1.5 19.2426 1.5 18V6ZM3 16.0607V18C3 18.4142 3.33579 18.75 3.75 18.75H20.25C20.6642 18.75 21 18.4142 21 18V16.0607L18.3107 13.3713C17.7249 12.7855 16.7751 12.7855 16.1893 13.3713L15.3107 14.25L16.2803 15.2197C16.5732 15.5126 16.5732 15.9874 16.2803 16.2803C15.9874 16.5732 15.5126 16.5732 15.2197 16.2803L10.0607 11.1213C9.47487 10.5355 8.52513 10.5355 7.93934 11.1213L3 16.0607ZM13.125 8.25C13.125 7.62868 13.6287 7.125 14.25 7.125C14.8713 7.125 15.375 7.62868 15.375 8.25C15.375 8.87132 14.8713 9.375 14.25 9.375C13.6287 9.375 13.125 8.87132 13.125 8.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/play-pause.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.play_pause />

      <.play_pause class="h-6 w-6 text-gray-500" />

  or as a function

      <%= play_pause() %>

      <%= play_pause(class: "h-6 w-6 text-gray-500") %>
  """
  def play_pause(assigns_or_opts \\ [])

  def play_pause(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M15 6.75C14.5858 6.75 14.25 7.08579 14.25 7.5V18C14.25 18.1989 14.329 18.3897 14.4697 18.5303C14.6103 18.671 14.8011 18.75 15 18.75H15.75C16.1642 18.75 16.5 18.4142 16.5 18V7.5C16.5 7.08579 16.1642 6.75 15.75 6.75H15Z" fill="#0F172A"/>
    <path d="M20.25 6.75C19.8358 6.75 19.5 7.08579 19.5 7.5V18C19.5 18.4142 19.8358 18.75 20.25 18.75H21C21.4142 18.75 21.75 18.4142 21.75 18L21.75 7.5C21.75 7.30109 21.671 7.11032 21.5303 6.96967C21.3897 6.82902 21.1989 6.75 21 6.75H20.25Z" fill="#0F172A"/>
    <path d="M5.05526 7.06061C3.80528 6.34633 2.25 7.24889 2.25 8.68856V16.8114C2.25 18.2511 3.80528 19.1536 5.05526 18.4394L12.1628 14.3779C13.4224 13.6581 13.4224 11.8418 12.1628 11.122L5.05526 7.06061Z" fill="#0F172A"/>
    </svg>
    """
  end

  def play_pause(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M15 6.75C14.5858 6.75 14.25 7.08579 14.25 7.5V18C14.25 18.1989 14.329 18.3897 14.4697 18.5303C14.6103 18.671 14.8011 18.75 15 18.75H15.75C16.1642 18.75 16.5 18.4142 16.5 18V7.5C16.5 7.08579 16.1642 6.75 15.75 6.75H15Z\" fill=\"#0F172A\"/>\n<path d=\"M20.25 6.75C19.8358 6.75 19.5 7.08579 19.5 7.5V18C19.5 18.4142 19.8358 18.75 20.25 18.75H21C21.4142 18.75 21.75 18.4142 21.75 18L21.75 7.5C21.75 7.30109 21.671 7.11032 21.5303 6.96967C21.3897 6.82902 21.1989 6.75 21 6.75H20.25Z\" fill=\"#0F172A\"/>\n<path d=\"M5.05526 7.06061C3.80528 6.34633 2.25 7.24889 2.25 8.68856V16.8114C2.25 18.2511 3.80528 19.1536 5.05526 18.4394L12.1628 14.3779C13.4224 13.6581 13.4224 11.8418 12.1628 11.122L5.05526 7.06061Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/play.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.play />

      <.play class="h-6 w-6 text-gray-500" />

  or as a function

      <%= play() %>

      <%= play(class: "h-6 w-6 text-gray-500") %>
  """
  def play(assigns_or_opts \\ [])

  def play(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 5.65306C4.5 4.22693 6.029 3.32288 7.2786 4.01016L18.8192 10.3575C20.1144 11.0698 20.1144 12.9309 18.8192 13.6433L7.2786 19.9906C6.029 20.6779 4.5 19.7738 4.5 18.3477V5.65306Z" fill="#0F172A"/>
    </svg>
    """
  end

  def play(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 5.65306C4.5 4.22693 6.029 3.32288 7.2786 4.01016L18.8192 10.3575C20.1144 11.0698 20.1144 12.9309 18.8192 13.6433L7.2786 19.9906C6.029 20.6779 4.5 19.7738 4.5 18.3477V5.65306Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/plus-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.plus_circle />

      <.plus_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= plus_circle() %>

      <%= plus_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def plus_circle(assigns_or_opts \\ [])

  def plus_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM12.75 9C12.75 8.58579 12.4142 8.25 12 8.25C11.5858 8.25 11.25 8.58579 11.25 9V11.25H9C8.58579 11.25 8.25 11.5858 8.25 12C8.25 12.4142 8.58579 12.75 9 12.75H11.25V15C11.25 15.4142 11.5858 15.75 12 15.75C12.4142 15.75 12.75 15.4142 12.75 15V12.75H15C15.4142 12.75 15.75 12.4142 15.75 12C15.75 11.5858 15.4142 11.25 15 11.25H12.75V9Z" fill="#0F172A"/>
    </svg>
    """
  end

  def plus_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM12.75 9C12.75 8.58579 12.4142 8.25 12 8.25C11.5858 8.25 11.25 8.58579 11.25 9V11.25H9C8.58579 11.25 8.25 11.5858 8.25 12C8.25 12.4142 8.58579 12.75 9 12.75H11.25V15C11.25 15.4142 11.5858 15.75 12 15.75C12.4142 15.75 12.75 15.4142 12.75 15V12.75H15C15.4142 12.75 15.75 12.4142 15.75 12C15.75 11.5858 15.4142 11.25 15 11.25H12.75V9Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/plus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.plus />

      <.plus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= plus() %>

      <%= plus(class: "h-6 w-6 text-gray-500") %>
  """
  def plus(assigns_or_opts \\ [])

  def plus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 3.75C12.4142 3.75 12.75 4.08579 12.75 4.5V11.25H19.5C19.9142 11.25 20.25 11.5858 20.25 12C20.25 12.4142 19.9142 12.75 19.5 12.75H12.75V19.5C12.75 19.9142 12.4142 20.25 12 20.25C11.5858 20.25 11.25 19.9142 11.25 19.5V12.75H4.5C4.08579 12.75 3.75 12.4142 3.75 12C3.75 11.5858 4.08579 11.25 4.5 11.25H11.25V4.5C11.25 4.08579 11.5858 3.75 12 3.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def plus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 3.75C12.4142 3.75 12.75 4.08579 12.75 4.5V11.25H19.5C19.9142 11.25 20.25 11.5858 20.25 12C20.25 12.4142 19.9142 12.75 19.5 12.75H12.75V19.5C12.75 19.9142 12.4142 20.25 12 20.25C11.5858 20.25 11.25 19.9142 11.25 19.5V12.75H4.5C4.08579 12.75 3.75 12.4142 3.75 12C3.75 11.5858 4.08579 11.25 4.5 11.25H11.25V4.5C11.25 4.08579 11.5858 3.75 12 3.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/presentation-chart-bar.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.presentation_chart_bar />

      <.presentation_chart_bar class="h-6 w-6 text-gray-500" />

  or as a function

      <%= presentation_chart_bar() %>

      <%= presentation_chart_bar(class: "h-6 w-6 text-gray-500") %>
  """
  def presentation_chart_bar(assigns_or_opts \\ [])

  def presentation_chart_bar(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 2.25C1.83579 2.25 1.5 2.58579 1.5 3C1.5 3.41421 1.83579 3.75 2.25 3.75H3V14.25C3 15.9069 4.34315 17.25 6 17.25H7.20943L6.03849 20.7628C5.9075 21.1558 6.11987 21.5805 6.51283 21.7115C6.90579 21.8425 7.33053 21.6301 7.46151 21.2372L7.79057 20.25H16.2094L16.5385 21.2372C16.6695 21.6301 17.0942 21.8425 17.4872 21.7115C17.8801 21.5805 18.0925 21.1558 17.9615 20.7628L16.7906 17.25H18C19.6569 17.25 21 15.9069 21 14.25V3.75H21.75C22.1642 3.75 22.5 3.41421 22.5 3C22.5 2.58579 22.1642 2.25 21.75 2.25H2.25ZM8.29057 18.75L8.79057 17.25H15.2094L15.7094 18.75H8.29057ZM15.75 6.75C15.75 6.33579 15.4142 6 15 6C14.5858 6 14.25 6.33579 14.25 6.75V12.75C14.25 13.1642 14.5858 13.5 15 13.5C15.4142 13.5 15.75 13.1642 15.75 12.75V6.75ZM12.75 9C12.75 8.58579 12.4142 8.25 12 8.25C11.5858 8.25 11.25 8.58579 11.25 9V12.75C11.25 13.1642 11.5858 13.5 12 13.5C12.4142 13.5 12.75 13.1642 12.75 12.75V9ZM9.75 11.25C9.75 10.8358 9.41421 10.5 9 10.5C8.58579 10.5 8.25 10.8358 8.25 11.25V12.75C8.25 13.1642 8.58579 13.5 9 13.5C9.41421 13.5 9.75 13.1642 9.75 12.75V11.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def presentation_chart_bar(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.25 2.25C1.83579 2.25 1.5 2.58579 1.5 3C1.5 3.41421 1.83579 3.75 2.25 3.75H3V14.25C3 15.9069 4.34315 17.25 6 17.25H7.20943L6.03849 20.7628C5.9075 21.1558 6.11987 21.5805 6.51283 21.7115C6.90579 21.8425 7.33053 21.6301 7.46151 21.2372L7.79057 20.25H16.2094L16.5385 21.2372C16.6695 21.6301 17.0942 21.8425 17.4872 21.7115C17.8801 21.5805 18.0925 21.1558 17.9615 20.7628L16.7906 17.25H18C19.6569 17.25 21 15.9069 21 14.25V3.75H21.75C22.1642 3.75 22.5 3.41421 22.5 3C22.5 2.58579 22.1642 2.25 21.75 2.25H2.25ZM8.29057 18.75L8.79057 17.25H15.2094L15.7094 18.75H8.29057ZM15.75 6.75C15.75 6.33579 15.4142 6 15 6C14.5858 6 14.25 6.33579 14.25 6.75V12.75C14.25 13.1642 14.5858 13.5 15 13.5C15.4142 13.5 15.75 13.1642 15.75 12.75V6.75ZM12.75 9C12.75 8.58579 12.4142 8.25 12 8.25C11.5858 8.25 11.25 8.58579 11.25 9V12.75C11.25 13.1642 11.5858 13.5 12 13.5C12.4142 13.5 12.75 13.1642 12.75 12.75V9ZM9.75 11.25C9.75 10.8358 9.41421 10.5 9 10.5C8.58579 10.5 8.25 10.8358 8.25 11.25V12.75C8.25 13.1642 8.58579 13.5 9 13.5C9.41421 13.5 9.75 13.1642 9.75 12.75V11.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/presentation-chart-line.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.presentation_chart_line />

      <.presentation_chart_line class="h-6 w-6 text-gray-500" />

  or as a function

      <%= presentation_chart_line() %>

      <%= presentation_chart_line(class: "h-6 w-6 text-gray-500") %>
  """
  def presentation_chart_line(assigns_or_opts \\ [])

  def presentation_chart_line(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 2.25C1.83579 2.25 1.5 2.58579 1.5 3C1.5 3.41421 1.83579 3.75 2.25 3.75H3V14.25C3 15.9069 4.34315 17.25 6 17.25H7.20943L6.03849 20.7628C5.9075 21.1558 6.11987 21.5805 6.51283 21.7115C6.90579 21.8425 7.33053 21.6301 7.46151 21.2372L7.79057 20.25H16.2094L16.5385 21.2372C16.6695 21.6301 17.0942 21.8425 17.4872 21.7115C17.8801 21.5805 18.0925 21.1558 17.9615 20.7628L16.7906 17.25H18C19.6569 17.25 21 15.9069 21 14.25V3.75H21.75C22.1642 3.75 22.5 3.41421 22.5 3C22.5 2.58579 22.1642 2.25 21.75 2.25H2.25ZM8.79057 17.25H15.2094L15.7094 18.75H8.29057L8.79057 17.25ZM16.8755 8.25467C17.2341 8.04727 17.3566 7.58847 17.1492 7.22992C16.9418 6.87138 16.483 6.74886 16.1245 6.95626C14.7577 7.74688 13.5517 8.78371 12.5667 10.0061L11.0303 8.46975C10.7374 8.17686 10.2626 8.17686 9.96967 8.46975L6.96967 11.4698C6.67678 11.7626 6.67678 12.2375 6.96967 12.5304C7.26256 12.8233 7.73744 12.8233 8.03033 12.5304L10.5 10.0607L12.1173 11.678C12.2742 11.835 12.4927 11.9143 12.7138 11.8947C12.9349 11.8751 13.136 11.7586 13.2629 11.5765C14.207 10.2217 15.4414 9.08428 16.8755 8.25467Z" fill="#0F172A"/>
    </svg>
    """
  end

  def presentation_chart_line(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.25 2.25C1.83579 2.25 1.5 2.58579 1.5 3C1.5 3.41421 1.83579 3.75 2.25 3.75H3V14.25C3 15.9069 4.34315 17.25 6 17.25H7.20943L6.03849 20.7628C5.9075 21.1558 6.11987 21.5805 6.51283 21.7115C6.90579 21.8425 7.33053 21.6301 7.46151 21.2372L7.79057 20.25H16.2094L16.5385 21.2372C16.6695 21.6301 17.0942 21.8425 17.4872 21.7115C17.8801 21.5805 18.0925 21.1558 17.9615 20.7628L16.7906 17.25H18C19.6569 17.25 21 15.9069 21 14.25V3.75H21.75C22.1642 3.75 22.5 3.41421 22.5 3C22.5 2.58579 22.1642 2.25 21.75 2.25H2.25ZM8.79057 17.25H15.2094L15.7094 18.75H8.29057L8.79057 17.25ZM16.8755 8.25467C17.2341 8.04727 17.3566 7.58847 17.1492 7.22992C16.9418 6.87138 16.483 6.74886 16.1245 6.95626C14.7577 7.74688 13.5517 8.78371 12.5667 10.0061L11.0303 8.46975C10.7374 8.17686 10.2626 8.17686 9.96967 8.46975L6.96967 11.4698C6.67678 11.7626 6.67678 12.2375 6.96967 12.5304C7.26256 12.8233 7.73744 12.8233 8.03033 12.5304L10.5 10.0607L12.1173 11.678C12.2742 11.835 12.4927 11.9143 12.7138 11.8947C12.9349 11.8751 13.136 11.7586 13.2629 11.5765C14.207 10.2217 15.4414 9.08428 16.8755 8.25467Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/printer.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.printer />

      <.printer class="h-6 w-6 text-gray-500" />

  or as a function

      <%= printer() %>

      <%= printer(class: "h-6 w-6 text-gray-500") %>
  """
  def printer(assigns_or_opts \\ [])

  def printer(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.875 1.5C6.83947 1.5 6 2.33947 6 3.375V6.36564C5.5736 6.41799 5.1489 6.47583 4.72596 6.53912C3.27191 6.75668 2.25 8.02163 2.25 9.45569V15.75C2.25 17.4069 3.59315 18.75 5.25 18.75H5.51963L5.36461 20.4552C5.26479 21.5533 6.12935 22.5 7.23191 22.5H16.7681C17.8706 22.5 18.7352 21.5533 18.6354 20.4552L18.4804 18.75H18.75C20.4069 18.75 21.75 17.4069 21.75 15.75V9.45569C21.75 8.02163 20.7281 6.75668 19.274 6.53912C18.8511 6.47583 18.4264 6.41799 18 6.36564V3.375C18 2.33947 17.1605 1.5 16.125 1.5H7.875ZM16.5 6.20498V3.375C16.5 3.16789 16.3321 3 16.125 3H7.875C7.66789 3 7.5 3.16789 7.5 3.375V6.20498C8.98198 6.06931 10.483 6 12 6C13.517 6 15.018 6.06931 16.5 6.20498ZM16.2834 14.4696C16.4607 14.4879 16.5996 14.6298 16.6158 14.8073L17.1415 20.591C17.1615 20.8107 16.9886 21 16.7681 21H7.23191C7.0114 21 6.83849 20.8107 6.85845 20.591L7.38425 14.8073C7.40039 14.6298 7.53926 14.4879 7.71659 14.4696C9.12438 14.3244 10.5534 14.25 12 14.25C13.4466 14.25 14.8756 14.3244 16.2834 14.4696ZM17.25 10.5C17.25 10.0858 17.5858 9.75 18 9.75H18.0075C18.4217 9.75 18.7575 10.0858 18.7575 10.5V10.5075C18.7575 10.9217 18.4217 11.2575 18.0075 11.2575H18C17.5858 11.2575 17.25 10.9217 17.25 10.5075V10.5ZM15 9.75C14.5858 9.75 14.25 10.0858 14.25 10.5V10.5075C14.25 10.9217 14.5858 11.2575 15 11.2575H15.0075C15.4217 11.2575 15.7575 10.9217 15.7575 10.5075V10.5C15.7575 10.0858 15.4217 9.75 15.0075 9.75H15Z" fill="#0F172A"/>
    </svg>
    """
  end

  def printer(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.875 1.5C6.83947 1.5 6 2.33947 6 3.375V6.36564C5.5736 6.41799 5.1489 6.47583 4.72596 6.53912C3.27191 6.75668 2.25 8.02163 2.25 9.45569V15.75C2.25 17.4069 3.59315 18.75 5.25 18.75H5.51963L5.36461 20.4552C5.26479 21.5533 6.12935 22.5 7.23191 22.5H16.7681C17.8706 22.5 18.7352 21.5533 18.6354 20.4552L18.4804 18.75H18.75C20.4069 18.75 21.75 17.4069 21.75 15.75V9.45569C21.75 8.02163 20.7281 6.75668 19.274 6.53912C18.8511 6.47583 18.4264 6.41799 18 6.36564V3.375C18 2.33947 17.1605 1.5 16.125 1.5H7.875ZM16.5 6.20498V3.375C16.5 3.16789 16.3321 3 16.125 3H7.875C7.66789 3 7.5 3.16789 7.5 3.375V6.20498C8.98198 6.06931 10.483 6 12 6C13.517 6 15.018 6.06931 16.5 6.20498ZM16.2834 14.4696C16.4607 14.4879 16.5996 14.6298 16.6158 14.8073L17.1415 20.591C17.1615 20.8107 16.9886 21 16.7681 21H7.23191C7.0114 21 6.83849 20.8107 6.85845 20.591L7.38425 14.8073C7.40039 14.6298 7.53926 14.4879 7.71659 14.4696C9.12438 14.3244 10.5534 14.25 12 14.25C13.4466 14.25 14.8756 14.3244 16.2834 14.4696ZM17.25 10.5C17.25 10.0858 17.5858 9.75 18 9.75H18.0075C18.4217 9.75 18.7575 10.0858 18.7575 10.5V10.5075C18.7575 10.9217 18.4217 11.2575 18.0075 11.2575H18C17.5858 11.2575 17.25 10.9217 17.25 10.5075V10.5ZM15 9.75C14.5858 9.75 14.25 10.0858 14.25 10.5V10.5075C14.25 10.9217 14.5858 11.2575 15 11.2575H15.0075C15.4217 11.2575 15.7575 10.9217 15.7575 10.5075V10.5C15.7575 10.0858 15.4217 9.75 15.0075 9.75H15Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/puzzle-piece.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.puzzle_piece />

      <.puzzle_piece class="h-6 w-6 text-gray-500" />

  or as a function

      <%= puzzle_piece() %>

      <%= puzzle_piece(class: "h-6 w-6 text-gray-500") %>
  """
  def puzzle_piece(assigns_or_opts \\ [])

  def puzzle_piece(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M11.25 5.33694C11.25 4.98178 11.064 4.66076 10.8488 4.3782C10.6279 4.0881 10.5 3.744 10.5 3.375C10.5 2.33947 11.5074 1.5 12.75 1.5C13.9926 1.5 15 2.33947 15 3.375C15 3.744 14.8721 4.0881 14.6512 4.3782C14.436 4.66076 14.25 4.98178 14.25 5.33694C14.25 5.66929 14.5277 5.9346 14.8595 5.9148C16.7701 5.80079 18.6498 5.57328 20.4922 5.23898C20.6949 5.20219 20.9039 5.25044 21.07 5.37241C21.2361 5.49437 21.3447 5.6793 21.3703 5.88377C21.5943 7.67324 21.7213 9.49263 21.7459 11.3365C21.7508 11.7028 21.4533 11.9999 21.0869 12C20.7318 12 20.4108 11.814 20.1282 11.5988C19.8381 11.3779 19.494 11.25 19.125 11.25C18.0895 11.25 17.25 12.2574 17.25 13.5C17.25 14.7426 18.0895 15.75 19.125 15.75C19.494 15.75 19.8381 15.6221 20.1282 15.4012C20.4108 15.186 20.7318 15 21.0869 15C21.3974 15 21.6439 15.2617 21.6214 15.5713C21.5028 17.2098 21.3031 18.8261 21.0263 20.4161C20.9721 20.728 20.7279 20.9721 20.416 21.0264C18.5969 21.343 16.7434 21.5587 14.8615 21.6676C14.5285 21.6869 14.25 21.4205 14.25 21.0869C14.25 20.7318 14.436 20.4108 14.6512 20.1282C14.8721 19.8381 15 19.494 15 19.125C15 18.0895 13.9926 17.25 12.75 17.25C11.5074 17.25 10.5 18.0895 10.5 19.125C10.5 19.494 10.6279 19.8381 10.8488 20.1282C11.064 20.4108 11.25 20.7318 11.25 21.0869C11.25 21.4485 10.954 21.7405 10.5925 21.7303C9.00303 21.6852 7.43238 21.564 5.88413 21.3702C5.67966 21.3446 5.49473 21.236 5.37277 21.0699C5.25081 20.9038 5.20256 20.6948 5.23935 20.4921C5.53223 18.8781 5.74315 17.2354 5.8676 15.5683C5.89058 15.2605 5.64563 15 5.33694 15C4.98178 15 4.66076 15.186 4.3782 15.4012C4.0881 15.6221 3.744 15.75 3.375 15.75C2.33947 15.75 1.5 14.7426 1.5 13.5C1.5 12.2574 2.33947 11.25 3.375 11.25C3.744 11.25 4.0881 11.3779 4.3782 11.5988C4.66076 11.814 4.98178 12 5.33694 12C5.7033 12 6.00078 11.703 5.99574 11.3367C5.97334 9.70845 5.86862 8.10026 5.68559 6.51628C5.6593 6.28881 5.73838 6.06178 5.9003 5.89986C6.06222 5.73794 6.28924 5.65886 6.51672 5.68515C7.85902 5.84025 9.2186 5.93912 10.5931 5.97931C10.9541 5.98987 11.25 5.69817 11.25 5.33694Z" fill="#0F172A"/>
    </svg>
    """
  end

  def puzzle_piece(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M11.25 5.33694C11.25 4.98178 11.064 4.66076 10.8488 4.3782C10.6279 4.0881 10.5 3.744 10.5 3.375C10.5 2.33947 11.5074 1.5 12.75 1.5C13.9926 1.5 15 2.33947 15 3.375C15 3.744 14.8721 4.0881 14.6512 4.3782C14.436 4.66076 14.25 4.98178 14.25 5.33694C14.25 5.66929 14.5277 5.9346 14.8595 5.9148C16.7701 5.80079 18.6498 5.57328 20.4922 5.23898C20.6949 5.20219 20.9039 5.25044 21.07 5.37241C21.2361 5.49437 21.3447 5.6793 21.3703 5.88377C21.5943 7.67324 21.7213 9.49263 21.7459 11.3365C21.7508 11.7028 21.4533 11.9999 21.0869 12C20.7318 12 20.4108 11.814 20.1282 11.5988C19.8381 11.3779 19.494 11.25 19.125 11.25C18.0895 11.25 17.25 12.2574 17.25 13.5C17.25 14.7426 18.0895 15.75 19.125 15.75C19.494 15.75 19.8381 15.6221 20.1282 15.4012C20.4108 15.186 20.7318 15 21.0869 15C21.3974 15 21.6439 15.2617 21.6214 15.5713C21.5028 17.2098 21.3031 18.8261 21.0263 20.4161C20.9721 20.728 20.7279 20.9721 20.416 21.0264C18.5969 21.343 16.7434 21.5587 14.8615 21.6676C14.5285 21.6869 14.25 21.4205 14.25 21.0869C14.25 20.7318 14.436 20.4108 14.6512 20.1282C14.8721 19.8381 15 19.494 15 19.125C15 18.0895 13.9926 17.25 12.75 17.25C11.5074 17.25 10.5 18.0895 10.5 19.125C10.5 19.494 10.6279 19.8381 10.8488 20.1282C11.064 20.4108 11.25 20.7318 11.25 21.0869C11.25 21.4485 10.954 21.7405 10.5925 21.7303C9.00303 21.6852 7.43238 21.564 5.88413 21.3702C5.67966 21.3446 5.49473 21.236 5.37277 21.0699C5.25081 20.9038 5.20256 20.6948 5.23935 20.4921C5.53223 18.8781 5.74315 17.2354 5.8676 15.5683C5.89058 15.2605 5.64563 15 5.33694 15C4.98178 15 4.66076 15.186 4.3782 15.4012C4.0881 15.6221 3.744 15.75 3.375 15.75C2.33947 15.75 1.5 14.7426 1.5 13.5C1.5 12.2574 2.33947 11.25 3.375 11.25C3.744 11.25 4.0881 11.3779 4.3782 11.5988C4.66076 11.814 4.98178 12 5.33694 12C5.7033 12 6.00078 11.703 5.99574 11.3367C5.97334 9.70845 5.86862 8.10026 5.68559 6.51628C5.6593 6.28881 5.73838 6.06178 5.9003 5.89986C6.06222 5.73794 6.28924 5.65886 6.51672 5.68515C7.85902 5.84025 9.2186 5.93912 10.5931 5.97931C10.9541 5.98987 11.25 5.69817 11.25 5.33694Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/qr-code.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.qr_code />

      <.qr_code class="h-6 w-6 text-gray-500" />

  or as a function

      <%= qr_code() %>

      <%= qr_code(class: "h-6 w-6 text-gray-500") %>
  """
  def qr_code(assigns_or_opts \\ [])

  def qr_code(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 4.875C3 3.83947 3.83947 3 4.875 3H9.375C10.4105 3 11.25 3.83947 11.25 4.875V9.375C11.25 10.4105 10.4105 11.25 9.375 11.25H4.875C3.83947 11.25 3 10.4105 3 9.375V4.875ZM4.875 4.5C4.66789 4.5 4.5 4.66789 4.5 4.875V9.375C4.5 9.58211 4.66789 9.75 4.875 9.75H9.375C9.58211 9.75 9.75 9.58211 9.75 9.375V4.875C9.75 4.66789 9.58211 4.5 9.375 4.5H4.875ZM12.75 4.875C12.75 3.83947 13.5895 3 14.625 3H19.125C20.1605 3 21 3.83947 21 4.875V9.375C21 10.4105 20.1605 11.25 19.125 11.25H14.625C13.5895 11.25 12.75 10.4105 12.75 9.375V4.875ZM14.625 4.5C14.4179 4.5 14.25 4.66789 14.25 4.875V9.375C14.25 9.58211 14.4179 9.75 14.625 9.75H19.125C19.3321 9.75 19.5 9.58211 19.5 9.375V4.875C19.5 4.66789 19.3321 4.5 19.125 4.5H14.625ZM6 6.75C6 6.33579 6.33579 6 6.75 6H7.5C7.91421 6 8.25 6.33579 8.25 6.75V7.5C8.25 7.91421 7.91421 8.25 7.5 8.25H6.75C6.33579 8.25 6 7.91421 6 7.5V6.75ZM15.75 6.75C15.75 6.33579 16.0858 6 16.5 6H17.25C17.6642 6 18 6.33579 18 6.75V7.5C18 7.91421 17.6642 8.25 17.25 8.25H16.5C16.0858 8.25 15.75 7.91421 15.75 7.5V6.75ZM3 14.625C3 13.5895 3.83947 12.75 4.875 12.75H9.375C10.4105 12.75 11.25 13.5895 11.25 14.625V19.125C11.25 20.1605 10.4105 21 9.375 21H4.875C3.83947 21 3 20.1605 3 19.125V14.625ZM4.875 14.25C4.66789 14.25 4.5 14.4179 4.5 14.625V19.125C4.5 19.3321 4.66789 19.5 4.875 19.5H9.375C9.58211 19.5 9.75 19.3321 9.75 19.125V14.625C9.75 14.4179 9.58211 14.25 9.375 14.25H4.875ZM12.75 13.5C12.75 13.0858 13.0858 12.75 13.5 12.75H14.25C14.6642 12.75 15 13.0858 15 13.5V14.25C15 14.6642 14.6642 15 14.25 15H13.5C13.0858 15 12.75 14.6642 12.75 14.25V13.5ZM18.75 13.5C18.75 13.0858 19.0858 12.75 19.5 12.75H20.25C20.6642 12.75 21 13.0858 21 13.5V14.25C21 14.6642 20.6642 15 20.25 15H19.5C19.0858 15 18.75 14.6642 18.75 14.25V13.5ZM6 16.5C6 16.0858 6.33579 15.75 6.75 15.75H7.5C7.91421 15.75 8.25 16.0858 8.25 16.5V17.25C8.25 17.6642 7.91421 18 7.5 18H6.75C6.33579 18 6 17.6642 6 17.25V16.5ZM15.75 16.5C15.75 16.0858 16.0858 15.75 16.5 15.75H17.25C17.6642 15.75 18 16.0858 18 16.5V17.25C18 17.6642 17.6642 18 17.25 18H16.5C16.0858 18 15.75 17.6642 15.75 17.25V16.5ZM12.75 19.5C12.75 19.0858 13.0858 18.75 13.5 18.75H14.25C14.6642 18.75 15 19.0858 15 19.5V20.25C15 20.6642 14.6642 21 14.25 21H13.5C13.0858 21 12.75 20.6642 12.75 20.25V19.5ZM18.75 19.5C18.75 19.0858 19.0858 18.75 19.5 18.75H20.25C20.6642 18.75 21 19.0858 21 19.5V20.25C21 20.6642 20.6642 21 20.25 21H19.5C19.0858 21 18.75 20.6642 18.75 20.25V19.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def qr_code(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 4.875C3 3.83947 3.83947 3 4.875 3H9.375C10.4105 3 11.25 3.83947 11.25 4.875V9.375C11.25 10.4105 10.4105 11.25 9.375 11.25H4.875C3.83947 11.25 3 10.4105 3 9.375V4.875ZM4.875 4.5C4.66789 4.5 4.5 4.66789 4.5 4.875V9.375C4.5 9.58211 4.66789 9.75 4.875 9.75H9.375C9.58211 9.75 9.75 9.58211 9.75 9.375V4.875C9.75 4.66789 9.58211 4.5 9.375 4.5H4.875ZM12.75 4.875C12.75 3.83947 13.5895 3 14.625 3H19.125C20.1605 3 21 3.83947 21 4.875V9.375C21 10.4105 20.1605 11.25 19.125 11.25H14.625C13.5895 11.25 12.75 10.4105 12.75 9.375V4.875ZM14.625 4.5C14.4179 4.5 14.25 4.66789 14.25 4.875V9.375C14.25 9.58211 14.4179 9.75 14.625 9.75H19.125C19.3321 9.75 19.5 9.58211 19.5 9.375V4.875C19.5 4.66789 19.3321 4.5 19.125 4.5H14.625ZM6 6.75C6 6.33579 6.33579 6 6.75 6H7.5C7.91421 6 8.25 6.33579 8.25 6.75V7.5C8.25 7.91421 7.91421 8.25 7.5 8.25H6.75C6.33579 8.25 6 7.91421 6 7.5V6.75ZM15.75 6.75C15.75 6.33579 16.0858 6 16.5 6H17.25C17.6642 6 18 6.33579 18 6.75V7.5C18 7.91421 17.6642 8.25 17.25 8.25H16.5C16.0858 8.25 15.75 7.91421 15.75 7.5V6.75ZM3 14.625C3 13.5895 3.83947 12.75 4.875 12.75H9.375C10.4105 12.75 11.25 13.5895 11.25 14.625V19.125C11.25 20.1605 10.4105 21 9.375 21H4.875C3.83947 21 3 20.1605 3 19.125V14.625ZM4.875 14.25C4.66789 14.25 4.5 14.4179 4.5 14.625V19.125C4.5 19.3321 4.66789 19.5 4.875 19.5H9.375C9.58211 19.5 9.75 19.3321 9.75 19.125V14.625C9.75 14.4179 9.58211 14.25 9.375 14.25H4.875ZM12.75 13.5C12.75 13.0858 13.0858 12.75 13.5 12.75H14.25C14.6642 12.75 15 13.0858 15 13.5V14.25C15 14.6642 14.6642 15 14.25 15H13.5C13.0858 15 12.75 14.6642 12.75 14.25V13.5ZM18.75 13.5C18.75 13.0858 19.0858 12.75 19.5 12.75H20.25C20.6642 12.75 21 13.0858 21 13.5V14.25C21 14.6642 20.6642 15 20.25 15H19.5C19.0858 15 18.75 14.6642 18.75 14.25V13.5ZM6 16.5C6 16.0858 6.33579 15.75 6.75 15.75H7.5C7.91421 15.75 8.25 16.0858 8.25 16.5V17.25C8.25 17.6642 7.91421 18 7.5 18H6.75C6.33579 18 6 17.6642 6 17.25V16.5ZM15.75 16.5C15.75 16.0858 16.0858 15.75 16.5 15.75H17.25C17.6642 15.75 18 16.0858 18 16.5V17.25C18 17.6642 17.6642 18 17.25 18H16.5C16.0858 18 15.75 17.6642 15.75 17.25V16.5ZM12.75 19.5C12.75 19.0858 13.0858 18.75 13.5 18.75H14.25C14.6642 18.75 15 19.0858 15 19.5V20.25C15 20.6642 14.6642 21 14.25 21H13.5C13.0858 21 12.75 20.6642 12.75 20.25V19.5ZM18.75 19.5C18.75 19.0858 19.0858 18.75 19.5 18.75H20.25C20.6642 18.75 21 19.0858 21 19.5V20.25C21 20.6642 20.6642 21 20.25 21H19.5C19.0858 21 18.75 20.6642 18.75 20.25V19.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/question-mark-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.question_mark_circle />

      <.question_mark_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= question_mark_circle() %>

      <%= question_mark_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def question_mark_circle(assigns_or_opts \\ [])

  def question_mark_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 12C2.25 6.61522 6.61522 2.25 12 2.25C17.3848 2.25 21.75 6.61522 21.75 12C21.75 17.3848 17.3848 21.75 12 21.75C6.61522 21.75 2.25 17.3848 2.25 12ZM13.6277 8.08328C12.7389 7.30557 11.2616 7.30557 10.3728 8.08328C10.0611 8.35604 9.58723 8.32445 9.31447 8.01272C9.04171 7.701 9.0733 7.22717 9.38503 6.95441C10.8394 5.68186 13.1611 5.68186 14.6154 6.95441C16.1285 8.27835 16.1285 10.4717 14.6154 11.7956C14.3588 12.0202 14.0761 12.2041 13.778 12.3484C13.1018 12.6756 12.7502 13.1222 12.7502 13.5V14.25C12.7502 14.6642 12.4144 15 12.0002 15C11.586 15 11.2502 14.6642 11.2502 14.25V13.5C11.2502 12.221 12.3095 11.3926 13.1246 10.9982C13.3073 10.9098 13.4765 10.799 13.6277 10.6667C14.4577 9.9404 14.4577 8.80959 13.6277 8.08328ZM12 18C12.4142 18 12.75 17.6642 12.75 17.25C12.75 16.8358 12.4142 16.5 12 16.5C11.5858 16.5 11.25 16.8358 11.25 17.25C11.25 17.6642 11.5858 18 12 18Z" fill="#0F172A"/>
    </svg>
    """
  end

  def question_mark_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.25 12C2.25 6.61522 6.61522 2.25 12 2.25C17.3848 2.25 21.75 6.61522 21.75 12C21.75 17.3848 17.3848 21.75 12 21.75C6.61522 21.75 2.25 17.3848 2.25 12ZM13.6277 8.08328C12.7389 7.30557 11.2616 7.30557 10.3728 8.08328C10.0611 8.35604 9.58723 8.32445 9.31447 8.01272C9.04171 7.701 9.0733 7.22717 9.38503 6.95441C10.8394 5.68186 13.1611 5.68186 14.6154 6.95441C16.1285 8.27835 16.1285 10.4717 14.6154 11.7956C14.3588 12.0202 14.0761 12.2041 13.778 12.3484C13.1018 12.6756 12.7502 13.1222 12.7502 13.5V14.25C12.7502 14.6642 12.4144 15 12.0002 15C11.586 15 11.2502 14.6642 11.2502 14.25V13.5C11.2502 12.221 12.3095 11.3926 13.1246 10.9982C13.3073 10.9098 13.4765 10.799 13.6277 10.6667C14.4577 9.9404 14.4577 8.80959 13.6277 8.08328ZM12 18C12.4142 18 12.75 17.6642 12.75 17.25C12.75 16.8358 12.4142 16.5 12 16.5C11.5858 16.5 11.25 16.8358 11.25 17.25C11.25 17.6642 11.5858 18 12 18Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/queue-list.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.queue_list />

      <.queue_list class="h-6 w-6 text-gray-500" />

  or as a function

      <%= queue_list() %>

      <%= queue_list(class: "h-6 w-6 text-gray-500") %>
  """
  def queue_list(assigns_or_opts \\ [])

  def queue_list(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M5.625 3.75C4.17525 3.75 3 4.92525 3 6.375C3 7.82475 4.17525 9 5.625 9H18.375C19.8247 9 21 7.82475 21 6.375C21 4.92525 19.8247 3.75 18.375 3.75H5.625Z" fill="#0F172A"/>
    <path d="M3.75 11.25C3.33579 11.25 3 11.5858 3 12C3 12.4142 3.33579 12.75 3.75 12.75H20.25C20.6642 12.75 21 12.4142 21 12C21 11.5858 20.6642 11.25 20.25 11.25H3.75Z" fill="#0F172A"/>
    <path d="M3 15.75C3 15.3358 3.33579 15 3.75 15H20.25C20.6642 15 21 15.3358 21 15.75C21 16.1642 20.6642 16.5 20.25 16.5H3.75C3.33579 16.5 3 16.1642 3 15.75Z" fill="#0F172A"/>
    <path d="M3.75 18.75C3.33579 18.75 3 19.0858 3 19.5C3 19.9142 3.33579 20.25 3.75 20.25H20.25C20.6642 20.25 21 19.9142 21 19.5C21 19.0858 20.6642 18.75 20.25 18.75H3.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def queue_list(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.625 3.75C4.17525 3.75 3 4.92525 3 6.375C3 7.82475 4.17525 9 5.625 9H18.375C19.8247 9 21 7.82475 21 6.375C21 4.92525 19.8247 3.75 18.375 3.75H5.625Z\" fill=\"#0F172A\"/>\n<path d=\"M3.75 11.25C3.33579 11.25 3 11.5858 3 12C3 12.4142 3.33579 12.75 3.75 12.75H20.25C20.6642 12.75 21 12.4142 21 12C21 11.5858 20.6642 11.25 20.25 11.25H3.75Z\" fill=\"#0F172A\"/>\n<path d=\"M3 15.75C3 15.3358 3.33579 15 3.75 15H20.25C20.6642 15 21 15.3358 21 15.75C21 16.1642 20.6642 16.5 20.25 16.5H3.75C3.33579 16.5 3 16.1642 3 15.75Z\" fill=\"#0F172A\"/>\n<path d=\"M3.75 18.75C3.33579 18.75 3 19.0858 3 19.5C3 19.9142 3.33579 20.25 3.75 20.25H20.25C20.6642 20.25 21 19.9142 21 19.5C21 19.0858 20.6642 18.75 20.25 18.75H3.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/radio.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.radio />

      <.radio class="h-6 w-6 text-gray-500" />

  or as a function

      <%= radio() %>

      <%= radio(class: "h-6 w-6 text-gray-500") %>
  """
  def radio(assigns_or_opts \\ [])

  def radio(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M20.4321 4.10278C20.8339 4.00232 21.0782 3.59512 20.9778 3.19328C20.8773 2.79143 20.4701 2.54711 20.0683 2.64757L4.12873 6.63246C4.06201 6.64329 3.99534 6.65426 3.92872 6.66536C2.49686 6.90396 1.5 8.15803 1.5 9.57421V18.7502C1.5 20.407 2.84315 21.7502 4.5 21.7502H19.5C21.1569 21.7502 22.5 20.407 22.5 18.7502V9.57421C22.5 8.15803 21.5031 6.90396 20.0713 6.66536C17.7057 6.27116 15.2828 6.04736 12.8157 6.00687L20.4321 4.10278ZM10.8471 12.663C11.14 12.9559 11.14 13.4307 10.8471 13.7236L10.8418 13.7289C10.5489 14.0218 10.074 14.0218 9.78115 13.7289L9.77584 13.7236C9.48295 13.4307 9.48295 12.9559 9.77584 12.663L9.78115 12.6577C10.074 12.3648 10.5489 12.3648 10.8418 12.6577L10.8471 12.663ZM9.78144 15.85C10.0743 16.1429 10.5492 16.1429 10.8421 15.85L10.8474 15.8447C11.1403 15.5518 11.1403 15.0769 10.8474 14.784L10.8421 14.7787C10.5492 14.4858 10.0743 14.4858 9.78144 14.7787L9.77613 14.784C9.48324 15.0769 9.48324 15.5518 9.77613 15.8447L9.78144 15.85ZM8.72602 14.7842C9.01891 15.0771 9.01891 15.552 8.72602 15.8449L8.72071 15.8502C8.42782 16.1431 7.95295 16.1431 7.66005 15.8502L7.65475 15.8449C7.36186 15.552 7.36186 15.0771 7.65475 14.7842L7.66005 14.7789C7.95295 14.486 8.42782 14.486 8.72071 14.7789L8.72602 14.7842ZM7.66034 13.7287C7.95324 14.0216 8.42811 14.0216 8.721 13.7287L8.72631 13.7234C9.0192 13.4305 9.0192 12.9557 8.72631 12.6628L8.721 12.6575C8.42811 12.3646 7.95324 12.3646 7.66034 12.6575L7.65504 12.6628C7.36215 12.9557 7.36215 13.4305 7.65504 13.7234L7.66034 13.7287ZM9.25488 9.75018C9.6691 9.75018 10.0049 10.086 10.0049 10.5002V10.5077C10.0049 10.9219 9.6691 11.2577 9.25488 11.2577H9.24738C8.83317 11.2577 8.49738 10.9219 8.49738 10.5077V10.5002C8.49738 10.086 8.83317 9.75018 9.24738 9.75018H9.25488ZM12.879 13.0298C13.2378 12.8227 13.3607 12.364 13.1536 12.0053L13.1498 11.9988C12.9427 11.6401 12.484 11.5171 12.1253 11.7243L12.1188 11.728C11.7601 11.9351 11.6372 12.3938 11.8443 12.7525L11.848 12.759C12.0551 13.1177 12.5138 13.2406 12.8725 13.0335L12.879 13.0298ZM11.4996 18.156C11.1409 18.3631 10.6822 18.2402 10.4751 17.8815L10.4713 17.875C10.2642 17.5163 10.3871 17.0576 10.7459 16.8505L10.7524 16.8467C11.1111 16.6396 11.5698 16.7625 11.7769 17.1212L11.7806 17.1277C11.9877 17.4865 11.8648 17.9451 11.5061 18.1523L11.4996 18.156ZM11.781 11.38C11.9881 11.0213 11.8652 10.5626 11.5065 10.3555L11.5 10.3518C11.1413 10.1447 10.6826 10.2676 10.4755 10.6263L10.4717 10.6328C10.2646 10.9915 10.3875 11.4502 10.7462 11.6573L10.7527 11.6611C11.1115 11.8682 11.5701 11.7453 11.7773 11.3865L11.781 11.38ZM13.1499 16.5089C12.9428 16.8676 12.4841 16.9906 12.1254 16.7834L12.1189 16.7797C11.7602 16.5726 11.6373 16.1139 11.8444 15.7552L11.8481 15.7487C12.0552 15.39 12.5139 15.2671 12.8726 15.4742L12.8791 15.4779C13.2379 15.685 13.3608 16.1437 13.1537 16.5024L13.1499 16.5089ZM13.0049 15.0075C13.4191 15.0075 13.7549 14.6717 13.7549 14.2575V14.25C13.7549 13.8358 13.4191 13.5 13.0049 13.5H12.9974C12.5832 13.5 12.2474 13.8358 12.2474 14.25V14.2575C12.2474 14.6717 12.5832 15.0075 12.9974 15.0075H13.0049ZM9.25488 17.2502C9.6691 17.2502 10.0049 17.586 10.0049 18.0002V18.0077C10.0049 18.4219 9.6691 18.7577 9.25488 18.7577H9.24738C8.83317 18.7577 8.49738 18.4219 8.49738 18.0077V18.0002C8.49738 17.586 8.83317 17.2502 9.24738 17.2502H9.25488ZM6.38393 16.7798C6.74265 16.5727 6.86555 16.114 6.65845 15.7553L6.6547 15.7488C6.44759 15.3901 5.9889 15.2671 5.63018 15.4743L5.62368 15.478C5.26496 15.6851 5.14206 16.1438 5.34916 16.5025L5.35291 16.509C5.56002 16.8677 6.01871 16.9906 6.37743 16.7835L6.38393 16.7798ZM7.74962 11.6609C7.3909 11.868 6.9322 11.7451 6.7251 11.3864L6.72135 11.3799C6.51424 11.0212 6.63715 10.5625 6.99587 10.3554L7.00236 10.3516C7.36108 10.1445 7.81977 10.2674 8.02688 10.6261L8.03063 10.6326C8.23774 10.9913 8.11483 11.45 7.75611 11.6571L7.74962 11.6609ZM8.03101 17.8752C8.23811 17.5164 8.11521 17.0578 7.75649 16.8506L7.74999 16.8469C7.39127 16.6398 6.93258 16.7627 6.72547 17.1214L6.72172 17.1279C6.51462 17.4866 6.63752 17.9453 6.99624 18.1524L7.00274 18.1562C7.36146 18.3633 7.82015 18.2404 8.02726 17.8817L8.03101 17.8752ZM6.65479 12.7589C6.44768 13.1176 5.98899 13.2406 5.63027 13.0334L5.62377 13.0297C5.26505 12.8226 5.14215 12.3639 5.34925 12.0052L5.353 11.9987C5.56011 11.64 6.0188 11.5171 6.37752 11.7242L6.38402 11.7279C6.74274 11.935 6.86564 12.3937 6.65854 12.7524L6.65479 12.7589ZM5.50488 15.0075C5.9191 15.0075 6.25488 14.6717 6.25488 14.2575V14.25C6.25488 13.8358 5.9191 13.5 5.50488 13.5H5.49738C5.08317 13.5 4.74738 13.8358 4.74738 14.25V14.2575C4.74738 14.6717 5.08317 15.0075 5.49738 15.0075H5.50488ZM17.25 10.5002C18.0784 10.5002 18.75 11.1718 18.75 12.0002C18.75 12.8286 18.0784 13.5002 17.25 13.5002C16.4216 13.5002 15.75 12.8286 15.75 12.0002C15.75 11.1718 16.4216 10.5002 17.25 10.5002ZM18.75 16.5002C18.75 15.6718 18.0784 15.0002 17.25 15.0002C16.4216 15.0002 15.75 15.6718 15.75 16.5002C15.75 17.3286 16.4216 18.0002 17.25 18.0002C18.0784 18.0002 18.75 17.3286 18.75 16.5002Z" fill="#0F172A"/>
    </svg>
    """
  end

  def radio(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M20.4321 4.10278C20.8339 4.00232 21.0782 3.59512 20.9778 3.19328C20.8773 2.79143 20.4701 2.54711 20.0683 2.64757L4.12873 6.63246C4.06201 6.64329 3.99534 6.65426 3.92872 6.66536C2.49686 6.90396 1.5 8.15803 1.5 9.57421V18.7502C1.5 20.407 2.84315 21.7502 4.5 21.7502H19.5C21.1569 21.7502 22.5 20.407 22.5 18.7502V9.57421C22.5 8.15803 21.5031 6.90396 20.0713 6.66536C17.7057 6.27116 15.2828 6.04736 12.8157 6.00687L20.4321 4.10278ZM10.8471 12.663C11.14 12.9559 11.14 13.4307 10.8471 13.7236L10.8418 13.7289C10.5489 14.0218 10.074 14.0218 9.78115 13.7289L9.77584 13.7236C9.48295 13.4307 9.48295 12.9559 9.77584 12.663L9.78115 12.6577C10.074 12.3648 10.5489 12.3648 10.8418 12.6577L10.8471 12.663ZM9.78144 15.85C10.0743 16.1429 10.5492 16.1429 10.8421 15.85L10.8474 15.8447C11.1403 15.5518 11.1403 15.0769 10.8474 14.784L10.8421 14.7787C10.5492 14.4858 10.0743 14.4858 9.78144 14.7787L9.77613 14.784C9.48324 15.0769 9.48324 15.5518 9.77613 15.8447L9.78144 15.85ZM8.72602 14.7842C9.01891 15.0771 9.01891 15.552 8.72602 15.8449L8.72071 15.8502C8.42782 16.1431 7.95295 16.1431 7.66005 15.8502L7.65475 15.8449C7.36186 15.552 7.36186 15.0771 7.65475 14.7842L7.66005 14.7789C7.95295 14.486 8.42782 14.486 8.72071 14.7789L8.72602 14.7842ZM7.66034 13.7287C7.95324 14.0216 8.42811 14.0216 8.721 13.7287L8.72631 13.7234C9.0192 13.4305 9.0192 12.9557 8.72631 12.6628L8.721 12.6575C8.42811 12.3646 7.95324 12.3646 7.66034 12.6575L7.65504 12.6628C7.36215 12.9557 7.36215 13.4305 7.65504 13.7234L7.66034 13.7287ZM9.25488 9.75018C9.6691 9.75018 10.0049 10.086 10.0049 10.5002V10.5077C10.0049 10.9219 9.6691 11.2577 9.25488 11.2577H9.24738C8.83317 11.2577 8.49738 10.9219 8.49738 10.5077V10.5002C8.49738 10.086 8.83317 9.75018 9.24738 9.75018H9.25488ZM12.879 13.0298C13.2378 12.8227 13.3607 12.364 13.1536 12.0053L13.1498 11.9988C12.9427 11.6401 12.484 11.5171 12.1253 11.7243L12.1188 11.728C11.7601 11.9351 11.6372 12.3938 11.8443 12.7525L11.848 12.759C12.0551 13.1177 12.5138 13.2406 12.8725 13.0335L12.879 13.0298ZM11.4996 18.156C11.1409 18.3631 10.6822 18.2402 10.4751 17.8815L10.4713 17.875C10.2642 17.5163 10.3871 17.0576 10.7459 16.8505L10.7524 16.8467C11.1111 16.6396 11.5698 16.7625 11.7769 17.1212L11.7806 17.1277C11.9877 17.4865 11.8648 17.9451 11.5061 18.1523L11.4996 18.156ZM11.781 11.38C11.9881 11.0213 11.8652 10.5626 11.5065 10.3555L11.5 10.3518C11.1413 10.1447 10.6826 10.2676 10.4755 10.6263L10.4717 10.6328C10.2646 10.9915 10.3875 11.4502 10.7462 11.6573L10.7527 11.6611C11.1115 11.8682 11.5701 11.7453 11.7773 11.3865L11.781 11.38ZM13.1499 16.5089C12.9428 16.8676 12.4841 16.9906 12.1254 16.7834L12.1189 16.7797C11.7602 16.5726 11.6373 16.1139 11.8444 15.7552L11.8481 15.7487C12.0552 15.39 12.5139 15.2671 12.8726 15.4742L12.8791 15.4779C13.2379 15.685 13.3608 16.1437 13.1537 16.5024L13.1499 16.5089ZM13.0049 15.0075C13.4191 15.0075 13.7549 14.6717 13.7549 14.2575V14.25C13.7549 13.8358 13.4191 13.5 13.0049 13.5H12.9974C12.5832 13.5 12.2474 13.8358 12.2474 14.25V14.2575C12.2474 14.6717 12.5832 15.0075 12.9974 15.0075H13.0049ZM9.25488 17.2502C9.6691 17.2502 10.0049 17.586 10.0049 18.0002V18.0077C10.0049 18.4219 9.6691 18.7577 9.25488 18.7577H9.24738C8.83317 18.7577 8.49738 18.4219 8.49738 18.0077V18.0002C8.49738 17.586 8.83317 17.2502 9.24738 17.2502H9.25488ZM6.38393 16.7798C6.74265 16.5727 6.86555 16.114 6.65845 15.7553L6.6547 15.7488C6.44759 15.3901 5.9889 15.2671 5.63018 15.4743L5.62368 15.478C5.26496 15.6851 5.14206 16.1438 5.34916 16.5025L5.35291 16.509C5.56002 16.8677 6.01871 16.9906 6.37743 16.7835L6.38393 16.7798ZM7.74962 11.6609C7.3909 11.868 6.9322 11.7451 6.7251 11.3864L6.72135 11.3799C6.51424 11.0212 6.63715 10.5625 6.99587 10.3554L7.00236 10.3516C7.36108 10.1445 7.81977 10.2674 8.02688 10.6261L8.03063 10.6326C8.23774 10.9913 8.11483 11.45 7.75611 11.6571L7.74962 11.6609ZM8.03101 17.8752C8.23811 17.5164 8.11521 17.0578 7.75649 16.8506L7.74999 16.8469C7.39127 16.6398 6.93258 16.7627 6.72547 17.1214L6.72172 17.1279C6.51462 17.4866 6.63752 17.9453 6.99624 18.1524L7.00274 18.1562C7.36146 18.3633 7.82015 18.2404 8.02726 17.8817L8.03101 17.8752ZM6.65479 12.7589C6.44768 13.1176 5.98899 13.2406 5.63027 13.0334L5.62377 13.0297C5.26505 12.8226 5.14215 12.3639 5.34925 12.0052L5.353 11.9987C5.56011 11.64 6.0188 11.5171 6.37752 11.7242L6.38402 11.7279C6.74274 11.935 6.86564 12.3937 6.65854 12.7524L6.65479 12.7589ZM5.50488 15.0075C5.9191 15.0075 6.25488 14.6717 6.25488 14.2575V14.25C6.25488 13.8358 5.9191 13.5 5.50488 13.5H5.49738C5.08317 13.5 4.74738 13.8358 4.74738 14.25V14.2575C4.74738 14.6717 5.08317 15.0075 5.49738 15.0075H5.50488ZM17.25 10.5002C18.0784 10.5002 18.75 11.1718 18.75 12.0002C18.75 12.8286 18.0784 13.5002 17.25 13.5002C16.4216 13.5002 15.75 12.8286 15.75 12.0002C15.75 11.1718 16.4216 10.5002 17.25 10.5002ZM18.75 16.5002C18.75 15.6718 18.0784 15.0002 17.25 15.0002C16.4216 15.0002 15.75 15.6718 15.75 16.5002C15.75 17.3286 16.4216 18.0002 17.25 18.0002C18.0784 18.0002 18.75 17.3286 18.75 16.5002Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/receipt-percent.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.receipt_percent />

      <.receipt_percent class="h-6 w-6 text-gray-500" />

  or as a function

      <%= receipt_percent() %>

      <%= receipt_percent(class: "h-6 w-6 text-gray-500") %>
  """
  def receipt_percent(assigns_or_opts \\ [])

  def receipt_percent(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.5C10.079 1.5 8.18374 1.61114 6.32022 1.82741C4.82283 2.00119 3.75 3.28722 3.75 4.75699V21.75C3.75 21.9989 3.87345 22.2315 4.07953 22.3711C4.28561 22.5106 4.54748 22.5388 4.77854 22.4464L8.25 21.0578L11.7215 22.4464C11.9003 22.5179 12.0997 22.5179 12.2785 22.4464L15.75 21.0578L19.2215 22.4464C19.4525 22.5388 19.7144 22.5106 19.9205 22.3711C20.1266 22.2315 20.25 21.9989 20.25 21.75V4.75699C20.25 3.28722 19.1772 2.00119 17.6798 1.82741C15.8163 1.61114 13.921 1.5 12 1.5ZM15.5303 8.78033C15.8232 8.48744 15.8232 8.01256 15.5303 7.71967C15.2374 7.42678 14.7626 7.42678 14.4697 7.71967L8.46967 13.7197C8.17678 14.0126 8.17678 14.4874 8.46967 14.7803C8.76256 15.0732 9.23744 15.0732 9.53033 14.7803L15.5303 8.78033ZM8.625 9C8.625 8.37868 9.12868 7.875 9.75 7.875C10.3713 7.875 10.875 8.37868 10.875 9C10.875 9.62132 10.3713 10.125 9.75 10.125C9.12868 10.125 8.625 9.62132 8.625 9ZM14.25 12.375C13.6287 12.375 13.125 12.8787 13.125 13.5C13.125 14.1213 13.6287 14.625 14.25 14.625C14.8713 14.625 15.375 14.1213 15.375 13.5C15.375 12.8787 14.8713 12.375 14.25 12.375Z" fill="#0F172A"/>
    </svg>
    """
  end

  def receipt_percent(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 1.5C10.079 1.5 8.18374 1.61114 6.32022 1.82741C4.82283 2.00119 3.75 3.28722 3.75 4.75699V21.75C3.75 21.9989 3.87345 22.2315 4.07953 22.3711C4.28561 22.5106 4.54748 22.5388 4.77854 22.4464L8.25 21.0578L11.7215 22.4464C11.9003 22.5179 12.0997 22.5179 12.2785 22.4464L15.75 21.0578L19.2215 22.4464C19.4525 22.5388 19.7144 22.5106 19.9205 22.3711C20.1266 22.2315 20.25 21.9989 20.25 21.75V4.75699C20.25 3.28722 19.1772 2.00119 17.6798 1.82741C15.8163 1.61114 13.921 1.5 12 1.5ZM15.5303 8.78033C15.8232 8.48744 15.8232 8.01256 15.5303 7.71967C15.2374 7.42678 14.7626 7.42678 14.4697 7.71967L8.46967 13.7197C8.17678 14.0126 8.17678 14.4874 8.46967 14.7803C8.76256 15.0732 9.23744 15.0732 9.53033 14.7803L15.5303 8.78033ZM8.625 9C8.625 8.37868 9.12868 7.875 9.75 7.875C10.3713 7.875 10.875 8.37868 10.875 9C10.875 9.62132 10.3713 10.125 9.75 10.125C9.12868 10.125 8.625 9.62132 8.625 9ZM14.25 12.375C13.6287 12.375 13.125 12.8787 13.125 13.5C13.125 14.1213 13.6287 14.625 14.25 14.625C14.8713 14.625 15.375 14.1213 15.375 13.5C15.375 12.8787 14.8713 12.375 14.25 12.375Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/receipt-refund.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.receipt_refund />

      <.receipt_refund class="h-6 w-6 text-gray-500" />

  or as a function

      <%= receipt_refund() %>

      <%= receipt_refund(class: "h-6 w-6 text-gray-500") %>
  """
  def receipt_refund(assigns_or_opts \\ [])

  def receipt_refund(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.5C10.079 1.5 8.18374 1.61114 6.32022 1.82741C4.82283 2.00119 3.75 3.28722 3.75 4.75699V21.75C3.75 21.9989 3.87345 22.2315 4.07953 22.3711C4.28561 22.5106 4.54748 22.5388 4.77854 22.4464L8.25 21.0578L11.7215 22.4464C11.9003 22.5179 12.0997 22.5179 12.2785 22.4464L15.75 21.0578L19.2215 22.4464C19.4525 22.5388 19.7144 22.5106 19.9205 22.3711C20.1266 22.2315 20.25 21.9989 20.25 21.75V4.75699C20.25 3.28722 19.1772 2.00119 17.6798 1.82741C15.8163 1.61114 13.921 1.5 12 1.5ZM11.0303 8.03033C11.3232 7.73744 11.3232 7.26256 11.0303 6.96967C10.7374 6.67678 10.2626 6.67678 9.96967 6.96967L7.71967 9.21967C7.42678 9.51256 7.42678 9.98744 7.71967 10.2803L9.96967 12.5303C10.2626 12.8232 10.7374 12.8232 11.0303 12.5303C11.3232 12.2374 11.3232 11.7626 11.0303 11.4697L10.0607 10.5H13.125C14.1605 10.5 15 11.3395 15 12.375C15 13.4105 14.1605 14.25 13.125 14.25H12C11.5858 14.25 11.25 14.5858 11.25 15C11.25 15.4142 11.5858 15.75 12 15.75H13.125C14.989 15.75 16.5 14.239 16.5 12.375C16.5 10.511 14.989 9 13.125 9H10.0607L11.0303 8.03033Z" fill="#0F172A"/>
    </svg>
    """
  end

  def receipt_refund(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 1.5C10.079 1.5 8.18374 1.61114 6.32022 1.82741C4.82283 2.00119 3.75 3.28722 3.75 4.75699V21.75C3.75 21.9989 3.87345 22.2315 4.07953 22.3711C4.28561 22.5106 4.54748 22.5388 4.77854 22.4464L8.25 21.0578L11.7215 22.4464C11.9003 22.5179 12.0997 22.5179 12.2785 22.4464L15.75 21.0578L19.2215 22.4464C19.4525 22.5388 19.7144 22.5106 19.9205 22.3711C20.1266 22.2315 20.25 21.9989 20.25 21.75V4.75699C20.25 3.28722 19.1772 2.00119 17.6798 1.82741C15.8163 1.61114 13.921 1.5 12 1.5ZM11.0303 8.03033C11.3232 7.73744 11.3232 7.26256 11.0303 6.96967C10.7374 6.67678 10.2626 6.67678 9.96967 6.96967L7.71967 9.21967C7.42678 9.51256 7.42678 9.98744 7.71967 10.2803L9.96967 12.5303C10.2626 12.8232 10.7374 12.8232 11.0303 12.5303C11.3232 12.2374 11.3232 11.7626 11.0303 11.4697L10.0607 10.5H13.125C14.1605 10.5 15 11.3395 15 12.375C15 13.4105 14.1605 14.25 13.125 14.25H12C11.5858 14.25 11.25 14.5858 11.25 15C11.25 15.4142 11.5858 15.75 12 15.75H13.125C14.989 15.75 16.5 14.239 16.5 12.375C16.5 10.511 14.989 9 13.125 9H10.0607L11.0303 8.03033Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/rectangle-group.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.rectangle_group />

      <.rectangle_group class="h-6 w-6 text-gray-500" />

  or as a function

      <%= rectangle_group() %>

      <%= rectangle_group(class: "h-6 w-6 text-gray-500") %>
  """
  def rectangle_group(assigns_or_opts \\ [])

  def rectangle_group(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.5 7.125C1.5 6.08947 2.33947 5.25 3.375 5.25H9.375C10.4105 5.25 11.25 6.08947 11.25 7.125V10.875C11.25 11.9105 10.4105 12.75 9.375 12.75H3.375C2.33947 12.75 1.5 11.9105 1.5 10.875V7.125ZM13.5 8.625C13.5 7.58947 14.3395 6.75 15.375 6.75H20.625C21.6605 6.75 22.5 7.58947 22.5 8.625V16.875C22.5 17.9105 21.6605 18.75 20.625 18.75H15.375C14.3395 18.75 13.5 17.9105 13.5 16.875V8.625ZM3 16.125C3 15.0895 3.83947 14.25 4.875 14.25H10.125C11.1605 14.25 12 15.0895 12 16.125V18.375C12 19.4105 11.1605 20.25 10.125 20.25H4.875C3.83947 20.25 3 19.4105 3 18.375V16.125Z" fill="#0F172A"/>
    </svg>
    """
  end

  def rectangle_group(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.5 7.125C1.5 6.08947 2.33947 5.25 3.375 5.25H9.375C10.4105 5.25 11.25 6.08947 11.25 7.125V10.875C11.25 11.9105 10.4105 12.75 9.375 12.75H3.375C2.33947 12.75 1.5 11.9105 1.5 10.875V7.125ZM13.5 8.625C13.5 7.58947 14.3395 6.75 15.375 6.75H20.625C21.6605 6.75 22.5 7.58947 22.5 8.625V16.875C22.5 17.9105 21.6605 18.75 20.625 18.75H15.375C14.3395 18.75 13.5 17.9105 13.5 16.875V8.625ZM3 16.125C3 15.0895 3.83947 14.25 4.875 14.25H10.125C11.1605 14.25 12 15.0895 12 16.125V18.375C12 19.4105 11.1605 20.25 10.125 20.25H4.875C3.83947 20.25 3 19.4105 3 18.375V16.125Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/rectangle-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.rectangle_stack />

      <.rectangle_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= rectangle_stack() %>

      <%= rectangle_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def rectangle_stack(assigns_or_opts \\ [])

  def rectangle_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M5.56641 4.65724C5.9435 4.55472 6.34029 4.5 6.74986 4.5H17.2499C17.6594 4.5 18.0562 4.55472 18.4333 4.65724C17.9406 3.67454 16.924 3 15.7499 3H8.24986C7.0757 3 6.0591 3.67454 5.56641 4.65724Z" fill="#0F172A"/>
    <path d="M2.25 12C2.25 10.3431 3.59315 9 5.25 9H18.75C20.4069 9 21.75 10.3431 21.75 12V18C21.75 19.6569 20.4069 21 18.75 21H5.25C3.59315 21 2.25 19.6569 2.25 18V12Z" fill="#0F172A"/>
    <path d="M5.24986 7.5C4.84029 7.5 4.4435 7.55472 4.06641 7.65724C4.5591 6.67454 5.5757 6 6.74986 6H17.2499C18.424 6 19.4406 6.67454 19.9333 7.65724C19.5562 7.55472 19.1594 7.5 18.7499 7.5H5.24986Z" fill="#0F172A"/>
    </svg>
    """
  end

  def rectangle_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.56641 4.65724C5.9435 4.55472 6.34029 4.5 6.74986 4.5H17.2499C17.6594 4.5 18.0562 4.55472 18.4333 4.65724C17.9406 3.67454 16.924 3 15.7499 3H8.24986C7.0757 3 6.0591 3.67454 5.56641 4.65724Z\" fill=\"#0F172A\"/>\n<path d=\"M2.25 12C2.25 10.3431 3.59315 9 5.25 9H18.75C20.4069 9 21.75 10.3431 21.75 12V18C21.75 19.6569 20.4069 21 18.75 21H5.25C3.59315 21 2.25 19.6569 2.25 18V12Z\" fill=\"#0F172A\"/>\n<path d=\"M5.24986 7.5C4.84029 7.5 4.4435 7.55472 4.06641 7.65724C4.5591 6.67454 5.5757 6 6.74986 6H17.2499C18.424 6 19.4406 6.67454 19.9333 7.65724C19.5562 7.55472 19.1594 7.5 18.7499 7.5H5.24986Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/rss.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.rss />

      <.rss class="h-6 w-6 text-gray-500" />

  or as a function

      <%= rss() %>

      <%= rss(class: "h-6 w-6 text-gray-500") %>
  """
  def rss(assigns_or_opts \\ [])

  def rss(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.75 4.5C3.75 4.08579 4.08579 3.75 4.5 3.75H5.25C13.5343 3.75 20.25 10.4657 20.25 18.75V19.5C20.25 19.9142 19.9142 20.25 19.5 20.25H18.75C18.3358 20.25 18 19.9142 18 19.5V18.75C18 11.7084 12.2916 6 5.25 6H4.5C4.08579 6 3.75 5.66421 3.75 5.25V4.5ZM3.75 11.25C3.75 10.8358 4.08579 10.5 4.5 10.5H5.25C9.80635 10.5 13.5 14.1937 13.5 18.75V19.5C13.5 19.9142 13.1642 20.25 12.75 20.25H12C11.5858 20.25 11.25 19.9142 11.25 19.5V18.75C11.25 15.4363 8.56371 12.75 5.25 12.75H4.5C4.08579 12.75 3.75 12.4142 3.75 12V11.25ZM3.75 18.75C3.75 17.9216 4.42157 17.25 5.25 17.25C6.07843 17.25 6.75 17.9216 6.75 18.75C6.75 19.5784 6.07843 20.25 5.25 20.25C4.42157 20.25 3.75 19.5784 3.75 18.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def rss(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.75 4.5C3.75 4.08579 4.08579 3.75 4.5 3.75H5.25C13.5343 3.75 20.25 10.4657 20.25 18.75V19.5C20.25 19.9142 19.9142 20.25 19.5 20.25H18.75C18.3358 20.25 18 19.9142 18 19.5V18.75C18 11.7084 12.2916 6 5.25 6H4.5C4.08579 6 3.75 5.66421 3.75 5.25V4.5ZM3.75 11.25C3.75 10.8358 4.08579 10.5 4.5 10.5H5.25C9.80635 10.5 13.5 14.1937 13.5 18.75V19.5C13.5 19.9142 13.1642 20.25 12.75 20.25H12C11.5858 20.25 11.25 19.9142 11.25 19.5V18.75C11.25 15.4363 8.56371 12.75 5.25 12.75H4.5C4.08579 12.75 3.75 12.4142 3.75 12V11.25ZM3.75 18.75C3.75 17.9216 4.42157 17.25 5.25 17.25C6.07843 17.25 6.75 17.9216 6.75 18.75C6.75 19.5784 6.07843 20.25 5.25 20.25C4.42157 20.25 3.75 19.5784 3.75 18.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/scale.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.scale />

      <.scale class="h-6 w-6 text-gray-500" />

  or as a function

      <%= scale() %>

      <%= scale(class: "h-6 w-6 text-gray-500") %>
  """
  def scale(assigns_or_opts \\ [])

  def scale(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C12.4142 2.25 12.75 2.58579 12.75 3V3.75565C14.8183 3.78685 16.8558 3.94691 18.8546 4.22821C19.8808 4.37264 20.8968 4.54903 21.9016 4.75634C22.2784 4.83409 22.5352 5.18431 22.4962 5.56704C22.4571 5.94977 22.1348 6.24087 21.75 6.24087H19.8324L22.306 16.3654C22.3872 16.6979 22.2331 17.0431 21.9313 17.2046C20.9827 17.7124 19.8988 18 18.75 18C17.6012 18 16.5174 17.7124 15.5687 17.2046C15.267 17.0431 15.1129 16.6979 15.1941 16.3654L17.6677 6.24087H12.75V19.5217C14.0425 19.5968 15.2843 19.8645 16.4466 20.2971C16.7867 20.4237 16.9874 20.7757 16.9231 21.1329C16.8588 21.4901 16.5479 21.75 16.185 21.75H7.81465C7.4517 21.75 7.14083 21.4901 7.07652 21.1329C7.0122 20.7757 7.2129 20.4237 7.55305 20.2971C8.71543 19.8645 9.9574 19.5967 11.25 19.5217V6.24087H6.33238L8.80598 16.3654C8.88721 16.6979 8.73307 17.0431 8.43134 17.2046C7.48271 17.7124 6.39885 18 5.25004 18C4.10124 18 3.01738 17.7124 2.06875 17.2046C1.76702 17.0431 1.61288 16.6979 1.69411 16.3654L4.16771 6.24087H2.25004C1.86532 6.24087 1.54299 5.94977 1.50392 5.56704C1.46485 5.18431 1.7217 4.83409 2.09849 4.75634C3.10325 4.54903 4.11928 4.37264 5.14552 4.22821C7.14429 3.94691 9.18169 3.78686 11.25 3.75565V3C11.25 2.58579 11.5858 2.25 12 2.25ZM16.878 15.7934L18.75 8.13096L20.6221 15.7934H16.878ZM7.12211 15.7934L5.25004 8.13096L3.37797 15.7934H7.12211Z" fill="#0F172A"/>
    </svg>
    """
  end

  def scale(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C12.4142 2.25 12.75 2.58579 12.75 3V3.75565C14.8183 3.78685 16.8558 3.94691 18.8546 4.22821C19.8808 4.37264 20.8968 4.54903 21.9016 4.75634C22.2784 4.83409 22.5352 5.18431 22.4962 5.56704C22.4571 5.94977 22.1348 6.24087 21.75 6.24087H19.8324L22.306 16.3654C22.3872 16.6979 22.2331 17.0431 21.9313 17.2046C20.9827 17.7124 19.8988 18 18.75 18C17.6012 18 16.5174 17.7124 15.5687 17.2046C15.267 17.0431 15.1129 16.6979 15.1941 16.3654L17.6677 6.24087H12.75V19.5217C14.0425 19.5968 15.2843 19.8645 16.4466 20.2971C16.7867 20.4237 16.9874 20.7757 16.9231 21.1329C16.8588 21.4901 16.5479 21.75 16.185 21.75H7.81465C7.4517 21.75 7.14083 21.4901 7.07652 21.1329C7.0122 20.7757 7.2129 20.4237 7.55305 20.2971C8.71543 19.8645 9.9574 19.5967 11.25 19.5217V6.24087H6.33238L8.80598 16.3654C8.88721 16.6979 8.73307 17.0431 8.43134 17.2046C7.48271 17.7124 6.39885 18 5.25004 18C4.10124 18 3.01738 17.7124 2.06875 17.2046C1.76702 17.0431 1.61288 16.6979 1.69411 16.3654L4.16771 6.24087H2.25004C1.86532 6.24087 1.54299 5.94977 1.50392 5.56704C1.46485 5.18431 1.7217 4.83409 2.09849 4.75634C3.10325 4.54903 4.11928 4.37264 5.14552 4.22821C7.14429 3.94691 9.18169 3.78686 11.25 3.75565V3C11.25 2.58579 11.5858 2.25 12 2.25ZM16.878 15.7934L18.75 8.13096L20.6221 15.7934H16.878ZM7.12211 15.7934L5.25004 8.13096L3.37797 15.7934H7.12211Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/scissors.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.scissors />

      <.scissors class="h-6 w-6 text-gray-500" />

  or as a function

      <%= scissors() %>

      <%= scissors(class: "h-6 w-6 text-gray-500") %>
  """
  def scissors(assigns_or_opts \\ [])

  def scissors(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8.12833 9.15465C6.98189 10.5304 4.97858 10.9236 3.37489 9.99773C1.5813 8.9622 0.966765 6.66874 2.0023 4.87514C3.03783 3.08154 5.3313 2.46701 7.12489 3.50254C8.66319 4.39068 9.33419 6.20412 8.84075 7.83392L9.97714 8.49001C10.1638 8.59775 10.295 8.78056 10.3374 8.99182C10.3799 9.20309 10.3294 9.4224 10.1989 9.59385L10.1933 9.6012C9.94809 9.92324 9.49126 9.99309 9.16144 9.75845C9.12519 9.73266 9.08749 9.70843 9.04842 9.68586L8.12833 9.15465ZM3.30134 5.62514C3.92266 4.54898 5.29874 4.18026 6.37489 4.80158C7.3896 5.38742 7.77536 6.6443 7.29525 7.68806C7.27427 7.71504 7.25489 7.74377 7.23732 7.7742C7.21056 7.82057 7.1893 7.8686 7.17336 7.91755C6.54071 8.96089 5.18679 9.31178 4.12489 8.6987C3.04874 8.07737 2.68002 6.7013 3.30134 5.62514Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M13.3484 8.27167C12.3744 8.56954 11.5401 9.1424 10.9215 9.88959C10.4538 10.4545 10.109 11.1196 9.91984 11.842C9.81853 12.2288 9.76198 12.6318 9.75505 13.0438C9.74669 13.5407 9.47822 13.9968 9.04782 14.2453L8.08883 14.799C6.93631 13.4611 4.96032 13.0872 3.37489 14.0025C1.5813 15.0381 0.966765 17.3315 2.0023 19.1251C3.03783 20.9187 5.3313 21.5333 7.12489 20.4977C8.68172 19.5989 9.35023 17.7523 8.8224 16.1075L22.5507 8.18151C22.8134 8.02983 22.9588 7.73485 22.9193 7.43409C22.8797 7.13334 22.6628 6.88606 22.3698 6.80754L21.5674 6.59253C20.6169 6.33787 19.6141 6.35542 18.6731 6.64319L13.3484 8.27167ZM4.12489 15.3016C3.04874 15.9229 2.68002 17.299 3.30134 18.3751C3.92266 19.4513 5.29874 19.82 6.37489 19.1987C7.45105 18.5774 7.81977 17.2013 7.19845 16.1251C6.57713 15.049 5.20105 14.6803 4.12489 15.3016ZM12 12.75C12.4142 12.75 12.75 12.4142 12.75 12C12.75 11.5858 12.4142 11.25 12 11.25C11.5858 11.25 11.25 11.5858 11.25 12C11.25 12.4142 11.5858 12.75 12 12.75Z" fill="#0F172A"/>
    <path d="M16.3718 12.615C16.6038 12.481 16.8897 12.481 17.1218 12.615L22.5513 15.7497C22.814 15.9014 22.9594 16.1963 22.9198 16.4971C22.8803 16.7979 22.6634 17.0451 22.3704 17.1236L21.5679 17.3387C20.6175 17.5933 19.6147 17.5758 18.6737 17.288L13.5271 15.714C13.2415 15.6267 13.035 15.3783 13.0012 15.0816C12.9674 14.785 13.1128 14.4965 13.3714 14.3473L16.3718 12.615Z" fill="#0F172A"/>
    </svg>
    """
  end

  def scissors(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8.12833 9.15465C6.98189 10.5304 4.97858 10.9236 3.37489 9.99773C1.5813 8.9622 0.966765 6.66874 2.0023 4.87514C3.03783 3.08154 5.3313 2.46701 7.12489 3.50254C8.66319 4.39068 9.33419 6.20412 8.84075 7.83392L9.97714 8.49001C10.1638 8.59775 10.295 8.78056 10.3374 8.99182C10.3799 9.20309 10.3294 9.4224 10.1989 9.59385L10.1933 9.6012C9.94809 9.92324 9.49126 9.99309 9.16144 9.75845C9.12519 9.73266 9.08749 9.70843 9.04842 9.68586L8.12833 9.15465ZM3.30134 5.62514C3.92266 4.54898 5.29874 4.18026 6.37489 4.80158C7.3896 5.38742 7.77536 6.6443 7.29525 7.68806C7.27427 7.71504 7.25489 7.74377 7.23732 7.7742C7.21056 7.82057 7.1893 7.8686 7.17336 7.91755C6.54071 8.96089 5.18679 9.31178 4.12489 8.6987C3.04874 8.07737 2.68002 6.7013 3.30134 5.62514Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M13.3484 8.27167C12.3744 8.56954 11.5401 9.1424 10.9215 9.88959C10.4538 10.4545 10.109 11.1196 9.91984 11.842C9.81853 12.2288 9.76198 12.6318 9.75505 13.0438C9.74669 13.5407 9.47822 13.9968 9.04782 14.2453L8.08883 14.799C6.93631 13.4611 4.96032 13.0872 3.37489 14.0025C1.5813 15.0381 0.966765 17.3315 2.0023 19.1251C3.03783 20.9187 5.3313 21.5333 7.12489 20.4977C8.68172 19.5989 9.35023 17.7523 8.8224 16.1075L22.5507 8.18151C22.8134 8.02983 22.9588 7.73485 22.9193 7.43409C22.8797 7.13334 22.6628 6.88606 22.3698 6.80754L21.5674 6.59253C20.6169 6.33787 19.6141 6.35542 18.6731 6.64319L13.3484 8.27167ZM4.12489 15.3016C3.04874 15.9229 2.68002 17.299 3.30134 18.3751C3.92266 19.4513 5.29874 19.82 6.37489 19.1987C7.45105 18.5774 7.81977 17.2013 7.19845 16.1251C6.57713 15.049 5.20105 14.6803 4.12489 15.3016ZM12 12.75C12.4142 12.75 12.75 12.4142 12.75 12C12.75 11.5858 12.4142 11.25 12 11.25C11.5858 11.25 11.25 11.5858 11.25 12C11.25 12.4142 11.5858 12.75 12 12.75Z\" fill=\"#0F172A\"/>\n<path d=\"M16.3718 12.615C16.6038 12.481 16.8897 12.481 17.1218 12.615L22.5513 15.7497C22.814 15.9014 22.9594 16.1963 22.9198 16.4971C22.8803 16.7979 22.6634 17.0451 22.3704 17.1236L21.5679 17.3387C20.6175 17.5933 19.6147 17.5758 18.6737 17.288L13.5271 15.714C13.2415 15.6267 13.035 15.3783 13.0012 15.0816C12.9674 14.785 13.1128 14.4965 13.3714 14.3473L16.3718 12.615Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/server-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.server_stack />

      <.server_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= server_stack() %>

      <%= server_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def server_stack(assigns_or_opts \\ [])

  def server_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M5.50701 4.04763C6.07695 3.38269 6.909 3 7.78478 3H16.2151C17.0908 3 17.9229 3.38269 18.4928 4.04763L20.2147 6.05645C19.9819 6.0193 19.7432 6 19.4999 6H4.49992C4.25668 6 4.01794 6.0193 3.78516 6.05645L5.50701 4.04763Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.5 10.5C1.5 8.84315 2.84315 7.5 4.5 7.5H19.5C21.1569 7.5 22.5 8.84315 22.5 10.5C22.5 12.1569 21.1569 13.5 19.5 13.5H4.5C2.84315 13.5 1.5 12.1569 1.5 10.5ZM16.5 10.5C16.5 10.9142 16.1642 11.25 15.75 11.25C15.3358 11.25 15 10.9142 15 10.5C15 10.0858 15.3358 9.75 15.75 9.75C16.1642 9.75 16.5 10.0858 16.5 10.5ZM18.75 11.25C19.1642 11.25 19.5 10.9142 19.5 10.5C19.5 10.0858 19.1642 9.75 18.75 9.75C18.3358 9.75 18 10.0858 18 10.5C18 10.9142 18.3358 11.25 18.75 11.25Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 15C2.84315 15 1.5 16.3431 1.5 18C1.5 19.6569 2.84315 21 4.5 21H19.5C21.1569 21 22.5 19.6569 22.5 18C22.5 16.3431 21.1569 15 19.5 15H4.5ZM15.75 18.75C16.1642 18.75 16.5 18.4142 16.5 18C16.5 17.5858 16.1642 17.25 15.75 17.25C15.3358 17.25 15 17.5858 15 18C15 18.4142 15.3358 18.75 15.75 18.75ZM19.5 18C19.5 18.4142 19.1642 18.75 18.75 18.75C18.3358 18.75 18 18.4142 18 18C18 17.5858 18.3358 17.25 18.75 17.25C19.1642 17.25 19.5 17.5858 19.5 18Z" fill="#0F172A"/>
    </svg>
    """
  end

  def server_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.50701 4.04763C6.07695 3.38269 6.909 3 7.78478 3H16.2151C17.0908 3 17.9229 3.38269 18.4928 4.04763L20.2147 6.05645C19.9819 6.0193 19.7432 6 19.4999 6H4.49992C4.25668 6 4.01794 6.0193 3.78516 6.05645L5.50701 4.04763Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.5 10.5C1.5 8.84315 2.84315 7.5 4.5 7.5H19.5C21.1569 7.5 22.5 8.84315 22.5 10.5C22.5 12.1569 21.1569 13.5 19.5 13.5H4.5C2.84315 13.5 1.5 12.1569 1.5 10.5ZM16.5 10.5C16.5 10.9142 16.1642 11.25 15.75 11.25C15.3358 11.25 15 10.9142 15 10.5C15 10.0858 15.3358 9.75 15.75 9.75C16.1642 9.75 16.5 10.0858 16.5 10.5ZM18.75 11.25C19.1642 11.25 19.5 10.9142 19.5 10.5C19.5 10.0858 19.1642 9.75 18.75 9.75C18.3358 9.75 18 10.0858 18 10.5C18 10.9142 18.3358 11.25 18.75 11.25Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 15C2.84315 15 1.5 16.3431 1.5 18C1.5 19.6569 2.84315 21 4.5 21H19.5C21.1569 21 22.5 19.6569 22.5 18C22.5 16.3431 21.1569 15 19.5 15H4.5ZM15.75 18.75C16.1642 18.75 16.5 18.4142 16.5 18C16.5 17.5858 16.1642 17.25 15.75 17.25C15.3358 17.25 15 17.5858 15 18C15 18.4142 15.3358 18.75 15.75 18.75ZM19.5 18C19.5 18.4142 19.1642 18.75 18.75 18.75C18.3358 18.75 18 18.4142 18 18C18 17.5858 18.3358 17.25 18.75 17.25C19.1642 17.25 19.5 17.5858 19.5 18Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/server.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.server />

      <.server class="h-6 w-6 text-gray-500" />

  or as a function

      <%= server() %>

      <%= server(class: "h-6 w-6 text-gray-500") %>
  """
  def server(assigns_or_opts \\ [])

  def server(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M4.07993 5.22701C4.43013 3.91375 5.61948 3 6.97863 3H17.0214C18.3805 3 19.5699 3.91375 19.9201 5.22701L22.0338 13.1535C21.1346 12.4318 19.9927 12 18.75 12H5.25C4.00727 12 2.86538 12.4318 1.96619 13.1535L4.07993 5.22701Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.25 13.5C3.17893 13.5 1.5 15.1789 1.5 17.25C1.5 19.3211 3.17893 21 5.25 21H18.75C20.8211 21 22.5 19.3211 22.5 17.25C22.5 15.1789 20.8211 13.5 18.75 13.5H5.25ZM15.75 18C16.1642 18 16.5 17.6642 16.5 17.25C16.5 16.8358 16.1642 16.5 15.75 16.5C15.3358 16.5 15 16.8358 15 17.25C15 17.6642 15.3358 18 15.75 18ZM19.5 17.25C19.5 17.6642 19.1642 18 18.75 18C18.3358 18 18 17.6642 18 17.25C18 16.8358 18.3358 16.5 18.75 16.5C19.1642 16.5 19.5 16.8358 19.5 17.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def server(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M4.07993 5.22701C4.43013 3.91375 5.61948 3 6.97863 3H17.0214C18.3805 3 19.5699 3.91375 19.9201 5.22701L22.0338 13.1535C21.1346 12.4318 19.9927 12 18.75 12H5.25C4.00727 12 2.86538 12.4318 1.96619 13.1535L4.07993 5.22701Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.25 13.5C3.17893 13.5 1.5 15.1789 1.5 17.25C1.5 19.3211 3.17893 21 5.25 21H18.75C20.8211 21 22.5 19.3211 22.5 17.25C22.5 15.1789 20.8211 13.5 18.75 13.5H5.25ZM15.75 18C16.1642 18 16.5 17.6642 16.5 17.25C16.5 16.8358 16.1642 16.5 15.75 16.5C15.3358 16.5 15 16.8358 15 17.25C15 17.6642 15.3358 18 15.75 18ZM19.5 17.25C19.5 17.6642 19.1642 18 18.75 18C18.3358 18 18 17.6642 18 17.25C18 16.8358 18.3358 16.5 18.75 16.5C19.1642 16.5 19.5 16.8358 19.5 17.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/share.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.share />

      <.share class="h-6 w-6 text-gray-500" />

  or as a function

      <%= share() %>

      <%= share(class: "h-6 w-6 text-gray-500") %>
  """
  def share(assigns_or_opts \\ [])

  def share(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15.75 4.5C15.75 2.84315 17.0931 1.5 18.75 1.5C20.4069 1.5 21.75 2.84315 21.75 4.5C21.75 6.15685 20.4069 7.5 18.75 7.5C17.8933 7.5 17.1212 7.14074 16.5751 6.56624L8.15392 11.2447C8.21665 11.4863 8.25 11.7395 8.25 12C8.25 12.2605 8.21665 12.5137 8.15392 12.7553L16.5751 17.4338C17.1212 16.8593 17.8933 16.5 18.75 16.5C20.4069 16.5 21.75 17.8431 21.75 19.5C21.75 21.1569 20.4069 22.5 18.75 22.5C17.0931 22.5 15.75 21.1569 15.75 19.5C15.75 19.2395 15.7833 18.9863 15.8461 18.7447L7.42488 14.0662C6.87885 14.6407 6.10667 15 5.25 15C3.59315 15 2.25 13.6569 2.25 12C2.25 10.3431 3.59315 9 5.25 9C6.10667 9 6.87885 9.35926 7.42488 9.93377L15.8461 5.25532C15.7833 5.01367 15.75 4.76045 15.75 4.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def share(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15.75 4.5C15.75 2.84315 17.0931 1.5 18.75 1.5C20.4069 1.5 21.75 2.84315 21.75 4.5C21.75 6.15685 20.4069 7.5 18.75 7.5C17.8933 7.5 17.1212 7.14074 16.5751 6.56624L8.15392 11.2447C8.21665 11.4863 8.25 11.7395 8.25 12C8.25 12.2605 8.21665 12.5137 8.15392 12.7553L16.5751 17.4338C17.1212 16.8593 17.8933 16.5 18.75 16.5C20.4069 16.5 21.75 17.8431 21.75 19.5C21.75 21.1569 20.4069 22.5 18.75 22.5C17.0931 22.5 15.75 21.1569 15.75 19.5C15.75 19.2395 15.7833 18.9863 15.8461 18.7447L7.42488 14.0662C6.87885 14.6407 6.10667 15 5.25 15C3.59315 15 2.25 13.6569 2.25 12C2.25 10.3431 3.59315 9 5.25 9C6.10667 9 6.87885 9.35926 7.42488 9.93377L15.8461 5.25532C15.7833 5.01367 15.75 4.76045 15.75 4.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/shield-check.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.shield_check />

      <.shield_check class="h-6 w-6 text-gray-500" />

  or as a function

      <%= shield_check() %>

      <%= shield_check(class: "h-6 w-6 text-gray-500") %>
  """
  def shield_check(assigns_or_opts \\ [])

  def shield_check(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.5157 2.1698C12.2265 1.89587 11.7735 1.89587 11.4843 2.1698C9.46752 4.07977 6.74624 5.25011 3.75 5.25011C3.70233 5.25011 3.65473 5.24981 3.60721 5.24922C3.27984 5.24515 2.98767 5.4539 2.88541 5.76491C2.47287 7.01968 2.25 8.35963 2.25 9.75015C2.25 15.6922 6.31406 20.6831 11.8131 22.0984C11.9357 22.13 12.0643 22.13 12.1869 22.0984C17.6859 20.6831 21.75 15.6922 21.75 9.75015C21.75 8.35963 21.5271 7.01968 21.1146 5.76491C21.0123 5.4539 20.7202 5.24515 20.3928 5.24922C20.3453 5.24981 20.2977 5.25011 20.25 5.25011C17.2538 5.25011 14.5325 4.07977 12.5157 2.1698ZM15.6103 10.1859C15.8511 9.84887 15.773 9.38046 15.4359 9.1397C15.0989 8.89894 14.6305 8.97701 14.3897 9.31407L11.1543 13.8436L9.53033 12.2197C9.23744 11.9268 8.76256 11.9268 8.46967 12.2197C8.17678 12.5126 8.17678 12.9874 8.46967 13.2803L10.7197 15.5303C10.8756 15.6862 11.0921 15.7656 11.3119 15.7474C11.5316 15.7293 11.7322 15.6153 11.8603 15.4359L15.6103 10.1859Z" fill="#0F172A"/>
    </svg>
    """
  end

  def shield_check(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12.5157 2.1698C12.2265 1.89587 11.7735 1.89587 11.4843 2.1698C9.46752 4.07977 6.74624 5.25011 3.75 5.25011C3.70233 5.25011 3.65473 5.24981 3.60721 5.24922C3.27984 5.24515 2.98767 5.4539 2.88541 5.76491C2.47287 7.01968 2.25 8.35963 2.25 9.75015C2.25 15.6922 6.31406 20.6831 11.8131 22.0984C11.9357 22.13 12.0643 22.13 12.1869 22.0984C17.6859 20.6831 21.75 15.6922 21.75 9.75015C21.75 8.35963 21.5271 7.01968 21.1146 5.76491C21.0123 5.4539 20.7202 5.24515 20.3928 5.24922C20.3453 5.24981 20.2977 5.25011 20.25 5.25011C17.2538 5.25011 14.5325 4.07977 12.5157 2.1698ZM15.6103 10.1859C15.8511 9.84887 15.773 9.38046 15.4359 9.1397C15.0989 8.89894 14.6305 8.97701 14.3897 9.31407L11.1543 13.8436L9.53033 12.2197C9.23744 11.9268 8.76256 11.9268 8.46967 12.2197C8.17678 12.5126 8.17678 12.9874 8.46967 13.2803L10.7197 15.5303C10.8756 15.6862 11.0921 15.7656 11.3119 15.7474C11.5316 15.7293 11.7322 15.6153 11.8603 15.4359L15.6103 10.1859Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/shield-exclamation.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.shield_exclamation />

      <.shield_exclamation class="h-6 w-6 text-gray-500" />

  or as a function

      <%= shield_exclamation() %>

      <%= shield_exclamation(class: "h-6 w-6 text-gray-500") %>
  """
  def shield_exclamation(assigns_or_opts \\ [])

  def shield_exclamation(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M11.4843 2.1698C11.7735 1.89587 12.2265 1.89587 12.5157 2.1698C14.5325 4.07977 17.2538 5.25011 20.25 5.25011C20.2977 5.25011 20.3453 5.24981 20.3928 5.24922C20.7202 5.24515 21.0123 5.4539 21.1146 5.76491C21.5271 7.01968 21.75 8.35963 21.75 9.75015C21.75 15.6922 17.6859 20.6831 12.1869 22.0984C12.0643 22.13 11.9357 22.13 11.8131 22.0984C6.31406 20.6831 2.25 15.6922 2.25 9.75015C2.25 8.35963 2.47287 7.01968 2.88541 5.76491C2.98767 5.4539 3.27984 5.24515 3.60721 5.24922C3.65473 5.24981 3.70233 5.25011 3.75 5.25011C6.74624 5.25011 9.46752 4.07977 11.4843 2.1698ZM12 8.25009C12.4142 8.25009 12.75 8.58588 12.75 9.00009V12.7501C12.75 13.1643 12.4142 13.5001 12 13.5001C11.5858 13.5001 11.25 13.1643 11.25 12.7501V9.00009C11.25 8.58588 11.5858 8.25009 12 8.25009ZM12 15.0001C11.5858 15.0001 11.25 15.3359 11.25 15.7501V15.7576C11.25 16.1718 11.5858 16.5076 12 16.5076H12.0075C12.4217 16.5076 12.7575 16.1718 12.7575 15.7576V15.7501C12.7575 15.3359 12.4217 15.0001 12.0075 15.0001H12Z" fill="#0F172A"/>
    </svg>
    """
  end

  def shield_exclamation(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.4843 2.1698C11.7735 1.89587 12.2265 1.89587 12.5157 2.1698C14.5325 4.07977 17.2538 5.25011 20.25 5.25011C20.2977 5.25011 20.3453 5.24981 20.3928 5.24922C20.7202 5.24515 21.0123 5.4539 21.1146 5.76491C21.5271 7.01968 21.75 8.35963 21.75 9.75015C21.75 15.6922 17.6859 20.6831 12.1869 22.0984C12.0643 22.13 11.9357 22.13 11.8131 22.0984C6.31406 20.6831 2.25 15.6922 2.25 9.75015C2.25 8.35963 2.47287 7.01968 2.88541 5.76491C2.98767 5.4539 3.27984 5.24515 3.60721 5.24922C3.65473 5.24981 3.70233 5.25011 3.75 5.25011C6.74624 5.25011 9.46752 4.07977 11.4843 2.1698ZM12 8.25009C12.4142 8.25009 12.75 8.58588 12.75 9.00009V12.7501C12.75 13.1643 12.4142 13.5001 12 13.5001C11.5858 13.5001 11.25 13.1643 11.25 12.7501V9.00009C11.25 8.58588 11.5858 8.25009 12 8.25009ZM12 15.0001C11.5858 15.0001 11.25 15.3359 11.25 15.7501V15.7576C11.25 16.1718 11.5858 16.5076 12 16.5076H12.0075C12.4217 16.5076 12.7575 16.1718 12.7575 15.7576V15.7501C12.7575 15.3359 12.4217 15.0001 12.0075 15.0001H12Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/shopping-bag.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.shopping_bag />

      <.shopping_bag class="h-6 w-6 text-gray-500" />

  or as a function

      <%= shopping_bag() %>

      <%= shopping_bag(class: "h-6 w-6 text-gray-500") %>
  """
  def shopping_bag(assigns_or_opts \\ [])

  def shopping_bag(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.5 6V6.75H5.51287C4.55332 6.75 3.74862 7.47444 3.64817 8.42872L2.38502 20.4287C2.26848 21.5358 3.13652 22.5 4.24971 22.5H19.7504C20.8636 22.5 21.7317 21.5358 21.6151 20.4287L20.352 8.42872C20.2515 7.47444 19.4468 6.75 18.4873 6.75H16.5V6C16.5 3.51472 14.4853 1.5 12 1.5C9.51472 1.5 7.5 3.51472 7.5 6ZM12 3C10.3431 3 9 4.34315 9 6V6.75H15V6C15 4.34315 13.6569 3 12 3ZM9 11.25C9 12.9069 10.3431 14.25 12 14.25C13.6569 14.25 15 12.9069 15 11.25V10.5C15 10.0858 15.3358 9.75 15.75 9.75C16.1642 9.75 16.5 10.0858 16.5 10.5V11.25C16.5 13.7353 14.4853 15.75 12 15.75C9.51472 15.75 7.5 13.7353 7.5 11.25V10.5C7.5 10.0858 7.83579 9.75 8.25 9.75C8.66421 9.75 9 10.0858 9 10.5V11.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def shopping_bag(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.5 6V6.75H5.51287C4.55332 6.75 3.74862 7.47444 3.64817 8.42872L2.38502 20.4287C2.26848 21.5358 3.13652 22.5 4.24971 22.5H19.7504C20.8636 22.5 21.7317 21.5358 21.6151 20.4287L20.352 8.42872C20.2515 7.47444 19.4468 6.75 18.4873 6.75H16.5V6C16.5 3.51472 14.4853 1.5 12 1.5C9.51472 1.5 7.5 3.51472 7.5 6ZM12 3C10.3431 3 9 4.34315 9 6V6.75H15V6C15 4.34315 13.6569 3 12 3ZM9 11.25C9 12.9069 10.3431 14.25 12 14.25C13.6569 14.25 15 12.9069 15 11.25V10.5C15 10.0858 15.3358 9.75 15.75 9.75C16.1642 9.75 16.5 10.0858 16.5 10.5V11.25C16.5 13.7353 14.4853 15.75 12 15.75C9.51472 15.75 7.5 13.7353 7.5 11.25V10.5C7.5 10.0858 7.83579 9.75 8.25 9.75C8.66421 9.75 9 10.0858 9 10.5V11.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/shopping-cart.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.shopping_cart />

      <.shopping_cart class="h-6 w-6 text-gray-500" />

  or as a function

      <%= shopping_cart() %>

      <%= shopping_cart(class: "h-6 w-6 text-gray-500") %>
  """
  def shopping_cart(assigns_or_opts \\ [])

  def shopping_cart(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M2.25 2.25C1.83579 2.25 1.5 2.58579 1.5 3C1.5 3.41421 1.83579 3.75 2.25 3.75H3.63568C3.80558 3.75 3.95425 3.86422 3.99803 4.02838L6.55576 13.6199C4.94178 14.0385 3.75 15.5051 3.75 17.25C3.75 17.6642 4.08579 18 4.5 18H20.25C20.6642 18 21 17.6642 21 17.25C21 16.8358 20.6642 16.5 20.25 16.5H5.37803C5.68691 15.6261 6.52034 15 7.5 15H18.7183C19.0051 15 19.2668 14.8364 19.3925 14.5785C20.5277 12.249 21.5183 9.83603 22.3527 7.35126C22.4191 7.15357 22.4002 6.93716 22.3005 6.75399C22.2008 6.57082 22.0294 6.43743 21.8273 6.38583C17.0055 5.15442 11.9536 4.5 6.75 4.5C6.39217 4.5 6.03505 4.5031 5.67868 4.50926L5.44738 3.64188C5.2285 2.82109 4.48515 2.25 3.63568 2.25H2.25Z" fill="#0F172A"/>
    <path d="M3.75 20.25C3.75 19.4216 4.42157 18.75 5.25 18.75C6.07843 18.75 6.75 19.4216 6.75 20.25C6.75 21.0784 6.07843 21.75 5.25 21.75C4.42157 21.75 3.75 21.0784 3.75 20.25Z" fill="#0F172A"/>
    <path d="M16.5 20.25C16.5 19.4216 17.1716 18.75 18 18.75C18.8284 18.75 19.5 19.4216 19.5 20.25C19.5 21.0784 18.8284 21.75 18 21.75C17.1716 21.75 16.5 21.0784 16.5 20.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def shopping_cart(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M2.25 2.25C1.83579 2.25 1.5 2.58579 1.5 3C1.5 3.41421 1.83579 3.75 2.25 3.75H3.63568C3.80558 3.75 3.95425 3.86422 3.99803 4.02838L6.55576 13.6199C4.94178 14.0385 3.75 15.5051 3.75 17.25C3.75 17.6642 4.08579 18 4.5 18H20.25C20.6642 18 21 17.6642 21 17.25C21 16.8358 20.6642 16.5 20.25 16.5H5.37803C5.68691 15.6261 6.52034 15 7.5 15H18.7183C19.0051 15 19.2668 14.8364 19.3925 14.5785C20.5277 12.249 21.5183 9.83603 22.3527 7.35126C22.4191 7.15357 22.4002 6.93716 22.3005 6.75399C22.2008 6.57082 22.0294 6.43743 21.8273 6.38583C17.0055 5.15442 11.9536 4.5 6.75 4.5C6.39217 4.5 6.03505 4.5031 5.67868 4.50926L5.44738 3.64188C5.2285 2.82109 4.48515 2.25 3.63568 2.25H2.25Z\" fill=\"#0F172A\"/>\n<path d=\"M3.75 20.25C3.75 19.4216 4.42157 18.75 5.25 18.75C6.07843 18.75 6.75 19.4216 6.75 20.25C6.75 21.0784 6.07843 21.75 5.25 21.75C4.42157 21.75 3.75 21.0784 3.75 20.25Z\" fill=\"#0F172A\"/>\n<path d=\"M16.5 20.25C16.5 19.4216 17.1716 18.75 18 18.75C18.8284 18.75 19.5 19.4216 19.5 20.25C19.5 21.0784 18.8284 21.75 18 21.75C17.1716 21.75 16.5 21.0784 16.5 20.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/signal-slash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.signal_slash />

      <.signal_slash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= signal_slash() %>

      <%= signal_slash(class: "h-6 w-6 text-gray-500") %>
  """
  def signal_slash(assigns_or_opts \\ [])

  def signal_slash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.46968 2.46967C2.76257 2.17678 3.23744 2.17678 3.53034 2.46967L11.9374 10.8767C11.9581 10.8756 11.979 10.875 12 10.875C12.6213 10.875 13.125 11.3787 13.125 12C13.125 12.021 13.1244 12.0419 13.1233 12.0626L14.5848 13.5242C15.2643 12.3737 15.1098 10.8671 14.1213 9.87868C13.8284 9.58579 13.8284 9.11091 14.1213 8.81802C14.4142 8.52513 14.8891 8.52513 15.182 8.81802C16.7587 10.3947 16.9208 12.8503 15.6683 14.6077L16.7402 15.6795C18.572 13.3257 18.4062 9.9209 16.2426 7.75736C15.9498 7.46447 15.9498 6.98959 16.2426 6.6967C16.5355 6.40381 17.0104 6.40381 17.3033 6.6967C20.0533 9.44665 20.2213 13.8008 17.8075 16.7468L18.8725 17.8118C21.8696 14.2758 21.7001 8.97217 18.364 5.63604C18.0711 5.34315 18.0711 4.86827 18.364 4.57538C18.6569 4.28249 19.1317 4.28249 19.4246 4.57538C23.3468 8.49757 23.5174 14.7507 19.9363 18.8756L21.5303 20.4697C21.8232 20.7626 21.8232 21.2374 21.5303 21.5303C21.2374 21.8232 20.7626 21.8232 20.4697 21.5303L18.3644 19.4251L16.2426 17.3033L16.242 17.3027L11.5366 12.5972C11.4896 12.5603 11.4472 12.5179 11.4103 12.4709L2.46968 3.53033C2.17678 3.23744 2.17678 2.76256 2.46968 2.46967ZM3.65854 6.89187C4.02729 7.08054 4.17326 7.53242 3.98459 7.90117C2.25352 11.2844 2.80534 15.5333 5.63605 18.364C5.92894 18.6569 5.92894 19.1317 5.63605 19.4246C5.34315 19.7175 4.86828 19.7175 4.57539 19.4246C1.27115 16.1204 0.630437 11.1635 2.64924 7.21792C2.83791 6.84917 3.28979 6.70319 3.65854 6.89187ZM5.84076 9.13355C6.23339 9.2655 6.44473 9.69075 6.31278 10.0834C5.6094 12.1765 6.09233 14.5776 7.75737 16.2426C8.05026 16.5355 8.05026 17.0104 7.75737 17.3033C7.46447 17.5962 6.9896 17.5962 6.69671 17.3033C4.61367 15.2203 4.01314 12.2177 4.89092 9.60558C5.02286 9.21294 5.44812 9.00161 5.84076 9.13355ZM8.182 11.7875C8.5921 11.7293 8.97176 12.0145 9.02999 12.4246C9.11816 13.0455 9.40043 13.6431 9.87869 14.1213C10.1716 14.4142 10.1716 14.8891 9.87869 15.182C9.58579 15.4749 9.11092 15.4749 8.81803 15.182C8.10217 14.4661 7.67717 13.5671 7.54489 12.6355C7.48666 12.2254 7.7719 11.8458 8.182 11.7875Z" fill="#0F172A"/>
    </svg>
    """
  end

  def signal_slash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.46968 2.46967C2.76257 2.17678 3.23744 2.17678 3.53034 2.46967L11.9374 10.8767C11.9581 10.8756 11.979 10.875 12 10.875C12.6213 10.875 13.125 11.3787 13.125 12C13.125 12.021 13.1244 12.0419 13.1233 12.0626L14.5848 13.5242C15.2643 12.3737 15.1098 10.8671 14.1213 9.87868C13.8284 9.58579 13.8284 9.11091 14.1213 8.81802C14.4142 8.52513 14.8891 8.52513 15.182 8.81802C16.7587 10.3947 16.9208 12.8503 15.6683 14.6077L16.7402 15.6795C18.572 13.3257 18.4062 9.9209 16.2426 7.75736C15.9498 7.46447 15.9498 6.98959 16.2426 6.6967C16.5355 6.40381 17.0104 6.40381 17.3033 6.6967C20.0533 9.44665 20.2213 13.8008 17.8075 16.7468L18.8725 17.8118C21.8696 14.2758 21.7001 8.97217 18.364 5.63604C18.0711 5.34315 18.0711 4.86827 18.364 4.57538C18.6569 4.28249 19.1317 4.28249 19.4246 4.57538C23.3468 8.49757 23.5174 14.7507 19.9363 18.8756L21.5303 20.4697C21.8232 20.7626 21.8232 21.2374 21.5303 21.5303C21.2374 21.8232 20.7626 21.8232 20.4697 21.5303L18.3644 19.4251L16.2426 17.3033L16.242 17.3027L11.5366 12.5972C11.4896 12.5603 11.4472 12.5179 11.4103 12.4709L2.46968 3.53033C2.17678 3.23744 2.17678 2.76256 2.46968 2.46967ZM3.65854 6.89187C4.02729 7.08054 4.17326 7.53242 3.98459 7.90117C2.25352 11.2844 2.80534 15.5333 5.63605 18.364C5.92894 18.6569 5.92894 19.1317 5.63605 19.4246C5.34315 19.7175 4.86828 19.7175 4.57539 19.4246C1.27115 16.1204 0.630437 11.1635 2.64924 7.21792C2.83791 6.84917 3.28979 6.70319 3.65854 6.89187ZM5.84076 9.13355C6.23339 9.2655 6.44473 9.69075 6.31278 10.0834C5.6094 12.1765 6.09233 14.5776 7.75737 16.2426C8.05026 16.5355 8.05026 17.0104 7.75737 17.3033C7.46447 17.5962 6.9896 17.5962 6.69671 17.3033C4.61367 15.2203 4.01314 12.2177 4.89092 9.60558C5.02286 9.21294 5.44812 9.00161 5.84076 9.13355ZM8.182 11.7875C8.5921 11.7293 8.97176 12.0145 9.02999 12.4246C9.11816 13.0455 9.40043 13.6431 9.87869 14.1213C10.1716 14.4142 10.1716 14.8891 9.87869 15.182C9.58579 15.4749 9.11092 15.4749 8.81803 15.182C8.10217 14.4661 7.67717 13.5671 7.54489 12.6355C7.48666 12.2254 7.7719 11.8458 8.182 11.7875Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/signal.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.signal />

      <.signal class="h-6 w-6 text-gray-500" />

  or as a function

      <%= signal() %>

      <%= signal(class: "h-6 w-6 text-gray-500") %>
  """
  def signal(assigns_or_opts \\ [])

  def signal(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.63604 4.57514C5.92893 4.86803 5.92893 5.34291 5.63604 5.6358C2.12132 9.15052 2.12132 14.849 5.63604 18.3637C5.92893 18.6566 5.92893 19.1315 5.63604 19.4244C5.34315 19.7173 4.86827 19.7173 4.57538 19.4244C0.474874 15.3239 0.474873 8.67564 4.57538 4.57514C4.86827 4.28225 5.34315 4.28225 5.63604 4.57514ZM18.364 4.57514C18.6569 4.28225 19.1317 4.28225 19.4246 4.57514C23.5251 8.67564 23.5251 15.3239 19.4246 19.4244C19.1317 19.7173 18.6569 19.7173 18.364 19.4244C18.0711 19.1315 18.0711 18.6566 18.364 18.3637C21.8787 14.849 21.8787 9.15052 18.364 5.6358C18.0711 5.34291 18.0711 4.86803 18.364 4.57514ZM7.75736 6.69646C8.05025 6.98935 8.05025 7.46423 7.75736 7.75712C5.41421 10.1003 5.41421 13.8993 7.75736 16.2424C8.05025 16.5353 8.05025 17.0102 7.75736 17.3031C7.46447 17.596 6.98959 17.596 6.6967 17.3031C3.76777 14.3741 3.76777 9.62539 6.6967 6.69646C6.98959 6.40357 7.46447 6.40357 7.75736 6.69646ZM16.2426 6.69646C16.5355 6.40357 17.0104 6.40357 17.3033 6.69646C20.2322 9.62539 20.2322 14.3741 17.3033 17.3031C17.0104 17.596 16.5355 17.596 16.2426 17.3031C15.9497 17.0102 15.9497 16.5353 16.2426 16.2424C18.5858 13.8993 18.5858 10.1003 16.2426 7.75712C15.9497 7.46423 15.9497 6.98935 16.2426 6.69646ZM9.87868 8.81778C10.1716 9.11067 10.1716 9.58555 9.87868 9.87844C8.70711 11.05 8.70711 12.9495 9.87868 14.1211C10.1716 14.414 10.1716 14.8888 9.87868 15.1817C9.58579 15.4746 9.11091 15.4746 8.81802 15.1817C7.06066 13.4244 7.06066 10.5751 8.81802 8.81778C9.11091 8.52489 9.58579 8.52489 9.87868 8.81778ZM14.1213 8.81778C14.4142 8.52489 14.8891 8.52489 15.182 8.81778C16.9393 10.5751 16.9393 13.4244 15.182 15.1817C14.8891 15.4746 14.4142 15.4746 14.1213 15.1817C13.8284 14.8888 13.8284 14.414 14.1213 14.1211C15.2929 12.9495 15.2929 11.05 14.1213 9.87844C13.8284 9.58555 13.8284 9.11067 14.1213 8.81778ZM10.875 11.9998C10.875 11.3784 11.3787 10.8748 12 10.8748C12.6213 10.8748 13.125 11.3784 13.125 11.9998C13.125 12.6211 12.6213 13.1248 12 13.1248C11.3787 13.1248 10.875 12.6211 10.875 11.9998Z" fill="#0F172A"/>
    </svg>
    """
  end

  def signal(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.63604 4.57514C5.92893 4.86803 5.92893 5.34291 5.63604 5.6358C2.12132 9.15052 2.12132 14.849 5.63604 18.3637C5.92893 18.6566 5.92893 19.1315 5.63604 19.4244C5.34315 19.7173 4.86827 19.7173 4.57538 19.4244C0.474874 15.3239 0.474873 8.67564 4.57538 4.57514C4.86827 4.28225 5.34315 4.28225 5.63604 4.57514ZM18.364 4.57514C18.6569 4.28225 19.1317 4.28225 19.4246 4.57514C23.5251 8.67564 23.5251 15.3239 19.4246 19.4244C19.1317 19.7173 18.6569 19.7173 18.364 19.4244C18.0711 19.1315 18.0711 18.6566 18.364 18.3637C21.8787 14.849 21.8787 9.15052 18.364 5.6358C18.0711 5.34291 18.0711 4.86803 18.364 4.57514ZM7.75736 6.69646C8.05025 6.98935 8.05025 7.46423 7.75736 7.75712C5.41421 10.1003 5.41421 13.8993 7.75736 16.2424C8.05025 16.5353 8.05025 17.0102 7.75736 17.3031C7.46447 17.596 6.98959 17.596 6.6967 17.3031C3.76777 14.3741 3.76777 9.62539 6.6967 6.69646C6.98959 6.40357 7.46447 6.40357 7.75736 6.69646ZM16.2426 6.69646C16.5355 6.40357 17.0104 6.40357 17.3033 6.69646C20.2322 9.62539 20.2322 14.3741 17.3033 17.3031C17.0104 17.596 16.5355 17.596 16.2426 17.3031C15.9497 17.0102 15.9497 16.5353 16.2426 16.2424C18.5858 13.8993 18.5858 10.1003 16.2426 7.75712C15.9497 7.46423 15.9497 6.98935 16.2426 6.69646ZM9.87868 8.81778C10.1716 9.11067 10.1716 9.58555 9.87868 9.87844C8.70711 11.05 8.70711 12.9495 9.87868 14.1211C10.1716 14.414 10.1716 14.8888 9.87868 15.1817C9.58579 15.4746 9.11091 15.4746 8.81802 15.1817C7.06066 13.4244 7.06066 10.5751 8.81802 8.81778C9.11091 8.52489 9.58579 8.52489 9.87868 8.81778ZM14.1213 8.81778C14.4142 8.52489 14.8891 8.52489 15.182 8.81778C16.9393 10.5751 16.9393 13.4244 15.182 15.1817C14.8891 15.4746 14.4142 15.4746 14.1213 15.1817C13.8284 14.8888 13.8284 14.414 14.1213 14.1211C15.2929 12.9495 15.2929 11.05 14.1213 9.87844C13.8284 9.58555 13.8284 9.11067 14.1213 8.81778ZM10.875 11.9998C10.875 11.3784 11.3787 10.8748 12 10.8748C12.6213 10.8748 13.125 11.3784 13.125 11.9998C13.125 12.6211 12.6213 13.1248 12 13.1248C11.3787 13.1248 10.875 12.6211 10.875 11.9998Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/sparkles.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.sparkles />

      <.sparkles class="h-6 w-6 text-gray-500" />

  or as a function

      <%= sparkles() %>

      <%= sparkles(class: "h-6 w-6 text-gray-500") %>
  """
  def sparkles(assigns_or_opts \\ [])

  def sparkles(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M9 4.5C9.33486 4.5 9.62915 4.72198 9.72114 5.04396L10.5343 7.89015C10.8903 9.13593 11.8641 10.1097 13.1099 10.4657L15.956 11.2789C16.278 11.3709 16.5 11.6651 16.5 12C16.5 12.3349 16.278 12.6291 15.956 12.7211L13.1099 13.5343C11.8641 13.8903 10.8903 14.8641 10.5343 16.1099L9.72114 18.956C9.62915 19.278 9.33486 19.5 9 19.5C8.66514 19.5 8.37085 19.278 8.27886 18.956L7.46566 16.1099C7.10972 14.8641 6.13593 13.8903 4.89015 13.5343L2.04396 12.7211C1.72198 12.6291 1.5 12.3349 1.5 12C1.5 11.6651 1.72198 11.3709 2.04396 11.2789L4.89015 10.4657C6.13593 10.1097 7.10972 9.13593 7.46566 7.89015L8.27886 5.04396C8.37085 4.72198 8.66514 4.5 9 4.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M18 1.5C18.3442 1.5 18.6441 1.73422 18.7276 2.0681L18.9865 3.10356C19.2216 4.04406 19.9559 4.7784 20.8964 5.01353L21.9319 5.27239C22.2658 5.35586 22.5 5.65585 22.5 6C22.5 6.34415 22.2658 6.64414 21.9319 6.72761L20.8964 6.98647C19.9559 7.2216 19.2216 7.95594 18.9865 8.89644L18.7276 9.9319C18.6441 10.2658 18.3442 10.5 18 10.5C17.6558 10.5 17.3559 10.2658 17.2724 9.9319L17.0135 8.89644C16.7784 7.95594 16.0441 7.2216 15.1036 6.98647L14.0681 6.72761C13.7342 6.64414 13.5 6.34415 13.5 6C13.5 5.65585 13.7342 5.35586 14.0681 5.27239L15.1036 5.01353C16.0441 4.7784 16.7784 4.04406 17.0135 3.10356L17.2724 2.0681C17.3559 1.73422 17.6558 1.5 18 1.5Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M16.5 15C16.8228 15 17.1094 15.2066 17.2115 15.5128L17.6058 16.6956C17.7551 17.1435 18.1065 17.4949 18.5544 17.6442L19.7372 18.0385C20.0434 18.1406 20.25 18.4272 20.25 18.75C20.25 19.0728 20.0434 19.3594 19.7372 19.4615L18.5544 19.8558C18.1065 20.0051 17.7551 20.3565 17.6058 20.8044L17.2115 21.9872C17.1094 22.2934 16.8228 22.5 16.5 22.5C16.1772 22.5 15.8906 22.2934 15.7885 21.9872L15.3942 20.8044C15.2449 20.3565 14.8935 20.0051 14.4456 19.8558L13.2628 19.4615C12.9566 19.3594 12.75 19.0728 12.75 18.75C12.75 18.4272 12.9566 18.1406 13.2628 18.0385L14.4456 17.6442C14.8935 17.4949 15.2449 17.1435 15.3942 16.6956L15.7885 15.5128C15.8906 15.2066 16.1772 15 16.5 15Z" fill="#0F172A"/>
    </svg>
    """
  end

  def sparkles(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9 4.5C9.33486 4.5 9.62915 4.72198 9.72114 5.04396L10.5343 7.89015C10.8903 9.13593 11.8641 10.1097 13.1099 10.4657L15.956 11.2789C16.278 11.3709 16.5 11.6651 16.5 12C16.5 12.3349 16.278 12.6291 15.956 12.7211L13.1099 13.5343C11.8641 13.8903 10.8903 14.8641 10.5343 16.1099L9.72114 18.956C9.62915 19.278 9.33486 19.5 9 19.5C8.66514 19.5 8.37085 19.278 8.27886 18.956L7.46566 16.1099C7.10972 14.8641 6.13593 13.8903 4.89015 13.5343L2.04396 12.7211C1.72198 12.6291 1.5 12.3349 1.5 12C1.5 11.6651 1.72198 11.3709 2.04396 11.2789L4.89015 10.4657C6.13593 10.1097 7.10972 9.13593 7.46566 7.89015L8.27886 5.04396C8.37085 4.72198 8.66514 4.5 9 4.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M18 1.5C18.3442 1.5 18.6441 1.73422 18.7276 2.0681L18.9865 3.10356C19.2216 4.04406 19.9559 4.7784 20.8964 5.01353L21.9319 5.27239C22.2658 5.35586 22.5 5.65585 22.5 6C22.5 6.34415 22.2658 6.64414 21.9319 6.72761L20.8964 6.98647C19.9559 7.2216 19.2216 7.95594 18.9865 8.89644L18.7276 9.9319C18.6441 10.2658 18.3442 10.5 18 10.5C17.6558 10.5 17.3559 10.2658 17.2724 9.9319L17.0135 8.89644C16.7784 7.95594 16.0441 7.2216 15.1036 6.98647L14.0681 6.72761C13.7342 6.64414 13.5 6.34415 13.5 6C13.5 5.65585 13.7342 5.35586 14.0681 5.27239L15.1036 5.01353C16.0441 4.7784 16.7784 4.04406 17.0135 3.10356L17.2724 2.0681C17.3559 1.73422 17.6558 1.5 18 1.5Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M16.5 15C16.8228 15 17.1094 15.2066 17.2115 15.5128L17.6058 16.6956C17.7551 17.1435 18.1065 17.4949 18.5544 17.6442L19.7372 18.0385C20.0434 18.1406 20.25 18.4272 20.25 18.75C20.25 19.0728 20.0434 19.3594 19.7372 19.4615L18.5544 19.8558C18.1065 20.0051 17.7551 20.3565 17.6058 20.8044L17.2115 21.9872C17.1094 22.2934 16.8228 22.5 16.5 22.5C16.1772 22.5 15.8906 22.2934 15.7885 21.9872L15.3942 20.8044C15.2449 20.3565 14.8935 20.0051 14.4456 19.8558L13.2628 19.4615C12.9566 19.3594 12.75 19.0728 12.75 18.75C12.75 18.4272 12.9566 18.1406 13.2628 18.0385L14.4456 17.6442C14.8935 17.4949 15.2449 17.1435 15.3942 16.6956L15.7885 15.5128C15.8906 15.2066 16.1772 15 16.5 15Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/speaker-wave.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.speaker_wave />

      <.speaker_wave class="h-6 w-6 text-gray-500" />

  or as a function

      <%= speaker_wave() %>

      <%= speaker_wave(class: "h-6 w-6 text-gray-500") %>
  """
  def speaker_wave(assigns_or_opts \\ [])

  def speaker_wave(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M13.5 4.06063C13.5 2.72427 11.8843 2.05501 10.9393 2.99996L6.43934 7.49997H4.50905C3.36772 7.49997 2.19106 8.16441 1.8493 9.40502C1.62147 10.2321 1.5 11.1024 1.5 12C1.5 12.8975 1.62147 13.7678 1.8493 14.5949C2.19106 15.8355 3.36772 16.5 4.50905 16.5H6.43934L10.9393 21C11.8843 21.9449 13.5 21.2757 13.5 19.9393V4.06063Z" fill="#0F172A"/>
    <path d="M18.5837 5.10561C18.8766 4.81272 19.3514 4.81272 19.6443 5.10561C23.452 8.91322 23.452 15.0866 19.6443 18.8942C19.3514 19.1871 18.8766 19.1871 18.5837 18.8942C18.2908 18.6013 18.2908 18.1264 18.5837 17.8335C21.8055 14.6117 21.8055 9.38809 18.5837 6.16627C18.2908 5.87338 18.2908 5.3985 18.5837 5.10561Z" fill="#0F172A"/>
    <path d="M15.9323 7.75734C16.2252 7.46445 16.7001 7.46445 16.993 7.75734C19.3361 10.1005 19.3361 13.8995 16.993 16.2426C16.7001 16.5355 16.2252 16.5355 15.9323 16.2426C15.6394 15.9497 15.6394 15.4749 15.9323 15.182C17.6897 13.4246 17.6897 10.5754 15.9323 8.818C15.6394 8.52511 15.6394 8.05024 15.9323 7.75734Z" fill="#0F172A"/>
    </svg>
    """
  end

  def speaker_wave(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M13.5 4.06063C13.5 2.72427 11.8843 2.05501 10.9393 2.99996L6.43934 7.49997H4.50905C3.36772 7.49997 2.19106 8.16441 1.8493 9.40502C1.62147 10.2321 1.5 11.1024 1.5 12C1.5 12.8975 1.62147 13.7678 1.8493 14.5949C2.19106 15.8355 3.36772 16.5 4.50905 16.5H6.43934L10.9393 21C11.8843 21.9449 13.5 21.2757 13.5 19.9393V4.06063Z\" fill=\"#0F172A\"/>\n<path d=\"M18.5837 5.10561C18.8766 4.81272 19.3514 4.81272 19.6443 5.10561C23.452 8.91322 23.452 15.0866 19.6443 18.8942C19.3514 19.1871 18.8766 19.1871 18.5837 18.8942C18.2908 18.6013 18.2908 18.1264 18.5837 17.8335C21.8055 14.6117 21.8055 9.38809 18.5837 6.16627C18.2908 5.87338 18.2908 5.3985 18.5837 5.10561Z\" fill=\"#0F172A\"/>\n<path d=\"M15.9323 7.75734C16.2252 7.46445 16.7001 7.46445 16.993 7.75734C19.3361 10.1005 19.3361 13.8995 16.993 16.2426C16.7001 16.5355 16.2252 16.5355 15.9323 16.2426C15.6394 15.9497 15.6394 15.4749 15.9323 15.182C17.6897 13.4246 17.6897 10.5754 15.9323 8.818C15.6394 8.52511 15.6394 8.05024 15.9323 7.75734Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/speaker-x-mark.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.speaker_x_mark />

      <.speaker_x_mark class="h-6 w-6 text-gray-500" />

  or as a function

      <%= speaker_x_mark() %>

      <%= speaker_x_mark(class: "h-6 w-6 text-gray-500") %>
  """
  def speaker_x_mark(assigns_or_opts \\ [])

  def speaker_x_mark(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M13.5 4.06063C13.5 2.72427 11.8843 2.05501 10.9393 2.99996L6.43934 7.49997H4.50905C3.36772 7.49997 2.19106 8.1644 1.8493 9.40502C1.62147 10.2321 1.5 11.1024 1.5 12C1.5 12.8975 1.62147 13.7678 1.8493 14.5949C2.19106 15.8355 3.36772 16.5 4.50905 16.5H6.43934L10.9393 21C11.8843 21.9449 13.5 21.2757 13.5 19.9393V4.06063Z" fill="#0F172A"/>
    <path d="M17.7803 9.21962C17.4874 8.92673 17.0126 8.92673 16.7197 9.21962C16.4268 9.51252 16.4268 9.98739 16.7197 10.2803L18.4393 12L16.7197 13.7196C16.4268 14.0125 16.4268 14.4874 16.7197 14.7803C17.0126 15.0732 17.4874 15.0732 17.7803 14.7803L19.5 13.0606L21.2197 14.7803C21.5126 15.0732 21.9874 15.0732 22.2803 14.7803C22.5732 14.4874 22.5732 14.0125 22.2803 13.7196L20.5607 12L22.2803 10.2803C22.5732 9.98739 22.5732 9.51252 22.2803 9.21962C21.9874 8.92673 21.5126 8.92673 21.2197 9.21962L19.5 10.9393L17.7803 9.21962Z" fill="#0F172A"/>
    </svg>
    """
  end

  def speaker_x_mark(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M13.5 4.06063C13.5 2.72427 11.8843 2.05501 10.9393 2.99996L6.43934 7.49997H4.50905C3.36772 7.49997 2.19106 8.1644 1.8493 9.40502C1.62147 10.2321 1.5 11.1024 1.5 12C1.5 12.8975 1.62147 13.7678 1.8493 14.5949C2.19106 15.8355 3.36772 16.5 4.50905 16.5H6.43934L10.9393 21C11.8843 21.9449 13.5 21.2757 13.5 19.9393V4.06063Z\" fill=\"#0F172A\"/>\n<path d=\"M17.7803 9.21962C17.4874 8.92673 17.0126 8.92673 16.7197 9.21962C16.4268 9.51252 16.4268 9.98739 16.7197 10.2803L18.4393 12L16.7197 13.7196C16.4268 14.0125 16.4268 14.4874 16.7197 14.7803C17.0126 15.0732 17.4874 15.0732 17.7803 14.7803L19.5 13.0606L21.2197 14.7803C21.5126 15.0732 21.9874 15.0732 22.2803 14.7803C22.5732 14.4874 22.5732 14.0125 22.2803 13.7196L20.5607 12L22.2803 10.2803C22.5732 9.98739 22.5732 9.51252 22.2803 9.21962C21.9874 8.92673 21.5126 8.92673 21.2197 9.21962L19.5 10.9393L17.7803 9.21962Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/square-2-stack.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.square_2_stack />

      <.square_2_stack class="h-6 w-6 text-gray-500" />

  or as a function

      <%= square_2_stack() %>

      <%= square_2_stack(class: "h-6 w-6 text-gray-500") %>
  """
  def square_2_stack(assigns_or_opts \\ [])

  def square_2_stack(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M16.5 6C16.5 4.34315 15.1569 3 13.5 3H6C4.34315 3 3 4.34315 3 6V13.5C3 15.1569 4.34315 16.5 6 16.5V10.5C6 8.01472 8.01472 6 10.5 6H16.5Z" fill="#0F172A"/>
    <path d="M18 7.5C19.6569 7.5 21 8.84315 21 10.5V18C21 19.6569 19.6569 21 18 21H10.5C8.84315 21 7.5 19.6569 7.5 18V10.5C7.5 8.84315 8.84315 7.5 10.5 7.5H18Z" fill="#0F172A"/>
    </svg>
    """
  end

  def square_2_stack(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M16.5 6C16.5 4.34315 15.1569 3 13.5 3H6C4.34315 3 3 4.34315 3 6V13.5C3 15.1569 4.34315 16.5 6 16.5V10.5C6 8.01472 8.01472 6 10.5 6H16.5Z\" fill=\"#0F172A\"/>\n<path d=\"M18 7.5C19.6569 7.5 21 8.84315 21 10.5V18C21 19.6569 19.6569 21 18 21H10.5C8.84315 21 7.5 19.6569 7.5 18V10.5C7.5 8.84315 8.84315 7.5 10.5 7.5H18Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/squares-2x2.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.squares_2x2 />

      <.squares_2x2 class="h-6 w-6 text-gray-500" />

  or as a function

      <%= squares_2x2() %>

      <%= squares_2x2(class: "h-6 w-6 text-gray-500") %>
  """
  def squares_2x2(assigns_or_opts \\ [])

  def squares_2x2(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 6C3 4.34315 4.34315 3 6 3H8.25C9.90685 3 11.25 4.34315 11.25 6V8.25C11.25 9.90685 9.90685 11.25 8.25 11.25H6C4.34315 11.25 3 9.90685 3 8.25V6ZM12.75 6C12.75 4.34315 14.0931 3 15.75 3H18C19.6569 3 21 4.34315 21 6V8.25C21 9.90685 19.6569 11.25 18 11.25H15.75C14.0931 11.25 12.75 9.90685 12.75 8.25V6ZM3 15.75C3 14.0931 4.34315 12.75 6 12.75H8.25C9.90685 12.75 11.25 14.0931 11.25 15.75V18C11.25 19.6569 9.90685 21 8.25 21H6C4.34315 21 3 19.6569 3 18V15.75ZM12.75 15.75C12.75 14.0931 14.0931 12.75 15.75 12.75H18C19.6569 12.75 21 14.0931 21 15.75V18C21 19.6569 19.6569 21 18 21H15.75C14.0931 21 12.75 19.6569 12.75 18V15.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def squares_2x2(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3 6C3 4.34315 4.34315 3 6 3H8.25C9.90685 3 11.25 4.34315 11.25 6V8.25C11.25 9.90685 9.90685 11.25 8.25 11.25H6C4.34315 11.25 3 9.90685 3 8.25V6ZM12.75 6C12.75 4.34315 14.0931 3 15.75 3H18C19.6569 3 21 4.34315 21 6V8.25C21 9.90685 19.6569 11.25 18 11.25H15.75C14.0931 11.25 12.75 9.90685 12.75 8.25V6ZM3 15.75C3 14.0931 4.34315 12.75 6 12.75H8.25C9.90685 12.75 11.25 14.0931 11.25 15.75V18C11.25 19.6569 9.90685 21 8.25 21H6C4.34315 21 3 19.6569 3 18V15.75ZM12.75 15.75C12.75 14.0931 14.0931 12.75 15.75 12.75H18C19.6569 12.75 21 14.0931 21 15.75V18C21 19.6569 19.6569 21 18 21H15.75C14.0931 21 12.75 19.6569 12.75 18V15.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/squares-plus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.squares_plus />

      <.squares_plus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= squares_plus() %>

      <%= squares_plus(class: "h-6 w-6 text-gray-500") %>
  """
  def squares_plus(assigns_or_opts \\ [])

  def squares_plus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M6 3C4.34315 3 3 4.34315 3 6V8.25C3 9.90685 4.34315 11.25 6 11.25H8.25C9.90685 11.25 11.25 9.90685 11.25 8.25V6C11.25 4.34315 9.90685 3 8.25 3H6Z" fill="#0F172A"/>
    <path d="M15.75 3C14.0931 3 12.75 4.34315 12.75 6V8.25C12.75 9.90685 14.0931 11.25 15.75 11.25H18C19.6569 11.25 21 9.90685 21 8.25V6C21 4.34315 19.6569 3 18 3H15.75Z" fill="#0F172A"/>
    <path d="M6 12.75C4.34315 12.75 3 14.0931 3 15.75V18C3 19.6569 4.34315 21 6 21H8.25C9.90685 21 11.25 19.6569 11.25 18V15.75C11.25 14.0931 9.90685 12.75 8.25 12.75H6Z" fill="#0F172A"/>
    <path d="M17.625 13.5C17.625 13.0858 17.2892 12.75 16.875 12.75C16.4608 12.75 16.125 13.0858 16.125 13.5V16.125H13.5C13.0858 16.125 12.75 16.4608 12.75 16.875C12.75 17.2892 13.0858 17.625 13.5 17.625H16.125V20.25C16.125 20.6642 16.4608 21 16.875 21C17.2892 21 17.625 20.6642 17.625 20.25V17.625H20.25C20.6642 17.625 21 17.2892 21 16.875C21 16.4608 20.6642 16.125 20.25 16.125H17.625V13.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def squares_plus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M6 3C4.34315 3 3 4.34315 3 6V8.25C3 9.90685 4.34315 11.25 6 11.25H8.25C9.90685 11.25 11.25 9.90685 11.25 8.25V6C11.25 4.34315 9.90685 3 8.25 3H6Z\" fill=\"#0F172A\"/>\n<path d=\"M15.75 3C14.0931 3 12.75 4.34315 12.75 6V8.25C12.75 9.90685 14.0931 11.25 15.75 11.25H18C19.6569 11.25 21 9.90685 21 8.25V6C21 4.34315 19.6569 3 18 3H15.75Z\" fill=\"#0F172A\"/>\n<path d=\"M6 12.75C4.34315 12.75 3 14.0931 3 15.75V18C3 19.6569 4.34315 21 6 21H8.25C9.90685 21 11.25 19.6569 11.25 18V15.75C11.25 14.0931 9.90685 12.75 8.25 12.75H6Z\" fill=\"#0F172A\"/>\n<path d=\"M17.625 13.5C17.625 13.0858 17.2892 12.75 16.875 12.75C16.4608 12.75 16.125 13.0858 16.125 13.5V16.125H13.5C13.0858 16.125 12.75 16.4608 12.75 16.875C12.75 17.2892 13.0858 17.625 13.5 17.625H16.125V20.25C16.125 20.6642 16.4608 21 16.875 21C17.2892 21 17.625 20.6642 17.625 20.25V17.625H20.25C20.6642 17.625 21 17.2892 21 16.875C21 16.4608 20.6642 16.125 20.25 16.125H17.625V13.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/star.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.star />

      <.star class="h-6 w-6 text-gray-500" />

  or as a function

      <%= star() %>

      <%= star(class: "h-6 w-6 text-gray-500") %>
  """
  def star(assigns_or_opts \\ [])

  def star(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.7881 3.2108C11.2364 2.13286 12.7635 2.13286 13.2118 3.2108L15.2938 8.21652L20.6979 8.64976C21.8616 8.74306 22.3335 10.1953 21.4469 10.9549L17.3295 14.4818L18.5874 19.7553C18.8583 20.8909 17.6229 21.7884 16.6266 21.1799L11.9999 18.354L7.37329 21.1799C6.37697 21.7884 5.14158 20.8909 5.41246 19.7553L6.67038 14.4818L2.55303 10.9549C1.66639 10.1953 2.13826 8.74306 3.302 8.64976L8.70609 8.21652L10.7881 3.2108Z" fill="#0F172A"/>
    </svg>
    """
  end

  def star(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.7881 3.2108C11.2364 2.13286 12.7635 2.13286 13.2118 3.2108L15.2938 8.21652L20.6979 8.64976C21.8616 8.74306 22.3335 10.1953 21.4469 10.9549L17.3295 14.4818L18.5874 19.7553C18.8583 20.8909 17.6229 21.7884 16.6266 21.1799L11.9999 18.354L7.37329 21.1799C6.37697 21.7884 5.14158 20.8909 5.41246 19.7553L6.67038 14.4818L2.55303 10.9549C1.66639 10.1953 2.13826 8.74306 3.302 8.64976L8.70609 8.21652L10.7881 3.2108Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/stop.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.stop />

      <.stop class="h-6 w-6 text-gray-500" />

  or as a function

      <%= stop() %>

      <%= stop(class: "h-6 w-6 text-gray-500") %>
  """
  def stop(assigns_or_opts \\ [])

  def stop(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 7.5C4.5 5.84315 5.84315 4.5 7.5 4.5H16.5C18.1569 4.5 19.5 5.84315 19.5 7.5V16.5C19.5 18.1569 18.1569 19.5 16.5 19.5H7.5C5.84315 19.5 4.5 18.1569 4.5 16.5V7.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def stop(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.5 7.5C4.5 5.84315 5.84315 4.5 7.5 4.5H16.5C18.1569 4.5 19.5 5.84315 19.5 7.5V16.5C19.5 18.1569 18.1569 19.5 16.5 19.5H7.5C5.84315 19.5 4.5 18.1569 4.5 16.5V7.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/sun.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.sun />

      <.sun class="h-6 w-6 text-gray-500" />

  or as a function

      <%= sun() %>

      <%= sun(class: "h-6 w-6 text-gray-500") %>
  """
  def sun(assigns_or_opts \\ [])

  def sun(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M12 2.25C12.4142 2.25 12.75 2.58579 12.75 3V5.25C12.75 5.66421 12.4142 6 12 6C11.5858 6 11.25 5.66421 11.25 5.25V3C11.25 2.58579 11.5858 2.25 12 2.25Z" fill="#0F172A"/>
    <path d="M7.5 12C7.5 9.51472 9.51472 7.5 12 7.5C14.4853 7.5 16.5 9.51472 16.5 12C16.5 14.4853 14.4853 16.5 12 16.5C9.51472 16.5 7.5 14.4853 7.5 12Z" fill="#0F172A"/>
    <path d="M18.8943 6.16634C19.1872 5.87344 19.1872 5.39857 18.8943 5.10568C18.6014 4.81278 18.1266 4.81278 17.8337 5.10568L16.2427 6.69667C15.9498 6.98956 15.9498 7.46443 16.2427 7.75733C16.5356 8.05022 17.0105 8.05022 17.3034 7.75733L18.8943 6.16634Z" fill="#0F172A"/>
    <path d="M21.75 12C21.75 12.4142 21.4142 12.75 21 12.75H18.75C18.3358 12.75 18 12.4142 18 12C18 11.5858 18.3358 11.25 18.75 11.25H21C21.4142 11.25 21.75 11.5858 21.75 12Z" fill="#0F172A"/>
    <path d="M17.8336 18.8943C18.1265 19.1871 18.6013 19.1871 18.8942 18.8943C19.1871 18.6014 19.1871 18.1265 18.8942 17.8336L17.3032 16.2426C17.0103 15.9497 16.5355 15.9497 16.2426 16.2426C15.9497 16.5355 15.9497 17.0104 16.2426 17.3033L17.8336 18.8943Z" fill="#0F172A"/>
    <path d="M12 18C12.4142 18 12.75 18.3358 12.75 18.75V21C12.75 21.4142 12.4142 21.75 12 21.75C11.5858 21.75 11.25 21.4142 11.25 21V18.75C11.25 18.3358 11.5858 18 12 18Z" fill="#0F172A"/>
    <path d="M7.7575 17.3033C8.0504 17.0104 8.0504 16.5355 7.7575 16.2426C7.46461 15.9497 6.98974 15.9497 6.69684 16.2426L5.10585 17.8336C4.81296 18.1265 4.81296 18.6014 5.10585 18.8943C5.39875 19.1872 5.87362 19.1872 6.16651 18.8943L7.7575 17.3033Z" fill="#0F172A"/>
    <path d="M6 12C6 12.4142 5.66421 12.75 5.25 12.75H3C2.58579 12.75 2.25 12.4142 2.25 12C2.25 11.5858 2.58579 11.25 3 11.25H5.25C5.66421 11.25 6 11.5858 6 12Z" fill="#0F172A"/>
    <path d="M6.69673 7.75732C6.98962 8.05021 7.4645 8.05021 7.75739 7.75732C8.05028 7.46443 8.05028 6.98955 7.75739 6.69666L6.1664 5.10567C5.87351 4.81278 5.39863 4.81278 5.10574 5.10567C4.81285 5.39856 4.81285 5.87344 5.10574 6.16633L6.69673 7.75732Z" fill="#0F172A"/>
    </svg>
    """
  end

  def sun(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M12 2.25C12.4142 2.25 12.75 2.58579 12.75 3V5.25C12.75 5.66421 12.4142 6 12 6C11.5858 6 11.25 5.66421 11.25 5.25V3C11.25 2.58579 11.5858 2.25 12 2.25Z\" fill=\"#0F172A\"/>\n<path d=\"M7.5 12C7.5 9.51472 9.51472 7.5 12 7.5C14.4853 7.5 16.5 9.51472 16.5 12C16.5 14.4853 14.4853 16.5 12 16.5C9.51472 16.5 7.5 14.4853 7.5 12Z\" fill=\"#0F172A\"/>\n<path d=\"M18.8943 6.16634C19.1872 5.87344 19.1872 5.39857 18.8943 5.10568C18.6014 4.81278 18.1266 4.81278 17.8337 5.10568L16.2427 6.69667C15.9498 6.98956 15.9498 7.46443 16.2427 7.75733C16.5356 8.05022 17.0105 8.05022 17.3034 7.75733L18.8943 6.16634Z\" fill=\"#0F172A\"/>\n<path d=\"M21.75 12C21.75 12.4142 21.4142 12.75 21 12.75H18.75C18.3358 12.75 18 12.4142 18 12C18 11.5858 18.3358 11.25 18.75 11.25H21C21.4142 11.25 21.75 11.5858 21.75 12Z\" fill=\"#0F172A\"/>\n<path d=\"M17.8336 18.8943C18.1265 19.1871 18.6013 19.1871 18.8942 18.8943C19.1871 18.6014 19.1871 18.1265 18.8942 17.8336L17.3032 16.2426C17.0103 15.9497 16.5355 15.9497 16.2426 16.2426C15.9497 16.5355 15.9497 17.0104 16.2426 17.3033L17.8336 18.8943Z\" fill=\"#0F172A\"/>\n<path d=\"M12 18C12.4142 18 12.75 18.3358 12.75 18.75V21C12.75 21.4142 12.4142 21.75 12 21.75C11.5858 21.75 11.25 21.4142 11.25 21V18.75C11.25 18.3358 11.5858 18 12 18Z\" fill=\"#0F172A\"/>\n<path d=\"M7.7575 17.3033C8.0504 17.0104 8.0504 16.5355 7.7575 16.2426C7.46461 15.9497 6.98974 15.9497 6.69684 16.2426L5.10585 17.8336C4.81296 18.1265 4.81296 18.6014 5.10585 18.8943C5.39875 19.1872 5.87362 19.1872 6.16651 18.8943L7.7575 17.3033Z\" fill=\"#0F172A\"/>\n<path d=\"M6 12C6 12.4142 5.66421 12.75 5.25 12.75H3C2.58579 12.75 2.25 12.4142 2.25 12C2.25 11.5858 2.58579 11.25 3 11.25H5.25C5.66421 11.25 6 11.5858 6 12Z\" fill=\"#0F172A\"/>\n<path d=\"M6.69673 7.75732C6.98962 8.05021 7.4645 8.05021 7.75739 7.75732C8.05028 7.46443 8.05028 6.98955 7.75739 6.69666L6.1664 5.10567C5.87351 4.81278 5.39863 4.81278 5.10574 5.10567C4.81285 5.39856 4.81285 5.87344 5.10574 6.16633L6.69673 7.75732Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/swatch.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.swatch />

      <.swatch class="h-6 w-6 text-gray-500" />

  or as a function

      <%= swatch() %>

      <%= swatch(class: "h-6 w-6 text-gray-500") %>
  """
  def swatch(assigns_or_opts \\ [])

  def swatch(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 4.125C2.25 3.08947 3.08947 2.25 4.125 2.25H9.375C10.4105 2.25 11.25 3.08947 11.25 4.125V17.25C11.25 19.7353 9.23528 21.75 6.75 21.75C4.26472 21.75 2.25 19.7353 2.25 17.25V4.125ZM6.75 18.375C7.37132 18.375 7.875 17.8713 7.875 17.25C7.875 16.6287 7.37132 16.125 6.75 16.125C6.12868 16.125 5.625 16.6287 5.625 17.25C5.625 17.8713 6.12868 18.375 6.75 18.375Z" fill="#0F172A"/>
    <path d="M10.719 21.75H19.8751C20.9106 21.75 21.7501 20.9105 21.7501 19.875V14.625C21.7501 13.5895 20.9106 12.75 19.8751 12.75H19.7353L10.9927 21.4926C10.9035 21.5818 10.8122 21.6676 10.719 21.75Z" fill="#0F172A"/>
    <path d="M12.7383 17.6255L19.2125 11.1512C19.9448 10.419 19.9448 9.23179 19.2125 8.49955L15.5002 4.78724C14.768 4.05501 13.5808 4.05501 12.8486 4.78724L12.7498 4.88598V17.25C12.7498 17.3761 12.7459 17.5013 12.7383 17.6255Z" fill="#0F172A"/>
    </svg>
    """
  end

  def swatch(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.25 4.125C2.25 3.08947 3.08947 2.25 4.125 2.25H9.375C10.4105 2.25 11.25 3.08947 11.25 4.125V17.25C11.25 19.7353 9.23528 21.75 6.75 21.75C4.26472 21.75 2.25 19.7353 2.25 17.25V4.125ZM6.75 18.375C7.37132 18.375 7.875 17.8713 7.875 17.25C7.875 16.6287 7.37132 16.125 6.75 16.125C6.12868 16.125 5.625 16.6287 5.625 17.25C5.625 17.8713 6.12868 18.375 6.75 18.375Z\" fill=\"#0F172A\"/>\n<path d=\"M10.719 21.75H19.8751C20.9106 21.75 21.7501 20.9105 21.7501 19.875V14.625C21.7501 13.5895 20.9106 12.75 19.8751 12.75H19.7353L10.9927 21.4926C10.9035 21.5818 10.8122 21.6676 10.719 21.75Z\" fill=\"#0F172A\"/>\n<path d=\"M12.7383 17.6255L19.2125 11.1512C19.9448 10.419 19.9448 9.23179 19.2125 8.49955L15.5002 4.78724C14.768 4.05501 13.5808 4.05501 12.8486 4.78724L12.7498 4.88598V17.25C12.7498 17.3761 12.7459 17.5013 12.7383 17.6255Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/table-cells.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.table_cells />

      <.table_cells class="h-6 w-6 text-gray-500" />

  or as a function

      <%= table_cells() %>

      <%= table_cells(class: "h-6 w-6 text-gray-500") %>
  """
  def table_cells(assigns_or_opts \\ [])

  def table_cells(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.5 5.625C1.5 4.58947 2.33947 3.75 3.375 3.75H20.625C21.6605 3.75 22.5 4.58947 22.5 5.625V18.375C22.5 19.4105 21.6605 20.25 20.625 20.25H3.375C2.33947 20.25 1.5 19.4105 1.5 18.375V5.625ZM21 9.375C21 9.16789 20.8321 9 20.625 9H13.125C12.9179 9 12.75 9.16789 12.75 9.375V10.875C12.75 11.0821 12.9179 11.25 13.125 11.25H20.625C20.8321 11.25 21 11.0821 21 10.875V9.375ZM21 13.125C21 12.9179 20.8321 12.75 20.625 12.75H13.125C12.9179 12.75 12.75 12.9179 12.75 13.125V14.625C12.75 14.8321 12.9179 15 13.125 15H20.625C20.8321 15 21 14.8321 21 14.625V13.125ZM21 16.875C21 16.6679 20.8321 16.5 20.625 16.5H13.125C12.9179 16.5 12.75 16.6679 12.75 16.875V18.375C12.75 18.5821 12.9179 18.75 13.125 18.75H20.625C20.8321 18.75 21 18.5821 21 18.375V16.875ZM10.875 18.75C11.0821 18.75 11.25 18.5821 11.25 18.375V16.875C11.25 16.6679 11.0821 16.5 10.875 16.5H3.375C3.16789 16.5 3 16.6679 3 16.875V18.375C3 18.5821 3.16789 18.75 3.375 18.75H10.875ZM3.375 15H10.875C11.0821 15 11.25 14.8321 11.25 14.625V13.125C11.25 12.9179 11.0821 12.75 10.875 12.75H3.375C3.16789 12.75 3 12.9179 3 13.125V14.625C3 14.8321 3.16789 15 3.375 15ZM3.375 11.25H10.875C11.0821 11.25 11.25 11.0821 11.25 10.875V9.375C11.25 9.16789 11.0821 9 10.875 9H3.375C3.16789 9 3 9.16789 3 9.375V10.875C3 11.0821 3.16789 11.25 3.375 11.25Z" fill="#0F172A"/>
    </svg>
    """
  end

  def table_cells(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.5 5.625C1.5 4.58947 2.33947 3.75 3.375 3.75H20.625C21.6605 3.75 22.5 4.58947 22.5 5.625V18.375C22.5 19.4105 21.6605 20.25 20.625 20.25H3.375C2.33947 20.25 1.5 19.4105 1.5 18.375V5.625ZM21 9.375C21 9.16789 20.8321 9 20.625 9H13.125C12.9179 9 12.75 9.16789 12.75 9.375V10.875C12.75 11.0821 12.9179 11.25 13.125 11.25H20.625C20.8321 11.25 21 11.0821 21 10.875V9.375ZM21 13.125C21 12.9179 20.8321 12.75 20.625 12.75H13.125C12.9179 12.75 12.75 12.9179 12.75 13.125V14.625C12.75 14.8321 12.9179 15 13.125 15H20.625C20.8321 15 21 14.8321 21 14.625V13.125ZM21 16.875C21 16.6679 20.8321 16.5 20.625 16.5H13.125C12.9179 16.5 12.75 16.6679 12.75 16.875V18.375C12.75 18.5821 12.9179 18.75 13.125 18.75H20.625C20.8321 18.75 21 18.5821 21 18.375V16.875ZM10.875 18.75C11.0821 18.75 11.25 18.5821 11.25 18.375V16.875C11.25 16.6679 11.0821 16.5 10.875 16.5H3.375C3.16789 16.5 3 16.6679 3 16.875V18.375C3 18.5821 3.16789 18.75 3.375 18.75H10.875ZM3.375 15H10.875C11.0821 15 11.25 14.8321 11.25 14.625V13.125C11.25 12.9179 11.0821 12.75 10.875 12.75H3.375C3.16789 12.75 3 12.9179 3 13.125V14.625C3 14.8321 3.16789 15 3.375 15ZM3.375 11.25H10.875C11.0821 11.25 11.25 11.0821 11.25 10.875V9.375C11.25 9.16789 11.0821 9 10.875 9H3.375C3.16789 9 3 9.16789 3 9.375V10.875C3 11.0821 3.16789 11.25 3.375 11.25Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/tag.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.tag />

      <.tag class="h-6 w-6 text-gray-500" />

  or as a function

      <%= tag() %>

      <%= tag(class: "h-6 w-6 text-gray-500") %>
  """
  def tag(assigns_or_opts \\ [])

  def tag(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.25 2.25C3.59315 2.25 2.25 3.59315 2.25 5.25V9.56802C2.25 10.3637 2.56607 11.1267 3.12868 11.6893L12.7098 21.2705C13.6291 22.1898 15.0989 22.4564 16.2573 21.698C18.4242 20.2793 20.2793 18.4242 21.698 16.2573C22.4564 15.0989 22.1898 13.6291 21.2705 12.7098L11.6893 3.12868C11.1267 2.56607 10.3637 2.25 9.56802 2.25H5.25ZM6.375 7.5C6.99632 7.5 7.5 6.99632 7.5 6.375C7.5 5.75368 6.99632 5.25 6.375 5.25C5.75368 5.25 5.25 5.75368 5.25 6.375C5.25 6.99632 5.75368 7.5 6.375 7.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def tag(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.25 2.25C3.59315 2.25 2.25 3.59315 2.25 5.25V9.56802C2.25 10.3637 2.56607 11.1267 3.12868 11.6893L12.7098 21.2705C13.6291 22.1898 15.0989 22.4564 16.2573 21.698C18.4242 20.2793 20.2793 18.4242 21.698 16.2573C22.4564 15.0989 22.1898 13.6291 21.2705 12.7098L11.6893 3.12868C11.1267 2.56607 10.3637 2.25 9.56802 2.25H5.25ZM6.375 7.5C6.99632 7.5 7.5 6.99632 7.5 6.375C7.5 5.75368 6.99632 5.25 6.375 5.25C5.75368 5.25 5.25 5.75368 5.25 6.375C5.25 6.99632 5.75368 7.5 6.375 7.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/ticket.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.ticket />

      <.ticket class="h-6 w-6 text-gray-500" />

  or as a function

      <%= ticket() %>

      <%= ticket(class: "h-6 w-6 text-gray-500") %>
  """
  def ticket(assigns_or_opts \\ [])

  def ticket(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.5 6.375C1.5 5.33947 2.33947 4.5 3.375 4.5H20.625C21.6605 4.5 22.5 5.33947 22.5 6.375V9.40135C22.5 9.66907 22.3573 9.91649 22.1255 10.0506C21.4511 10.4407 21 11.1681 21 12C21 12.8319 21.4511 13.5593 22.1255 13.9494C22.3573 14.0835 22.5 14.3309 22.5 14.5987V17.625C22.5 18.6605 21.6605 19.5 20.625 19.5H3.375C2.33947 19.5 1.5 18.6605 1.5 17.625V14.5987C1.5 14.3309 1.64271 14.0835 1.87446 13.9494C2.54894 13.5593 3 12.8319 3 12C3 11.1681 2.54894 10.4407 1.87446 10.0506C1.64271 9.91649 1.5 9.66907 1.5 9.40135V6.375ZM16.5 5.25C16.9142 5.25 17.25 5.58579 17.25 6V6.75C17.25 7.16421 16.9142 7.5 16.5 7.5C16.0858 7.5 15.75 7.16421 15.75 6.75V6C15.75 5.58579 16.0858 5.25 16.5 5.25ZM17.25 9.75C17.25 9.33579 16.9142 9 16.5 9C16.0858 9 15.75 9.33579 15.75 9.75V10.5C15.75 10.9142 16.0858 11.25 16.5 11.25C16.9142 11.25 17.25 10.9142 17.25 10.5V9.75ZM16.5 12.75C16.9142 12.75 17.25 13.0858 17.25 13.5V14.25C17.25 14.6642 16.9142 15 16.5 15C16.0858 15 15.75 14.6642 15.75 14.25V13.5C15.75 13.0858 16.0858 12.75 16.5 12.75ZM17.25 17.25C17.25 16.8358 16.9142 16.5 16.5 16.5C16.0858 16.5 15.75 16.8358 15.75 17.25V18C15.75 18.4142 16.0858 18.75 16.5 18.75C16.9142 18.75 17.25 18.4142 17.25 18V17.25ZM6 12C6 11.5858 6.33579 11.25 6.75 11.25H12C12.4142 11.25 12.75 11.5858 12.75 12C12.75 12.4142 12.4142 12.75 12 12.75H6.75C6.33579 12.75 6 12.4142 6 12ZM6.75 14.25C6.33579 14.25 6 14.5858 6 15C6 15.4142 6.33579 15.75 6.75 15.75H9.75C10.1642 15.75 10.5 15.4142 10.5 15C10.5 14.5858 10.1642 14.25 9.75 14.25H6.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def ticket(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.5 6.375C1.5 5.33947 2.33947 4.5 3.375 4.5H20.625C21.6605 4.5 22.5 5.33947 22.5 6.375V9.40135C22.5 9.66907 22.3573 9.91649 22.1255 10.0506C21.4511 10.4407 21 11.1681 21 12C21 12.8319 21.4511 13.5593 22.1255 13.9494C22.3573 14.0835 22.5 14.3309 22.5 14.5987V17.625C22.5 18.6605 21.6605 19.5 20.625 19.5H3.375C2.33947 19.5 1.5 18.6605 1.5 17.625V14.5987C1.5 14.3309 1.64271 14.0835 1.87446 13.9494C2.54894 13.5593 3 12.8319 3 12C3 11.1681 2.54894 10.4407 1.87446 10.0506C1.64271 9.91649 1.5 9.66907 1.5 9.40135V6.375ZM16.5 5.25C16.9142 5.25 17.25 5.58579 17.25 6V6.75C17.25 7.16421 16.9142 7.5 16.5 7.5C16.0858 7.5 15.75 7.16421 15.75 6.75V6C15.75 5.58579 16.0858 5.25 16.5 5.25ZM17.25 9.75C17.25 9.33579 16.9142 9 16.5 9C16.0858 9 15.75 9.33579 15.75 9.75V10.5C15.75 10.9142 16.0858 11.25 16.5 11.25C16.9142 11.25 17.25 10.9142 17.25 10.5V9.75ZM16.5 12.75C16.9142 12.75 17.25 13.0858 17.25 13.5V14.25C17.25 14.6642 16.9142 15 16.5 15C16.0858 15 15.75 14.6642 15.75 14.25V13.5C15.75 13.0858 16.0858 12.75 16.5 12.75ZM17.25 17.25C17.25 16.8358 16.9142 16.5 16.5 16.5C16.0858 16.5 15.75 16.8358 15.75 17.25V18C15.75 18.4142 16.0858 18.75 16.5 18.75C16.9142 18.75 17.25 18.4142 17.25 18V17.25ZM6 12C6 11.5858 6.33579 11.25 6.75 11.25H12C12.4142 11.25 12.75 11.5858 12.75 12C12.75 12.4142 12.4142 12.75 12 12.75H6.75C6.33579 12.75 6 12.4142 6 12ZM6.75 14.25C6.33579 14.25 6 14.5858 6 15C6 15.4142 6.33579 15.75 6.75 15.75H9.75C10.1642 15.75 10.5 15.4142 10.5 15C10.5 14.5858 10.1642 14.25 9.75 14.25H6.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/trash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.trash />

      <.trash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= trash() %>

      <%= trash(class: "h-6 w-6 text-gray-500") %>
  """
  def trash(assigns_or_opts \\ [])

  def trash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M16.5001 4.47819V4.70498C17.4548 4.79237 18.4017 4.90731 19.3398 5.04898C19.6871 5.10143 20.0332 5.15755 20.3781 5.2173C20.7863 5.28799 21.0598 5.67617 20.9891 6.0843C20.9184 6.49244 20.5302 6.76598 20.1221 6.69529C20.0525 6.68323 19.9829 6.67132 19.9131 6.65957L18.9077 19.7301C18.7875 21.2931 17.4842 22.5 15.9166 22.5H8.08369C6.51608 22.5 5.21276 21.2931 5.09253 19.7301L4.0871 6.65957C4.0174 6.67132 3.94774 6.68323 3.87813 6.69529C3.47 6.76598 3.08183 6.49244 3.01113 6.0843C2.94043 5.67617 3.21398 5.28799 3.62211 5.2173C3.96701 5.15755 4.31315 5.10143 4.66048 5.04898C5.59858 4.90731 6.5454 4.79237 7.50012 4.70498V4.47819C7.50012 2.91371 8.71265 1.57818 10.3156 1.52691C10.8749 1.50901 11.4365 1.5 12.0001 1.5C12.5638 1.5 13.1253 1.50901 13.6847 1.52691C15.2876 1.57818 16.5001 2.91371 16.5001 4.47819ZM10.3635 3.02614C10.9069 3.00876 11.4525 3 12.0001 3C12.5478 3 13.0934 3.00876 13.6367 3.02614C14.3913 3.05028 15.0001 3.68393 15.0001 4.47819V4.59082C14.0078 4.53056 13.0075 4.5 12.0001 4.5C10.9928 4.5 9.99249 4.53056 9.00012 4.59082V4.47819C9.00012 3.68393 9.6089 3.05028 10.3635 3.02614ZM10.0087 8.97118C9.9928 8.55727 9.64436 8.23463 9.23045 8.25055C8.81654 8.26647 8.49391 8.61492 8.50983 9.02882L8.85599 18.0288C8.8719 18.4427 9.22035 18.7654 9.63426 18.7494C10.0482 18.7335 10.3708 18.3851 10.3549 17.9712L10.0087 8.97118ZM15.4895 9.02882C15.5054 8.61492 15.1828 8.26647 14.7689 8.25055C14.355 8.23463 14.0065 8.55727 13.9906 8.97118L13.6444 17.9712C13.6285 18.3851 13.9512 18.7335 14.3651 18.7494C14.779 18.7654 15.1274 18.4427 15.1433 18.0288L15.4895 9.02882Z" fill="#0F172A"/>
    </svg>
    """
  end

  def trash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M16.5001 4.47819V4.70498C17.4548 4.79237 18.4017 4.90731 19.3398 5.04898C19.6871 5.10143 20.0332 5.15755 20.3781 5.2173C20.7863 5.28799 21.0598 5.67617 20.9891 6.0843C20.9184 6.49244 20.5302 6.76598 20.1221 6.69529C20.0525 6.68323 19.9829 6.67132 19.9131 6.65957L18.9077 19.7301C18.7875 21.2931 17.4842 22.5 15.9166 22.5H8.08369C6.51608 22.5 5.21276 21.2931 5.09253 19.7301L4.0871 6.65957C4.0174 6.67132 3.94774 6.68323 3.87813 6.69529C3.47 6.76598 3.08183 6.49244 3.01113 6.0843C2.94043 5.67617 3.21398 5.28799 3.62211 5.2173C3.96701 5.15755 4.31315 5.10143 4.66048 5.04898C5.59858 4.90731 6.5454 4.79237 7.50012 4.70498V4.47819C7.50012 2.91371 8.71265 1.57818 10.3156 1.52691C10.8749 1.50901 11.4365 1.5 12.0001 1.5C12.5638 1.5 13.1253 1.50901 13.6847 1.52691C15.2876 1.57818 16.5001 2.91371 16.5001 4.47819ZM10.3635 3.02614C10.9069 3.00876 11.4525 3 12.0001 3C12.5478 3 13.0934 3.00876 13.6367 3.02614C14.3913 3.05028 15.0001 3.68393 15.0001 4.47819V4.59082C14.0078 4.53056 13.0075 4.5 12.0001 4.5C10.9928 4.5 9.99249 4.53056 9.00012 4.59082V4.47819C9.00012 3.68393 9.6089 3.05028 10.3635 3.02614ZM10.0087 8.97118C9.9928 8.55727 9.64436 8.23463 9.23045 8.25055C8.81654 8.26647 8.49391 8.61492 8.50983 9.02882L8.85599 18.0288C8.8719 18.4427 9.22035 18.7654 9.63426 18.7494C10.0482 18.7335 10.3708 18.3851 10.3549 17.9712L10.0087 8.97118ZM15.4895 9.02882C15.5054 8.61492 15.1828 8.26647 14.7689 8.25055C14.355 8.23463 14.0065 8.55727 13.9906 8.97118L13.6444 17.9712C13.6285 18.3851 13.9512 18.7335 14.3651 18.7494C14.779 18.7654 15.1274 18.4427 15.1433 18.0288L15.4895 9.02882Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/truck.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.truck />

      <.truck class="h-6 w-6 text-gray-500" />

  or as a function

      <%= truck() %>

      <%= truck(class: "h-6 w-6 text-gray-500") %>
  """
  def truck(assigns_or_opts \\ [])

  def truck(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.375 4.5C2.33947 4.5 1.5 5.33947 1.5 6.375V13.5H13.5V6.375C13.5 5.33947 12.6605 4.5 11.625 4.5H3.375Z" fill="#0F172A"/>
    <path d="M13.5 15H1.5V17.625C1.5 18.6605 2.33947 19.5 3.375 19.5H3.75C3.75 17.8431 5.09315 16.5 6.75 16.5C8.40685 16.5 9.75 17.8431 9.75 19.5H12.75C13.1642 19.5 13.5 19.1642 13.5 18.75V15Z" fill="#0F172A"/>
    <path d="M8.25 19.5C8.25 18.6716 7.57843 18 6.75 18C5.92157 18 5.25 18.6716 5.25 19.5C5.25 20.3284 5.92157 21 6.75 21C7.57843 21 8.25 20.3284 8.25 19.5Z" fill="#0F172A"/>
    <path d="M15.75 6.75C15.3358 6.75 15 7.08579 15 7.5V18.75C15 18.8368 15.0147 18.9202 15.0419 18.9977C15.2809 17.58 16.5143 16.5 18 16.5C19.6442 16.5 20.9794 17.8226 20.9998 19.462C21.8531 19.2869 22.5224 18.5266 22.464 17.5794C22.231 13.799 20.8775 10.321 18.7324 7.4749C18.378 7.00463 17.8265 6.75 17.2621 6.75H15.75Z" fill="#0F172A"/>
    <path d="M19.5 19.5C19.5 18.6716 18.8284 18 18 18C17.1716 18 16.5 18.6716 16.5 19.5C16.5 20.3284 17.1716 21 18 21C18.8284 21 19.5 20.3284 19.5 19.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def truck(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.375 4.5C2.33947 4.5 1.5 5.33947 1.5 6.375V13.5H13.5V6.375C13.5 5.33947 12.6605 4.5 11.625 4.5H3.375Z\" fill=\"#0F172A\"/>\n<path d=\"M13.5 15H1.5V17.625C1.5 18.6605 2.33947 19.5 3.375 19.5H3.75C3.75 17.8431 5.09315 16.5 6.75 16.5C8.40685 16.5 9.75 17.8431 9.75 19.5H12.75C13.1642 19.5 13.5 19.1642 13.5 18.75V15Z\" fill=\"#0F172A\"/>\n<path d=\"M8.25 19.5C8.25 18.6716 7.57843 18 6.75 18C5.92157 18 5.25 18.6716 5.25 19.5C5.25 20.3284 5.92157 21 6.75 21C7.57843 21 8.25 20.3284 8.25 19.5Z\" fill=\"#0F172A\"/>\n<path d=\"M15.75 6.75C15.3358 6.75 15 7.08579 15 7.5V18.75C15 18.8368 15.0147 18.9202 15.0419 18.9977C15.2809 17.58 16.5143 16.5 18 16.5C19.6442 16.5 20.9794 17.8226 20.9998 19.462C21.8531 19.2869 22.5224 18.5266 22.464 17.5794C22.231 13.799 20.8775 10.321 18.7324 7.4749C18.378 7.00463 17.8265 6.75 17.2621 6.75H15.75Z\" fill=\"#0F172A\"/>\n<path d=\"M19.5 19.5C19.5 18.6716 18.8284 18 18 18C17.1716 18 16.5 18.6716 16.5 19.5C16.5 20.3284 17.1716 21 18 21C18.8284 21 19.5 20.3284 19.5 19.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/user-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.user_circle />

      <.user_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= user_circle() %>

      <%= user_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def user_circle(assigns_or_opts \\ [])

  def user_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M18.6854 19.0971C20.5721 17.3191 21.75 14.7971 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 14.7971 3.42785 17.3191 5.31463 19.0971C7.06012 20.7419 9.41234 21.75 12 21.75C14.5877 21.75 16.9399 20.7419 18.6854 19.0971ZM6.14512 17.8123C7.51961 16.0978 9.63161 15 12 15C14.3684 15 16.4804 16.0978 17.8549 17.8123C16.3603 19.3178 14.289 20.25 12 20.25C9.711 20.25 7.63973 19.3178 6.14512 17.8123ZM15.75 9C15.75 11.0711 14.0711 12.75 12 12.75C9.92893 12.75 8.25 11.0711 8.25 9C8.25 6.92893 9.92893 5.25 12 5.25C14.0711 5.25 15.75 6.92893 15.75 9Z" fill="#0F172A"/>
    </svg>
    """
  end

  def user_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M18.6854 19.0971C20.5721 17.3191 21.75 14.7971 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 14.7971 3.42785 17.3191 5.31463 19.0971C7.06012 20.7419 9.41234 21.75 12 21.75C14.5877 21.75 16.9399 20.7419 18.6854 19.0971ZM6.14512 17.8123C7.51961 16.0978 9.63161 15 12 15C14.3684 15 16.4804 16.0978 17.8549 17.8123C16.3603 19.3178 14.289 20.25 12 20.25C9.711 20.25 7.63973 19.3178 6.14512 17.8123ZM15.75 9C15.75 11.0711 14.0711 12.75 12 12.75C9.92893 12.75 8.25 11.0711 8.25 9C8.25 6.92893 9.92893 5.25 12 5.25C14.0711 5.25 15.75 6.92893 15.75 9Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/user-group.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.user_group />

      <.user_group class="h-6 w-6 text-gray-500" />

  or as a function

      <%= user_group() %>

      <%= user_group(class: "h-6 w-6 text-gray-500") %>
  """
  def user_group(assigns_or_opts \\ [])

  def user_group(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M8.25 6.75C8.25 4.67893 9.92893 3 12 3C14.0711 3 15.75 4.67893 15.75 6.75C15.75 8.82107 14.0711 10.5 12 10.5C9.92893 10.5 8.25 8.82107 8.25 6.75Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M15.75 9.75C15.75 8.09315 17.0931 6.75 18.75 6.75C20.4069 6.75 21.75 8.09315 21.75 9.75C21.75 11.4069 20.4069 12.75 18.75 12.75C17.0931 12.75 15.75 11.4069 15.75 9.75Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 9.75C2.25 8.09315 3.59315 6.75 5.25 6.75C6.90685 6.75 8.25 8.09315 8.25 9.75C8.25 11.4069 6.90685 12.75 5.25 12.75C3.59315 12.75 2.25 11.4069 2.25 9.75Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M6.30986 15.1175C7.50783 13.2444 9.60835 12 12 12C14.3919 12 16.4927 13.2447 17.6906 15.1182C18.5187 16.4134 18.877 17.9752 18.709 19.4979C18.6827 19.7359 18.5444 19.947 18.3368 20.0662C16.4694 21.1376 14.3051 21.75 12 21.75C9.69492 21.75 7.53059 21.1376 5.66325 20.0662C5.45559 19.947 5.3173 19.7359 5.29103 19.4979C5.12293 17.9749 5.48141 16.4129 6.30986 15.1175Z" fill="#0F172A"/>
    <path d="M5.08228 14.2537C5.07024 14.2722 5.05827 14.2907 5.04638 14.3093C4.08091 15.8189 3.63908 17.6167 3.77471 19.389C3.16667 19.2967 2.5767 19.1481 2.01043 18.9487L1.89547 18.9082C1.68576 18.8343 1.53923 18.6439 1.52159 18.4222L1.51192 18.3007C1.50402 18.2014 1.5 18.1011 1.5 18C1.5 15.9851 3.08905 14.3414 5.08228 14.2537Z" fill="#0F172A"/>
    <path d="M20.2256 19.389C20.3612 17.617 19.9196 15.8196 18.9545 14.3102C18.9424 14.2913 18.9303 14.2725 18.9181 14.2537C20.9111 14.3416 22.5 15.9853 22.5 18C22.5 18.1011 22.496 18.2014 22.4881 18.3007L22.4784 18.4222C22.4608 18.6439 22.3142 18.8343 22.1045 18.9082L21.9896 18.9487C21.4234 19.1481 20.8336 19.2966 20.2256 19.389Z" fill="#0F172A"/>
    </svg>
    """
  end

  def user_group(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M8.25 6.75C8.25 4.67893 9.92893 3 12 3C14.0711 3 15.75 4.67893 15.75 6.75C15.75 8.82107 14.0711 10.5 12 10.5C9.92893 10.5 8.25 8.82107 8.25 6.75Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M15.75 9.75C15.75 8.09315 17.0931 6.75 18.75 6.75C20.4069 6.75 21.75 8.09315 21.75 9.75C21.75 11.4069 20.4069 12.75 18.75 12.75C17.0931 12.75 15.75 11.4069 15.75 9.75Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M2.25 9.75C2.25 8.09315 3.59315 6.75 5.25 6.75C6.90685 6.75 8.25 8.09315 8.25 9.75C8.25 11.4069 6.90685 12.75 5.25 12.75C3.59315 12.75 2.25 11.4069 2.25 9.75Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M6.30986 15.1175C7.50783 13.2444 9.60835 12 12 12C14.3919 12 16.4927 13.2447 17.6906 15.1182C18.5187 16.4134 18.877 17.9752 18.709 19.4979C18.6827 19.7359 18.5444 19.947 18.3368 20.0662C16.4694 21.1376 14.3051 21.75 12 21.75C9.69492 21.75 7.53059 21.1376 5.66325 20.0662C5.45559 19.947 5.3173 19.7359 5.29103 19.4979C5.12293 17.9749 5.48141 16.4129 6.30986 15.1175Z\" fill=\"#0F172A\"/>\n<path d=\"M5.08228 14.2537C5.07024 14.2722 5.05827 14.2907 5.04638 14.3093C4.08091 15.8189 3.63908 17.6167 3.77471 19.389C3.16667 19.2967 2.5767 19.1481 2.01043 18.9487L1.89547 18.9082C1.68576 18.8343 1.53923 18.6439 1.52159 18.4222L1.51192 18.3007C1.50402 18.2014 1.5 18.1011 1.5 18C1.5 15.9851 3.08905 14.3414 5.08228 14.2537Z\" fill=\"#0F172A\"/>\n<path d=\"M20.2256 19.389C20.3612 17.617 19.9196 15.8196 18.9545 14.3102C18.9424 14.2913 18.9303 14.2725 18.9181 14.2537C20.9111 14.3416 22.5 15.9853 22.5 18C22.5 18.1011 22.496 18.2014 22.4881 18.3007L22.4784 18.4222C22.4608 18.6439 22.3142 18.8343 22.1045 18.9082L21.9896 18.9487C21.4234 19.1481 20.8336 19.2966 20.2256 19.389Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/user-minus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.user_minus />

      <.user_minus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= user_minus() %>

      <%= user_minus(class: "h-6 w-6 text-gray-500") %>
  """
  def user_minus(assigns_or_opts \\ [])

  def user_minus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M10.375 2.25C8.09683 2.25 6.25 4.09683 6.25 6.375C6.25 8.65317 8.09683 10.5 10.375 10.5C12.6532 10.5 14.5 8.65317 14.5 6.375C14.5 4.09683 12.6532 2.25 10.375 2.25Z" fill="#0F172A"/>
    <path d="M10.375 12C6.43997 12 3.25 15.19 3.25 19.125C3.25 19.1657 3.25034 19.2064 3.25103 19.2469C3.25537 19.5054 3.39256 19.7435 3.61406 19.8768C5.5893 21.0661 7.90343 21.75 10.375 21.75C12.8466 21.75 15.1607 21.0661 17.1359 19.8768C17.3574 19.7435 17.4946 19.5054 17.499 19.2469C17.4996 19.2074 17.5 19.1674 17.5 19.1276V19.125C17.5 15.19 14.31 12 10.375 12Z" fill="#0F172A"/>
    <path d="M16 9.75C15.5858 9.75 15.25 10.0858 15.25 10.5C15.25 10.9142 15.5858 11.25 16 11.25H22C22.4142 11.25 22.75 10.9142 22.75 10.5C22.75 10.0858 22.4142 9.75 22 9.75H16Z" fill="#0F172A"/>
    </svg>
    """
  end

  def user_minus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M10.375 2.25C8.09683 2.25 6.25 4.09683 6.25 6.375C6.25 8.65317 8.09683 10.5 10.375 10.5C12.6532 10.5 14.5 8.65317 14.5 6.375C14.5 4.09683 12.6532 2.25 10.375 2.25Z\" fill=\"#0F172A\"/>\n<path d=\"M10.375 12C6.43997 12 3.25 15.19 3.25 19.125C3.25 19.1657 3.25034 19.2064 3.25103 19.2469C3.25537 19.5054 3.39256 19.7435 3.61406 19.8768C5.5893 21.0661 7.90343 21.75 10.375 21.75C12.8466 21.75 15.1607 21.0661 17.1359 19.8768C17.3574 19.7435 17.4946 19.5054 17.499 19.2469C17.4996 19.2074 17.5 19.1674 17.5 19.1276V19.125C17.5 15.19 14.31 12 10.375 12Z\" fill=\"#0F172A\"/>\n<path d=\"M16 9.75C15.5858 9.75 15.25 10.0858 15.25 10.5C15.25 10.9142 15.5858 11.25 16 11.25H22C22.4142 11.25 22.75 10.9142 22.75 10.5C22.75 10.0858 22.4142 9.75 22 9.75H16Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/user-plus.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.user_plus />

      <.user_plus class="h-6 w-6 text-gray-500" />

  or as a function

      <%= user_plus() %>

      <%= user_plus(class: "h-6 w-6 text-gray-500") %>
  """
  def user_plus(assigns_or_opts \\ [])

  def user_plus(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M6.25 6.375C6.25 4.09683 8.09683 2.25 10.375 2.25C12.6532 2.25 14.5 4.09683 14.5 6.375C14.5 8.65317 12.6532 10.5 10.375 10.5C8.09683 10.5 6.25 8.65317 6.25 6.375Z" fill="#0F172A"/>
    <path d="M3.25 19.125C3.25 15.19 6.43997 12 10.375 12C14.31 12 17.5 15.19 17.5 19.125V19.1276C17.5 19.1674 17.4996 19.2074 17.499 19.2469C17.4946 19.5054 17.3574 19.7435 17.1359 19.8768C15.1607 21.0661 12.8466 21.75 10.375 21.75C7.90343 21.75 5.5893 21.0661 3.61406 19.8768C3.39256 19.7435 3.25537 19.5054 3.25103 19.2469C3.25034 19.2064 3.25 19.1657 3.25 19.125Z" fill="#0F172A"/>
    <path d="M19.75 7.5C19.75 7.08579 19.4142 6.75 19 6.75C18.5858 6.75 18.25 7.08579 18.25 7.5V9.75H16C15.5858 9.75 15.25 10.0858 15.25 10.5C15.25 10.9142 15.5858 11.25 16 11.25H18.25V13.5C18.25 13.9142 18.5858 14.25 19 14.25C19.4142 14.25 19.75 13.9142 19.75 13.5V11.25H22C22.4142 11.25 22.75 10.9142 22.75 10.5C22.75 10.0858 22.4142 9.75 22 9.75H19.75V7.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def user_plus(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M6.25 6.375C6.25 4.09683 8.09683 2.25 10.375 2.25C12.6532 2.25 14.5 4.09683 14.5 6.375C14.5 8.65317 12.6532 10.5 10.375 10.5C8.09683 10.5 6.25 8.65317 6.25 6.375Z\" fill=\"#0F172A\"/>\n<path d=\"M3.25 19.125C3.25 15.19 6.43997 12 10.375 12C14.31 12 17.5 15.19 17.5 19.125V19.1276C17.5 19.1674 17.4996 19.2074 17.499 19.2469C17.4946 19.5054 17.3574 19.7435 17.1359 19.8768C15.1607 21.0661 12.8466 21.75 10.375 21.75C7.90343 21.75 5.5893 21.0661 3.61406 19.8768C3.39256 19.7435 3.25537 19.5054 3.25103 19.2469C3.25034 19.2064 3.25 19.1657 3.25 19.125Z\" fill=\"#0F172A\"/>\n<path d=\"M19.75 7.5C19.75 7.08579 19.4142 6.75 19 6.75C18.5858 6.75 18.25 7.08579 18.25 7.5V9.75H16C15.5858 9.75 15.25 10.0858 15.25 10.5C15.25 10.9142 15.5858 11.25 16 11.25H18.25V13.5C18.25 13.9142 18.5858 14.25 19 14.25C19.4142 14.25 19.75 13.9142 19.75 13.5V11.25H22C22.4142 11.25 22.75 10.9142 22.75 10.5C22.75 10.0858 22.4142 9.75 22 9.75H19.75V7.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/user.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.user />

      <.user class="h-6 w-6 text-gray-500" />

  or as a function

      <%= user() %>

      <%= user(class: "h-6 w-6 text-gray-500") %>
  """
  def user(assigns_or_opts \\ [])

  def user(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.49996 6C7.49996 3.51472 9.51468 1.5 12 1.5C14.4852 1.5 16.5 3.51472 16.5 6C16.5 8.48528 14.4852 10.5 12 10.5C9.51468 10.5 7.49996 8.48528 7.49996 6Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.75121 20.1053C3.82855 15.6156 7.49195 12 12 12C16.5081 12 20.1716 15.6157 20.2487 20.1056C20.2538 20.4034 20.0823 20.676 19.8116 20.8002C17.4327 21.8918 14.7865 22.5 12.0003 22.5C9.21382 22.5 6.5674 21.8917 4.18829 20.7999C3.91762 20.6757 3.74608 20.4031 3.75121 20.1053Z" fill="#0F172A"/>
    </svg>
    """
  end

  def user(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7.49996 6C7.49996 3.51472 9.51468 1.5 12 1.5C14.4852 1.5 16.5 3.51472 16.5 6C16.5 8.48528 14.4852 10.5 12 10.5C9.51468 10.5 7.49996 8.48528 7.49996 6Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.75121 20.1053C3.82855 15.6156 7.49195 12 12 12C16.5081 12 20.1716 15.6157 20.2487 20.1056C20.2538 20.4034 20.0823 20.676 19.8116 20.8002C17.4327 21.8918 14.7865 22.5 12.0003 22.5C9.21382 22.5 6.5674 21.8917 4.18829 20.7999C3.91762 20.6757 3.74608 20.4031 3.75121 20.1053Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/users.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.users />

      <.users class="h-6 w-6 text-gray-500" />

  or as a function

      <%= users() %>

      <%= users(class: "h-6 w-6 text-gray-500") %>
  """
  def users(assigns_or_opts \\ [])

  def users(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M4.5 6.375C4.5 4.09683 6.34683 2.25 8.625 2.25C10.9032 2.25 12.75 4.09683 12.75 6.375C12.75 8.65317 10.9032 10.5 8.625 10.5C6.34683 10.5 4.5 8.65317 4.5 6.375Z" fill="#0F172A"/>
    <path d="M14.25 8.625C14.25 6.76104 15.761 5.25 17.625 5.25C19.489 5.25 21 6.76104 21 8.625C21 10.489 19.489 12 17.625 12C15.761 12 14.25 10.489 14.25 8.625Z" fill="#0F172A"/>
    <path d="M1.5 19.125C1.5 15.19 4.68997 12 8.625 12C12.56 12 15.75 15.19 15.75 19.125V19.1276C15.75 19.1674 15.7496 19.2074 15.749 19.2469C15.7446 19.5054 15.6074 19.7435 15.3859 19.8768C13.4107 21.0661 11.0966 21.75 8.625 21.75C6.15343 21.75 3.8393 21.0661 1.86406 19.8768C1.64256 19.7435 1.50537 19.5054 1.50103 19.2469C1.50034 19.2064 1.5 19.1657 1.5 19.125Z" fill="#0F172A"/>
    <path d="M17.2498 19.1281C17.2498 19.1762 17.2494 19.2244 17.2486 19.2722C17.2429 19.6108 17.1612 19.9378 17.0157 20.232C17.2172 20.2439 17.4203 20.25 17.6248 20.25C19.2205 20.25 20.732 19.8803 22.0764 19.2213C22.3234 19.1002 22.4843 18.8536 22.4957 18.5787C22.4984 18.5111 22.4998 18.4432 22.4998 18.375C22.4998 15.6826 20.3172 13.5 17.6248 13.5C16.8784 13.5 16.1711 13.6678 15.5387 13.9676C16.6135 15.4061 17.2498 17.1912 17.2498 19.125V19.1281Z" fill="#0F172A"/>
    </svg>
    """
  end

  def users(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M4.5 6.375C4.5 4.09683 6.34683 2.25 8.625 2.25C10.9032 2.25 12.75 4.09683 12.75 6.375C12.75 8.65317 10.9032 10.5 8.625 10.5C6.34683 10.5 4.5 8.65317 4.5 6.375Z\" fill=\"#0F172A\"/>\n<path d=\"M14.25 8.625C14.25 6.76104 15.761 5.25 17.625 5.25C19.489 5.25 21 6.76104 21 8.625C21 10.489 19.489 12 17.625 12C15.761 12 14.25 10.489 14.25 8.625Z\" fill=\"#0F172A\"/>\n<path d=\"M1.5 19.125C1.5 15.19 4.68997 12 8.625 12C12.56 12 15.75 15.19 15.75 19.125V19.1276C15.75 19.1674 15.7496 19.2074 15.749 19.2469C15.7446 19.5054 15.6074 19.7435 15.3859 19.8768C13.4107 21.0661 11.0966 21.75 8.625 21.75C6.15343 21.75 3.8393 21.0661 1.86406 19.8768C1.64256 19.7435 1.50537 19.5054 1.50103 19.2469C1.50034 19.2064 1.5 19.1657 1.5 19.125Z\" fill=\"#0F172A\"/>\n<path d=\"M17.2498 19.1281C17.2498 19.1762 17.2494 19.2244 17.2486 19.2722C17.2429 19.6108 17.1612 19.9378 17.0157 20.232C17.2172 20.2439 17.4203 20.25 17.6248 20.25C19.2205 20.25 20.732 19.8803 22.0764 19.2213C22.3234 19.1002 22.4843 18.8536 22.4957 18.5787C22.4984 18.5111 22.4998 18.4432 22.4998 18.375C22.4998 15.6826 20.3172 13.5 17.6248 13.5C16.8784 13.5 16.1711 13.6678 15.5387 13.9676C16.6135 15.4061 17.2498 17.1912 17.2498 19.125V19.1281Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/video-camera-slash.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.video_camera_slash />

      <.video_camera_slash class="h-6 w-6 text-gray-500" />

  or as a function

      <%= video_camera_slash() %>

      <%= video_camera_slash(class: "h-6 w-6 text-gray-500") %>
  """
  def video_camera_slash(assigns_or_opts \\ [])

  def video_camera_slash(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M3.53033 2.46967C3.23744 2.17678 2.76256 2.17678 2.46967 2.46967C2.17678 2.76256 2.17678 3.23744 2.46967 3.53033L20.4697 21.5303C20.7626 21.8232 21.2374 21.8232 21.5303 21.5303C21.8232 21.2374 21.8232 20.7626 21.5303 20.4697L3.53033 2.46967Z" fill="#0F172A"/>
    <path d="M22.5 17.6893C22.5 18.1614 22.2984 18.5502 21.996 18.814L17.25 14.068V7.93931L19.9393 5.24996C20.8843 4.30501 22.5 4.97427 22.5 6.31063V17.6893Z" fill="#0F172A"/>
    <path d="M15.75 7.5V12.568L7.68198 4.5H12.75C14.4069 4.5 15.75 5.84315 15.75 7.5Z" fill="#0F172A"/>
    <path d="M1.5 7.5C1.5 6.71787 1.79931 6.00564 2.28963 5.47161L15.1363 18.3183C14.5882 19.0366 13.7232 19.5 12.75 19.5H4.5C2.84315 19.5 1.5 18.1569 1.5 16.5V7.5Z" fill="#0F172A"/>
    </svg>
    """
  end

  def video_camera_slash(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M3.53033 2.46967C3.23744 2.17678 2.76256 2.17678 2.46967 2.46967C2.17678 2.76256 2.17678 3.23744 2.46967 3.53033L20.4697 21.5303C20.7626 21.8232 21.2374 21.8232 21.5303 21.5303C21.8232 21.2374 21.8232 20.7626 21.5303 20.4697L3.53033 2.46967Z\" fill=\"#0F172A\"/>\n<path d=\"M22.5 17.6893C22.5 18.1614 22.2984 18.5502 21.996 18.814L17.25 14.068V7.93931L19.9393 5.24996C20.8843 4.30501 22.5 4.97427 22.5 6.31063V17.6893Z\" fill=\"#0F172A\"/>\n<path d=\"M15.75 7.5V12.568L7.68198 4.5H12.75C14.4069 4.5 15.75 5.84315 15.75 7.5Z\" fill=\"#0F172A\"/>\n<path d=\"M1.5 7.5C1.5 6.71787 1.79931 6.00564 2.28963 5.47161L15.1363 18.3183C14.5882 19.0366 13.7232 19.5 12.75 19.5H4.5C2.84315 19.5 1.5 18.1569 1.5 16.5V7.5Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/video-camera.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.video_camera />

      <.video_camera class="h-6 w-6 text-gray-500" />

  or as a function

      <%= video_camera() %>

      <%= video_camera(class: "h-6 w-6 text-gray-500") %>
  """
  def video_camera(assigns_or_opts \\ [])

  def video_camera(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M4.5 4.5C2.84315 4.5 1.5 5.84315 1.5 7.5V16.5C1.5 18.1569 2.84315 19.5 4.5 19.5H12.75C14.4069 19.5 15.75 18.1569 15.75 16.5V7.5C15.75 5.84315 14.4069 4.5 12.75 4.5H4.5Z" fill="#0F172A"/>
    <path d="M19.9393 18.75L17.25 16.0606V7.93931L19.9393 5.24996C20.8843 4.30501 22.5 4.97427 22.5 6.31063V17.6893C22.5 19.0257 20.8843 19.6949 19.9393 18.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def video_camera(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M4.5 4.5C2.84315 4.5 1.5 5.84315 1.5 7.5V16.5C1.5 18.1569 2.84315 19.5 4.5 19.5H12.75C14.4069 19.5 15.75 18.1569 15.75 16.5V7.5C15.75 5.84315 14.4069 4.5 12.75 4.5H4.5Z\" fill=\"#0F172A\"/>\n<path d=\"M19.9393 18.75L17.25 16.0606V7.93931L19.9393 5.24996C20.8843 4.30501 22.5 4.97427 22.5 6.31063V17.6893C22.5 19.0257 20.8843 19.6949 19.9393 18.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/view-columns.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.view_columns />

      <.view_columns class="h-6 w-6 text-gray-500" />

  or as a function

      <%= view_columns() %>

      <%= view_columns(class: "h-6 w-6 text-gray-500") %>
  """
  def view_columns(assigns_or_opts \\ [])

  def view_columns(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M15 3.75H9V20.25H15V3.75Z" fill="#0F172A"/>
    <path d="M16.5 20.25H19.875C20.9105 20.25 21.75 19.4105 21.75 18.375V5.625C21.75 4.58947 20.9105 3.75 19.875 3.75H16.5V20.25Z" fill="#0F172A"/>
    <path d="M4.125 3.75H7.5V20.25H4.125C3.08947 20.25 2.25 19.4105 2.25 18.375V5.625C2.25 4.58947 3.08947 3.75 4.125 3.75Z" fill="#0F172A"/>
    </svg>
    """
  end

  def view_columns(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M15 3.75H9V20.25H15V3.75Z\" fill=\"#0F172A\"/>\n<path d=\"M16.5 20.25H19.875C20.9105 20.25 21.75 19.4105 21.75 18.375V5.625C21.75 4.58947 20.9105 3.75 19.875 3.75H16.5V20.25Z\" fill=\"#0F172A\"/>\n<path d=\"M4.125 3.75H7.5V20.25H4.125C3.08947 20.25 2.25 19.4105 2.25 18.375V5.625C2.25 4.58947 3.08947 3.75 4.125 3.75Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/wifi.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.wifi />

      <.wifi class="h-6 w-6 text-gray-500" />

  or as a function

      <%= wifi() %>

      <%= wifi(class: "h-6 w-6 text-gray-500") %>
  """
  def wifi(assigns_or_opts \\ [])

  def wifi(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.37128 8.1434C7.22915 2.28553 16.7266 2.28553 22.5845 8.1434C22.8774 8.43628 22.8774 8.91114 22.5845 9.20404L22.0542 9.73441C21.9135 9.87507 21.7228 9.9541 21.5238 9.9541C21.3249 9.95411 21.1342 9.87509 20.9935 9.73443C16.0143 4.75525 7.94146 4.75525 2.96227 9.73443C2.82162 9.87509 2.63084 9.95411 2.43193 9.9541C2.23301 9.9541 2.04224 9.87507 1.90159 9.73441L1.37126 9.20404C1.07839 8.91114 1.0784 8.43628 1.37128 8.1434ZM4.55326 11.3254C8.65377 7.22493 15.302 7.22493 19.4025 11.3254C19.6954 11.6183 19.6954 12.0932 19.4025 12.3861L18.8722 12.9164C18.7316 13.0571 18.5408 13.1361 18.3419 13.1361C18.143 13.1361 17.9522 13.0571 17.8115 12.9164C14.5897 9.6946 9.3661 9.6946 6.14427 12.9164C5.85139 13.2093 5.37652 13.2093 5.08362 12.9164L4.55327 12.3861C4.41262 12.2455 4.33359 12.0547 4.33359 11.8558C4.33359 11.6569 4.41261 11.4661 4.55326 11.3254ZM7.75733 14.5074C10.1005 12.1642 13.8995 12.1642 16.2426 14.5074C16.5355 14.8003 16.5355 15.2751 16.2426 15.568L15.7123 16.0983C15.5716 16.239 15.3809 16.318 15.182 16.318C14.983 16.318 14.7923 16.239 14.6516 16.0983C13.1872 14.6339 10.8128 14.6339 9.34832 16.0983C9.05543 16.3912 8.58055 16.3912 8.28766 16.0983L7.75733 15.568C7.46444 15.2751 7.46444 14.8003 7.75733 14.5074ZM10.9393 17.6893C11.5251 17.1036 12.4748 17.1036 13.0606 17.6893C13.3535 17.9822 13.3535 18.4571 13.0606 18.75L12.5303 19.2803C12.3896 19.421 12.1989 19.5 12 19.5C11.8011 19.5 11.6103 19.421 11.4696 19.2803L10.9393 18.75C10.6464 18.4571 10.6464 17.9822 10.9393 17.6893Z" fill="#0F172A"/>
    </svg>
    """
  end

  def wifi(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.37128 8.1434C7.22915 2.28553 16.7266 2.28553 22.5845 8.1434C22.8774 8.43628 22.8774 8.91114 22.5845 9.20404L22.0542 9.73441C21.9135 9.87507 21.7228 9.9541 21.5238 9.9541C21.3249 9.95411 21.1342 9.87509 20.9935 9.73443C16.0143 4.75525 7.94146 4.75525 2.96227 9.73443C2.82162 9.87509 2.63084 9.95411 2.43193 9.9541C2.23301 9.9541 2.04224 9.87507 1.90159 9.73441L1.37126 9.20404C1.07839 8.91114 1.0784 8.43628 1.37128 8.1434ZM4.55326 11.3254C8.65377 7.22493 15.302 7.22493 19.4025 11.3254C19.6954 11.6183 19.6954 12.0932 19.4025 12.3861L18.8722 12.9164C18.7316 13.0571 18.5408 13.1361 18.3419 13.1361C18.143 13.1361 17.9522 13.0571 17.8115 12.9164C14.5897 9.6946 9.3661 9.6946 6.14427 12.9164C5.85139 13.2093 5.37652 13.2093 5.08362 12.9164L4.55327 12.3861C4.41262 12.2455 4.33359 12.0547 4.33359 11.8558C4.33359 11.6569 4.41261 11.4661 4.55326 11.3254ZM7.75733 14.5074C10.1005 12.1642 13.8995 12.1642 16.2426 14.5074C16.5355 14.8003 16.5355 15.2751 16.2426 15.568L15.7123 16.0983C15.5716 16.239 15.3809 16.318 15.182 16.318C14.983 16.318 14.7923 16.239 14.6516 16.0983C13.1872 14.6339 10.8128 14.6339 9.34832 16.0983C9.05543 16.3912 8.58055 16.3912 8.28766 16.0983L7.75733 15.568C7.46444 15.2751 7.46444 14.8003 7.75733 14.5074ZM10.9393 17.6893C11.5251 17.1036 12.4748 17.1036 13.0606 17.6893C13.3535 17.9822 13.3535 18.4571 13.0606 18.75L12.5303 19.2803C12.3896 19.421 12.1989 19.5 12 19.5C11.8011 19.5 11.6103 19.421 11.4696 19.2803L10.9393 18.75C10.6464 18.4571 10.6464 17.9822 10.9393 17.6893Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/wrench-screwdriver.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.wrench_screwdriver />

      <.wrench_screwdriver class="h-6 w-6 text-gray-500" />

  or as a function

      <%= wrench_screwdriver() %>

      <%= wrench_screwdriver(class: "h-6 w-6 text-gray-500") %>
  """
  def wrench_screwdriver(assigns_or_opts \\ [])

  def wrench_screwdriver(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 6.75C12 3.85051 14.3505 1.5 17.25 1.5C17.7791 1.5 18.2913 1.57852 18.7747 1.72505C19.027 1.80151 19.2206 2.00479 19.2847 2.26048C19.3488 2.51618 19.2739 2.78674 19.0875 2.97313L15.7688 6.29183C15.8305 6.76741 16.0438 7.22581 16.409 7.59099C16.7742 7.95617 17.2326 8.16947 17.7082 8.23117L21.0269 4.91247C21.2133 4.72608 21.4838 4.65122 21.7395 4.7153C21.9952 4.77938 22.1985 4.97299 22.275 5.22526C22.4215 5.7087 22.5 6.22086 22.5 6.75C22.5 9.64949 20.1495 12 17.25 12C17.0995 12 16.9503 11.9936 16.8027 11.9812C15.7855 11.8952 14.9338 12.0816 14.4944 12.6151L7.34327 21.2987C6.71684 22.0593 5.78308 22.5 4.79769 22.5C2.97642 22.5 1.5 21.0236 1.5 19.2023C1.5 18.2169 1.94067 17.2832 2.70132 16.6567L11.3849 9.50557C11.9184 9.06623 12.1048 8.21453 12.0188 7.19728C12.0064 7.04968 12 6.9005 12 6.75ZM4.11723 19.125C4.11723 18.7108 4.45302 18.375 4.86723 18.375H4.87473C5.28895 18.375 5.62473 18.7108 5.62473 19.125V19.1325C5.62473 19.5468 5.28895 19.8825 4.87473 19.8825H4.86723C4.45302 19.8825 4.11723 19.5468 4.11723 19.1325V19.125Z" fill="#0F172A"/>
    <path d="M10.076 8.64031L7.87502 6.43936V4.87502C7.87502 4.61157 7.73679 4.36744 7.51089 4.2319L3.76089 1.9819C3.46578 1.80483 3.08804 1.85133 2.84469 2.09469L2.09469 2.84469C1.85133 3.08804 1.80483 3.46578 1.9819 3.76089L4.2319 7.51089C4.36744 7.73679 4.61157 7.87502 4.87502 7.87502H6.43936L8.50138 9.93704L10.076 8.64031Z" fill="#0F172A"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.5559 17.3287L16.7386 21.5114C18.0567 22.8294 20.1936 22.8294 21.5116 21.5114C22.8296 20.1934 22.8296 18.0565 21.5116 16.7385L18.206 13.4328C17.8937 13.4771 17.5746 13.5 17.2501 13.5C17.0574 13.5 16.866 13.4918 16.6765 13.4758C16.2822 13.4425 15.994 13.4696 15.8089 13.5177C15.7053 13.5446 15.6574 13.5713 15.6419 13.5814L12.5559 17.3287ZM15.9698 15.9697C16.2627 15.6768 16.7375 15.6768 17.0304 15.9697L18.9054 17.8447C19.1983 18.1376 19.1983 18.6124 18.9054 18.9053C18.6125 19.1982 18.1377 19.1982 17.8448 18.9053L15.9698 17.0303C15.6769 16.7374 15.6769 16.2626 15.9698 15.9697Z" fill="#0F172A"/>
    </svg>
    """
  end

  def wrench_screwdriver(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 6.75C12 3.85051 14.3505 1.5 17.25 1.5C17.7791 1.5 18.2913 1.57852 18.7747 1.72505C19.027 1.80151 19.2206 2.00479 19.2847 2.26048C19.3488 2.51618 19.2739 2.78674 19.0875 2.97313L15.7688 6.29183C15.8305 6.76741 16.0438 7.22581 16.409 7.59099C16.7742 7.95617 17.2326 8.16947 17.7082 8.23117L21.0269 4.91247C21.2133 4.72608 21.4838 4.65122 21.7395 4.7153C21.9952 4.77938 22.1985 4.97299 22.275 5.22526C22.4215 5.7087 22.5 6.22086 22.5 6.75C22.5 9.64949 20.1495 12 17.25 12C17.0995 12 16.9503 11.9936 16.8027 11.9812C15.7855 11.8952 14.9338 12.0816 14.4944 12.6151L7.34327 21.2987C6.71684 22.0593 5.78308 22.5 4.79769 22.5C2.97642 22.5 1.5 21.0236 1.5 19.2023C1.5 18.2169 1.94067 17.2832 2.70132 16.6567L11.3849 9.50557C11.9184 9.06623 12.1048 8.21453 12.0188 7.19728C12.0064 7.04968 12 6.9005 12 6.75ZM4.11723 19.125C4.11723 18.7108 4.45302 18.375 4.86723 18.375H4.87473C5.28895 18.375 5.62473 18.7108 5.62473 19.125V19.1325C5.62473 19.5468 5.28895 19.8825 4.87473 19.8825H4.86723C4.45302 19.8825 4.11723 19.5468 4.11723 19.1325V19.125Z\" fill=\"#0F172A\"/>\n<path d=\"M10.076 8.64031L7.87502 6.43936V4.87502C7.87502 4.61157 7.73679 4.36744 7.51089 4.2319L3.76089 1.9819C3.46578 1.80483 3.08804 1.85133 2.84469 2.09469L2.09469 2.84469C1.85133 3.08804 1.80483 3.46578 1.9819 3.76089L4.2319 7.51089C4.36744 7.73679 4.61157 7.87502 4.87502 7.87502H6.43936L8.50138 9.93704L10.076 8.64031Z\" fill=\"#0F172A\"/>\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12.5559 17.3287L16.7386 21.5114C18.0567 22.8294 20.1936 22.8294 21.5116 21.5114C22.8296 20.1934 22.8296 18.0565 21.5116 16.7385L18.206 13.4328C17.8937 13.4771 17.5746 13.5 17.2501 13.5C17.0574 13.5 16.866 13.4918 16.6765 13.4758C16.2822 13.4425 15.994 13.4696 15.8089 13.5177C15.7053 13.5446 15.6574 13.5713 15.6419 13.5814L12.5559 17.3287ZM15.9698 15.9697C16.2627 15.6768 16.7375 15.6768 17.0304 15.9697L18.9054 17.8447C19.1983 18.1376 19.1983 18.6124 18.9054 18.9053C18.6125 19.1982 18.1377 19.1982 17.8448 18.9053L15.9698 17.0303C15.6769 16.7374 15.6769 16.2626 15.9698 15.9697Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/wrench.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.wrench />

      <.wrench class="h-6 w-6 text-gray-500" />

  or as a function

      <%= wrench() %>

      <%= wrench(class: "h-6 w-6 text-gray-500") %>
  """
  def wrench(assigns_or_opts \\ [])

  def wrench(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 6.75C12 3.85051 14.3505 1.5 17.25 1.5C17.7791 1.5 18.2913 1.57852 18.7747 1.72505C19.027 1.80151 19.2206 2.00479 19.2847 2.26048C19.3488 2.51618 19.2739 2.78674 19.0875 2.97313L15.7688 6.29183C15.8305 6.76741 16.0438 7.22581 16.409 7.59099C16.7742 7.95617 17.2326 8.16947 17.7082 8.23117L21.0269 4.91247C21.2133 4.72608 21.4838 4.65122 21.7395 4.7153C21.9952 4.77938 22.1985 4.97299 22.275 5.22526C22.4215 5.7087 22.5 6.22086 22.5 6.75C22.5 9.64949 20.1495 12 17.25 12C17.0995 12 16.9503 11.9936 16.8027 11.9812C15.7855 11.8952 14.9338 12.0816 14.4944 12.6151L7.34327 21.2987C6.71684 22.0593 5.78308 22.5 4.79769 22.5C2.97642 22.5 1.5 21.0236 1.5 19.2023C1.5 18.2169 1.94067 17.2832 2.70132 16.6567L11.3849 9.50557C11.9184 9.06623 12.1048 8.21453 12.0188 7.19728C12.0064 7.04968 12 6.9005 12 6.75ZM4.11723 19.125C4.11723 18.7108 4.45302 18.375 4.86723 18.375H4.87473C5.28895 18.375 5.62473 18.7108 5.62473 19.125V19.1325C5.62473 19.5468 5.28895 19.8825 4.87473 19.8825H4.86723C4.45302 19.8825 4.11723 19.5468 4.11723 19.1325V19.125Z" fill="#0F172A"/>
    </svg>
    """
  end

  def wrench(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 6.75C12 3.85051 14.3505 1.5 17.25 1.5C17.7791 1.5 18.2913 1.57852 18.7747 1.72505C19.027 1.80151 19.2206 2.00479 19.2847 2.26048C19.3488 2.51618 19.2739 2.78674 19.0875 2.97313L15.7688 6.29183C15.8305 6.76741 16.0438 7.22581 16.409 7.59099C16.7742 7.95617 17.2326 8.16947 17.7082 8.23117L21.0269 4.91247C21.2133 4.72608 21.4838 4.65122 21.7395 4.7153C21.9952 4.77938 22.1985 4.97299 22.275 5.22526C22.4215 5.7087 22.5 6.22086 22.5 6.75C22.5 9.64949 20.1495 12 17.25 12C17.0995 12 16.9503 11.9936 16.8027 11.9812C15.7855 11.8952 14.9338 12.0816 14.4944 12.6151L7.34327 21.2987C6.71684 22.0593 5.78308 22.5 4.79769 22.5C2.97642 22.5 1.5 21.0236 1.5 19.2023C1.5 18.2169 1.94067 17.2832 2.70132 16.6567L11.3849 9.50557C11.9184 9.06623 12.1048 8.21453 12.0188 7.19728C12.0064 7.04968 12 6.9005 12 6.75ZM4.11723 19.125C4.11723 18.7108 4.45302 18.375 4.86723 18.375H4.87473C5.28895 18.375 5.62473 18.7108 5.62473 19.125V19.1325C5.62473 19.5468 5.28895 19.8825 4.87473 19.8825H4.86723C4.45302 19.8825 4.11723 19.5468 4.11723 19.1325V19.125Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/x-circle.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.x_circle />

      <.x_circle class="h-6 w-6 text-gray-500" />

  or as a function

      <%= x_circle() %>

      <%= x_circle(class: "h-6 w-6 text-gray-500") %>
  """
  def x_circle(assigns_or_opts \\ [])

  def x_circle(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM10.2803 9.21967C9.98744 8.92678 9.51256 8.92678 9.21967 9.21967C8.92678 9.51256 8.92678 9.98744 9.21967 10.2803L10.9393 12L9.21967 13.7197C8.92678 14.0126 8.92678 14.4874 9.21967 14.7803C9.51256 15.0732 9.98744 15.0732 10.2803 14.7803L12 13.0607L13.7197 14.7803C14.0126 15.0732 14.4874 15.0732 14.7803 14.7803C15.0732 14.4874 15.0732 14.0126 14.7803 13.7197L13.0607 12L14.7803 10.2803C15.0732 9.98744 15.0732 9.51256 14.7803 9.21967C14.4874 8.92678 14.0126 8.92678 13.7197 9.21967L12 10.9393L10.2803 9.21967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def x_circle(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 17.3848 6.61522 21.75 12 21.75C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM10.2803 9.21967C9.98744 8.92678 9.51256 8.92678 9.21967 9.21967C8.92678 9.51256 8.92678 9.98744 9.21967 10.2803L10.9393 12L9.21967 13.7197C8.92678 14.0126 8.92678 14.4874 9.21967 14.7803C9.51256 15.0732 9.98744 15.0732 10.2803 14.7803L12 13.0607L13.7197 14.7803C14.0126 15.0732 14.4874 15.0732 14.7803 14.7803C15.0732 14.4874 15.0732 14.0126 14.7803 13.7197L13.0607 12L14.7803 10.2803C15.0732 9.98744 15.0732 9.51256 14.7803 9.21967C14.4874 8.92678 14.0126 8.92678 13.7197 9.21967L12 10.9393L10.2803 9.21967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

  @doc """
  ![](assets/icons/solid/x-mark.svg) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <.x_mark />

      <.x_mark class="h-6 w-6 text-gray-500" />

  or as a function

      <%= x_mark() %>

      <%= x_mark(class: "h-6 w-6 text-gray-500") %>
  """
  def x_mark(assigns_or_opts \\ [])

  def x_mark(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} aria-hidden="true" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.46967 5.46967C5.76256 5.17678 6.23744 5.17678 6.53033 5.46967L12 10.9393L17.4697 5.46967C17.7626 5.17678 18.2374 5.17678 18.5303 5.46967C18.8232 5.76256 18.8232 6.23744 18.5303 6.53033L13.0607 12L18.5303 17.4697C18.8232 17.7626 18.8232 18.2374 18.5303 18.5303C18.2374 18.8232 17.7626 18.8232 17.4697 18.5303L12 13.0607L6.53033 18.5303C6.23744 18.8232 5.76256 18.8232 5.46967 18.5303C5.17678 18.2374 5.17678 17.7626 5.46967 17.4697L10.9393 12L5.46967 6.53033C5.17678 6.23744 5.17678 5.76256 5.46967 5.46967Z" fill="#0F172A"/>
    </svg>
    """
  end

  def x_mark(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), " aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\">\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.46967 5.46967C5.76256 5.17678 6.23744 5.17678 6.53033 5.46967L12 10.9393L17.4697 5.46967C17.7626 5.17678 18.2374 5.17678 18.5303 5.46967C18.8232 5.76256 18.8232 6.23744 18.5303 6.53033L13.0607 12L18.5303 17.4697C18.8232 17.7626 18.8232 18.2374 18.5303 18.5303C18.2374 18.8232 17.7626 18.8232 17.4697 18.5303L12 13.0607L6.53033 18.5303C6.23744 18.8232 5.76256 18.8232 5.46967 18.5303C5.17678 18.2374 5.17678 17.7626 5.46967 17.4697L10.9393 12L5.46967 6.53033C5.17678 6.23744 5.17678 5.76256 5.46967 5.46967Z\" fill=\"#0F172A\"/>\n</svg>"]}
  end

end
