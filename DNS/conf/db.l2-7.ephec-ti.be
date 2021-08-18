$ORIGIN l2-7.ephec-ti.be.
$TTL	3600
@	IN	SOA	ns.l2-7.ephec-ti.be. admin.l2-7.ephec-ti.be. (
		 	2021022295	; Serial
			   3600		; Refresh
			    600		; Retry
			1209700		; Expire
			   600 )	; Negative Cache TTL
;
@		        IN	   NS		       ns.l2-7.ephec-ti.be.
@               IN     MX      10      mail.l2-7.ephec-ti.be.
@               IN     TXT             "v=spf1 a mx ip4:51.210.42.26 ~all"

@               IN	   A	           135.125.101.233
@               IN     AAAA            fe80::f816:3eff:fe76:b26a
ns	            IN	   A	           135.125.101.233
                IN     AAAA            fe80::f816:3eff:fe76:b26a
www             IN     A               135.125.101.233
                IN     AAAA            fe80::f816:3eff:fe76:b26a
b2b             IN     A               135.125.101.233
                IN     AAAA            fe80::f816:3eff:fe76:b26a


mail            IN     A               51.210.42.26
smtp            IN     CNAME           mail
pop             IN     CNAME           mail
imap            IN     CNAME           mail

mail._domainkey	IN	TXT	( "v=DKIM1; h=sha256; k=rsa; "
	  "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArXBVIn+ZZywLtBuOU270flfABgS2oaGn5lMfDRUHxHe01OXAT5AGzqwT+CFZbtBUOkcOq1NzttkX0PEcRriZFj3F1QycMlfafn8wHfvwmnPsPS1WXQ9LIQP43qtDHTxiFzgc6ELHRHoqE70zX7Tmxo4oi6h5ZMBVIQsEWKdodvkjCc80Z/nVc5FWAdmJ+HYFQV1LUzaVHL4yOc"
	  "hQeDBS44PezLwPnt/gyZYG33JaTR+GPGw/Qhb6Cj/PvweyzKvrcGmieFu7JceW3VzpNCKn2fkzHmvJTkbZvJy5LFomapF6hUTcSZ2NConLtNZl8/aFD/sK87BQ3cwCbZBA2nL4iQIDAQAB" )  ; ----- DKIM key mail for l2-7.ephec-ti.be

_dmarc          IN  TXT ("v=DMARC1;p=reject;sp=reject;pct=10;adkim=s;aspf=s;")
