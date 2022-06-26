.gba
.thumb
.open "BPRS.gba","rom_BPRS.gba", 0x08000000

//---------------------------------------------------
//  offsets
//---------------------------------------------------
gBaseStatsPtr                           equ 0x080001BC
gAbilityNamesPtr                        equ 0x080001C0
gStringVar1                             equ 0x02021CD0
gStringVar4                             equ 0x02021D18
ConvertIntToDecimalStringN              equ 0x08008DE4
StringExpandPlaceholders                equ 0x08008F38
DexScreen_AddTextPrinterParameterized   equ 0x08104B04
return_loc                              equ 0x08106528

//---------------------------------------------------
//  hooks
//---------------------------------------------------

//@DexScreen_DrawMonAreaPage
.org 0x081062C6
    .byte 0x43, 0xE0

.org 0x08106518
    .byte 0x0, 0x48, 0x0, 0x47
    .word main|1

.org 0x081066D8
    .byte 0xCE, 0xE0

//@sWindowTemplate_AreaMap_Size
.org 0x0844CADC
    .byte 0xA


//---------------------------------------------------
//  code
//---------------------------------------------------
.align 4
.org insertinto
.include "base_stats_on_pokedex.s"

.close
