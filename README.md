# Fishy Splash Screen - Plasma 6 Port

The "Fishy" splash screen features a cute animated fish swimming across your screen during system startup. This version has been updated to work with **KDE Plasma 6**, which uses Qt6 instead of Qt5.

**Original creator:** KartikSindura  
**Original repository:** https://github.com/KartikSindura/fishy

## Fixes Made for Plasma 6

- Updated QML imports from Qt5 to Qt6 for Plasma 6 compatibility
- Fixed directory structure issues
- Corrected the file organization to match KDE Plasma 6 requirements
- Updated metadata.json for proper Plasma 6 recognition

## Installation

### Manual Installation

1. Download or clone this repository
2. Extract the contents to `~/.local/share/plasma/look-and-feel/fishy/`
3. Refresh the KDE cache: `kbuildsycoca6`
4. Go to **System Settings > Appearance > Splash Screen**
5. Select "Fishy" from the list of available splash screens

### KDE Store
This splash screen will be available on the KDE Store soon!

## Packaging for the KDE Store

To rebuild the upload archive:

```bash
./scripts/package.sh
```

This produces `fishy-plasma6.tar.gz` with a flat structure. Upload that archive directly to store.kde.org — do not wrap it in an additional parent folder, or KNewStuff will install it to a nested path (see issue #3).

## License
This splash screen is licensed under the GNU General Public License v2 or later (GPLv2+), the same license as the original work. See the LICENSE file for more details.

## Credits

- **Original splash screen created by:** KartikSindura
- **Plasma 6 compatibility port by:** f4mrfaux
