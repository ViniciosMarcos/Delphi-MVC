unit Menus.Controller.ListBox.Factory;

interface

type

  TControllerListBoxFactory = class(TInterfacedObject, IControllerListBoxFactory)
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxFactory;
  end;

implementation

{ TControllerListBoxFactory }

constructor TControllerListBoxFactory.Create;
begin

end;

destructor TControllerListBoxFactory.Destroy;
begin

  inherited;
end;

class function TControllerListBoxFactory.New: IControllerListBoxFactory;
begin
  Result := Self.Create;
end;

end.
