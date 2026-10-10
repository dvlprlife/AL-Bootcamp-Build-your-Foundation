tableextension 50250 "Instructor Ext" extends Instructor
{
    fields
    {
        field(50250; Certified; Boolean)
        {
            Caption = 'Certified';
        }
        field(50251; Tenure; Integer)
        {
            Caption = 'Tenure';
            MinValue = 0;

        }
    }
}
