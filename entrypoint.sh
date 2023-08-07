#!/bin/sh -l

action_option="apply"
if [[ "$YA_ACTION" == "reapply" ]]; then
  action_option="reapply"
fi

oro "$action_option" --root $YA_ROOT --registry $YA_REGISTRY