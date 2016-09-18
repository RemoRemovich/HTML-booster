unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Memo3: TMemo;
    Memo4: TMemo;
    Button2: TButton;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    Label7: TLabel;
    cbTH: TCheckBox;
    edStolbtsov: TEdit;
    edStrok: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edTableBorderWidth: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    cbTableBorderColor: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edCellpadding: TEdit;
    edCellspacing: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    edTableWidth: TEdit;
    edTableHeight: TEdit;
    Label19: TLabel;
    cbTableAlignment: TComboBox;
    Label22: TLabel;
    cbTableBgrColor: TComboBox;
    Label23: TLabel;
    btGenerateCode: TButton;
    Label24: TLabel;
    edTableId: TEdit;
    name: TLabel;
    edTableName: TEdit;
    Memo5: TMemo;
    TabSheet4: TTabSheet;
    Label20: TLabel;
    selURL: TEdit;
    Label21: TLabel;
    selTitle: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Button3: TButton;
    selRel: TRadioGroup;
    selTarget: TRadioGroup;
    Memo6: TMemo;
    Label28: TLabel;
    selLinkText: TEdit;
    Label29: TLabel;
    Label30: TLabel;
    TabSheet5: TTabSheet;
    Label31: TLabel;
    cbHumanLanguage: TComboBox;
    Label32: TLabel;
    cbDoctype: TComboBox;
    Label33: TLabel;
    Label34: TLabel;
    cbTextDirection: TComboBox;
    Label35: TLabel;
    cbEncoding: TComboBox;
    Label36: TLabel;
    Label37: TLabel;
    edTitle: TEdit;
    Label38: TLabel;
    mmDescription: TMemo;
    Label39: TLabel;
    mmKeywords: TMemo;
    mmResult: TMemo;
    btGenerateWebPage: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btGenerateCodeClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cbDoctypeChange(Sender: TObject);
    procedure btGenerateWebPageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: byte;
begin
  Memo2.Lines.Clear;
  Memo2.Lines.Add('<select name="'+Edit1.Text+'">');
  for i:=0 to Memo1.Lines.Count-1 do
    Memo2.Lines.Add('    <option value="'+Memo1.Lines[i]+'">'+Memo1.Lines[i]);
  Memo2.Lines.Add('</select>');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: byte;
begin
  Memo4.Lines.Clear;
  for i:=0 to Memo3.Lines.Count-1 do
    Memo4.Lines.Add('<input type="radio" name="'+Edit2.Text+
    '" value="'+Memo3.Lines[i]+'" />'+Memo3.Lines[i]+'<br />');
end;

procedure TForm1.btGenerateCodeClick(Sender: TObject);
var
  s: string;
  i, j: integer;
begin
  Memo5.Lines.Clear;

  s := '<table ';
  if edTableId.Text <> '' then
    s := s + 'id="' + edTableId.Text +'" ';

  if edTableName.Text <> '' then
    s := s + 'name="' + edTableName.Text +'" ';

  if cbTableAlignment.Text <> '(не выравнивать)' then
    s := s + 'align="' + cbTableAlignment.Text + '" ';

  if edTableWidth.Text <> '' then
    s := s + 'width="' + edTableWidth.Text + '" ';

  if edTableHeight.Text <> '' then
    s := s + 'height="' + edTableHeight.Text + '" ';

  if edTableBorderWidth.Text <> '' then
    s := s + 'border="' + edTableBorderWidth.Text + '" ';

  if cbTableBorderColor.Text <> '' then
    s := s + 'bordercolor="' + cbTableBorderColor.Text + '" ';

  if cbTableBgrColor.Text <> '' then
    s := s + 'bgcolor="' + cbTableBgrColor.Text + '" ';

  if edCellpadding.Text <> '' then
    s := s + 'cellpadding="' + edCellpadding.Text + '" ';  

  if edCellspacing.Text <> '' then
    s := s + 'cellspacing="' + edCellspacing.Text + '" ';

  s := s + '>';

  Memo5.Lines.Add(s);


  if cbTh.Checked then
  begin
    Memo5.Lines.Add('    <tr> ');
    for i:=1 to StrToInt(edStolbtsov.Text) do
      Memo5.Lines.Add('        <th></th>');
    Memo5.Lines.Add('    </tr>');
  end;



  if (edStrok.Text = '') then edStrok.Text := '1';
  if (edStolbtsov.Text = '') then edStolbtsov.Text := '1';
  for i:=1 to StrToInt(edStrok.Text) do
  begin
    Memo5.Lines.Add('    <tr>');
    for j:=1 to StrToInt(edStolbtsov.Text) do
    begin
      Memo5.Lines.Add('        <td></td>');
     {
      Memo5.Lines.Add('        <td>');
      Memo5.Lines.Add('           ');
      Memo5.Lines.Add('        </td>');  }
    end;
    Memo5.Lines.Add('    </tr>');
  end;

  Memo5.Lines.Add('</table>');
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  result: string;
begin
  if (selURL.Text = '') or (selLinkText.Text = '') then
  begin
    ShowMessage ('Первое и второе поля формы должны быть заполнены!');
    exit;
  end else
  begin
    Memo6.Lines.Clear;

    result :=
    '<a '+
    'title="'+selTitle.Text+'" '+
    'href="'+selURL.Text+'" '+
    'rel="'+selRel.Items[selRel.ItemIndex]+'" '+
    'target="'+selTarget.Items[selTarget.ItemIndex]+'">'+
    selLinkText.Text+
    '</a>';

    Memo6.Lines.Add(result);
  end;
