#
# Copyright (c) 2023.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

if [[ $# -eq 0 ]] ; then
    echo "Provide an environment argument!"
    exit 1
fi

mkdir -p lib/firebase/$1

echo Copy Web Configuration For $1 Environment

# Copy WEB Files
cp -rf ./webenv/$1/* web/

echo Copy Firebase Configuration For $1 Environment

# Declare Firebase-related paths
FIREBASE_OPTIONS_DART_FILE=lib/firebase/$1/firebase_options.dart
GOOGLE_SERVICE_JSON_FILE=lib/firebase/$1/google-services.json
GOOGLE_SERVICE_INFO_PLIST_FILE=lib/firebase/$1/GoogleService-Info.plist
FIREBASE_APP_ID_FILE_JSON_FILE=lib/firebase/$1/firebase_app_id_file.json

#### In context of Codemagic $FIREBASE_OPTIONS_DART and other vars are encoded base64 strings
if [ "$CI" = true ] ;
then
  echo 'Codemagic ENV'
  echo $FIREBASE_OPTIONS_DART | base64 --decode > $FIREBASE_OPTIONS_DART_FILE
  echo $GOOGLE_SERVICE_JSON | base64 --decode > $GOOGLE_SERVICE_JSON_FILE
  echo $GOOGLE_SERVICE_INFO_PLIST | base64 --decode > $GOOGLE_SERVICE_INFO_PLIST_FILE
  echo $FIREBASE_APP_ID_FILE_JSON | base64 --decode > $FIREBASE_APP_ID_FILE_JSON_FILE
else
  echo 'LOCAL ENV'
fi

# COPY ENV FILES TO PROPER PLACES
cp $FIREBASE_OPTIONS_DART_FILE lib/firebase_options.dart
cp $GOOGLE_SERVICE_JSON_FILE android/app/google-services.json
cp $GOOGLE_SERVICE_INFO_PLIST_FILE ios/Runner/GoogleService-Info.plist
cp $FIREBASE_APP_ID_FILE_JSON_FILE ios/firebase_app_id_file.json


# THIS PART IS FOR CONFIG ONLY. USUALLY USED TO SETUP OR UPDATE CODEMAGIC ENV VARS
echo '________________________________________'
FIREBASE_OPTIONS_DART="$(openssl base64 -in $FIREBASE_OPTIONS_DART_FILE)"
echo 'FIREBASE_OPTIONS_DART'
echo $FIREBASE_OPTIONS_DART
echo
GOOGLE_SERVICE_JSON="$(openssl base64 -in $GOOGLE_SERVICE_JSON_FILE)"
echo 'GOOGLE_SERVICE_JSON'
echo $GOOGLE_SERVICE_JSON
echo
GOOGLE_SERVICE_INFO_PLIST="$(openssl base64 -in $GOOGLE_SERVICE_INFO_PLIST_FILE)"
echo 'GOOGLE_SERVICE_INFO_PLIST'
echo $GOOGLE_SERVICE_INFO_PLIST
echo
FIREBASE_APP_ID_FILE_JSON="$(openssl base64 -in $FIREBASE_APP_ID_FILE_JSON_FILE)"
echo 'FIREBASE_APP_ID_FILE_JSON'
echo $FIREBASE_APP_ID_FILE_JSON
echo
echo '________________________________________'