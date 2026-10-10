pageextension 50250 "Instructor Card Ext" extends "Instructor Card"
{
    layout
    {
        addafter(General)
        {
            group("Certification")
            {
                field("Certified"; Rec."Certified")
                {
                    ApplicationArea = All;
                }
            }
        }

        addlast(General)
        {
            field("Tenure"; Rec."Tenure")
            {
                ApplicationArea = All;
                BlankZero = true;
            }
        }

        modify(Type)
        {
            Visible = false;
        }

    }
}
