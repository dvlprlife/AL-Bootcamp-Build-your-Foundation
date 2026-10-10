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
            group(ResultGroup)
            {
                Caption = 'Result';
                field(Result; Result)
                {
                    Caption = 'Result';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Add)
            {
                Caption = 'Add Numbers';
                Image = Add;

                trigger OnAction()
                var
                    Math: Codeunit "Math Operations Library";
                begin
                    Result := Math.AddNumbers(Number1, Number2);
                end;
            }

            action(Subtract)
            {
                Caption = 'Subtract Numbers';
                Image = Migration;

                trigger OnAction()
                var
                    Math: Codeunit "Math Operations Library";
                begin
                    Result := Math.SubtractNumbers(Number1, Number2);
                end;
            }

            action(Multiply)
            {
                Caption = 'Multiply Numbers';
                Image = Timeline;

                trigger OnAction()
                var
                    Math: Codeunit "Math Operations Library";
                begin
                    Result := Math.MultiplyNumbers(Number1, Number2);
                end;
            }

            action(Divide)
            {
                Caption = 'Divide Numbers';
                Image = Divide;

                trigger OnAction()
                var
                    Math: Codeunit "Math Operations Library";
                begin
                    Result := Math.DivideNumbers(Number1, Number2);
                end;
            }
        }
    }

    var
        Number1: Integer;
        Number2: Integer;
        Result: Integer;
}