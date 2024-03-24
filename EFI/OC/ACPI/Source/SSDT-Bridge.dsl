// Source and info from:
// https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/Source/SSDT-BRG0.dsl
DefinitionBlock ("", "SSDT", 2, "CORP", "PCIBRG", 0x00000000)
{
    /*
     * Start copying here if you're adding this info to an existing SSDT-Bridge!
     */
    External (\_SB.PC00.PEG1.PEGP, DeviceObj)
    Scope (\_SB.PC00.PEG1.PEGP)
    {
        Device (BRG0)
        {
            Name (_ADR, Zero)
            // Customize this device name if needed, eg. GFX0
            Device (GFX0)
            {
                // Target Device Path:
                // PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)/Pci(0x0,0x0)/Pci(0x0,0x0)
                Name (_ADR, Zero)
            }
        }
    }
    /*
     * End copying here if you're adding this info to an existing SSDT-Bridge!
     */
}
