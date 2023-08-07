#!/bin/sh -l

action_option="apply"
if [[ "$YA_ACTION" == "reapply" ]]; then
  action_option="reapply"
fi

echo ${action_option:+"$action_option"}
echo "--root $YA_ROOT --registry $YA_REGISTRY"

oro ${action_option:+"$action_option"} --root $YA_ROOT --registry $YA_REGISTRY