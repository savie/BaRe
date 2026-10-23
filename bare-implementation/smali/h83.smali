.class public final Lh83;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lr73;


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/16 p0, 0x12

    .line 2
    .line 3
    return p0
.end method

.method public final c(Low0;)Lt73;
    .locals 7

    .line 1
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object p0, p1, Low0;->b:Lvw2;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    const/4 v0, 0x4

    .line 24
    invoke-virtual {p1, v0}, Low0;->t(I)V

    .line 25
    .line 26
    .line 27
    new-instance v0, La73;

    .line 28
    .line 29
    invoke-direct/range {v0 .. v6}, La73;-><init>(Lga3;Lga3;Lga3;Lga3;J)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Ln83;->b(Low0;)Lu93;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, p1}, Lvw2;->a(Low0;)J

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lvw2;->a(Low0;)J

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    sget-object p0, Lh51;->c:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    long-to-int v2, v2

    .line 61
    div-int/lit8 v2, v2, 0x2

    .line 62
    .line 63
    invoke-virtual {p1, p0, v2}, Low0;->q(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    new-instance p0, Lu63;

    .line 67
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lu63;->a:La73;

    .line 72
    .line 73
    iput-object v1, p0, Lu63;->b:Lu93;

    .line 74
    .line 75
    return-object p0
.end method
