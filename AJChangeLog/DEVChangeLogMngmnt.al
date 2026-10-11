codeunit 50100 "DEV Change Log Management"
{

    [IntegrationEvent(false, false)]
    local procedure OnAfterChangeLogInsertTransferFields
    (TempChangeLog: Record "DEV Change Log" temporary; var NewChangeLog: Record "DEV Change Log")
    begin
    end;

    local procedure InsertChangeLogEntry(
                        TempChangeLog: Record "DEV Change Log" temporary)

    var
        NewChangeLog: Record "DEV Change Log";
    begin
        NewChangeLog.Init();
        NewChangeLog.TransferFields(TempChangeLog);
        OnAfterChangeLogInsertTransferFields(TempChangeLog, NewChangelog);
        NewChangeLog."Entry No." := NewChangeLog.GetNewEntryNo();
        NewChangeLog."Change Date/Time" := CurrentDateTime();
        NewChangeLog."User Id" :=
            CopyStr(UserId, 1, MaxStrLen(NewChangeLog."User Id"));

        NewChangeLog.Insert(true);
    end;

    local procedure UpdatePostingChangeEntry(var SalesHeader: Record "Sales Header")
    var
        TempChangeLog: Record "DEV Change Log" temporary;
        ChangeLog: Record "DEV Change Log";
    begin
        EndDateTime := CurrentDateTime();
        ChangeLog.SetRange("Document Type", SalesHeader."Document Type");
        ChangeLog.SetRange("Document No.", SalesHeader."No.");
        ChangeLog.SetRange(Type, "Dev Change Type"::RunTime);
        if ChangeLog.FindLast() then begin
            ChangeLog."End Time" := EndDateTime;
            ChangeLog.Modify();
        end;

    end;

    procedure InsertPostingStartChangeEntry(var SalesHeader: Record "Sales Header")
    var
        TempChangeLog: Record "DEV Change Log" temporary;
    begin
        StartDateTime := CurrentDateTime();
        TempChangeLog.Init();
        TempChangeLog."Table Name" := CopyStr(SalesHeader.TableCaption, 1, MaxStrLen(TempChangeLog."Table Name"));
        TempChangeLog."Document No." := SalesHeader."No.";
        TempChangeLog."Document Type" := SalesHeader."Document Type";
        TempChangeLog."Start Time" := StartDateTime;
        TempChangeLog.Type := "Dev Change Type"::RunTime;
        InsertChangeLogEntry(TempChangeLog);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post",
        'OnBeforePostSalesDoc', '', false, false)]
    local procedure StartTrackingOnBeforePostSalesDoc
        (var SalesHeader: Record "Sales Header")

    begin
        InsertPostingStartChangeEntry(SalesHeader);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post",
        'OnAfterPostSalesDoc', '', false, false)]
    local procedure StopTrackingOnAfterPostSalesDoc
        (var SalesHeader: Record "Sales Header")

    begin
        UpdatePostingChangeEntry(SalesHeader);
    end;


    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterModifyEvent'
    , '', false, false)]
    local procedure SalesHeaderOnAfterModifyEvent
    (var Rec: Record "Sales Header"; var xRec: Record "Sales Header")
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent'
    , 'Bill-to Name', false, false)]
    local procedure SalesHeaderOnAfterValidateEvent(var Rec: Record "Sales Header")
    begin

    end;


    var
        StartDateTime: DateTime;
        EndDateTime: DateTime;
}