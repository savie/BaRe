.class public final synthetic Lf16;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lj16;

.field public final synthetic b:Lcn6;

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lj16;Lcn6;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf16;->a:Lj16;

    .line 5
    .line 6
    iput-object p2, p0, Lf16;->b:Lcn6;

    .line 7
    .line 8
    iput-object p3, p0, Lf16;->c:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lf16;->b:Lcn6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn6;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lw16;

    .line 8
    .line 9
    iget-object v1, p0, Lf16;->a:Lj16;

    .line 10
    .line 11
    iget-object v2, v1, Lj16;->c:[C

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lw16;->r([C)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v2, v1, Lj16;->a:Lvh7;

    .line 19
    .line 20
    iget-object v1, v1, Lj16;->b:Lvo4;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, Lvo4;->b:Lto4;

    .line 26
    .line 27
    iget v4, v3, Lto4;->b:I

    .line 28
    .line 29
    div-int/lit8 v4, v4, 0x8

    .line 30
    .line 31
    iget-object p0, p0, Lf16;->c:[B

    .line 32
    .line 33
    array-length v5, p0

    .line 34
    const/4 v6, 0x0

    .line 35
    if-le v5, v4, :cond_2

    .line 36
    .line 37
    iget v3, v3, Lto4;->a:I

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    if-ne v3, v5, :cond_1

    .line 41
    .line 42
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string p0, "Payload too large for key"

    .line 48
    .line 49
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :cond_2
    array-length v3, p0

    .line 55
    if-ge v3, v4, :cond_3

    .line 56
    .line 57
    new-array v3, v4, [B

    .line 58
    .line 59
    array-length v5, p0

    .line 60
    sub-int/2addr v4, v5

    .line 61
    array-length v5, p0

    .line 62
    invoke-static {p0, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    move-object p0, v3

    .line 66
    :cond_3
    :goto_0
    sget-object v3, Lw16;->f:Ll15;

    .line 67
    .line 68
    const-string v4, "Decrypting data with key in slot {} of type {}"

    .line 69
    .line 70
    const/4 v5, 0x4

    .line 71
    invoke-static {v5, v3, v4, v2, v1}, Lms8;->B(ILl15;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2, v1, p0, v6}, Lw16;->q(Lvh7;Lvo4;[BZ)[B

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method
