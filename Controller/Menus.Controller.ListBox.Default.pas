unit Menus.Controller.ListBox.Default;

interface

uses
  Menus.Controller.Interfaces, System.Classes, FMX.ListBox, FMX.Types;

type

  TControllerListBoxDefault = class(TInterfacedObject,
    IControllerListBoxDefault)
  private
    FContainer: TComponent;
    FListBox: TListBox;
  public
    constructor Create(Container: TComponent);
    destructor Destroy; override;
    class function New(Container: TComponent): IControllerListBoxDefault;
    function Name(Value: String): IControllerListBoxDefault;
    function Align(Value: TAlignLayout): IControllerListBoxDefault;
    function ItemHeight(Value: Integer): IControllerListBoxDefault;
    function AddItem(Value: TFmxObject): IControllerListBoxDefault;
    function Lista: TFmxObject;
    procedure Exibir;
  end;

implementation

uses
  FMX.Layouts;

{ TControllerListBoxDefault }

function TControllerListBoxDefault.AddItem(
  Value: TFmxObject): IControllerListBoxDefault;
begin
  FListBox.AddObject(Value);
end;

function TControllerListBoxDefault.Align(Value: TAlignLayout)
    : IControllerListBoxDefault;
begin
  Result := Self;
  FListBox.Align := Value;
end;

constructor TControllerListBoxDefault.Create(Container: TComponent);
begin
  FContainer := Container;
  FListBox := TListBox.Create(nil);
  FListBox.Name := 'ListaDefault';
  FListBox.Align := TAlignLayout.Client;
  FListBox.ItemHeight := 60;
end;

destructor TControllerListBoxDefault.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxDefault.Exibir;
begin
  TLayout(FContainer).AddObject(FListBox);
end;

function TControllerListBoxDefault.ItemHeight(Value: Integer)
  : IControllerListBoxDefault;
begin
  Result := Self;
  FListBox.ItemHeight := Value;
end;

function TControllerListBoxDefault.Lista: TFmxObject;
begin
  Result := FListBox;
end;

function TControllerListBoxDefault.Name(Value: String)
  : IControllerListBoxDefault;
begin
  Result := Self;
  FListBox.Name := Value;
end;

class function TControllerListBoxDefault.New(Container: TComponent)
  : IControllerListBoxDefault;
begin
  Result := Self.Create(Container);
end;

end.
