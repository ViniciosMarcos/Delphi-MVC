unit Menus.Controller.ListBox.Itens.Default;

interface

uses
  Menus.Controller.Interfaces,
  FMX.ListBox, System.Classes, FMX.Types;

type

  TControllerListBoxItensDefault = class(TInterfacedObject,
    IControllerListBoxItensDefault)
  private
    FListBoxItem : TListBoxItem;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxItensDefault;
    function Name(Value: String): IControllerListBoxItensDefault;
    function Text(Value: String): IControllerListBoxItensDefault;
    function StyleLookup(Value: String): IControllerListBoxItensDefault;
    function onClick(Value: TNotifyEvent): IControllerListBoxItensDefault;
    function Item: TFmxObject;
  end;

implementation

{ TControllerListBoxItensDefault }

constructor TControllerListBoxItensDefault.Create;
begin
  FListBoxItem := TListBoxItem.Create(nil);
  FListBoxItem.Name := 'btnDefault';
  FListBoxItem.Text := 'Default';
  FListBoxItem.StyleLookup := 'listboxitemdetaillabel';
end;

destructor TControllerListBoxItensDefault.Destroy;
begin

  inherited;
end;

function TControllerListBoxItensDefault.Item: TFmxObject;
begin
  Result := FListBoxItem;
end;

function TControllerListBoxItensDefault.Name(
  Value: String): IControllerListBoxItensDefault;
begin
  Result := Self;
  FListBoxItem.Name := Value;
end;

class function TControllerListBoxItensDefault.New
  : IControllerListBoxItensDefault;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensDefault.onClick(
  Value: TNotifyEvent): IControllerListBoxItensDefault;
begin

end;

function TControllerListBoxItensDefault.StyleLookup(
  Value: String): IControllerListBoxItensDefault;
begin
  Result := Self;
  FListBoxItem.StyleLookup := Value;
end;

function TControllerListBoxItensDefault.Text(
  Value: String): IControllerListBoxItensDefault;
begin
  Result := Self;
  FListBoxItem.Text := Value;
end;

end.
