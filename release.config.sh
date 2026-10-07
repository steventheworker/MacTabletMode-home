#!/bin/sh
# Product-specific configuration for the *-home release pipeline.
# Consumed by scripts/deploy.sh and scripts/publish-release.sh (canonical).
# Placeholders are filled by scripts/scaffold-home-repo.sh.

# --- product identity ---------------------------------------------------------
PRODUCT_NAME="MacTabletMode"
# "1" if the app's source repo is public and hosts releases; "0" if closed source.
IS_OPEN_SOURCE="0"
SOURCE_REPOSITORY=""
RELEASE_REPOSITORY="steventheworker/MacTabletMode-home"
SITE_URL="https://mactabletmode.netlify.app"
HOME_REPOSITORY="steventheworker/MacTabletMode-home"
REPO_DESCRIPTION="Developer config for tablet-style macOS input."
REPO_TOPICS="macos tablet touch developer-tools productivity"

# --- source app ---------------------------------------------------------------
SOURCE_ROOT="${MACTABLETMODE_SOURCE_ROOT:-$HOME/proj/obj-c/MacTabletMode}"
# Xcode project used by scripts/deploy.sh.
XCODE_KIND="project"                 # "project" | "workspace"
XCODE_PROJECT="MacTabletMode.xcodeproj"
XCODE_WORKSPACE=""
XCODE_SCHEME="MacTabletMode"
XCODE_CONFIGURATION="Release"
RELEASE_ZIP_NAME="MacTabletMode-{VERSION}.zip"
SOURCE_METADATA_FILE=""
SOURCE_METADATA_COMMIT_MSG="chore(release): prepare MacTabletMode v{VERSION}"

# --- Sparkle appcast ----------------------------------------------------------
APPCAST="appcast.xml"
MIN_OS="26.2"
NOTES_URL_BASE="$SITE_URL"
CURRENT_VERSION_CMD="tr -d '[:space:]' < currentversion.txt"
SIGN_UPDATE_CANDIDATES=""
RELEASE_NOTES_CONTEXT="MacTabletMode is a macOS app. An iPad-style soft keyboard for macOS — type by touch in any app"
RELEASE_NOTES_EXCLUDE=""
RELEASE_TITLE="MacTabletMode {VERSION}"
SITE_COMMIT_MSG="publish MacTabletMode v{VERSION}"

# Files the canonical publisher stages (the appcast is added automatically).
SITE_FILES="index.html README.md currentversion.txt changelog-sparkle/index.html"
