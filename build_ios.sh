BUNDLE_ID="com.29ga.wns"
TEAM_ID="YVNP2VP623"
PROJECT_NAME="威尼斯人"
OUTPUT=output
EXPORT_PLIST="../../ExportOptions.plist"
ARCHIVE=${PROJECT_NAME}.xcarchive

cd platforms/ios

# unlock keychain

xcodebuild -workspace ${PROJECT_NAME}.xcworkspace \
  -scheme ${PROJECT_NAME} \
  -destination generic/platform=iOS \
  -configuration Release \
  PRODUCT_BUNDLE_IDENTIFIER=${BUNDLE_ID} \
  ONLY_ACTIVE_ARCH=NO \
  CODE_SIGN_IDENTITY="iPhone Developer" \
  CODE_SIGN_STYLE="Automatic" \
  PROVISIONING_STYLE="Automatic" \
  DEVELOPMENT_TEAM=${TEAM_ID}  \
  -allowProvisioningUpdates \
  -archivePath $ARCHIVE archive
  # PROVISIONING_PROFILE_SPECIFIER="Automatic" \
  # PROVISIONING_PROFILE="Automatic" \

mkdir -p Payload
cp -r ${PROJECT_NAME}.xcarchive/Products/Applications/${PROJECT_NAME}.app Payload
zip -r ${PROJECT_NAME}_unsigned.ipa Payload
cp ${PROJECT_NAME}_unsigned.ipa ../../output/ios/
# xcodebuild -exportArchive \
#   -archivePath $ARCHIVE \
#   -exportPath $OUTPUT \
#   -exportOptionsPlist $EXPORT_PLIST

