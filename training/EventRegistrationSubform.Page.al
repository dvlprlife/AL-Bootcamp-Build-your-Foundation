page 50205 "Event Registration Subform"
{
    ApplicationArea = All;
    Caption = 'Event Registration Subform';
    PageType = ListPart;
    SourceTable = "Event Registration";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Contact No."; Rec."Contact No.")
                {
                    ToolTip = 'Specifies the value of the Contact No. field.', Comment = '%';
                }
                field("Contact Name"; Rec."Contact Name")
                {
                    ToolTip = 'Specifies the value of the Contact Name field.', Comment = '%';
                }
                field("Payment Status"; Rec."Payment Status")
                {
                    ToolTip = 'Specifies the value of the Payment Status field.', Comment = '%';
                }
            }
        }
    }
}
