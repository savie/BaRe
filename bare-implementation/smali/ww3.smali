.class public final Lww3;
.super Lw22;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v2, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "androidx.credentials.BUNDLE_KEY_SUBTYPE"

    .line 10
    .line 11
    const-string v1, "androidx.credentials.BUNDLE_VALUE_SUBTYPE_GET_PUBLIC_KEY_CREDENTIAL_OPTION"

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v3, "androidx.credentials.BUNDLE_KEY_REQUEST_JSON"

    .line 17
    .line 18
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v4, "androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH"

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 25
    .line 26
    .line 27
    move-object v5, v3

    .line 28
    new-instance v3, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 40
    .line 41
    .line 42
    const-string v1, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    sget-object v5, Lsv2;->a:Lsv2;

    .line 46
    .line 47
    const/16 v6, 0x64

    .line 48
    .line 49
    move-object v0, p0

    .line 50
    invoke-direct/range {v0 .. v6}, Lw22;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLjava/util/Set;I)V

    .line 51
    .line 52
    .line 53
    iput-object p1, v0, Lww3;->f:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    .line 62
    .line 63
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catch_0
    :cond_0
    const-string p0, "requestJson must not be empty, and must be a valid JSON"

    .line 68
    .line 69
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v7
.end method
