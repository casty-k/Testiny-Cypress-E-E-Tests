Feature: 680
  680 feature scenarios

@680 @medium
Scenario: Touchpoint Logging - P02-005 - Touchpoint logged: WhatsApp
    Given A prospect in nurture.
    Then Submit touchpoint with channel=whatsapp, notes='Sent product brochure via WhatsApp', outcome='engaged'. System creates touchpoint_facts.
