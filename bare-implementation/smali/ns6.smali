.class public final Lns6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldv6;


# static fields
.field public static final c:[B


# instance fields
.field public a:I

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lns6;->c:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        -0x4t
        0x53t
        0x4dt
        0x42t
    .end array-data
.end method


# virtual methods
.method public final a(Lzu6;)V
    .locals 4

    .line 1
    iget v0, p1, Low0;->c:I

    .line 2
    .line 3
    iput v0, p0, Lns6;->a:I

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Low0;->o([BI)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lns6;->c:[B

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Low0;->s()I

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Low0;->b:Lvw2;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lvw2;->d(Low0;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    int-to-long v0, v0

    .line 29
    const-class v2, Ltu6;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v0, v1, v2, v3}, Lsz8;->k0(JLjava/lang/Class;Lbp5;)Lsx2;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ltu6;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    sget-object v1, Ltu6;->b:Ltu6;

    .line 41
    .line 42
    if-eq v0, v1, :cond_0

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const/4 v0, 0x2

    .line 50
    invoke-virtual {p1, v0}, Low0;->t(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Low0;->s()I

    .line 54
    .line 55
    .line 56
    iget p1, p1, Low0;->d:I

    .line 57
    .line 58
    iput p1, p0, Lns6;->b:I

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    const-string p0, "The CompressionAlgorithm field of the SMB2_COMPRESSION_TRANSFORM_HEADER should contain a valid value."

    .line 62
    .line 63
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    const-string p0, "Could not find SMB2 Packet header"

    .line 68
    .line 69
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Lns6;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final c()I
    .locals 0

    .line 1
    iget p0, p0, Lns6;->b:I

    .line 2
    .line 3
    return p0
.end method
