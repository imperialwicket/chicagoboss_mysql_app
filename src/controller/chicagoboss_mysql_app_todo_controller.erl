-module(chicagoboss_mysql_app_todo_controller, [Req]).
-compile(export_all).

list('GET', []) ->
    Todos = boss_db:find(my_todo, []),
    {ok, [{todos, Todos}]};

list('POST', []) ->
    Todo = my_todo:new(id, Req:post_param("todo"), erlang:now()),
    Create = Todo:save(),
    case Create of
        {ok, NewTodo} ->
            {action_other, [{controller, "todo"}, {action, "list"} ]};
        {error, [ErrorMessages]} ->
            {ok, [{errors, ErrorMessages}]}
    end.
