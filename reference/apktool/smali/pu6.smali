.class public final Lpu6;
.super Lrt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:B

.field public f:Ljava/util/EnumSet;

.field public g:Ljava/util/EnumSet;


# virtual methods
.method public final f(Lzu6;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Low0;->t(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Low0;->n()B

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-byte v0, p0, Lpu6;->e:B

    .line 10
    .line 11
    invoke-virtual {p1}, Low0;->n()B

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Low0;->b:Lvw2;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lvw2;->e(Low0;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const-class v3, Llu6;

    .line 21
    .line 22
    invoke-static {v1, v2, v3}, Lsz8;->i0(JLjava/lang/Class;)Ljava/util/EnumSet;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lpu6;->f:Ljava/util/EnumSet;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lvw2;->e(Low0;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    const-class v3, Lku6;

    .line 33
    .line 34
    invoke-static {v1, v2, v3}, Lsz8;->i0(JLjava/lang/Class;)Ljava/util/EnumSet;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lpu6;->g:Ljava/util/EnumSet;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lvw2;->e(Low0;)J

    .line 41
    .line 42
    .line 43
    move-result-wide p0

    .line 44
    const-class v0, Ls5;

    .line 45
    .line 46
    invoke-static {p0, p1, v0}, Lsz8;->i0(JLjava/lang/Class;)Ljava/util/EnumSet;

    .line 47
    .line 48
    .line 49
    return-void
.end method
