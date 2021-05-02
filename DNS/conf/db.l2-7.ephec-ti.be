$TTL	604800
@	IN	SOA	ns.l2-7.ephec-ti.be. admin.l2-7.ephec-ti.be. (
		 	        3	; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			  604800 )	; Negative Cache TTL
;
@		        IN	   NS		       ns.l2-7.ephec-ti.be.
@               IN     MX      10      mail

ns	            IN	   A	           135.125.101.233
www             IN     A               135.125.101.233


mail            IN     A               51.210.42.26
smtp            IN     CNAME           mail
pop             IN     CNAME           mail
imap            IN     CNAME           mail
