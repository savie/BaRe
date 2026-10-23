.class public abstract Lc79;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Z


# instance fields
.field public a:Ljq6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lq89;->d:Z

    .line 2
    .line 3
    sput-boolean v0, Lc79;->b:Z

    .line 4
    .line 5
    return-void
.end method

.method public static n(ILt69;)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    invoke-static {p0}, Lc79;->t(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {p1}, Lt69;->d()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1, p1, p0}, Lu48;->h(III)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static r(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x9

    .line 6
    .line 7
    rsub-int p0, p0, 0x280

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x6

    .line 10
    .line 11
    return p0
.end method

.method public static s(I)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    invoke-static {p0}, Lc79;->t(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static t(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x9

    .line 6
    .line 7
    rsub-int p0, p0, 0x160

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x6

    .line 10
    .line 11
    return p0
.end method


# virtual methods
.method public abstract a(B)V
.end method

.method public abstract b(I)V
.end method

.method public abstract c(II)V
.end method

.method public abstract d(IJ)V
.end method

.method public abstract e(ILjava/lang/String;)V
.end method

.method public abstract f(ILt69;)V
.end method

.method public abstract g(IZ)V
.end method

.method public abstract h(J)V
.end method

.method public abstract i([BII)V
.end method

.method public abstract j(I)V
.end method

.method public abstract k(II)V
.end method

.method public abstract l(IJ)V
.end method

.method public abstract m(J)V
.end method

.method public abstract o(I)V
.end method

.method public abstract p(II)V
.end method

.method public abstract q(II)V
.end method
