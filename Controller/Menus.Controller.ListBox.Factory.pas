unit Menus.Controller.ListBox.Factory;

interface

uses
  Menus.Controller.Interfaces, Menus.Controller.ListBox.Default,
  System.Classes, Menus.Controller.ListBox.Principal;

type

  TControllerListBoxFactory = class(TInterfacedObject, IControllerListBoxFactory)
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxFactory;
    function Default(Container: TComponent): IControllerListBoxDefault;
    function Principal(Container: TComponent): IControllerListBoxMenu;
  end;

implementation

{ TControllerListBoxFactory }

constructor TControllerListBoxFactory.Create;
begin

end;

function TControllerListBoxFactory.Default(
  Container: TComponent): IControllerListBoxDefault;
begin
  Result := TControllerListBoxDefault.New(Container);
end;

destructor TControllerListBoxFactory.Destroy;
begin

  inherited;
end;

class function TControllerListBoxFactory.New: IControllerListBoxFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxFactory.Principal(
  Container: TComponent): IControllerListBoxMenu;
begin
  Result := TControllerListBoxPrincipal.New(Container);
end;

end.
