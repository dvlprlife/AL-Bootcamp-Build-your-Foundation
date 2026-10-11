table 50100 "DEV Change Log"
{
    DataClassification = CustomerContent;
    LookupPageId = "DEV Change Log Entries";
    DrillDownPageId = "DEV Change Log Entries";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            ToolTip = 'The entry number of the change log.';
        }
        field(2; "Table Name"; Text[30])
        {
            Caption = 'Table Name';
            ToolTip = 'The name of the table associated with the change log entry.';
        }
        field(3; "Field No."; Integer)
        {
            Caption = 'Field No.';
            ToolTip = 'The number of the field associated with the change log entry.';
        }
        field(4; "Field Name"; Text[30])
        {
            Caption = 'Field Name';
            ToolTip = 'The name of the field associated with the change log entry.';
        }
        field(5; "User Id"; Text[200])
        {
            Caption = 'User Id';
            ToolTip = 'The ID of the user associated with the change log entry.';
        }
        field(6; "Old Value"; Text[200])
        {
            Caption = 'Old Value';
            ToolTip = 'The old value of the field associated with the change log entry.';
        }
        field(7; "New Value"; Text[200])
        {
            Caption = 'New Value';
            ToolTip = 'The new value of the field associated with the change log entry.';
        }
        field(8; "Change Date/Time"; DateTime)
        {
            Caption = 'Change Date/Time';
            ToolTip = 'The date and time when the change log entry was made.';
        }
        field(9; "Type"; Enum "Dev Change Type")
        {
            Caption = 'Type';
            ToolTip = 'The type of change associated with the change log entry.';
        }
        field(10; "Start Time"; DateTime)
        {
            Caption = 'Start Time';
        }
        field(11; "End Time"; DateTime)
        {
            Caption = 'End Time';
        }
        field(12; "Document Type"; enum "Sales Document Type")
        {
            Caption = 'Document Type';
        }
        field(13; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Sales Header"."No."
            where("Document Type" = field("Document Type"));
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Document Type", "Document No.", Type)
        {
        }
    }


    trigger OnInsert()
    begin

    end;

    procedure GetNewEntryNo(): Integer
    var
        DEVChangeLog: Record "DEV Change Log";
        LastEntryNo: Integer;

    begin
        // Returns the next available entry number for the change log.

        if DEVChangeLog.FindLast() then
            LastEntryNo := DEVChangeLog."Entry No."
        else
            LastEntryNo := 0;

        exit(LastEntryNo + 1);


    end;
}