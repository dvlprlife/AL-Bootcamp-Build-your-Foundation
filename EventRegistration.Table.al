table 50202 "Event Registration"
{
    Caption = 'Event Registration';
    DataClassification = CustomerContent;
    LookupPageId = "Event Registration List";
    DrillDownPageId = "Event Registration List";

    fields
    {
        field(1; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            TableRelation = Contact."No.";
        }
        field(2; "Event Session No."; Code[20])
        {
            Caption = 'Event Session No.';
            TableRelation = "Event Session"."No.";
        }
        field(3; "Payment Status"; enum "Payment Status")
        {
            Caption = 'Payment Status';
        }
    }
    keys
    {
        key(PK; "Contact No.", "Event Session No.")
        {
            Clustered = true;
        }
    }
}
