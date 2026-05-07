#pragma once
#include "settings_defaults.h"

// Template — rendered to config.h by ./render-config.sh (1Password CLI).
// Secret values reference 1Password items; non-secret tunables stay inline.
// Never commit the rendered config.h (it contains plaintext secrets).
//
// Post-merge note: MQTT, gateway key, and encryption settings are now
// configured at runtime via the Web UI at http://<CapiBridge-ip>/ — they
// no longer live in this file.

///////////////////////////////////////////////////////////////////////////////
/////////////////////////// ESSENTIAL USER SETTINGS ///////////////////////////
///////////////////////////////////////////////////////////////////////////////

// LoRa hardware — uncomment the line matching your board.
#define LORA_MODULE LORA_MODULE_SX1276    // Ra-01 433 / Ra-01H 868/915 MHz "SX1276" (CapiBridge v1, orders before Aug 2025)
//#define LORA_MODULE LORA_MODULE_SX1262    // Ra-01SH 868/915 MHz "SX1262" (CapiBridge v2)
//#define LORA_MODULE LORA_MODULE_SX1268    // Ra-01S 433 MHz "SX1268" (CapiBridge v2 433 MHz)

#define BAND 868.0                          // 433.0 / 868.0 / 915.0

#define WEBUI_USERNAME "admin"              // Fixed browser login name for the protected Web UI
#define WEBUI_PASSWORD "{{ op://CapiBridge/config/webui_password }}"  // Empty string disables Web UI password protection

#define WIFI_SSID "{{ op://CapiBridge/config/wifi_ssid }}"
#define WIFI_PASSWORD "{{ op://CapiBridge/config/wifi_password }}"

///////////////////////////////////////////////////////////////////////////////
