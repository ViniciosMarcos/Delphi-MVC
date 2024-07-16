unit Menus.Controller.Interfaces;

interface

uses
  FMX.Types, System.Classes;

type
  IControllerListBoxItensDefault = interface;
  IControllerListBoxDefault = interface;

  IControllerListBoxItemForm = interface
    ['{EE2102B7-4330-4F36-AC0F-F2F164D5FB54}']
    function Show: TFmxObject;
  end;

  IControllerListBoxMenu = interface
    ['{8FE93FB9-1F58-495D-A95C-62B230505C1A}']
    procedure Exibir;
  end;

  IControllerListBoxItensFactory = interface
    ['{C280E6FA-451D-4C3A-94E2-42D4E3A2B4EF}']
    function Default: IControllerListBoxItensDefault;
    function Produto: IControllerListBoxItemForm;
    function Cliente: IControllerListBoxItemForm;
  end;

  IControllerListBoxFactory = interface
    ['{D8E51F00-C55D-4295-AA70-1221DB7FCC0C}']
    function Default(Container: TComponent): IControllerListBoxDefault;
    function Principal(Container: TComponent): IControllerListBoxMenu;
  end;

  IControllerListBoxItensDefault = interface
    ['{1CA5A714-A43B-4ECE-A04F-B7782C75C47E}']
    function Name(Value: String): IControllerListBoxItensDefault;
    function Text(Value: String): IControllerListBoxItensDefault;
    function StyleLookup(Value: String): IControllerListBoxItensDefault;
    function onClick(Value: TNotifyEvent): IControllerListBoxItensDefault;
    function Item: TFmxObject;
  end;

  IControllerListBoxDefault = interface
    ['{5B4C9084-54EB-472D-957A-81BEBC394DFA}']
    function Name(Value: String): IControllerListBoxDefault;
    function Align(Value: TAlignLayout): IControllerListBoxDefault;
    function ItemHeight(Value: Integer): IControllerListBoxDefault;
    function AddItem(Value: TFmxObject): IControllerListBoxDefault;
    function Lista: TFmxObject;
    procedure Exibir;
  end;

implementation

end.
