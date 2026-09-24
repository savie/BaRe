.class final Lcom/microsoft/identity/common/logging/Logger$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/logging/ILoggerCallback;


# virtual methods
.method public final log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/logging/Logger;->access$000()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 p2, 0x1

    .line 12
    if-eq p0, p2, :cond_3

    .line 13
    .line 14
    const/4 p2, 0x2

    .line 15
    if-eq p0, p2, :cond_2

    .line 16
    .line 17
    const/4 p2, 0x3

    .line 18
    if-eq p0, p2, :cond_1

    .line 19
    .line 20
    const/4 p2, 0x4

    .line 21
    if-eq p0, p2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_4
    :goto_0
    return-void
.end method