end;

procedure TForm1.cbDoctypeChange(Sender: TObject);
begin
 //http://www.w3schools.com/tags/tag_doctype.asp
 {
  case cbLang.ItemIndex of
    0:
        begin
          cbDTD.Clear;
          cbDTD.Items.Add('HTML 4.01 Strict (строгий)');
          cbDTD.Items.Add('HTML 4.01 Transitional (не строгий)');
          cbDTD.Items.Add('HTML 4.01 Frameset (фреймовый)');
        end;
    1:
        begin
          cbDTD.Clear;
          cbDTD.Items.Add('XHTML 1.0 Strict (строгий)');
          cbDTD.Items.Add('XHTML 1.0 Transitional (не строгий)');
          cbDTD.Items.Add('XHTML 1.0 Frameset (фреймовый)');
          cbDTD.Items.Add('XHTML 1.1 (is equal to XHTML 1.0 Strict, but allows you to add modules)');
        end;

    2:
          cbDTD.Clear;
  end;      }
end;

procedure TForm1.btGenerateWebPageClick(Sender: TObject);
var
  x: string;
  i: integer;
begin
  mmResult.Lines.Clear;
  
  case cbDoctype.ItemIndex of
    0: //html 5
    begin
      //ShowMessage ('0');
      mmResult.Lines.Add('<!DOCTYPE html>');
      mmResult.Lines.Add('<html lang="'+cbHumanLanguage.Text+
      '" dir="'+cbTextDirection.Text+'">');
      mmResult.Lines.Add('<head>');
      mmResult.Lines.Add('<meta encoding="'+cbEncoding.Text+'">');
      mmResult.Lines.Add('<title>'+edTitle.Text+'</title>');
      x := '<meta name="description" content="';
      for i:=0 to mmDescription.Lines.Count-1 do
        x := x + mmDescription.Lines[i];
      x := x + '">';
      mmResult.Lines.Add(x);
      x := '<meta name="keywords" content="';
      for i:=0 to mmKeywords.Lines.Count-1 do
        x := x + mmKeywords.Lines[i];
      x := x + '">';
      mmResult.Lines.Add(x);
      mmResult.Lines.Add('</head>');
      mmResult.Lines.Add('<body>');
      mmResult.Lines.Add('');
      mmResult.Lines.Add('</body>');
      mmResult.Lines.Add('</html>');
    end;

    1: //html 4.01 strict
    begin
      mmResult.Lines.Add('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"'+
      ' "http://www.w3.org/TR/html4/strict.dtd">');
      mmResult.Lines.Add('<html lang="'+cbHumanLanguage.Text+
      '" dir="'+cbTextDirection.Text+'">');
      mmResult.Lines.Add('<head>');
      mmResult.Lines.Add('<meta name="Content-Type" content="text/html; '+
                         'encoding: '+cbEncoding.Text+';" />');
      mmResult.Lines.Add('<title>'+edTitle.Text+'</title>');
      x := '<meta name="description" content="';
      for i:=0 to mmDescription.Lines.Count-1 do
        x := x + mmDescription.Lines[i];
      x := x + '" />';
      mmResult.Lines.Add(x);
      x := '<meta name="keywords" content="';
      for i:=0 to mmKeywords.Lines.Count-1 do
        x := x + mmKeywords.Lines[i];
      x := x + '" />';
      mmResult.Lines.Add(x);
      mmResult.Lines.Add('</head>');
      mmResult.Lines.Add('<body>');
      mmResult.Lines.Add('');
      mmResult.Lines.Add('</body>');
      mmResult.Lines.Add('</html>');
    end;

    2: //html 4.01 transitional
    begin
      mmResult.Lines.Add('<!DOCTYPE HTML'+#10#13+
      'PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"'+#10#13+
      '"http://www.w3.org/TR/html4/loose.dtd">');
      mmResult.Lines.Add('<html lang="'+cbHumanLanguage.Text+
      '" dir="'+cbTextDirection.Text+'">');
      mmResult.Lines.Add('<head>');
      mmResult.Lines.Add('<meta name="Content-Type" content="text/html; '+
                         'encoding: '+cbEncoding.Text+';">');
      mmResult.Lines.Add('<title>'+edTitle.Text+'</title>');
      x := '<meta name="description" content="';
      for i:=0 to mmDescription.Lines.Count-1 do
        x := x + mmDescription.Lines[i];
      x := x + '">';
      mmResult.Lines.Add(x);
      x := '<meta name="keywords" content="';
      for i:=0 to mmKeywords.Lines.Count-1 do
        x := x + mmKeywords.Lines[i];
      x := x + '">';
      mmResult.Lines.Add(x);
      mmResult.Lines.Add('</head>');
      mmResult.Lines.Add('<body>');
      mmResult.Lines.Add('');
      mmResult.Lines.Add('</body>');
      mmResult.Lines.Add('</html>');
    end;

    3: //xHTML 1.0 strict
    begin
      mmResult.Lines.Add('<?xml version="1.0" encoding="'+cbEncoding.Text+'"?>');
      mmResult.Lines.Add('<!DOCTYPE html '+#10#13+
      'PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"'+#10#13+
      '"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">');
      mmResult.Lines.Add('<html xmlns="http://www.w3.org/1999/xhtml" '+
      'xml:lang="'+cbHumanLanguage.Text+'" lang="'+cbHumanLanguage.Text+'">');
        mmResult.Lines.Add('<head>');
        mmResult.Lines.Add('<title>'+edTitle.Text+'</title>');
        mmResult.Lines.Add('<title>'+edTitle.Text+'</title>');
        x := '<meta name="description" content="';
        for i:=0 to mmDescription.Lines.Count-1 do
          x := x + mmDescription.Lines[i];
        x := x + '">';
        mmResult.Lines.Add(x);
        x := '<meta name="keywords" content="';
        for i:=0 to mmKeywords.Lines.Count-1 do
          x := x + mmKeywords.Lines[i];
        x := x + '">';
        mmResult.Lines.Add(x);
        mmResult.Lines.Add('</head>'); 
        mmResult.Lines.Add('<body>'); 
        mmResult.Lines.Add('<p>...</p>');
        mmResult.Lines.Add('</body>');
        mmResult.Lines.Add('</html>');
    end;

    4: //xHTML 1.0 transitional
    begin
      mmResult.Lines.Add('<!DOCTYPE html'+#10#13+
      'PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"'+#10#13+
      '"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">');
      mmResult.Lines.Add('<html xmlns="http://www.w3.org/1999/xhtml" '+
      'xml:lang="'+cbHumanLanguage.Text+'" lang="'+cbHumanLanguage.Text+'">');
        mmResult.Lines.Add('<head>');
        mmResult.Lines.Add('<title>'+edTitle.Text+'</title>');
        x := '<meta name="description" content="';
        for i:=0 to mmDescription.Lines.Count-1 do
          x := x + mmDescription.Lines[i];
        x := x + '">';
        mmResult.Lines.Add(x);
        x := '<meta name="keywords" content="';
        for i:=0 to mmKeywords.Lines.Count-1 do
          x := x + mmKeywords.Lines[i];
        x := x + '">';
        mmResult.Lines.Add(x);
        mmResult.Lines.Add('</head>');
        mmResult.Lines.Add('<body>');
        mmResult.Lines.Add('<p>...</p>');
        mmResult.Lines.Add('</body>');
        mmResult.Lines.Add('</html>');
    end;

    5: //xHTML 1.1
    begin
      mmResult.Lines.Add('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" '+
      '"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd"> ');
      mmResult.Lines.Add('<html xmlns="http://www.w3.org/1999/xhtml" '+#10#13+
'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '+#10#13+
'xsi:schemaLocation="http://www.w3.org/MarkUp/SCHEMA/xhtml11.xsd" '+#10#13+
'xml:lang="'+cbHumanLanguage.Text+'">');
        mmResult.Lines.Add('<head>');
        mmResult.Lines.Add('<title>'+edTitle.Text+'</title>');
        x := '<meta name="description" content="';
        for i:=0 to mmDescription.Lines.Count-1 do
          x := x + mmDescription.Lines[i];
        x := x + '" />';
        mmResult.Lines.Add(x);
        x := '<meta name="keywords" content="';
        for i:=0 to mmKeywords.Lines.Count-1 do
          x := x + mmKeywords.Lines[i];
        x := x + '"/>';
        mmResult.Lines.Add(x);
        mmResult.Lines.Add('</head>');
        mmResult.Lines.Add('<body>');
        mmResult.Lines.Add('<p>...</p>');
        mmResult.Lines.Add('</body>');
        mmResult.Lines.Add('</html>');
    end;

    6: //XML 1.0
        mmResult.Lines.Add('<?xml version="1.0" encoding="'+
        cbEncoding.Text+'"?>');

  end;
end;

end.
