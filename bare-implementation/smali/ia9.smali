.class public final Lia9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Le59;


# static fields
.field public static final c:Lia9;

.field public static final d:Lia9;

.field public static final e:Lia9;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lia9;

    .line 2
    .line 3
    const-string v1, "ENABLED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lia9;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lia9;->c:Lia9;

    .line 10
    .line 11
    new-instance v0, Lia9;

    .line 12
    .line 13
    const-string v1, "DISABLED"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lia9;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lia9;->d:Lia9;

    .line 19
    .line 20
    new-instance v0, Lia9;

    .line 21
    .line 22
    const-string v1, "DESTROYED"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lia9;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lia9;->e:Lia9;

    .line 28
    .line 29
    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 1

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lia9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lia9;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lia9;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(I[B[B)[B
    .locals 5

    .line 1
    sget-object v0, Ls1a;->c:Ls1a;

    .line 2
    .line 3
    iget-object p0, p0, Lia9;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v0, Ls1a;->a:Lt1a;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljavax/crypto/Mac;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    mul-int/lit16 v1, v1, 0xff

    .line 18
    .line 19
    if-gt p1, v1, :cond_1

    .line 20
    .line 21
    new-array v1, p1, [B

    .line 22
    .line 23
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 24
    .line 25
    invoke-direct {v2, p2, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    new-array p2, p0, [B

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    move v3, p0

    .line 36
    :goto_0
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 40
    .line 41
    .line 42
    int-to-byte p2, v2

    .line 43
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update(B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    array-length v4, p2

    .line 51
    add-int/2addr v4, v3

    .line 52
    if-ge v4, p1, :cond_0

    .line 53
    .line 54
    array-length v4, p2

    .line 55
    invoke-static {p2, p0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    array-length v4, p2

    .line 59
    add-int/2addr v3, v4

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    sub-int/2addr p1, v3

    .line 64
    invoke-static {p2, p0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_1
    const-string p0, "size too large"

    .line 69
    .line 70
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    return-object p0
.end method

.method public b([B[B)[B
    .locals 2

    .line 1
    sget-object v0, Ls1a;->c:Ls1a;

    .line 2
    .line 3
    iget-object p0, p0, Lia9;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v0, Ls1a;->a:Lt1a;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljavax/crypto/Mac;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    array-length v1, p2

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 20
    .line 21
    invoke-direct {v1, p2, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    new-array v1, v1, [B

    .line 35
    .line 36
    invoke-direct {p2, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lia9;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lia9;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public zza()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lia9;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "tenantId"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    :cond_0
    const-string p0, "CLIENT_TYPE_ANDROID"

    .line 20
    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string v1, "clientType"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    :cond_1
    const-string p0, "RECAPTCHA_ENTERPRISE"

    .line 33
    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    const-string v1, "recaptchaVersion"

    .line 41
    .line 42
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method
