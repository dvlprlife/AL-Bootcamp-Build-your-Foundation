page 50204 "Event Registration List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Event Registration";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Contact No."; Rec."Contact No.")
                {
                }
                field("Event Session No."; Rec."Event Session No.")
                {
                }
                field("Payment Status"; Rec."Payment Status")
                {
                }
            }
        }
    }
}
