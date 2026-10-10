codeunit 50200 "Math Operations Library"
{

    /// <summary>
    /// This procedure adds two numbers together.
    /// </summary>
    /// <param name="a">The first number to add.</param>
    /// <param name="b">The second number to add.</param>
    /// <returns>The sum of the two numbers.</returns>
    procedure AddNumbers(a: Integer; b: Integer): Integer;
    var
        result: Integer;
    begin
        result := a + b;
        exit(result);
    end;

    procedure SubtractNumbers(a: Integer; b: Integer): Integer;
    var
        result: Integer;
    begin
        result := a - b;
        exit(result);
    end;

    procedure MultiplyNumbers(a: Integer; b: Integer): Integer;
    var
        result: Integer;
    begin
        result := a * b;
        exit(result);
    end;

    procedure DivideNumbers(a: Integer; b: Integer): Integer;
    var
        result: Integer;
    begin
        if b = 0 then
            error('Division by zero is not allowed.');
        result := a / b;
        exit(result);
    end;

    var
        global: Integer;
}