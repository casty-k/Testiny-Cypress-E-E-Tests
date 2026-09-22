Feature: 1232
  1232 feature scenarios

@1232 @medium
Scenario: CSAT delivery channel undefined for live channels
    Then AMBIGUOUS IN SOURCE DOC — CO-SUP-03 §6/§14 only define WhatsApp/Telegram as CSAT delivery channels; confirm with dev what happens for phone_ivr/walk_in tickets before asserting pass/fail. This directly affects our existing test tickets (a3e4a7ca phone_ivr b365f346 walk_in)
