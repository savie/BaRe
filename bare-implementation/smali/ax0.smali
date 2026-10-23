.class public abstract synthetic Lax0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static synthetic a()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x24

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const v1, 0x186a0

    .line 8
    .line 9
    .line 10
    mul-int/2addr v0, v1

    .line 11
    return v0

    .line 12
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    .line 13
    .line 14
    return v0
.end method
