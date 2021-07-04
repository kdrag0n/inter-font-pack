# Inter Font Pack

This is a Magisk module that replaces Android's system fonts with:

- [Inter](https://github.com/rsms/inter) for most text
- [Fira Code](https://github.com/tonsky/FiraCode) for monospace text
- [Source Serif](https://github.com/adobe-fonts/source-serif) for serif text

Inter was chosen as the UI font for its cleanliness and legibility; it is neutral and looks similar to Apple's San Francisco UI font. Because it was specifically designed for use in GUIs, it is a great replacement for Roboto on Android.

Source Serif was chosen as the serif font because it is one of the best open-source fonts that complement Inter's style.

All fonts included in this module are open-source and licensed under the SIL Open Font License.

## Compatibility

Both Roboto and Google Sans have been replaced with Inter for more consistent typography on the stock Pixel ROM.

To maximize compatibility, all font names have been patched to match the original fonts. This fixes some issues in third-party apps, such Firefox falling back to Fira Sans instead of using the new fonts.

Additionally, Roboto will be used as a fallback for characters not supported by Inter. This is done by patching Roboto (which is included as a variable font to save space) to create a fallback variant and registering it as a proper fallback rather than modifying the Inter font itself. As a result, most text will be rendered with the original Inter font, and unsupported characters will still be displayed with proper metrics and hinting.

## Support

If you found this module helpful, please consider supporting development with a **[recurring donation](https://patreon.com/kdrag0n)** on Patreon for benefits such as exclusive behind-the-scenes development news, early access to updates, and priority support. Alternatively, you can also [buy me a coffee](https://paypal.me/kdrag0ndonate). All support is appreciated.
