.class public final Lc90;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ll90;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroid/net/Uri;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/util/Map;


# virtual methods
.method public final a()Le90;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Le90;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lc90;->a:Ll90;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lc90;->b:Ljava/lang/String;

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    iget-object v3, v0, Lc90;->d:Ljava/lang/String;

    .line 13
    .line 14
    move-object v5, v4

    .line 15
    iget-object v4, v0, Lc90;->e:Landroid/net/Uri;

    .line 16
    .line 17
    iget-object v6, v0, Lc90;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lc90;->f:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lc90;->g:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lc90;->h:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lc90;->i:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lc90;->j:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lc90;->k:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v7, Ljava/util/HashMap;

    .line 32
    .line 33
    iget-object v0, v0, Lc90;->l:Ljava/util/Map;

    .line 34
    .line 35
    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v18

    .line 42
    move-object v0, v5

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v15, 0x0

    .line 47
    const/16 v16, 0x0

    .line 48
    .line 49
    const/16 v17, 0x0

    .line 50
    .line 51
    invoke-direct/range {v0 .. v18}, Le90;-><init>(Ll90;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Ldk1;->a(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lc90;->i:Ljava/lang/String;

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "ISO_8859_1"

    .line 16
    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/16 v3, 0xb

    .line 29
    .line 30
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_2

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception v2

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {}, Lj15;->e()Lj15;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v2, 0x6

    .line 48
    const-string v3, "ISO-8859-1 encoding not supported on this device!"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1, v3, p1}, Lj15;->f(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const-string p1, "ISO-8859-1 encoding not supported"

    .line 54
    .line 55
    invoke-static {p1, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_1
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {}, Lj15;->e()Lj15;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v4, 0x5

    .line 68
    const-string v5, "SHA-256 is not supported on this device! Using plain challenge"

    .line 69
    .line 70
    invoke-virtual {v3, v4, v1, v5, v2}, Lj15;->f(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_2
    iput-object p1, p0, Lc90;->j:Ljava/lang/String;

    .line 74
    .line 75
    :try_start_1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 76
    .line 77
    .line 78
    const-string p1, "S256"
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catch_2
    const-string p1, "plain"

    .line 82
    .line 83
    :goto_3
    iput-object p1, p0, Lc90;->k:Ljava/lang/String;

    .line 84
    .line 85
    return-void

    .line 86
    :cond_0
    iput-object v1, p0, Lc90;->i:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v1, p0, Lc90;->j:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v1, p0, Lc90;->k:Ljava/lang/String;

    .line 91
    .line 92
    return-void
.end method
