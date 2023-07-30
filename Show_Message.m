function Show_Message(msg)
    %% -------------------------------------------------------------------------
    %%
    %% Function 'Show_Message'
    %%
    %% -------------------------------------------------------------------------
    %
    % Use:
    %       -- Show_Message(msg)
    %
    % Description:
    %       Takes a string and prints it to the console
    %
    %       Input:
    %         msg: The string to be printed
    %
    %       Output:
    %         None
    %
    %       Example:
    %         Show_Message('Hello World!')
    %
    % (C) Copyright 2023 Ljubomir Kurij
    %
    % --------------------------------------------------------------------------
    fname = 'Show_Message';
    use_case_a = sprintf(' -- %s(msg)', fname);

    % Check number of required input arguments ---------------------------------
    if 1 ~= nargin
        % Invalid call to function
        error( ...
              'Invalid call to %s. Correct usage is:\n%s', ...
              fname, ...
              use_case_a ...
             );

    end  % 1 ~= nargin

    % Validate positional input arguments --------------------------------------
    if ~ischar(msg)
        % Issue error message and abort calculation
        error( ...
              sprintf( ...
                      cstrcat( ...
                              '%s: msg must be a string' ...
                             ), ...
                      fname ...
                     ) ...
             );

    end  % ~ischar(msg)

    % Print message to console ------------------------------------------------
    printf('%s: %s> %s\n', fname, datestr(now()), msg);

end  % end of function 'Show_Message'

% End of Show_Message.m
