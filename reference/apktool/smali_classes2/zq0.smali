.class public final Lzq0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:[B

.field public e:I

.field public f:J

.field public g:F

.field public h:D


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lzq0;->b:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :sswitch_0
    const-string p0, "false"

    .line 11
    .line 12
    return-object p0

    .line 13
    :sswitch_1
    const-string p0, "true"

    .line 14
    .line 15
    return-object p0

    .line 16
    :sswitch_2
    iget-wide v0, p0, Lzq0;->h:D

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :sswitch_3
    iget p0, p0, Lzq0;->g:F

    .line 24
    .line 25
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :sswitch_4
    iget-wide v2, p0, Lzq0;->f:J

    .line 31
    .line 32
    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :sswitch_5
    iget-wide v0, p0, Lzq0;->f:J

    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :sswitch_6
    iget p0, p0, Lzq0;->e:I

    .line 45
    .line 46
    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :sswitch_7
    iget p0, p0, Lzq0;->e:I

    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :sswitch_8
    iget-object p0, p0, Lzq0;->d:[B

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :sswitch_9
    iget-object p0, p0, Lzq0;->d:[B

    .line 67
    .line 68
    invoke-static {p0}, Lar0;->d([B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :sswitch_a
    iget-object p0, p0, Lzq0;->c:Ljava/lang/String;

    .line 74
    .line 75
    return-object p0

    .line 76
    nop

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_a
        0x30 -> :sswitch_a
        0x40 -> :sswitch_9
        0x50 -> :sswitch_8
        0x60 -> :sswitch_7
        0x70 -> :sswitch_6
        0x80 -> :sswitch_5
        0x90 -> :sswitch_4
        0xa0 -> :sswitch_3
        0xb0 -> :sswitch_2
        0xc0 -> :sswitch_1
        0xd0 -> :sswitch_0
    .end sparse-switch
.end method
