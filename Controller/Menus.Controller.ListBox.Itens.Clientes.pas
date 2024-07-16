unit Menus.Controller.ListBox.Itens.Clientes;

interface

uses
  Menus.Controller.Interfaces,
  FMX.Types;

type
  TControllerListBoxItensCliente = class(TInterfacedObject, IControllerListBoxItemForm)
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxItemForm;
    function Show: TFmxObject;
  end;

implementation

{ TControllerListBoxItensCliente }

uses
  Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxItensCliente.Create;
begin

end;

destructor TControllerListBoxItensCliente.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensCliente.New: IControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensCliente.Show: TFmxObject;
begin
  Result := TControllerListBoxItensFactory.New
              .Default
              .Name('btnClientes')
              .Text('Clientes')
              .Item;
end;

end.
