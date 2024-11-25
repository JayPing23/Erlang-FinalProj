%%%-------------------------------------------------------------------
%%% @author ARAGON, DANIELLE
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. Nov 2024 3:36 PM
%%%-------------------------------------------------------------------
-module(issue_tracker).
-author("ARAGON, DANIELLE").

-export([create_issue/2, assign_issue/2, monitor_status/1, report_issues/0]).

-record(issue, {id, title, description, assignee, status}).

% Dummy database
-define(ISSUE_DB, []).

create_issue(Title, Description) ->
  % Create a new issue
  Issue = #issue{id = erlang:unique_integer(), title = Title, description = Description, assignee = undefined, status = "Open"},
  %% Store Issue in database
  {ok, Issue}.

assign_issue(IssueId, Assignee) ->
  % Assign an issue to a member
  %% Update the issue in the database
  {ok, "Issue assigned"}.

monitor_status(IssueId) ->
  % Monitor the status of an issue
  %% Fetch issue from database
  {ok, "Status fetched"}.

report_issues() ->
  % Generate a report of all issues
  %% Fetch all issues from database
  {ok, "Report generated"}.