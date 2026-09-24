package com.jcraft.jsch;

import defpackage.a6;
import defpackage.e6;
import defpackage.eq3;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.Vector;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JSch {
    public static final String VERSION = "2.28.2";
    public static final Hashtable g;
    public static final Logger h;
    public static Logger i;
    public final InstanceLogger a;
    public final Vector b;
    public final IdentityRepository c;
    public IdentityRepository d;
    public ConfigRepository e;
    public HostKeyRepository f;

    static {
        String property;
        String property2;
        String property3;
        String property4;
        String property5;
        String property6;
        String property7;
        String property8;
        String property9;
        String property10;
        String property11;
        String property12;
        String property13;
        String property14;
        String property15;
        String property16;
        String property17;
        String property18 = "6";
        String property19 = "hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1";
        String property20 = "aes128-gcm@openssh.com,aes256-gcm@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr";
        String property21 = "ssh-ed25519-cert-v01@openssh.com,ecdsa-sha2-nistp256-cert-v01@openssh.com,ecdsa-sha2-nistp384-cert-v01@openssh.com,ecdsa-sha2-nistp521-cert-v01@openssh.com,rsa-sha2-512-cert-v01@openssh.com,rsa-sha2-256-cert-v01@openssh.com,ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256";
        String property22 = "";
        String property23 = "yes";
        Hashtable hashtable = new Hashtable();
        g = hashtable;
        String property24 = "mlkem768x25519-sha256,curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14-sha256";
        byte[] bArr = Util.a;
        try {
            property24 = System.getProperty("jsch.kex", "mlkem768x25519-sha256,curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14-sha256");
        } catch (SecurityException unused) {
        }
        hashtable.put("kex", property24);
        Hashtable hashtable2 = g;
        try {
            property = System.getProperty("jsch.server_host_key", "ssh-ed25519-cert-v01@openssh.com,ecdsa-sha2-nistp256-cert-v01@openssh.com,ecdsa-sha2-nistp384-cert-v01@openssh.com,ecdsa-sha2-nistp521-cert-v01@openssh.com,rsa-sha2-512-cert-v01@openssh.com,rsa-sha2-256-cert-v01@openssh.com,ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256");
        } catch (SecurityException unused2) {
            property = "ssh-ed25519-cert-v01@openssh.com,ecdsa-sha2-nistp256-cert-v01@openssh.com,ecdsa-sha2-nistp384-cert-v01@openssh.com,ecdsa-sha2-nistp521-cert-v01@openssh.com,rsa-sha2-512-cert-v01@openssh.com,rsa-sha2-256-cert-v01@openssh.com,ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256";
        }
        hashtable2.put("server_host_key", property);
        Hashtable hashtable3 = g;
        String property25 = "ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256";
        try {
            property25 = System.getProperty("jsch.ca_signature_algorithms", "ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256");
        } catch (SecurityException unused3) {
        }
        hashtable3.put("ca_signature_algorithms", property25);
        Hashtable hashtable4 = g;
        try {
            property2 = System.getProperty("jsch.prefer_known_host_key_types", "yes");
        } catch (SecurityException unused4) {
            property2 = "yes";
        }
        hashtable4.put("prefer_known_host_key_types", property2);
        Hashtable hashtable5 = g;
        try {
            property3 = System.getProperty("jsch.enable_strict_kex", "yes");
        } catch (SecurityException unused5) {
            property3 = "yes";
        }
        hashtable5.put("enable_strict_kex", property3);
        Hashtable hashtable6 = g;
        try {
            property4 = System.getProperty("jsch.require_strict_kex", "no");
        } catch (SecurityException unused6) {
            property4 = "no";
        }
        hashtable6.put("require_strict_kex", property4);
        Hashtable hashtable7 = g;
        try {
            property5 = System.getProperty("jsch.enable_server_sig_algs", "yes");
        } catch (SecurityException unused7) {
            property5 = "yes";
        }
        hashtable7.put("enable_server_sig_algs", property5);
        Hashtable hashtable8 = g;
        try {
            property6 = System.getProperty("jsch.enable_ext_info_in_auth", "yes");
        } catch (SecurityException unused8) {
            property6 = "yes";
        }
        hashtable8.put("enable_ext_info_in_auth", property6);
        Hashtable hashtable9 = g;
        try {
            property7 = System.getProperty("jsch.cipher", "aes128-gcm@openssh.com,aes256-gcm@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr");
        } catch (SecurityException unused9) {
            property7 = "aes128-gcm@openssh.com,aes256-gcm@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr";
        }
        hashtable9.put("cipher.s2c", property7);
        Hashtable hashtable10 = g;
        try {
            property20 = System.getProperty("jsch.cipher", "aes128-gcm@openssh.com,aes256-gcm@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr");
        } catch (SecurityException unused10) {
        }
        hashtable10.put("cipher.c2s", property20);
        Hashtable hashtable11 = g;
        try {
            property8 = System.getProperty("jsch.mac", "hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1");
        } catch (SecurityException unused11) {
            property8 = "hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1";
        }
        hashtable11.put("mac.s2c", property8);
        Hashtable hashtable12 = g;
        try {
            property19 = System.getProperty("jsch.mac", "hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1");
        } catch (SecurityException unused12) {
        }
        hashtable12.put("mac.c2s", property19);
        Hashtable hashtable13 = g;
        try {
            property9 = System.getProperty("jsch.compression", "none");
        } catch (SecurityException unused13) {
            property9 = "none";
        }
        hashtable13.put("compression.s2c", property9);
        Hashtable hashtable14 = g;
        try {
            property10 = System.getProperty("jsch.compression", "none");
        } catch (SecurityException unused14) {
            property10 = "none";
        }
        hashtable14.put("compression.c2s", property10);
        Hashtable hashtable15 = g;
        try {
            property11 = System.getProperty("jsch.lang", "");
        } catch (SecurityException unused15) {
            property11 = "";
        }
        hashtable15.put("lang.s2c", property11);
        Hashtable hashtable16 = g;
        try {
            property12 = System.getProperty("jsch.lang", "");
        } catch (SecurityException unused16) {
            property12 = "";
        }
        hashtable16.put("lang.c2s", property12);
        Hashtable hashtable17 = g;
        String property26 = "2048";
        try {
            property26 = System.getProperty("jsch.dhgex_min", "2048");
        } catch (SecurityException unused17) {
        }
        hashtable17.put("dhgex_min", property26);
        Hashtable hashtable18 = g;
        String property27 = "8192";
        try {
            property27 = System.getProperty("jsch.dhgex_max", "8192");
        } catch (SecurityException unused18) {
        }
        hashtable18.put("dhgex_max", property27);
        Hashtable hashtable19 = g;
        String property28 = "3072";
        try {
            property28 = System.getProperty("jsch.dhgex_preferred", "3072");
        } catch (SecurityException unused19) {
        }
        hashtable19.put("dhgex_preferred", property28);
        Hashtable hashtable20 = g;
        try {
            property13 = System.getProperty("jsch.compression_level", "6");
        } catch (SecurityException unused20) {
            property13 = "6";
        }
        hashtable20.put("compression_level", property13);
        Hashtable hashtable21 = g;
        hashtable21.put("diffie-hellman-group-exchange-sha1", "com.jcraft.jsch.DHGEX1");
        hashtable21.put("diffie-hellman-group1-sha1", "com.jcraft.jsch.DHG1");
        hashtable21.put("diffie-hellman-group14-sha1", "com.jcraft.jsch.DHG14");
        hashtable21.put("diffie-hellman-group-exchange-sha256", "com.jcraft.jsch.DHGEX256");
        hashtable21.put("diffie-hellman-group-exchange-sha224@ssh.com", "com.jcraft.jsch.DHGEX224");
        hashtable21.put("diffie-hellman-group-exchange-sha384@ssh.com", "com.jcraft.jsch.DHGEX384");
        hashtable21.put("diffie-hellman-group-exchange-sha512@ssh.com", "com.jcraft.jsch.DHGEX512");
        hashtable21.put("diffie-hellman-group14-sha256", "com.jcraft.jsch.DHG14256");
        hashtable21.put("diffie-hellman-group15-sha512", "com.jcraft.jsch.DHG15");
        hashtable21.put("diffie-hellman-group16-sha512", "com.jcraft.jsch.DHG16");
        hashtable21.put("diffie-hellman-group17-sha512", "com.jcraft.jsch.DHG17");
        hashtable21.put("diffie-hellman-group18-sha512", "com.jcraft.jsch.DHG18");
        hashtable21.put("diffie-hellman-group14-sha256@ssh.com", "com.jcraft.jsch.DHG14256");
        hashtable21.put("diffie-hellman-group14-sha224@ssh.com", "com.jcraft.jsch.DHG14224");
        hashtable21.put("diffie-hellman-group15-sha256@ssh.com", "com.jcraft.jsch.DHG15256");
        hashtable21.put("diffie-hellman-group15-sha384@ssh.com", "com.jcraft.jsch.DHG15384");
        hashtable21.put("diffie-hellman-group16-sha512@ssh.com", "com.jcraft.jsch.DHG16");
        hashtable21.put("diffie-hellman-group16-sha384@ssh.com", "com.jcraft.jsch.DHG16384");
        hashtable21.put("diffie-hellman-group18-sha512@ssh.com", "com.jcraft.jsch.DHG18");
        hashtable21.put("ecdsa-sha2-nistp256", "com.jcraft.jsch.jce.SignatureECDSA256");
        hashtable21.put("ecdsa-sha2-nistp384", "com.jcraft.jsch.jce.SignatureECDSA384");
        hashtable21.put("ecdsa-sha2-nistp521", "com.jcraft.jsch.jce.SignatureECDSA521");
        hashtable21.put("ecdh-sha2-nistp256", "com.jcraft.jsch.DHEC256");
        hashtable21.put("ecdh-sha2-nistp384", "com.jcraft.jsch.DHEC384");
        hashtable21.put("ecdh-sha2-nistp521", "com.jcraft.jsch.DHEC521");
        hashtable21.put("ecdh-sha2-nistp", "com.jcraft.jsch.jce.ECDHN");
        hashtable21.put("curve25519-sha256", "com.jcraft.jsch.DH25519");
        hashtable21.put("curve25519-sha256@libssh.org", "com.jcraft.jsch.DH25519");
        hashtable21.put("curve448-sha512", "com.jcraft.jsch.DH448");
        hashtable21.put("mlkem768x25519-sha256", "com.jcraft.jsch.DH25519MLKEM768");
        hashtable21.put("mlkem768nistp256-sha256", "com.jcraft.jsch.DHEC256MLKEM768");
        hashtable21.put("mlkem1024nistp384-sha384", "com.jcraft.jsch.DHEC384MLKEM1024");
        hashtable21.put("sntrup761x25519-sha512", "com.jcraft.jsch.DH25519SNTRUP761");
        hashtable21.put("sntrup761x25519-sha512@openssh.com", "com.jcraft.jsch.DH25519SNTRUP761");
        hashtable21.put("mlkem768", "com.jcraft.jsch.bc.MLKEM768");
        hashtable21.put("mlkem1024", "com.jcraft.jsch.bc.MLKEM1024");
        hashtable21.put("sntrup761", "com.jcraft.jsch.bc.SNTRUP761");
        hashtable21.put("dh", "com.jcraft.jsch.jce.DH");
        hashtable21.put("3des-cbc", "com.jcraft.jsch.jce.TripleDESCBC");
        hashtable21.put("blowfish-cbc", "com.jcraft.jsch.jce.BlowfishCBC");
        hashtable21.put("hmac-sha1", "com.jcraft.jsch.jce.HMACSHA1");
        hashtable21.put("hmac-sha1-96", "com.jcraft.jsch.jce.HMACSHA196");
        hashtable21.put("hmac-sha2-256", "com.jcraft.jsch.jce.HMACSHA256");
        hashtable21.put("hmac-sha2-512", "com.jcraft.jsch.jce.HMACSHA512");
        hashtable21.put("hmac-md5", "com.jcraft.jsch.jce.HMACMD5");
        hashtable21.put("hmac-md5-96", "com.jcraft.jsch.jce.HMACMD596");
        hashtable21.put("hmac-sha1-etm@openssh.com", "com.jcraft.jsch.jce.HMACSHA1ETM");
        hashtable21.put("hmac-sha1-96-etm@openssh.com", "com.jcraft.jsch.jce.HMACSHA196ETM");
        hashtable21.put("hmac-sha2-256-etm@openssh.com", "com.jcraft.jsch.jce.HMACSHA256ETM");
        hashtable21.put("hmac-sha2-512-etm@openssh.com", "com.jcraft.jsch.jce.HMACSHA512ETM");
        hashtable21.put("hmac-md5-etm@openssh.com", "com.jcraft.jsch.jce.HMACMD5ETM");
        hashtable21.put("hmac-md5-96-etm@openssh.com", "com.jcraft.jsch.jce.HMACMD596ETM");
        hashtable21.put("hmac-sha256-2@ssh.com", "com.jcraft.jsch.jce.HMACSHA2562SSHCOM");
        hashtable21.put("hmac-sha224@ssh.com", "com.jcraft.jsch.jce.HMACSHA224SSHCOM");
        hashtable21.put("hmac-sha256@ssh.com", "com.jcraft.jsch.jce.HMACSHA256SSHCOM");
        hashtable21.put("hmac-sha384@ssh.com", "com.jcraft.jsch.jce.HMACSHA384SSHCOM");
        hashtable21.put("hmac-sha512@ssh.com", "com.jcraft.jsch.jce.HMACSHA512SSHCOM");
        hashtable21.put("sha-1", "com.jcraft.jsch.jce.SHA1");
        hashtable21.put("sha-224", "com.jcraft.jsch.jce.SHA224");
        hashtable21.put("sha-256", "com.jcraft.jsch.jce.SHA256");
        hashtable21.put("sha-384", "com.jcraft.jsch.jce.SHA384");
        hashtable21.put("sha-512", "com.jcraft.jsch.jce.SHA512");
        hashtable21.put("md5", "com.jcraft.jsch.jce.MD5");
        hashtable21.put("sha1", "com.jcraft.jsch.jce.SHA1");
        hashtable21.put("sha224", "com.jcraft.jsch.jce.SHA224");
        String property29 = "sha256";
        hashtable21.put("sha256", "com.jcraft.jsch.jce.SHA256");
        hashtable21.put("sha384", "com.jcraft.jsch.jce.SHA384");
        hashtable21.put("sha512", "com.jcraft.jsch.jce.SHA512");
        hashtable21.put("signature.dss", "com.jcraft.jsch.jce.SignatureDSA");
        hashtable21.put("ssh-rsa", "com.jcraft.jsch.jce.SignatureRSA");
        hashtable21.put("rsa-sha2-256", "com.jcraft.jsch.jce.SignatureRSASHA256");
        hashtable21.put("rsa-sha2-512", "com.jcraft.jsch.jce.SignatureRSASHA512");
        hashtable21.put("ssh-rsa-sha224@ssh.com", "com.jcraft.jsch.jce.SignatureRSASHA224SSHCOM");
        hashtable21.put("ssh-rsa-sha256@ssh.com", "com.jcraft.jsch.jce.SignatureRSASHA256SSHCOM");
        hashtable21.put("ssh-rsa-sha384@ssh.com", "com.jcraft.jsch.jce.SignatureRSASHA384SSHCOM");
        hashtable21.put("ssh-rsa-sha512@ssh.com", "com.jcraft.jsch.jce.SignatureRSASHA512SSHCOM");
        hashtable21.put("keypairgen.dsa", "com.jcraft.jsch.jce.KeyPairGenDSA");
        hashtable21.put("keypairgen.rsa", "com.jcraft.jsch.jce.KeyPairGenRSA");
        hashtable21.put("keypairgen.ecdsa", "com.jcraft.jsch.jce.KeyPairGenECDSA");
        hashtable21.put("random", "com.jcraft.jsch.jce.Random");
        hashtable21.put("hmac-ripemd160", "com.jcraft.jsch.bc.HMACRIPEMD160");
        hashtable21.put("hmac-ripemd160@openssh.com", "com.jcraft.jsch.bc.HMACRIPEMD160OpenSSH");
        hashtable21.put("hmac-ripemd160-etm@openssh.com", "com.jcraft.jsch.bc.HMACRIPEMD160ETM");
        hashtable21.put("none", "com.jcraft.jsch.CipherNone");
        hashtable21.put("aes128-gcm@openssh.com", "com.jcraft.jsch.jce.AES128GCM");
        hashtable21.put("aes256-gcm@openssh.com", "com.jcraft.jsch.jce.AES256GCM");
        hashtable21.put("aes128-cbc", "com.jcraft.jsch.jce.AES128CBC");
        hashtable21.put("aes192-cbc", "com.jcraft.jsch.jce.AES192CBC");
        hashtable21.put("aes256-cbc", "com.jcraft.jsch.jce.AES256CBC");
        hashtable21.put("rijndael-cbc@lysator.liu.se", "com.jcraft.jsch.jce.AES256CBC");
        String property30 = "chacha20-poly1305@openssh.com";
        hashtable21.put("chacha20-poly1305@openssh.com", "com.jcraft.jsch.bc.ChaCha20Poly1305");
        hashtable21.put("cast128-cbc", "com.jcraft.jsch.bc.CAST128CBC");
        hashtable21.put("cast128-ctr", "com.jcraft.jsch.bc.CAST128CTR");
        hashtable21.put("twofish128-cbc", "com.jcraft.jsch.bc.Twofish128CBC");
        hashtable21.put("twofish192-cbc", "com.jcraft.jsch.bc.Twofish192CBC");
        hashtable21.put("twofish256-cbc", "com.jcraft.jsch.bc.Twofish256CBC");
        hashtable21.put("twofish-cbc", "com.jcraft.jsch.bc.Twofish256CBC");
        hashtable21.put("twofish128-ctr", "com.jcraft.jsch.bc.Twofish128CTR");
        hashtable21.put("twofish192-ctr", "com.jcraft.jsch.bc.Twofish192CTR");
        hashtable21.put("twofish256-ctr", "com.jcraft.jsch.bc.Twofish256CTR");
        hashtable21.put("seed-cbc@ssh.com", "com.jcraft.jsch.bc.SEEDCBC");
        hashtable21.put("aes128-ctr", "com.jcraft.jsch.jce.AES128CTR");
        hashtable21.put("aes192-ctr", "com.jcraft.jsch.jce.AES192CTR");
        hashtable21.put("aes256-ctr", "com.jcraft.jsch.jce.AES256CTR");
        hashtable21.put("3des-ctr", "com.jcraft.jsch.jce.TripleDESCTR");
        hashtable21.put("blowfish-ctr", "com.jcraft.jsch.jce.BlowfishCTR");
        hashtable21.put("arcfour", "com.jcraft.jsch.jce.ARCFOUR");
        hashtable21.put("arcfour128", "com.jcraft.jsch.jce.ARCFOUR128");
        hashtable21.put("arcfour256", "com.jcraft.jsch.jce.ARCFOUR256");
        hashtable21.put("userauth.none", "com.jcraft.jsch.UserAuthNone");
        hashtable21.put("userauth.password", "com.jcraft.jsch.UserAuthPassword");
        hashtable21.put("userauth.keyboard-interactive", "com.jcraft.jsch.UserAuthKeyboardInteractive");
        hashtable21.put("userauth.publickey", "com.jcraft.jsch.UserAuthPublicKey");
        hashtable21.put("userauth.gssapi-with-mic", "com.jcraft.jsch.UserAuthGSSAPIWithMIC");
        hashtable21.put("gssapi-with-mic.krb5", "com.jcraft.jsch.jgss.GSSContextKrb5");
        hashtable21.put("zlib", "com.jcraft.jsch.jzlib.Compression");
        hashtable21.put("zlib@openssh.com", "com.jcraft.jsch.jzlib.Compression");
        hashtable21.put("pbkdf2", "com.jcraft.jsch.jce.PBKDF2");
        hashtable21.put("bcrypt", "com.jcraft.jsch.jbcrypt.JBCrypt");
        hashtable21.put("Argon2d", "com.jcraft.jsch.bc.Argon2");
        hashtable21.put("Argon2i", "com.jcraft.jsch.bc.Argon2");
        hashtable21.put("Argon2id", "com.jcraft.jsch.bc.Argon2");
        hashtable21.put("scrypt", "com.jcraft.jsch.bc.SCrypt");
        hashtable21.put("xdh", "com.jcraft.jsch.bc.XDH");
        hashtable21.put("keypairgen.eddsa", "com.jcraft.jsch.bc.KeyPairGenEdDSA");
        hashtable21.put("ssh-ed25519", "com.jcraft.jsch.bc.SignatureEd25519");
        hashtable21.put("ssh-ed448", "com.jcraft.jsch.bc.SignatureEd448");
        hashtable21.put("keypairgen_fromprivate.eddsa", "com.jcraft.jsch.bc.KeyPairGenEdDSA");
        hashtable21.put("StrictHostKeyChecking", "ask");
        hashtable21.put("HashKnownHosts", "no");
        String property31 = "gssapi-with-mic,publickey,keyboard-interactive,password";
        try {
            property31 = System.getProperty("jsch.preferred_authentications", "gssapi-with-mic,publickey,keyboard-interactive,password");
        } catch (SecurityException unused21) {
        }
        hashtable21.put("PreferredAuthentications", property31);
        Hashtable hashtable22 = g;
        try {
            property21 = System.getProperty("jsch.client_pubkey", "ssh-ed25519-cert-v01@openssh.com,ecdsa-sha2-nistp256-cert-v01@openssh.com,ecdsa-sha2-nistp384-cert-v01@openssh.com,ecdsa-sha2-nistp521-cert-v01@openssh.com,rsa-sha2-512-cert-v01@openssh.com,rsa-sha2-256-cert-v01@openssh.com,ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256");
        } catch (SecurityException unused22) {
        }
        hashtable22.put("PubkeyAcceptedAlgorithms", property21);
        Hashtable hashtable23 = g;
        try {
            property14 = System.getProperty("jsch.enable_pubkey_auth_query", "yes");
        } catch (SecurityException unused23) {
            property14 = "yes";
        }
        hashtable23.put("enable_pubkey_auth_query", property14);
        Hashtable hashtable24 = g;
        try {
            property15 = System.getProperty("jsch.try_additional_pubkey_algorithms", "yes");
        } catch (SecurityException unused24) {
            property15 = "yes";
        }
        hashtable24.put("try_additional_pubkey_algorithms", property15);
        Hashtable hashtable25 = g;
        try {
            property16 = System.getProperty("jsch.enable_auth_none", "yes");
        } catch (SecurityException unused25) {
            property16 = "yes";
        }
        hashtable25.put("enable_auth_none", property16);
        Hashtable hashtable26 = g;
        try {
            property17 = System.getProperty("jsch.use_sftp_write_flush_workaround", "yes");
        } catch (SecurityException unused26) {
            property17 = "yes";
        }
        hashtable26.put("use_sftp_write_flush_workaround", property17);
        Hashtable hashtable27 = g;
        try {
            property30 = System.getProperty("jsch.check_ciphers", "chacha20-poly1305@openssh.com");
        } catch (SecurityException unused27) {
        }
        hashtable27.put("CheckCiphers", property30);
        Hashtable hashtable28 = g;
        try {
            property22 = System.getProperty("jsch.check_macs", "");
        } catch (SecurityException unused28) {
        }
        hashtable28.put("CheckMacs", property22);
        Hashtable hashtable29 = g;
        String property32 = "mlkem768x25519-sha256,mlkem768nistp256-sha256,mlkem1024nistp384-sha384,sntrup761x25519-sha512,sntrup761x25519-sha512@openssh.com,curve25519-sha256,curve25519-sha256@libssh.org,curve448-sha512";
        try {
            property32 = System.getProperty("jsch.check_kexes", "mlkem768x25519-sha256,mlkem768nistp256-sha256,mlkem1024nistp384-sha384,sntrup761x25519-sha512,sntrup761x25519-sha512@openssh.com,curve25519-sha256,curve25519-sha256@libssh.org,curve448-sha512");
        } catch (SecurityException unused29) {
        }
        hashtable29.put("CheckKexes", property32);
        Hashtable hashtable30 = g;
        String property33 = "ssh-ed25519,ssh-ed448";
        try {
            property33 = System.getProperty("jsch.check_signatures", "ssh-ed25519,ssh-ed448");
        } catch (SecurityException unused30) {
        }
        hashtable30.put("CheckSignatures", property33);
        Hashtable hashtable31 = g;
        try {
            property29 = System.getProperty("jsch.fingerprint_hash", "sha256");
        } catch (SecurityException unused31) {
        }
        hashtable31.put("FingerprintHash", property29);
        Hashtable hashtable32 = g;
        try {
            property18 = System.getProperty("jsch.max_auth_tries", "6");
        } catch (SecurityException unused32) {
        }
        hashtable32.put("MaxAuthTries", property18);
        Hashtable hashtable33 = g;
        hashtable33.put("ClearAllForwardings", "no");
        try {
            property23 = System.getProperty("jsch.host_certificate_to_key_fallback", "yes");
        } catch (SecurityException unused33) {
        }
        hashtable33.put("host_certificate_to_key_fallback", property23);
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        h = anonymousClass1;
        i = anonymousClass1;
    }

    public JSch() {
        InstanceLogger instanceLogger = new InstanceLogger();
        this.a = instanceLogger;
        this.b = new Vector();
        LocalIdentityRepository localIdentityRepository = new LocalIdentityRepository(instanceLogger);
        this.c = localIdentityRepository;
        this.d = localIdentityRepository;
        this.e = null;
        this.f = null;
    }

    public static Map<String, String> getConfig() {
        HashMap map = new HashMap();
        Hashtable hashtable = g;
        synchronized (hashtable) {
            try {
                for (Map.Entry entry : hashtable.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str.equals("PubkeyAcceptedKeyTypes")) {
                        str = "PubkeyAcceptedAlgorithms";
                    }
                    map.put(str, (String) entry.getValue());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return Collections.unmodifiableMap(map);
    }

    public static Logger getLogger() {
        return i;
    }

    public static void setConfig(Hashtable<String, String> hashtable) {
        synchronized (g) {
            try {
                Enumeration<String> enumerationKeys = hashtable.keys();
                while (enumerationKeys.hasMoreElements()) {
                    String strNextElement = enumerationKeys.nextElement();
                    g.put(strNextElement.equals("PubkeyAcceptedKeyTypes") ? "PubkeyAcceptedAlgorithms" : strNextElement, hashtable.get(strNextElement));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setLogger(Logger logger) {
        if (logger == null) {
            logger = h;
        }
        i = logger;
    }

    public final void a(Session session) {
        synchronized (this.b) {
            this.b.addElement(session);
        }
    }

    public final void addIdentity(Identity identity, byte[] bArr) throws Throwable {
        if (bArr != null) {
            try {
                byte[] bArr2 = new byte[bArr.length];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                try {
                    if (!identity.setPassphrase(bArr2)) {
                        throw new JSchException("Incorrect passphrase provided.");
                    }
                    Util.e(bArr2);
                } catch (Throwable th) {
                    th = th;
                    bArr = bArr2;
                    Util.e(bArr);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        IdentityRepository identityRepository = this.d;
        if (identityRepository instanceof LocalIdentityRepository) {
            ((LocalIdentityRepository) identityRepository).add(identity);
            return;
        }
        if ((identity instanceof IdentityFile) && !identity.isEncrypted()) {
            this.d.add(((IdentityFile) identity).a.forSSHAgent());
            return;
        }
        synchronized (this) {
            try {
                IdentityRepository identityRepository2 = this.d;
                if (!(identityRepository2 instanceof IdentityRepositoryWrapper)) {
                    setIdentityRepository(new IdentityRepositoryWrapper(identityRepository2, false));
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        ((IdentityRepositoryWrapper) this.d).a(identity);
    }

    public final void b(Session session) {
        synchronized (this.b) {
            this.b.remove(session);
        }
    }

    public final ConfigRepository getConfigRepository() {
        return this.e;
    }

    public final HostKeyRepository getHostKeyRepository() {
        if (this.f == null) {
            this.f = new KnownHosts(this);
        }
        return this.f;
    }

    public final Vector<String> getIdentityNames() throws JSchException {
        Vector<String> vector = new Vector<>();
        Vector<Identity> identities = this.d.getIdentities();
        for (int i2 = 0; i2 < identities.size(); i2++) {
            vector.addElement(identities.elementAt(i2).getName());
        }
        return vector;
    }

    public final synchronized IdentityRepository getIdentityRepository() {
        return this.d;
    }

    public final Logger getInstanceLogger() {
        return this.a.a();
    }

    public final Session getSession(String str, String str2, int i2) throws JSchException {
        if (str2 != null) {
            return new Session(this, str, str2, i2);
        }
        e6.h("host must not be null.");
        return null;
    }

    public final void removeAllIdentity() throws JSchException {
        this.d.removeAll();
    }

    @Deprecated
    public final void removeIdentity(String str) throws JSchException {
        Vector<Identity> identities = this.d.getIdentities();
        for (int i2 = 0; i2 < identities.size(); i2++) {
            Identity identityElementAt = identities.elementAt(i2);
            if (identityElementAt.getName().equals(str)) {
                IdentityRepository identityRepository = this.d;
                if (identityRepository instanceof LocalIdentityRepository) {
                    LocalIdentityRepository localIdentityRepository = (LocalIdentityRepository) identityRepository;
                    synchronized (localIdentityRepository) {
                        try {
                            if (localIdentityRepository.a.contains(identityElementAt)) {
                                localIdentityRepository.a.removeElement(identityElementAt);
                                identityElementAt.clear();
                            } else {
                                localIdentityRepository.remove(identityElementAt.getPublicKeyBlob());
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } else {
                    identityRepository.remove(identityElementAt.getPublicKeyBlob());
                }
            }
        }
    }

    public final void setConfigRepository(ConfigRepository configRepository) {
        this.e = configRepository;
    }

    public final void setHostKeyRepository(HostKeyRepository hostKeyRepository) {
        this.f = hostKeyRepository;
    }

    public final synchronized void setIdentityRepository(IdentityRepository identityRepository) {
        try {
            if (identityRepository == null) {
                this.d = this.c;
            } else {
                this.d = identityRepository;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void setInstanceLogger(Logger logger) {
        this.a.a = logger;
    }

    public final void setKnownHosts(String str) throws JSchException {
        if (this.f == null) {
            this.f = new KnownHosts(this);
        }
        HostKeyRepository hostKeyRepository = this.f;
        if (hostKeyRepository instanceof KnownHosts) {
            synchronized (hostKeyRepository) {
                KnownHosts knownHosts = (KnownHosts) this.f;
                knownHosts.getClass();
                try {
                    knownHosts.b = str;
                    knownHosts.d(new FileInputStream(Util.f(str)));
                } catch (FileNotFoundException unused) {
                }
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class InstanceLogger {
        public Logger a;

        private InstanceLogger() {
        }

        public final Logger a() {
            Logger logger = this.a;
            return logger == null ? JSch.i : logger;
        }

        public InstanceLogger(AnonymousClass1 anonymousClass1) {
        }
    }

    public final Session getSession(String str, String str2) throws JSchException {
        return getSession(str, str2, 22);
    }

    public final Session getSession(String str) throws JSchException {
        return getSession(null, str, 22);
    }

    /* JADX INFO: renamed from: com.jcraft.jsch.JSch$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public class AnonymousClass1 implements Logger {
        @Override // com.jcraft.jsch.Logger
        public final boolean isEnabled(int i) {
            return false;
        }

        @Override // com.jcraft.jsch.Logger
        public final void log(int i, String str) {
        }
    }

    public final void setKnownHosts(InputStream inputStream) throws JSchException {
        if (this.f == null) {
            this.f = new KnownHosts(this);
        }
        HostKeyRepository hostKeyRepository = this.f;
        if (hostKeyRepository instanceof KnownHosts) {
            synchronized (hostKeyRepository) {
                ((KnownHosts) this.f).d(inputStream);
            }
        }
    }

    public static void setConfig(String str, String str2) {
        boolean zEquals = str.equals("PubkeyAcceptedKeyTypes");
        Hashtable hashtable = g;
        if (zEquals) {
            hashtable.put("PubkeyAcceptedAlgorithms", str2);
        } else {
            hashtable.put(str, str2);
        }
    }

    public static String getConfig(String str) {
        String str2;
        Hashtable hashtable = g;
        synchronized (hashtable) {
            try {
                if (str.equals("PubkeyAcceptedKeyTypes")) {
                    str = "PubkeyAcceptedAlgorithms";
                }
                str2 = (String) hashtable.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return str2;
    }

    public final void removeIdentity(Identity identity) throws JSchException {
        this.d.remove(identity.getPublicKeyBlob());
    }

    @Deprecated
    public final void addIdentity(String str, String str2) throws Throwable {
        byte[] bArrP;
        if (str2 != null) {
            byte[] bArr = Util.a;
            bArrP = Util.p(str2, StandardCharsets.UTF_8);
        } else {
            bArrP = null;
        }
        addIdentity(str, bArrP);
        if (bArrP != null) {
            Util.e(bArrP);
        }
    }

    public final void addIdentity(String str, byte[] bArr) throws Throwable {
        addIdentity(IdentityFile.a(this.a, str, null), bArr);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0014  */
    public final void addIdentity(String str, String str2, byte[] bArr) throws Throwable {
        String strJ;
        byte[] bArrJ;
        Identity identityA;
        if (str2 == null) {
            strJ = eq3.j(str, "-cert.pub");
            if (!new File(strJ).exists()) {
                strJ = str2;
            }
        } else {
            strJ = str2;
        }
        if (strJ != null) {
            try {
                bArrJ = Util.j(strJ);
            } catch (IOException e) {
                if (str2 != null) {
                    a6.f(e);
                    return;
                }
                bArrJ = null;
            }
        } else {
            bArrJ = null;
        }
        InstanceLogger instanceLogger = this.a;
        if (bArrJ != null && OpenSshCertificateAwareIdentityFile.a(bArrJ)) {
            try {
                identityA = OpenSshCertificateAwareIdentityFile.b(str, Util.j(str), Util.j(strJ), instanceLogger);
            } catch (IOException e2) {
                a6.f(e2);
                return;
            }
        } else {
            identityA = IdentityFile.a(instanceLogger, str, str2);
        }
        addIdentity(identityA, bArr);
    }

    public final void addIdentity(String str, byte[] bArr, byte[] bArr2, byte[] bArr3) throws Throwable {
        Identity identityB;
        boolean zA = OpenSshCertificateAwareIdentityFile.a(bArr2);
        InstanceLogger instanceLogger = this.a;
        if (zA) {
            identityB = OpenSshCertificateAwareIdentityFile.b(str, bArr, bArr2, instanceLogger);
        } else {
            identityB = IdentityFile.b(str, bArr, bArr2, instanceLogger);
        }
        addIdentity(identityB, bArr3);
    }

    public final void addIdentity(String str) throws Throwable {
        addIdentity(str, (byte[]) null);
    }
}
