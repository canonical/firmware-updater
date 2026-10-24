_default:
    @just --list --unsorted

# Run the firmware updater app.
run: setup-dev
    cd apps/firmware_updater && fvm flutter run

# Run the firmware notifier app.
run-bg: setup-dev
    cd apps/firmware_notifier && fvm dart run bin/firmware_notifier.dart

# Run tests.
test: setup-dev refresh-mocks
    fvm exec melos test

# Regenerate mocks after adding or changing tests.
refresh-mocks: check-melos
    fvm exec melos generate

# Regenerate localization after adding or changing UI strings.
refresh-l10n: check-melos
    fvm exec melos gen-l10n

# Build a release version.
release: setup-dev
    fvm exec melos build

# Setup dev environment.
setup-dev: check-fvm check-melos check-cmake check-ninja check-clang check-libs
    fvm exec melos bootstrap

# Configure fwupd to show pending updates.
fake-webcam:
    sudo apt install fwupd-tests
    sudo fwupdtool enable-test-devices
    fwupdmgr enable-remote fwupd-tests
    sudo systemctl restart fwupd
    fwupdmgr get-updates

[private]
check-melos: check-fvm
    which melos || fvm dart pub global activate melos

[private]
check-fvm:
    which fvm || (curl -fsSL https://fvm.app/install.sh | bash && echo "FVM installed, restart your shell to update PATH" && exit 1)
    if [ ! -d .fvm/flutter_sdk ]; then fvm install; fi

[private]
check-cmake:
    which cmake || sudo snap install cmake --classic

[private]
check-ninja:
    which ninja || sudo apt install ninja-build

[private]
check-clang:
    which clang || sudo apt install clang

[private]
check-libs:
    dpkg-query -W -f='${db:Status-Abbrev}' libgtk-3-dev 2>/dev/null | grep -q '^ii' || sudo apt install libgtk-3-dev
