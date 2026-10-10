table 50201 "Event Session"
{
    DataClassification = CustomerContent;
    Caption = 'Event Session';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            ToolTip = 'The unique identifier for the session.';
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
            ToolTip = 'The name of the session.';
        }
        field(3; Description; Text[250])
        {
            Caption = 'Description';
            ToolTip = 'A description of the session.';
        }
        field(4; Capacity; Integer)
        {
            Caption = 'Capacity';
            ToolTip = 'The maximum number of attendees for the session.';
            MinValue = 0;
        }
        field(5; Type; enum "Session Type")
        {
            Caption = 'Type';
            ToolTip = 'The type of the session.';
        }
        field(6; "Start Date"; Date)
        {
            Caption = 'Start Date';
            ToolTip = 'The date the session starts.';

            trigger OnValidate()
            begin
                if ("End Date" <> 0D) and ("Start Date" > "End Date") then
                    Error('Start Date must not be later than End Date.');
            end;
        }
        field(7; "End Date"; Date)
        {
            Caption = 'End Date';
            ToolTip = 'The date the session ends.';

            trigger OnValidate()
            begin
                if ("Start Date" <> 0D) and ("End Date" < "Start Date") then
                    Error('End Date must not be earlier than Start Date.');
            end;
        }
        field(8; "Instructor No."; Code[20])
        {
            Caption = 'Instructor No.';
            ToolTip = 'The unique identifier for the instructor.';
            TableRelation = "Instructor"."No.";
            DataClassification = CustomerContent;
        }
        field(9; "No. of Registrations"; Integer)
        {
            Caption = 'No. of Registrations';
            FieldClass = FlowField;
            CalcFormula = count("Event Registration"
                where("Event Session No." = field("No.")));
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }
}
