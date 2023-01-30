begin
    update rule
       set is_enabled = 1
     where rule in (
     'Check Password Strength', 
     'Lock User''s Account', 
     'Prevent Users from being Deleted', 
     'User Flags nightly', 
     'US_USER_CLASS cfu', 
     'US_USER_CLASS nightly', 
     'us_user_class_2', 
     'Report Usage Statistics Executed send email', 
     'Reset Password on User Checkbox', 
     'US_USER_CLASS uu',
     'User Flags fb',
     'User updated populate Created/Disabled dates',
     'Welcome Back on Account Reactivation',
     'User updated populate Created/Disabled dates fb',
     'Set User Trackor Key on New User Trackor',
     'Welcome on Account Creation',
     'US_USER_CLASS fb',
     'Set User Trackor Key on New User',
     'Password Aging',
     'User Aging',
     'User Flags uu'
    );
    update autom
       set enabled = 1
     where autom_name = 'Reset User Class';
    dbms_output.put_line('Rules and Automations have been enabled'|| chr(13) || chr(10));
end;