module Messages exposing (Metadata, Msg(..))

import Http
import Json.Decode as Decode
import Models.Types exposing (Activities, Activity, Date, Now, Page, Record, Records)
import Spinner


type alias Metadata =
    { author : String
    , pages : Int
    }


type Msg
    = NoOp
    | Alert
    | LoadRecords (Result Http.Error Records)
    | LoadActivities (Result Http.Error Activities)
    | ExpandAddRecordList
    | CollapseAddRecordList
    | AddActivityWithIdOf Int
    | RecordAdded (Result Http.Error Record)
    | DeleteRecord Int
    | RecordDeleted (Result Http.Error Bool)
    | GetNow (Result Http.Error Now)
    | RecordOnDateChooseActivity Int
    | NewRecordOnDateChooseDate String
    | SaveNewRecordOnDate Int String
    | GetDates (Result Http.Error (List Date))
    | GoToYears
    | GoToYear Int
    | GoToWeek Int Int
    | OpenBurger
    | CloseBurger
    | ToggleActivityList Date
    | NewRecord Activity Date
    | GoToPage Page
