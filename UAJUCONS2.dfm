object FAJUCONS2: TFAJUCONS2
  Left = 154
  Top = 107
  Width = 762
  Height = 480
  Caption = 'Consulta de Ajustes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
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
        end
        item
          Format = '##,#0.00'
          Kind = skSum
          FieldName = 'VOLUMEN2'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1CLAVE: TcxGridDBColumn
        DataBinding.FieldName = 'CLAVE'
        Visible = False
      end
      object cxGrid1DBTableView1FECHA: TcxGridDBColumn
        DataBinding.FieldName = 'FECHA'
        Visible = False
      end
      object cxGrid1DBTableView1CORTE: TcxGridDBColumn
        DataBinding.FieldName = 'CORTE'
      end
      object cxGrid1DBTableView1SALIDAS: TcxGridDBColumn
        DataBinding.FieldName = 'SALIDAS'
        Width = 87
      end
      object cxGrid1DBTableView1AJUSTE: TcxGridDBColumn
        DataBinding.FieldName = 'AJUSTE'
        Width = 88
      end
      object cxGrid1DBTableView1DIFERENCIA: TcxGridDBColumn
        DataBinding.FieldName = 'DIFERENCIA'
        Width = 110
      end
      object cxGrid1DBTableView1COMBUSTIBLE: TcxGridDBColumn
        DataBinding.FieldName = 'COMBUSTIBLE'
        Width = 160
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
      '    CLAVE,'
      '    FECHA,'
      '    CORTE,'
      '    SALIDAS,'
      '    AJUSTE,'
      '    DIFERENCIA,'
      '    COMBUSTIBLE'
      'FROM'
      '    HISTORIA '
      'WHERE FECHA=:FECHA'
      'AND CORTE=:CORTE')
    Transaction = pFIBTransaction1
    CSMonitorSupport.Enabled = csmeTransactionDriven
    Left = 145
    Top = 107
    object pFIBDataSet1CLAVE: TFIBIntegerField
      FieldName = 'CLAVE'
    end
    object pFIBDataSet1FECHA: TFIBDateTimeField
      FieldName = 'FECHA'
    end
    object pFIBDataSet1CORTE: TFIBIntegerField
      FieldName = 'CORTE'
    end
    object pFIBDataSet1SALIDAS: TFIBFloatField
      FieldName = 'SALIDAS'
      DisplayFormat = '##,#0.00'
    end
    object pFIBDataSet1DIFERENCIA: TFIBFloatField
      FieldName = 'DIFERENCIA'
      DisplayFormat = '##,#0.00'
    end
    object pFIBDataSet1COMBUSTIBLE: TFIBSmallIntField
      FieldName = 'COMBUSTIBLE'
    end
    object pFIBDataSet1AJUSTE: TFIBFloatField
      FieldName = 'AJUSTE'
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
