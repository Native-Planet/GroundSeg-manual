pipeline {
    agent any
    environment {
        dockerpw = credentials('Dockerhub PW')
        versionauth = credentials('VersionAuth')
        channel = sh ( 
            script: '''
                environ=`echo $BRANCH_NAME|sed 's@origin/@@g'`
                if [ "${environ}" = "master" ]; then
                    echo "latest"
                elif [ "${environ}" = "dev" ]; then
                    echo "edge"
                else
                    echo "nobuild"
                fi
            ''',
            returnStdout: true
        ).trim()
    }
    stages {
        stage('Build') {
            steps {
                sh (
                    script: '''#!/bin/bash -x
                        docker login --username=nativeplanet --password=$dockerpw
                        docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
                        docker buildx create --use --name xbuilder --node xbuilder0
                        docker buildx build --build-arg --push --tag nativeplanet/groundseg-manual:${channel} --platform linux/amd64,linux/arm64 .
                        docker push nativeplanet/groundseg-manual:${channel}
                        amd_hash=`curl -s "https://hub.docker.com/v2/repositories/nativeplanet/groundseg-manual/tags/${channel}/?page_size=100" \
                            |jq -r '.images[]|select(.architecture=="amd64").digest'|sed 's/sha256://g'`
                        arm_hash=`curl -s "https://hub.docker.com/v2/repositories/nativeplanet/groundseg-manual/tags/${channel}/?page_size=100" \
                            |jq -r '.images[]|select(.architecture=="arm64").digest'|sed 's/sha256://g'`
                        curl -X PUT -H "X-Api-Key: ${versionauth}" \
                            https://version.groundseg.app/modify/groundseg/${channel}/manual/amd64_sha256/${amd_hash}
                        curl -X PUT -H "X-Api-Key: ${versionauth}" \
                            https://version.groundseg.app/modify/groundseg/${channel}/manual/arm64_sha256/${arm_hash}
                        if [ "${channel}" = "latest" ]; then
                            curl -X PUT -H "X-Api-Key: ${versionauth}" \
                                https://version.groundseg.app/modify/groundseg/canary/manual/amd64_sha256/${amd_hash}
                            curl -X PUT -H "X-Api-Key: ${versionauth}" \
                                https://version.groundseg.app/modify/groundseg/canary/manual/arm64_sha256/${arm_hash}
                        fi
                    ''',
                    returnStdout: true
                )
                }
            }
        }
        post {
            always {
                cleanWs deleteDirs: true, notFailBuild: true
            }
        }
    }
