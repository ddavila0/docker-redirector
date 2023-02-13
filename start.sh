docker run -d  \
        --name redi \
	--network host \
 	--volume /etc/grid-security/hostcert.pem:/etc/grid-security/xrd/xrdcert.pem \
	--volume /etc/grid-security/hostkey.pem:/etc/grid-security/xrd/xrdkey.pem \
 	--volume $(pwd)/config/cms.blacklist:/etc/xrootd/cms.blacklist \
 	--volume $(pwd)/config/Authfile:/etc/xrootd/Authfile \
 	--volume $(pwd)/config/scitokens.conf:/etc/xrootd/scitokens.conf \
 	--volume $(pwd)/config/scitokens_mapfile.json:/etc/xrootd/scitokens_mapfile.json \
	--volume $(pwd)/config/macaroon-secret:/etc/xrootd/macaroon-secret \
	--volume $(pwd)/config/voms-mapfile:/etc/xrootd/voms-mapfile \
	--volume /etc/grid-security/grid-mapfile:/etc/grid-security/grid-mapfile \
	--volume /etc/xrootd/robots.txt:/etc/xrootd/robots.txt \
	--volume $(pwd)/config/xrootd-redirector.cfg:/etc/xrootd/xrootd-redirector.cfg \
	redirector:latest
