defmodule Dictionary do
  @moduledoc """
  Documentation for Dictionary.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Dictionary.hello()
      :world

  """
  def hello(name) do
    IO.puts "hello world - #{name}"
  end

  @doc """

  ## word_list

    iex > Dictionary.word_list('path/to/file')
    ['one','two','three']

  """
  def word_list do
    "../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!
    |> String.split(~r/\n/)
  end

  def random_word do
    word_list() |> Enum.random
  end

  @doc """

    iex> Dictionary.fibonacci(number)
    o/p to the method

  """
  def fibonacci(0), do: 0
  def fibonacci(1), do: 1
  def fibonacci(n) do
    fibonacci(n-1) + fibonacci(n-2)
  end
 end
