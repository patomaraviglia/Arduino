/* Flash Split for 16M chips */
/* sketch @0x40200000 (~1019KB) (1044464B) */
/* empty  @0x402FEFF0 (~4KB) (4112B) */
/* spiffs @0x40300000 (~15340KB) (15708160B) */
/* eeprom @0x411FB000 (4KB) */
/* rfcal  @0x411FC000 (4KB) */
/* wifi   @0x411FD000 (12KB) */

MEMORY
{
  dport0_0_seg :                        org = 0x3FF00000, len = 0x10
  dram0_0_seg :                         org = 0x3FFE8000, len = 0x14000
  iram1_0_seg :                         org = 0x40100000, len = 0x8000
  irom0_0_seg :                         org = 0x40201010, len = 0xfeff0
}

PROVIDE ( _SPIFFS_start = 0x40300000 );
PROVIDE ( _SPIFFS_end = 0x411FB000 );
PROVIDE ( _SPIFFS_page = 0x100 );
PROVIDE ( _SPIFFS_block = 0x2000 );

INCLUDE "eagle.app.v6.common.ld"
