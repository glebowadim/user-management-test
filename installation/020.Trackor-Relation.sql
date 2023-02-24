declare
    c_rel_cardinality_one_many constant number := 2;
    v_users_ttid xitor_type.xitor_type_id%type;
    v_rtid1 relation_type.relation_type_id%type;
begin
    select xitor_type_id 
      into v_users_ttid
      from xitor_type
     where xitor_type = 'UMGMT_Users';
     
    v_rtid1 := pkg_relation.new_relation_type(null, v_users_ttid, c_rel_cardinality_one_many, 0, 0);
    
    dbms_output.put_line('Relation has been created'|| chr(13) || chr(10));
end;
