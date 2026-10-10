page 50200 "Instructor List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Instructor;
    Editable = false;
    CardPageId = "Instructor Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                }
                field("Name"; Rec."Name")
                {
                }
                field("Type"; Rec.Type)
                {
                }
                field("Phone No."; Rec."Phone No.")
                {
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