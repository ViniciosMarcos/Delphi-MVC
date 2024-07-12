unit Menus.Controller.ListBox.Itens.Factory;

interface

uses
  Menus.Controller.Interfaces, Menus.Controller.ListBox.Itens.Default;

type
  TControllerListBoxItensFactory = class(TInterfacedObject, IControllerListBoxItensFactory)
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxItensFactory;
    function Default: IControllerListBoxItensDefault;
  end;

implementation

{ TControllerListBoxItensFactory }

constructor TControllerListBoxItensFactory.Create;
begin

end;

function TControllerListBoxItensFactory.Default: IControllerListBoxItensDefault;
begin
  Result := TControllerListBoxItensDefault.New;
end;

destructor TControllerListBoxItensFactory.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensFactory.New: IControllerListBoxItensFactory;
begin
  Result := Self.Create;
end;

end.
