page 50207 "Math Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;


    layout
    {
        area(Content)
        {
            group(Numbers)
            {
                Caption = 'Enter numbers?';
                field(Number1; Number1)
                {
                    Caption = 'Number 1';
                }
                field(Number2; Number2)
                {
                    Caption = 'Number 2';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        Number1: Integer;
        Number2: Integer;
}