.class public final Lzf4;
.super Ljava/lang/Exception;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final getLocalizedMessage()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    const p0, 0x7f1302d7

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Invalid login details!"

    .line 2
    .line 3
    return-object p0
.end method
