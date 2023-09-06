object FAJUCONS: TFAJUCONS
  Left = 215
  Top = 161
  Width = 762
  Height = 480
  Caption = 'Consulta de Transacciones'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 754
    Height = 453
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfStandard
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '##,#0.00'
          Kind = skSum
          FieldName = 'VOLUMEN1'
          Column = cxGrid1DBTableView1VOLUMEN1
        end
        item
          Format = '##,#0.00'
          Kind = skSum
          FieldName = 'VOLUMEN2'
          Column = cxGrid1DBTableView1VOLUMEN2
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1FOLIO: TcxGridDBColumn
        DataBinding.FieldName = 'FOLIO'
      end
      object cxGrid1DBTableView1FECHA: TcxGridDBColumn
        DataBinding.FieldName = 'FECHA'
      end
      object cxGrid1DBTableView1CORTE: TcxGridDBColumn
        DataBinding.FieldName = 'CORTE'
      end
      object cxGrid1DBTableView1VOLUMEN1: TcxGridDBColumn
        DataBinding.FieldName = 'VOLUMEN1'
        Width = 93
      end
      object cxGrid1DBTableView1VOLUMEN2: TcxGridDBColumn
        DataBinding.FieldName = 'VOLUMEN2'
        Width = 90
      end
      object cxGrid1DBTableView1COMBUSTIBLE: TcxGridDBColumn
        DataBinding.FieldName = 'COMBUSTIBLE'
        Width = 96
      end
      object cxGrid1DBTableView1PRECIO: TcxGridDBColumn
        DataBinding.FieldName = 'PRECIO'
        Width = 76
      end
      object cxGrid1DBTableView1IMPORTE: TcxGridDBColumn
        DataBinding.FieldName = 'IMPORTE'
        Width = 92
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object DataSource1: TDataSource
    DataSet = pFIBDataSet1
    Left = 96
    Top = 56
  end
  object pFIBDataSet1: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      ' FOLIO,'
      ' FECHA,'
      ' CORTE,'
      ' VOLUMEN1,'
      ' VOLUMEN2,'
      ' COMBUSTIBLE,'
      ' PRECIO,'
      ' IMPORTE'
      'FROM'
      ' CLAVES '
      'WHERE FECHA=:FECHA'
      'AND CORTE=:CORTE')
    Transaction = pFIBTransaction1
    CSMonitorSupport.Enabled = csmeTransactionDriven
    Left = 160
    Top = 80
    object pFIBDataSet1FOLIO: TFIBIntegerField
      FieldName = 'FOLIO'
    end
    object pFIBDataSet1FECHA: TFIBDateTimeField
      FieldName = 'FECHA'
    end
    object pFIBDataSet1CORTE: TFIBIntegerField
      FieldName = 'CORTE'
    end
    object pFIBDataSet1VOLUMEN1: TFIBFloatField
      FieldName = 'VOLUMEN1'
      DisplayFormat = '##,#0.00'
    end
    object pFIBDataSet1VOLUMEN2: TFIBFloatField
      FieldName = 'VOLUMEN2'
      DisplayFormat = '##,#0.00'
    end
    object pFIBDataSet1COMBUSTIBLE: TFIBIntegerField
      FieldName = 'COMBUSTIBLE'
    end
    object pFIBDataSet1PRECIO: TFIBFloatField
      FieldName = 'PRECIO'
      DisplayFormat = '##,#0.00'
    end
    object pFIBDataSet1IMPORTE: TFIBFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = '##,#0.00'
    end
  end
  object pFIBTransaction1: TpFIBTransaction
    TimeoutAction = TARollback
    CSMonitorSupport.Enabled = csmeDatabaseDriven
    Left = 200
    Top = 80
  end
end
