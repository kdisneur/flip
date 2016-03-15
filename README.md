# Flip

Based on Haskel flip method, `flip` will switch the first and second parameter
of your method before calling it.

It's useful when you use the `|>` operator and the output of your pipe needs to
be the second instead of the first paramater.

## Installation

Add flip to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:flip, "~> 0.0.1"}]
end
```

## Examples

```elixir
"World" |> Flip.flip(["Hello "], &Kernel.<>/2)
"Hello World"
"World" |> Flip.flip(["Hello ", "!"], fn (p1, p2, p3) -> p1 <> p2 <> p3 end)
"Hello World!"
```
