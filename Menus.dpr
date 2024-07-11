program Menus;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menus.View.Principal in 'View\Menus.View.Principal.pas' {Form1},
  Menus.Model.Interfaces in 'Model\Menus.Model.Interfaces.pas',
  Menus.Controller.Interfaces in 'Controller\Menus.Controller.Interfaces.pas',
  Menus.Controller.ListBox.Itens.Factory in 'Controller\Menus.Controller.ListBox.Itens.Factory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.