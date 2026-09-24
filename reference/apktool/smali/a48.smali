.class public final La48;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:La48;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La48;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La48;->a:La48;

    .line 7
    .line 8
    return-void
.end method

.method public static a()Li38;
    .locals 3

    .line 1
    new-instance v0, Li38;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Li38;-><init>(J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
