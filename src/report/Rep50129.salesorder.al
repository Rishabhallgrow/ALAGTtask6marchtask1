report 50130 "sales order_RPAGT"
{
    DefaultLayout = RDLC;
    RDLCLayout = './salesorderrepo.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Sales Order_RP';


    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            column(No_;"No.") { }


trigger OnPreDataItem()
var
    myInt: Integer;
begin
    Message('on predataitem');
end;
trigger OnPostDataItem()
var
    myInt: Integer;
begin
    Message('on postdataitem');
end;
trigger OnAfterGetRecord()
var
    myInt: Integer;
begin
    Message('on aftergetrecord');
end;
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(orderno; orderno)
                    {
                        ApplicationArea = all;
                        Caption = 'Order No';
                        TableRelation = "Sales Header"."No." where("Document Type" = CONST(Order));
                    }
                }
            }
        }
    }
trigger OnPreReport()
var
    myInt: Integer;
begin
    Message('on prereport');
end;
trigger OnInitReport()
var
    myInt: Integer;
begin
     Message('on initreport');
end;
trigger OnPostReport()
var
    myInt: Integer;
begin
     Message('on postreport');
end;
     var
        orderno: Code[20];
   
    }


    