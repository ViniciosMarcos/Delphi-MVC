unit Menus.Controller.ListBox.Itens.Produtos;

interface

uses
  Menus.Controller.Interfaces,
  FMX.Types;

type
  TControllerListBoxItensProduto = class(TInterfacedObject, IControllerListBoxItemForm)
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxItemForm;
    function Show: TFmxObject;
  end;

implementation

{ TControllerListBoxItensProduto }

uses
  Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxItensProduto.Create;
begin

end;

destructor TControllerListBoxItensProduto.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensProduto.New: IControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensProduto.Show: TFmxObject;
begin
  Result := TControllerListBoxItensFactory.New
              .Default
              .Name('btnProdutos')
              .Text('Produtos')
              .Item;
end;

end.
