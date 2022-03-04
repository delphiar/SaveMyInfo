unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IniFiles;

const
  username = 'hicham';
  password = '123';

type
  TmainFrm = class(TForm)
    etUsername: TEdit;
    etPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnConnect: TButton;
    chxSaveMe: TCheckBox;
    HeaderTitle: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    iniconfig: TIniFile;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainFrm: TmainFrm;

implementation

{$R *.dfm}

procedure TmainFrm.btnConnectClick(Sender: TObject);
begin
  iniconfig := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    if (etUsername.Text <> username) or (etPassword.Text <> password) then
    begin
      ShowMessage('Username or Password incorretc !');
      exit;
    end;

    if chxSaveMe.Checked then
    begin
      iniconfig.WriteBool('UserConnection', 'ChSavedPass', chxSaveMe.Checked);
      iniconfig.WriteString('UserConnection', 'Username', etUsername.Text);
      iniconfig.WriteString('UserConnection', 'Password', etPassword.Text);
    end
    else
    begin
      iniconfig.WriteBool('UserConnection', 'ChSavedPass', false);
      iniconfig.WriteString('UserConnection', 'Username', '');
      iniconfig.WriteString('UserConnection', 'Password', '');
    end;

  finally
    iniconfig.Free;
  end;
end;

procedure TmainFrm.Edit1Change(Sender: TObject);
begin
  HeaderTitle.Font.Size := StrToInt(Edit1.Text);
end;

procedure TmainFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  iniconfig := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    iniconfig.WriteInteger('DesignConfig', 'HeaderFont', HeaderTitle.Font.Size);
  finally
    iniconfig.Free;
  end;
end;

procedure TmainFrm.FormCreate(Sender: TObject);
begin
  iniconfig := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    chxSaveMe.Checked := iniconfig.ReadBool('UserConnection',
      'ChSavedPass', false);
    etUsername.Text := iniconfig.ReadString('UserConnection', 'Username', '');
    etPassword.Text := iniconfig.ReadString('UserConnection', 'Password', '');
    Edit1.Text := inttostr(iniconfig.readInteger('DesignConfig',
      'HeaderFont', 0));
  finally
    FreeAndNil(iniconfig);
  end;
end;

end.
