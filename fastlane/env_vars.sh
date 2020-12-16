#!/bin/sh


############ VARIABLE VALUES ############
#export MATTERMOST_WEBHOOK_URL=<set this to an incoming webhook url to get a notification when the build finishes>

export BRANCH_TO_BUILD=master
export GIT_LOCAL_BRANCH=build

export APP_NAME="Mattermost Beta"
export APP_SCHEME=mattermost

#export INCREMENT_BUILD_NUMBER=false
## This sets the version number ex: 1.22.0 if not set it uses the one in the code base
#export VERSION_NUMBER=
## This sets the version number ex: 210 if not set it uses the one in the code base (this one should increment always by 1 and will only update if INCREMENT_BUILD_NUMBER is true
#export BUILD_NUMBER=

############ MAKE GIT RESTORE THE BRANCH STATE ONCE BUILD FINISHES ############
export COMMIT_CHANGES_TO_GIT=true
export RESET_GIT_BRANCH=true

############ NO NEED TO CHANGE AND THIS ENSURES THAT NODEJS DOESN'T CRASH WHILE BUILDING ############
export LC_ALL=en_US.UTF-8
export NODE_OPTIONS=--max_old_space_size=12000

############ MATCH IS USED TO SYNC THE IOS PROVISIONING PROFILES ############
export MATCH_USERNAME=miyake.kentaro0815@gmail.com
export FASTLANE_PASSWORD=Kentarou0815gabagaba!
export MATCH_PASSWORD=Kentarou0815gabagaba!
export MATCH_KEYCHAIN_PASSWORD=Kentarou0815gabagaba
export MATCH_GIT_URL=https://github.com/Prossell-tech/prossell-mobile.git
export MATCH_APP_IDENTIFIER=com.mattermost.rnbeta.NotificationService,com.mattermost.rnbeta.MattermostShare,com.mattermost.rnbeta
export MATCH_TYPE=appstore
export MATCH_SHALLOW_CLONE=true
export MATCH_SKIP_DOCS=true
export FASTLANE_TEAM_ID=KrauseFx
export SYNC_PROVISIONING_PROFILES=true

############ NEEDED TO UPLOAD THE BUILD TO TESTFLIGHT ############
export PILOT_USERNAME=miyake.kentaro0815@gmail.com
export PILOT_SKIP_WAITING_FOR_BUILD_PROCESSING=true

############ NEEDED TO UPLOAD THE BUILD TO GOOGLE PLAY ############
#export SUPPLY_TRACK=alpha
#export SUPPLY_PACKAGE_NAME=com.mattermost.rnbeta
#export SUPPLY_JSON_KEY=
#export SUPPLY_VALIDATE_ONLY=false

############ REPLACE ASSETS, BUILD IN RELEASE MODE ############
export BETA_BUILD=true
export BUILD_FOR_RELEASE=true
export REPLACE_ASSETS=false

############ APP IDENTIFIERS ############
export MAIN_APP_IDENTIFIER=com.mattermost.rnbeta
export EXTENSION_APP_IDENTIFIER=com.mattermost.rnbeta.MattermostShare
export NOTIFICATION_SERVICE_IDENTIFIER=com.mattermost.rnbeta.NotificationService
export IOS_APP_GROUP=group.com.mattermost.rnbeta
export IOS_ICLOUD_CONTAINER=iCloud.com.mattermost.rnbeta
export IOS_BUILD_EXPORT_METHOD=app-store

############ SET TO TRUE TO UPLOAD THE BUILDS TO TESTFLIGH AND GOOGLE PLAY ############
export SUBMIT_IOS_TO_TESTFLIGHT=false
export SUBMIT_ANDROID_TO_GOOGLE_PLAY=false

############ OPTIONAL ############
#export SENTRY_ENABLED=<set to true if you want to use sentry http://sentry.io/ to track crash and error reports>
#export SENTRY_ORG=<your sentry org>
#export SENTRY_PROJECT_IOS=<your sentry ios project>
#export SENTRY_DSN_IOS=<your sentry DSN for the ios project>
#export SENTRY_PROJECT_ANDROID=<your sentry android project>
#export SENTRY_DSN_ANDROID=<your sentry DSN for the android project>
#export SENTRY_AUTH_TOKEN=<your sentry auth token>

############ UPLOAD THE BUILDS TO AWS S3 ############
#export AWS_ACCESS_KEY_ID=<your aws s3 access id>
#export AWS_SECRET_ACCESS_KEY=<your aws s3 access key>
#export AWS_BUCKET_NAME=<your aws bucket name>
#export AWS_FOLDER_NAME=<the folder to use in you aws bucket>
#export AWS_REGION=<your aws region>

