table 50200 Instructor
{
    DataClassification = CustomerContent;
    Caption = 'Instructor';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            ToolTip = 'The unique identifier for the instructor.';
            // This field represents the unique identifier for the instructor.
        }
        field(2; "Name"; Text[100])
        {
            Caption = 'Name';
            ToolTip = 'The name of the instructor.';
        }
        field(3; Type; Text[10])
        {
            Caption = 'Type';
            ToolTip = 'The type of the instructor.';
        }
        field(5; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            ToolTip = 'The phone number of the instructor.';
        }
        field(6; "Job Title"; Text[80])
        {
            Caption = 'Job Title';
            ToolTip = 'The job title of the instructor.';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }


    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}