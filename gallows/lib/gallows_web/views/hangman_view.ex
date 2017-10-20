defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  @responses %{
    :won          => { :success, "You Won!" },
    :lost         => { :success, "You Won!" },
    :good_guess   => { :success, "You Won!" },
    :bad_guess    => { :success, "You Won!" },
    :already_used     => { :success, "You Won!" },
  }

  def game_state(state) do
    @responses[state]
    |> alert()
  end

  defp alert({class, message}) do
    """
    <div class="alert alert-#{class}">
      #{message}
    </div>
    """
    |> raw()
  end
end
