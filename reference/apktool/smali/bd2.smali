.class public abstract Lbd2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lcd2;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcd2;

    .line 2
    .line 3
    invoke-static {}, Llx2;->values()[Llx2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v4, v2, :cond_0

    .line 11
    .line 12
    aget-object v5, v1, v4

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    add-int/lit8 v4, v4, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Ldl4;->values()[Ldl4;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    array-length v2, v1

    .line 25
    move v4, v3

    .line 26
    move v5, v4

    .line 27
    :goto_1
    if-ge v4, v2, :cond_2

    .line 28
    .line 29
    aget-object v6, v1, v4

    .line 30
    .line 31
    iget-boolean v7, v6, Ldl4;->a:Z

    .line 32
    .line 33
    if-eqz v7, :cond_1

    .line 34
    .line 35
    iget v6, v6, Ldl4;->b:I

    .line 36
    .line 37
    or-int/2addr v5, v6

    .line 38
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-direct {v0, v3, v5}, Lcd2;-><init>(II)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lbd2;->a:Lcd2;

    .line 45
    .line 46
    return-void
.end method
