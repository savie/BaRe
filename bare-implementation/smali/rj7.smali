.class public interface abstract Lrj7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public abstract getSpanId()Ljava/lang/String;
.end method

.method public abstract getTraceFlags()Lz88;
.end method

.method public abstract getTraceId()Ljava/lang/String;
.end method

.method public abstract getTraceState()La98;
.end method

.method public isValid()Z
    .locals 6

    .line 1
    invoke-interface {p0}, Lrj7;->getTraceId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0x20

    .line 13
    .line 14
    if-ne v2, v3, :cond_4

    .line 15
    .line 16
    const-string v2, "00000000000000000000000000000000"

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_4

    .line 23
    .line 24
    sget-object v2, Luu5;->a:[C

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    move v3, v1

    .line 31
    :goto_0
    if-ge v3, v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    sget-object v5, Luu5;->c:[Z

    .line 38
    .line 39
    aget-boolean v4, v5, v4

    .line 40
    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {p0}, Lrj7;->getSpanId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-eqz p0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/16 v2, 0x10

    .line 58
    .line 59
    if-ne v0, v2, :cond_4

    .line 60
    .line 61
    const-string v0, "0000000000000000"

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    sget-object v0, Luu5;->a:[C

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    move v2, v1

    .line 76
    :goto_1
    if-ge v2, v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    sget-object v4, Luu5;->c:[Z

    .line 83
    .line 84
    aget-boolean v3, v4, v3

    .line 85
    .line 86
    if-nez v3, :cond_2

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    const/4 p0, 0x1

    .line 93
    return p0

    .line 94
    :cond_4
    :goto_2
    return v1
.end method
