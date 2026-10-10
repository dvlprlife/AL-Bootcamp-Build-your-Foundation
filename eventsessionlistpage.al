page 50202 "Event Session List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Event Session";
    Editable = false;
    CardPageId = "Event Session Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                }
                field(Name; Rec.Name)
                {
                }
                field(Type; Rec.Type)
                {
                }
                field(Capacity; Rec.Capacity)
                {
                }
                field("Start Date"; Rec."Start Date")
                {
                }
                field("End Date"; Rec."End Date")
                {
                }
                field("Instructor No."; Rec."Instructor No.")
                {
                }
            }
        }
        area(FactBoxes)
        {
            part("Instructor Factbox"; "Instructor Factbox")
            {
                SubPageLink = "No." = field("Instructor No.");
            }
        }
    }
}
