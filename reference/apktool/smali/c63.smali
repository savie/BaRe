.class public final Lc63;
.super Lkz3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final k:Loe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb05;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Loe;

    .line 7
    .line 8
    new-instance v2, Lis9;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, v3}, Lis9;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-string v3, "Fido.FIDO2_API"

    .line 15
    .line 16
    invoke-direct {v1, v3, v2, v0}, Loe;-><init>(Ljava/lang/String;Lyc9;Lb05;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lc63;->k:Loe;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    new-instance v0, Llk;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v7, Ljz3;

    .line 11
    .line 12
    invoke-direct {v7, v0, v1}, Ljz3;-><init>(Llk;Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    sget-object v5, Lc63;->k:Loe;

    .line 17
    .line 18
    sget-object v6, Lme;->g:Lle;

    .line 19
    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    invoke-direct/range {v2 .. v7}, Lkz3;-><init>(Landroid/content/Context;Landroid/app/Activity;Loe;Lme;Ljz3;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
