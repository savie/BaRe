.class public final Lgt4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljs8;


# instance fields
.field public final a:Lhs4;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhs4;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p1, v1}, Lhs4;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lgt4;->a:Lhs4;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Landroid/net/wifi/WifiConfiguration;)Let8;
    .locals 11

    .line 1
    new-instance v0, Let8;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "Unknown"

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    const-string v2, ""

    .line 24
    .line 25
    :cond_1
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 32
    .line 33
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 34
    .line 35
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 36
    .line 37
    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 38
    .line 39
    const/16 v9, 0x80

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    invoke-direct/range {v0 .. v10}, Let8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method


# virtual methods
.method public final read()Lis8;
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lgt4;->a:Lhs4;

    .line 2
    .line 3
    iget-object p0, p0, Lhs4;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Lgs8;

    .line 14
    .line 15
    sget-object v0, Lds8;->LEGACY_READ_FAILED:Lds8;

    .line 16
    .line 17
    sget-object v1, Lks8;->LEGACY_PUBLIC:Lks8;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0, v0, v1, v2}, Lgs8;-><init>(Lds8;Lks8;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/16 v1, 0xa

    .line 27
    .line 28
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 50
    .line 51
    invoke-static {v1}, Lgt4;->a(Landroid/net/wifi/WifiConfiguration;)Let8;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance p0, Lhs8;

    .line 60
    .line 61
    sget-object v1, Lks8;->LEGACY_PUBLIC:Lks8;

    .line 62
    .line 63
    invoke-direct {p0, v0, v1}, Lhs8;-><init>(Ljava/util/List;Lks8;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    new-instance v0, Lgs8;

    .line 69
    .line 70
    sget-object v1, Lds8;->LEGACY_READ_FAILED:Lds8;

    .line 71
    .line 72
    sget-object v2, Lks8;->LEGACY_PUBLIC:Lks8;

    .line 73
    .line 74
    invoke-direct {v0, v1, v2, p0}, Lgs8;-><init>(Lds8;Lks8;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method
