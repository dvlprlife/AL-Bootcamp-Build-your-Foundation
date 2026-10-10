page 50206 "Instructor Factbox"
{
    ApplicationArea = All;
    Caption = 'Instructor Factbox';
    PageType = CardPart;
    SourceTable = Instructor;
    Editable = false;

    layout
    {
        area(Content)
        {

            field("No."; Rec."No.")
            {
                ToolTip = 'Specifies the value of the No. field.', Comment = '%';
            }
            field(Name; Rec.Name)
            {
                ToolTip = 'Specifies the value of the Name field.', Comment = '%';
            }
            field("Job Title"; Rec."Job Title")
            {
                ToolTip = 'Specifies the value of the Job Title field.', Comment = '%';
            }
            field("Type"; Rec."Type")
            {
                ToolTip = 'Specifies the value of the Type field.', Comment = '%';
            }
        }
    }
}
