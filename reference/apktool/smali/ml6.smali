.class public final Lml6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyy8;


# static fields
.field public static final d:Lnz8;


# instance fields
.field public a:S

.field public b:Z

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    const v1, 0xa11e

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lml6;->d:Lnz8;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lnz8;
    .locals 0

    .line 1
    sget-object p0, Lml6;->d:Lnz8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Lnz8;
    .locals 1

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    iget p0, p0, Lml6;->c:I

    .line 4
    .line 5
    add-int/lit8 p0, p0, 0x2

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lnz8;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final c([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lml6;->h([BII)V

    .line 2
    .line 3
    .line 4
    add-int/lit8 p3, p3, -0x2

    .line 5
    .line 6
    iput p3, p0, Lml6;->c:I

    .line 7
    .line 8
    return-void
.end method

.method public final d()[B
    .locals 6

    .line 1
    iget v0, p0, Lml6;->c:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    add-int/2addr v0, v1

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iget-short v2, p0, Lml6;->a:S

    .line 8
    .line 9
    iget-boolean p0, p0, Lml6;->b:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const p0, 0x8000

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p0, v3

    .line 19
    :goto_0
    or-int/2addr p0, v2

    .line 20
    int-to-long v4, p0

    .line 21
    invoke-static {v4, v5, v0, v3, v1}, Lwx3;->C(J[BII)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final e()[B
    .locals 5

    .line 1
    iget-short v0, p0, Lml6;->a:S

    .line 2
    .line 3
    iget-boolean p0, p0, Lml6;->b:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const p0, 0x8000

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p0, v1

    .line 13
    :goto_0
    or-int/2addr p0, v0

    .line 14
    const/4 v0, 0x2

    .line 15
    new-array v2, v0, [B

    .line 16
    .line 17
    int-to-long v3, p0

    .line 18
    invoke-static {v3, v4, v2, v1, v0}, Lwx3;->C(J[BII)V

    .line 19
    .line 20
    .line 21
    return-object v2
.end method

.method public final f()Lnz8;
    .locals 1

    .line 1
    new-instance p0, Lnz8;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-direct {p0, v0}, Lnz8;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final h([BII)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-lt p3, v0, :cond_1

    .line 3
    .line 4
    invoke-static {p1, p2, v0}, Lwx3;->j([BII)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    long-to-int p1, p1

    .line 9
    and-int/lit16 p2, p1, 0x7fff

    .line 10
    .line 11
    int-to-short p2, p2

    .line 12
    iput-short p2, p0, Lml6;->a:S

    .line 13
    .line 14
    const p2, 0x8000

    .line 15
    .line 16
    .line 17
    and-int/2addr p1, p2

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    iput-boolean p1, p0, Lml6;->b:Z

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance p0, Ljava/util/zip/ZipException;

    .line 27
    .line 28
    const-string p1, "Too short content for ResourceAlignmentExtraField (0xa11e): "

    .line 29
    .line 30
    invoke-static {p3, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method
