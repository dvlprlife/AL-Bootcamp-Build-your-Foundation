page 50201 "Instructor Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Instructor;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                    Caption = 'No.';
                }
                field("Name"; Rec."Name")
                {
                    Caption = 'Name';
                }
                field("Type"; Rec.Type)
                {
                    Caption = 'Type';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    Caption = 'Phone No.';
                }
                field("Job Title"; Rec."Job Title")
                {
                    Caption = 'Job Title';
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(Sessions)
            {
                Caption = 'Sessions';
                Image = RelatedInformation;
                RunObject = Page "Event Session List";
                RunPageLink = "Instructor No." = FIELD("No.");
            }
        }
    }
}