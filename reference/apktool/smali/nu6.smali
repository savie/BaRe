.class public final Lnu6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldv6;


# static fields
.field public static final h:[B


# instance fields
.field public a:I

.field public b:[B

.field public c:[B

.field public d:I

.field public e:I

.field public f:J

.field public g:I


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
    sput-object v0, Lnu6;->h:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        -0x3t
        0x53t
        0x4dt
        0x42t
    .end array-data
.end method


# virtual methods
.method public final a(Lzu6;)V
    .locals 2

    .line 1
    iget v0, p1, Low0;->c:I

    .line 2
    .line 3
    iput v0, p0, Lnu6;->a:I

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
    sget-object v0, Lnu6;->h:[B

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x10

    .line 20
    .line 21
    new-array v1, v0, [B

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Low0;->o([BI)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lnu6;->b:[B

    .line 27
    .line 28
    new-array v1, v0, [B

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Low0;->o([BI)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lnu6;->c:[B

    .line 34
    .line 35
    invoke-virtual {p1}, Low0;->s()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lnu6;->d:I

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    invoke-virtual {p1, v0}, Low0;->t(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Low0;->b:Lvw2;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lvw2;->d(Low0;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput v1, p0, Lnu6;->e:I

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lvw2;->a(Low0;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    iput-wide v0, p0, Lnu6;->f:J

    .line 58
    .line 59
    iget p1, p1, Low0;->d:I

    .line 60
    .line 61
    iput p1, p0, Lnu6;->g:I

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    const-string p0, "Could not find SMB2 Packet header"

    .line 65
    .line 66
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Lnu6;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final c()I
    .locals 0

    .line 1
    iget p0, p0, Lnu6;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public final d(Lzu6;)V
    .locals 2

    .line 1
    iget v0, p1, Low0;->c:I

    .line 2
    .line 3
    iput v0, p0, Lnu6;->a:I

    .line 4
    .line 5
    sget-object v0, Lnu6;->h:[B

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v0, v1}, Low0;->i([BI)Low0;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lnu6;->b:[B

    .line 12
    .line 13
    array-length v1, v0

    .line 14
    invoke-virtual {p1, v0, v1}, Low0;->i([BI)Low0;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lnu6;->c:[B

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    invoke-virtual {p1, v0, v1}, Low0;->i([BI)Low0;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lnu6;->c:[B

    .line 24
    .line 25
    array-length v0, v0

    .line 26
    rsub-int/lit8 v0, v0, 0x10

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lzu6;->u(I)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lnu6;->d:I

    .line 32
    .line 33
    int-to-long v0, v0

    .line 34
    invoke-virtual {p1, v0, v1}, Low0;->l(J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lzu6;->v()V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p1, v0}, Low0;->k(I)V

    .line 42
    .line 43
    .line 44
    iget-wide v0, p0, Lnu6;->f:J

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Low0;->g(J)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
