# This file generated by `mix dagger.gen`. Please DO NOT EDIT.
defmodule Dagger.TypeDef do
  @moduledoc "A definition of a parameter or return type in a Module."
  use Dagger.QueryBuilder
  @type t() :: %__MODULE__{}
  defstruct [:selection, :client]

  (
    @doc "If kind is INTERFACE, the interface-specific type definition.\nIf kind is not INTERFACE, this will be null."
    @spec as_interface(t()) :: {:ok, Dagger.InterfaceTypeDef.t() | nil} | {:error, term()}
    def as_interface(%__MODULE__{} = type_def) do
      selection = select(type_def.selection, "asInterface")

      case execute(selection, type_def.client) do
        {:ok, nil} -> {:ok, nil}
        {:ok, data} -> Nestru.decode_from_map(data, Dagger.InterfaceTypeDef)
        error -> error
      end
    end
  )

  (
    @doc "If kind is LIST, the list-specific type definition.\nIf kind is not LIST, this will be null."
    @spec as_list(t()) :: {:ok, Dagger.ListTypeDef.t() | nil} | {:error, term()}
    def as_list(%__MODULE__{} = type_def) do
      selection = select(type_def.selection, "asList")

      case execute(selection, type_def.client) do
        {:ok, nil} -> {:ok, nil}
        {:ok, data} -> Nestru.decode_from_map(data, Dagger.ListTypeDef)
        error -> error
      end
    end
  )

  (
    @doc "If kind is OBJECT, the object-specific type definition.\nIf kind is not OBJECT, this will be null."
    @spec as_object(t()) :: {:ok, Dagger.ObjectTypeDef.t() | nil} | {:error, term()}
    def as_object(%__MODULE__{} = type_def) do
      selection = select(type_def.selection, "asObject")

      case execute(selection, type_def.client) do
        {:ok, nil} -> {:ok, nil}
        {:ok, data} -> Nestru.decode_from_map(data, Dagger.ObjectTypeDef)
        error -> error
      end
    end
  )

  (
    @doc ""
    @spec id(t()) :: {:ok, Dagger.TypeDefID.t()} | {:error, term()}
    def id(%__MODULE__{} = type_def) do
      selection = select(type_def.selection, "id")
      execute(selection, type_def.client)
    end
  )

  (
    @doc "The kind of type this is (e.g. primitive, list, object)"
    @spec kind(t()) :: {:ok, Dagger.TypeDefKind.t() | nil} | {:error, term()}
    def kind(%__MODULE__{} = type_def) do
      selection = select(type_def.selection, "kind")
      execute(selection, type_def.client)
    end
  )

  (
    @doc "Whether this type can be set to null. Defaults to false."
    @spec optional(t()) :: {:ok, Dagger.Boolean.t()} | {:error, term()}
    def optional(%__MODULE__{} = type_def) do
      selection = select(type_def.selection, "optional")
      execute(selection, type_def.client)
    end
  )

  (
    @doc "Adds a function for constructing a new instance of an Object TypeDef, failing if the type is not an object.\n\n## Required Arguments\n\n* `function` -"
    @spec with_constructor(t(), Dagger.Function.t()) :: Dagger.TypeDef.t()
    def with_constructor(%__MODULE__{} = type_def, function) do
      selection = select(type_def.selection, "withConstructor")
      selection = arg(selection, "function", function)
      %Dagger.TypeDef{selection: selection, client: type_def.client}
    end
  )

  (
    @doc "Adds a static field for an Object TypeDef, failing if the type is not an object.\n\n## Required Arguments\n\n* `name` - The name of the field in the object\n* `type_def` - The type of the field\n\n## Optional Arguments\n\n* `description` - A doc string for the field, if any"
    @spec with_field(t(), Dagger.String.t(), Dagger.TypeDef.t(), keyword()) :: Dagger.TypeDef.t()
    def with_field(%__MODULE__{} = type_def, name, type_def, optional_args \\ []) do
      selection = select(type_def.selection, "withField")
      selection = arg(selection, "name", name)
      selection = arg(selection, "typeDef", type_def)

      selection =
        if is_nil(optional_args[:description]) do
          selection
        else
          arg(selection, "description", optional_args[:description])
        end

      %Dagger.TypeDef{selection: selection, client: type_def.client}
    end
  )

  (
    @doc "Adds a function for an Object or Interface TypeDef, failing if the type is not one of those kinds.\n\n## Required Arguments\n\n* `function` -"
    @spec with_function(t(), Dagger.Function.t()) :: Dagger.TypeDef.t()
    def with_function(%__MODULE__{} = type_def, function) do
      selection = select(type_def.selection, "withFunction")
      selection = arg(selection, "function", function)
      %Dagger.TypeDef{selection: selection, client: type_def.client}
    end
  )

  (
    @doc "Returns a TypeDef of kind Interface with the provided name.\n\n## Required Arguments\n\n* `name` - \n\n## Optional Arguments\n\n* `description` -"
    @spec with_interface(t(), Dagger.String.t(), keyword()) :: Dagger.TypeDef.t()
    def with_interface(%__MODULE__{} = type_def, name, optional_args \\ []) do
      selection = select(type_def.selection, "withInterface")
      selection = arg(selection, "name", name)

      selection =
        if is_nil(optional_args[:description]) do
          selection
        else
          arg(selection, "description", optional_args[:description])
        end

      %Dagger.TypeDef{selection: selection, client: type_def.client}
    end
  )

  (
    @doc "Sets the kind of the type.\n\n## Required Arguments\n\n* `kind` -"
    @spec with_kind(t(), Dagger.TypeDefKind.t()) :: Dagger.TypeDef.t()
    def with_kind(%__MODULE__{} = type_def, kind) do
      selection = select(type_def.selection, "withKind")
      selection = arg(selection, "kind", kind)
      %Dagger.TypeDef{selection: selection, client: type_def.client}
    end
  )

  (
    @doc "Returns a TypeDef of kind List with the provided type for its elements.\n\n## Required Arguments\n\n* `element_type` -"
    @spec with_list_of(t(), Dagger.TypeDef.t()) :: Dagger.TypeDef.t()
    def with_list_of(%__MODULE__{} = type_def, element_type) do
      selection = select(type_def.selection, "withListOf")
      selection = arg(selection, "elementType", element_type)
      %Dagger.TypeDef{selection: selection, client: type_def.client}
    end
  )

  (
    @doc "Returns a TypeDef of kind Object with the provided name.\n\nNote that an object's fields and functions may be omitted if the intent is\nonly to refer to an object. This is how functions are able to return their\nown object, or any other circular reference.\n\n## Required Arguments\n\n* `name` - \n\n## Optional Arguments\n\n* `description` -"
    @spec with_object(t(), Dagger.String.t(), keyword()) :: Dagger.TypeDef.t()
    def with_object(%__MODULE__{} = type_def, name, optional_args \\ []) do
      selection = select(type_def.selection, "withObject")
      selection = arg(selection, "name", name)

      selection =
        if is_nil(optional_args[:description]) do
          selection
        else
          arg(selection, "description", optional_args[:description])
        end

      %Dagger.TypeDef{selection: selection, client: type_def.client}
    end
  )

  (
    @doc "Sets whether this type can be set to null.\n\n## Required Arguments\n\n* `optional` -"
    @spec with_optional(t(), Dagger.Boolean.t()) :: Dagger.TypeDef.t()
    def with_optional(%__MODULE__{} = type_def, optional) do
      selection = select(type_def.selection, "withOptional")
      selection = arg(selection, "optional", optional)
      %Dagger.TypeDef{selection: selection, client: type_def.client}
    end
  )
end
