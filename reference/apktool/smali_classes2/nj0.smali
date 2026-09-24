.class public final Lnj0;
.super Lpj0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    const v0, 0x7f130410

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v1, 0x7f080153

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljj0;

    .line 18
    .line 19
    const v3, 0x7f13005e

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Ldj7;->g(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/4 v6, 0x0

    .line 27
    const/16 v7, 0x1c

    .line 28
    .line 29
    const-string v3, "play_store"

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-direct/range {v2 .. v7}, Ljj0;-><init>(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)V

    .line 33
    .line 34
    .line 35
    filled-new-array {v2}, [Ljj0;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/16 v3, 0x10

    .line 44
    .line 45
    invoke-direct {p0, v0, v1, v2, v3}, Lpj0;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/ArrayList;I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
